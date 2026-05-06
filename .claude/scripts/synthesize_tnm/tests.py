"""Tests for synthesize_tnm.core against published consolidation rules.

Rules sourced from:

  [Manual] Stegmaier, Hentschel, Hofstädter, Katalinic, Tillack,
           Klinkhammer-Schalke (Hg.), 2019. Das Manual der Krebsregistrierung.
           Zuckschwerdt, München. ISBN 978-3-86371-165-8.
           Kap. 6 "Datenzusammenführung, -speicherung und Best-of-Prozess"
           (Meyer, Altmann, Bartholomäus, Burger, Heidinger, Rapp).

  [SEER]   Ruhl, Adamo, Dickie (Feb. 2016). SEER Program Coding and Staging
           Manual 2016: Section V "Stage of Disease at Diagnosis".
           National Cancer Institute, Bethesda, MD.
           NAACCR Items #3616 (Combined T), #3618 (Combined N), #3620 (Combined M),
           #3622/3624/3626 (Source flags).

Each test names the source rule. Tests document what core.py does AND
where it falls short — gaps are XFAILs with rationale, not silent.

Run: python -m unittest enrich_tnm.cli  (or directly: python tests.py)
"""

from __future__ import annotations

import sys
import unittest
from pathlib import Path

# Allow running from project root: PYTHONPATH=.claude/scripts
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from synthesize_tnm.core import (  # noqa: E402
    PROFILE_KLASSIFIKATION,
    PROFILE_SYNTHESIZED,
    CATEGORY_PROFILES,
    CP_PRAEFIX_URL,
    synthesize_klassifikation,
)


# =============================================================================
# Fixture builders
# =============================================================================


def make_category_obs(
    *,
    obs_id: str,
    category: str,  # "T", "N", "M"
    cp_praefix: str | None,  # "c", "p", "u", "r", or None
    value: str,  # "T2", "N3", "M0", ...
    date: str,
) -> dict:
    obs = {
        "resourceType": "Observation",
        "id": obs_id,
        "meta": {"profile": [CATEGORY_PROFILES[category]]},
        "status": "final",
        "subject": {"reference": "Patient/test"},
        "effectiveDateTime": date,
        "valueCodeableConcept": {
            "coding": [
                {"system": "https://www.uicc.org/resources/tnm", "code": value}
            ]
        },
    }
    if cp_praefix is not None:
        obs["code"] = {
            "extension": [
                {
                    "url": CP_PRAEFIX_URL,
                    "valueCodeableConcept": {
                        "coding": [{"code": cp_praefix}]
                    },
                }
            ],
            "coding": [{"code": "category"}],
        }
    return obs


def make_klassifikation(
    *,
    obs_id: str,
    code: str,  # "399537006" (clinical), "399588009" (pathological), "399390009" (mixed)
    date: str,
    member_ids: list[str],
    focus_ref: str = "Condition/test-diagnose",
) -> dict:
    return {
        "resourceType": "Observation",
        "id": obs_id,
        "meta": {"profile": [PROFILE_KLASSIFIKATION]},
        "status": "final",
        "code": {"coding": [{"system": "http://snomed.info/sct", "code": code}]},
        "subject": {"reference": "Patient/test"},
        "effectiveDateTime": date,
        "focus": [{"reference": focus_ref}],
        "method": {"coding": [{"code": "8", "display": "8. Auflage"}]},
        "hasMember": [{"reference": f"Observation/{m}"} for m in member_ids],
    }


def winner_for(result, category: str):
    for w in result.winners:
        if w.category == category:
            return w
    return None


# =============================================================================
# Tests
# =============================================================================


class TestPrimaryStaging(unittest.TestCase):
    """Per Manual S. 89: pTNM grundsätzlich vor cTNM (bei demselben Meldeanlass)."""

    def test_pT_trumps_cT_when_dates_equal(self):
        cT = make_category_obs(obs_id="cT2", category="T", cp_praefix="c", value="T2", date="2024-01-11")
        pT = make_category_obs(obs_id="pT3", category="T", cp_praefix="p", value="T3", date="2024-01-11")
        k_clin = make_klassifikation(obs_id="kc", code="399537006", date="2024-01-11", member_ids=["cT2"])
        k_path = make_klassifikation(obs_id="kp", code="399588009", date="2024-01-11", member_ids=["pT3"])

        result = synthesize_klassifikation(
            [k_clin, k_path], [cT, pT, k_clin, k_path],
            decision_date="2024-04-01",
            synthesized_id="synth",
            patient_reference="Patient/test",
        )
        self.assertEqual(winner_for(result, "T").observation["id"], "pT3",
                         "[Manual S. 89] pTNM should win over cTNM at same date")

    def test_latest_pathological_wins_over_older_pathological(self):
        pT_old = make_category_obs(obs_id="pT2_old", category="T", cp_praefix="p", value="T2", date="2024-01-11")
        pT_new = make_category_obs(obs_id="pT2_new", category="T", cp_praefix="p", value="T2", date="2024-03-15")
        k_old = make_klassifikation(obs_id="ko", code="399588009", date="2024-01-11", member_ids=["pT2_old"])
        k_new = make_klassifikation(obs_id="kn", code="399588009", date="2024-03-15", member_ids=["pT2_new"])

        result = synthesize_klassifikation(
            [k_old, k_new], [pT_old, pT_new, k_old, k_new],
            decision_date="2024-04-01",
            synthesized_id="synth",
            patient_reference="Patient/test",
        )
        self.assertEqual(winner_for(result, "T").observation["id"], "pT2_new",
                         "[Manual S. 87/89] within same evidence tier, latest wins")

    def test_cT_carries_when_no_pathological(self):
        cT = make_category_obs(obs_id="cT2", category="T", cp_praefix="c", value="T2", date="2024-01-11")
        k = make_klassifikation(obs_id="k", code="399537006", date="2024-01-11", member_ids=["cT2"])

        result = synthesize_klassifikation(
            [k], [cT, k],
            decision_date="2024-04-01",
            synthesized_id="synth",
            patient_reference="Patient/test",
        )
        self.assertEqual(winner_for(result, "T").observation["id"], "cT2",
                         "[Manual S. 87] no-pathological carry-forward")

    def test_M_carry_forward_when_not_reassessed(self):
        """Classic case: cM0 from Diagnose-Meldung, OP-Meldung doesn't reassess M.
        cM0 must carry forward into the synthesized stage."""
        cT = make_category_obs(obs_id="cT3", category="T", cp_praefix="c", value="T3", date="2024-01-11")
        cM = make_category_obs(obs_id="cM0", category="M", cp_praefix="c", value="M0", date="2024-01-11")
        pT = make_category_obs(obs_id="pT2", category="T", cp_praefix="p", value="T2", date="2024-03-15")

        k_diag = make_klassifikation(obs_id="kd", code="399537006", date="2024-01-11", member_ids=["cT3", "cM0"])
        k_op = make_klassifikation(obs_id="ko", code="399588009", date="2024-03-15", member_ids=["pT2"])

        result = synthesize_klassifikation(
            [k_diag, k_op], [cT, cM, pT, k_diag, k_op],
            decision_date="2024-04-01",
            synthesized_id="synth",
            patient_reference="Patient/test",
        )
        # T should be pT2 (pathological trumps); M should be cM0 (carry forward)
        self.assertEqual(winner_for(result, "T").observation["id"], "pT2")
        self.assertIsNotNone(winner_for(result, "M"), "[Manual S. 87] M carry-forward")
        self.assertEqual(winner_for(result, "M").observation["id"], "cM0")


class TestKnownGaps(unittest.TestCase):
    """Tests that document KNOWN gaps in the v0 synthesis library.

    These should be addressed in a v1 phase-aware refactor — see
    repo issue Mapping-Support / Phase 2.
    """

    @unittest.expectedFailure
    def test_ypTNM_should_NOT_overwrite_cTNM_for_initial_diagnosis_stage(self):
        """[Manual S. 89] 'cTNM beschreibt die Tumorausbreitung zum
        Diagnosezeitpunkt in der Regel besser als ypTNM'.

        For a 'primary disease stage' synthesis, ypTNM (post-neoadjuvant) must NOT
        win over cTNM. v0 currently treats yp as p (highest priority) — gap.
        """
        cT = make_category_obs(obs_id="cT3", category="T", cp_praefix="c", value="T3", date="2024-01-11")
        # ypT2: cp-Praefix=p AND y-symbol present (modeled here via p only — y-symbol
        # is a separate Observation in the actual data model, currently not detected)
        ypT = make_category_obs(obs_id="ypT2", category="T", cp_praefix="p", value="T2", date="2024-05-15")
        k_diag = make_klassifikation(obs_id="kd", code="399537006", date="2024-01-11", member_ids=["cT3"])
        k_yp = make_klassifikation(obs_id="ky", code="399588009", date="2024-05-15", member_ids=["ypT2"])

        result = synthesize_klassifikation(
            [k_diag, k_yp], [cT, ypT, k_diag, k_yp],
            decision_date="2024-06-01",
            synthesized_id="synth",
            patient_reference="Patient/test",
        )
        # EXPECTATION (per Manual S. 89): cT3 should win for primary-diagnosis-stage
        # ACTUAL (v0): ypT2 wins because cp=p > cp=c. Hence expectedFailure.
        self.assertEqual(winner_for(result, "T").observation["id"], "cT3")

    @unittest.skip("Cannot be expressed in v0: r-symbol is a separate Observation "
                   "profile (mii-pr-onko-tnm-r-symbol) linked via hasMember on the "
                   "Klassifikation grouper. v0 only inspects cp-Präfix on category "
                   "Observations, which never carries 'r'. Implementing this requires "
                   "a v1 helper that reads r/y/a/m symbol Observations from each source "
                   "Klassifikation's hasMember pool. Tracked in Mapping-Support phase 2.")
    def test_recurrence_r_symbol_chain_break(self):
        """[Manual S. 89 + UICC General Rules] r-prefix marks a new staging baseline."""
        pass


class TestSourceTracking(unittest.TestCase):
    """[SEER NAACCR #3622/3624/3626] Combined T/N/M Source flag.

    SEER tracks whether each derived T/N/M came from clinical, pathological,
    or both. Our SynthesisResult exposes this implicitly via winners[].cp_praefix.
    """

    def test_winner_records_cp_praefix(self):
        cT = make_category_obs(obs_id="cT2", category="T", cp_praefix="c", value="T2", date="2024-01-11")
        pT = make_category_obs(obs_id="pT3", category="T", cp_praefix="p", value="T3", date="2024-03-15")
        k_clin = make_klassifikation(obs_id="kc", code="399537006", date="2024-01-11", member_ids=["cT2"])
        k_path = make_klassifikation(obs_id="kp", code="399588009", date="2024-03-15", member_ids=["pT3"])

        result = synthesize_klassifikation(
            [k_clin, k_path], [cT, pT, k_clin, k_path],
            decision_date="2024-04-01",
            synthesized_id="synth",
            patient_reference="Patient/test",
        )
        winner_T = winner_for(result, "T")
        self.assertEqual(winner_T.cp_praefix, "p",
                         "[SEER #3622 analogue] T source must be tracked as pathological")

    def test_derived_from_lists_all_sources(self):
        """[FHIR / SEER analogue] derivedFrom must include ALL source Klassifikationen,
        even those whose categories did not win — provenance preservation."""
        cT = make_category_obs(obs_id="cT2", category="T", cp_praefix="c", value="T2", date="2024-01-11")
        pT = make_category_obs(obs_id="pT3", category="T", cp_praefix="p", value="T3", date="2024-03-15")
        k_clin = make_klassifikation(obs_id="kc", code="399537006", date="2024-01-11", member_ids=["cT2"])
        k_path = make_klassifikation(obs_id="kp", code="399588009", date="2024-03-15", member_ids=["pT3"])

        result = synthesize_klassifikation(
            [k_clin, k_path], [cT, pT, k_clin, k_path],
            decision_date="2024-04-01",
            synthesized_id="synth",
            patient_reference="Patient/test",
        )
        derived_refs = {d["reference"] for d in result.synthesized.get("derivedFrom", [])}
        self.assertIn("Observation/kc", derived_refs)
        self.assertIn("Observation/kp", derived_refs)


class TestDecisionDateSemantics(unittest.TestCase):
    """[Manual S. 87] 'TNM-Angaben, die im weiteren Verlauf erhoben werden,
    dürfen die TNM-Klassifizierung zum Diagnosezeitpunkt nicht überschreiben.'

    Decision-date semantics: only sources at-or-before decision_date should
    be considered. Future Klassifikationen do not retroactively change history.

    NOTE: v0 does NOT filter by decision_date — caller must pre-filter.
    Documented as a known limitation here (xfail) until v1.
    """

    @unittest.expectedFailure
    def test_decision_date_filters_sources(self):
        cT_pre = make_category_obs(obs_id="cT2_pre", category="T", cp_praefix="c", value="T2", date="2024-01-11")
        cT_post = make_category_obs(obs_id="cT3_post", category="T", cp_praefix="c", value="T3", date="2024-06-01")
        k_pre = make_klassifikation(obs_id="kpre", code="399537006", date="2024-01-11", member_ids=["cT2_pre"])
        k_post = make_klassifikation(obs_id="kpost", code="399537006", date="2024-06-01", member_ids=["cT3_post"])

        # Decision date 2024-03-01 is BEFORE the second Klassifikation
        result = synthesize_klassifikation(
            [k_pre, k_post], [cT_pre, cT_post, k_pre, k_post],
            decision_date="2024-03-01",
            synthesized_id="synth",
            patient_reference="Patient/test",
        )
        # EXPECTATION: only cT2_pre considered. ACTUAL (v0): both included; cT3_post
        # wins by latest-date rule. Hence expectedFailure.
        self.assertEqual(winner_for(result, "T").observation["id"], "cT2_pre")


if __name__ == "__main__":
    unittest.main(verbosity=2)
