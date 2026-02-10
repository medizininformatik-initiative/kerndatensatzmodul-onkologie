#!/usr/bin/env python3
"""
Tests for TNM Observation to Text - Reference Implementation

Tests against the Breast Cancer Journey examples (#189) and the
existing uT2a2-example from fsh-generated/resources/.

Usage:
    python scripts/test_tnm_observation_to_text.py
"""

import json
import os
import sys
import unittest
from pathlib import Path

# Add scripts directory to path for import
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from importlib import import_module

# Import with hyphenated filename
import importlib.util
spec = importlib.util.spec_from_file_location(
    "tnm_observation_to_text",
    os.path.join(os.path.dirname(os.path.abspath(__file__)), "tnm-observation-to-text.py"),
)
mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)

TNMObservationToText = mod.TNMObservationToText
TNMComponent = mod.TNMComponent
TNMResult = mod.TNMResult

# Resource directory containing generated FHIR examples
RESOURCE_DIR = os.path.join(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
    "fsh-generated", "resources",
)


def resource_path(filename: str) -> str:
    """Get full path to a resource file."""
    return os.path.join(RESOURCE_DIR, filename)


class TestTNMComponent(unittest.TestCase):
    """Unit tests for TNMComponent string generation."""

    def test_simple_clinical_t(self):
        comp = TNMComponent(category="T", value="3", cp_prefix="c")
        self.assertEqual(comp.to_string(), "cT3")

    def test_pathological_n(self):
        comp = TNMComponent(category="N", value="0", cp_prefix="p")
        self.assertEqual(comp.to_string(), "pN0")

    def test_ultrasound_t(self):
        comp = TNMComponent(category="T", value="2a2", cp_prefix="u")
        self.assertEqual(comp.to_string(), "uT2a2")

    def test_y_prefix(self):
        comp = TNMComponent(category="T", value="2", cp_prefix="c", y_prefix=True)
        self.assertEqual(comp.to_string(), "ycT2")

    def test_yp_prefix(self):
        comp = TNMComponent(category="T", value="0", cp_prefix="p", y_prefix=True)
        self.assertEqual(comp.to_string(), "ypT0")

    def test_r_prefix(self):
        comp = TNMComponent(category="T", value="2", cp_prefix="c", r_prefix=True)
        self.assertEqual(comp.to_string(), "rcT2")

    def test_itc_suffix(self):
        comp = TNMComponent(category="N", value="0", cp_prefix="p", itc_suffix="(i-)")
        self.assertEqual(comp.to_string(), "pN0(i-)")

    def test_sn_suffix(self):
        comp = TNMComponent(category="N", value="0", cp_prefix="p", sn_suffix="(sn)")
        self.assertEqual(comp.to_string(), "pN0(sn)")

    def test_itc_and_sn_suffix(self):
        comp = TNMComponent(
            category="N", value="0", cp_prefix="p",
            itc_suffix="(i-)", sn_suffix="(sn)",
        )
        self.assertEqual(comp.to_string(), "pN0(i-)(sn)")

    def test_tis(self):
        comp = TNMComponent(category="T", value="is", cp_prefix="c")
        self.assertEqual(comp.to_string(), "cTis")

    def test_no_prefix(self):
        comp = TNMComponent(category="T", value="is")
        self.assertEqual(comp.to_string(), "Tis")


class TestTNMResult(unittest.TestCase):
    """Unit tests for TNMResult formatting."""

    def _make_result(self, **kwargs) -> TNMResult:
        result = TNMResult(**kwargs)
        return result

    def test_compact_with_stadium(self):
        result = self._make_result(
            t=TNMComponent(category="T", value="3", cp_prefix="c"),
            n=TNMComponent(category="N", value="1", cp_prefix="c"),
            m=TNMComponent(category="M", value="0", cp_prefix="c"),
            stadium="IIIA",
        )
        self.assertEqual(result.to_compact(), "cT3cN1cM0 (IIIA)")

    def test_compact_without_stadium(self):
        result = self._make_result(
            t=TNMComponent(category="T", value="0", cp_prefix="p", y_prefix=True),
            n=TNMComponent(category="N", value="0", cp_prefix="p", y_prefix=True),
            m=TNMComponent(category="M", value="0", cp_prefix="c"),
        )
        self.assertEqual(result.to_compact(), "ypT0ypN0cM0")

    def test_spaced_format(self):
        result = self._make_result(
            t=TNMComponent(category="T", value="3", cp_prefix="c"),
            n=TNMComponent(category="N", value="1", cp_prefix="c"),
            m=TNMComponent(category="M", value="0", cp_prefix="c"),
            stadium="IIIA",
            stadium_display="Stadium IIIA",
            tnm_version="8",
            tnm_version_display="8. Auflage",
        )
        self.assertEqual(
            result.to_spaced(),
            "cT3 cN1 cM0 \u2013 Stadium IIIA, UICC 8. Auflage",
        )

    def test_full_with_additional_categories(self):
        result = self._make_result(
            t=TNMComponent(category="T", value="0", cp_prefix="p", y_prefix=True),
            n=TNMComponent(category="N", value="0", cp_prefix="p", y_prefix=True),
            m=TNMComponent(category="M", value="0", cp_prefix="c"),
            l_category="L0",
            v_category="V0",
            pn_category="Pn0",
            stadium="okk",
            stadium_display="Stadium X",
            tnm_version_display="8. Auflage",
        )
        self.assertEqual(
            result.to_full(),
            "ypT0 ypN0 cM0 L0 V0 Pn0 \u2013 Stadium X, UICC 8. Auflage",
        )


@unittest.skipUnless(
    os.path.isdir(RESOURCE_DIR),
    f"Resource directory not found: {RESOURCE_DIR} (run 'sushi .' first)",
)
class TestBreastCancerJourney(unittest.TestCase):
    """Integration tests using Breast Cancer Journey examples from #189."""

    @classmethod
    def setUpClass(cls):
        cls.converter = TNMObservationToText(resource_dir=RESOURCE_DIR)

    def _parse(self, filename: str) -> TNMResult:
        return self.converter.parse_file(resource_path(filename))

    # --- Test Case 1: Initial Clinical TNM ---
    def test_clinical_cT3cN1cM0_compact(self):
        result = self._parse("Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.json")
        self.assertEqual(result.to_compact(), "cT3cN1cM0 (IIIA)")

    def test_clinical_cT3cN1cM0_spaced(self):
        result = self._parse("Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.json")
        self.assertEqual(
            result.to_spaced(),
            "cT3 cN1 cM0 \u2013 Stadium IIIA, UICC 8. Auflage",
        )

    def test_clinical_cT3cN1cM0_components(self):
        result = self._parse("Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.json")
        self.assertEqual(result.t.cp_prefix, "c")
        self.assertEqual(result.t.value, "3")
        self.assertFalse(result.t.y_prefix)
        self.assertFalse(result.t.r_prefix)
        self.assertEqual(result.n.cp_prefix, "c")
        self.assertEqual(result.n.value, "1")
        self.assertEqual(result.m.cp_prefix, "c")
        self.assertEqual(result.m.value, "0")
        self.assertEqual(result.stadium, "IIIA")
        self.assertEqual(result.classification_type, "clinical")

    # --- Test Case 2: Biopsy Clinical TNM ---
    def test_biopsy_cT4cN1cM0(self):
        result = self._parse("Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.json")
        self.assertEqual(result.to_compact(), "cT4cN1cM0 (IIIB)")
        self.assertEqual(
            result.to_spaced(),
            "cT4 cN1 cM0 \u2013 Stadium IIIB, UICC 8. Auflage",
        )

    # --- Test Case 3: Post-Chemo y-prefix ---
    def test_post_chemo_ycT2ycN0cM0(self):
        result = self._parse("Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.json")
        self.assertEqual(result.to_compact(), "ycT2ycN0cM0 (IIA)")
        self.assertEqual(
            result.to_spaced(),
            "ycT2 ycN0 cM0 \u2013 Stadium IIA, UICC 8. Auflage",
        )

    def test_post_chemo_y_prefix(self):
        result = self._parse("Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.json")
        self.assertTrue(result.t.y_prefix)
        self.assertTrue(result.n.y_prefix)
        self.assertFalse(result.m.y_prefix)  # M0 is clinical, no y

    # --- Test Case 4: Post-Surgery yp with L/V/Pn ---
    def test_post_surgery_ypT0ypN0cM0_compact(self):
        result = self._parse("Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.json")
        self.assertEqual(result.to_compact(), "ypT0ypN0cM0 (okk)")

    def test_post_surgery_ypT0ypN0cM0_full(self):
        result = self._parse("Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.json")
        self.assertEqual(
            result.to_full(),
            "ypT0 ypN0 cM0 L0 V0 Pn0 \u2013 Stadium X, UICC 8. Auflage",
        )

    def test_post_surgery_additional_categories(self):
        result = self._parse("Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.json")
        self.assertEqual(result.l_category, "L0")
        self.assertEqual(result.v_category, "V0")
        self.assertEqual(result.pn_category, "Pn0")
        self.assertTrue(result.t.y_prefix)
        self.assertEqual(result.t.cp_prefix, "p")
        self.assertEqual(result.stadium, "okk")
        self.assertEqual(result.classification_type, "pathologic")

    # --- Test Case 5: Recurrence r-prefix ---
    def test_recurrence_rcT2cN1cM1(self):
        result = self._parse("Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.json")
        # All components have r-prefix in the data
        self.assertTrue(result.t.r_prefix)
        self.assertTrue(result.n.r_prefix)
        self.assertTrue(result.m.r_prefix)
        self.assertEqual(result.t.to_string(), "rcT2")
        self.assertEqual(result.stadium, "IV")

    def test_recurrence_spaced(self):
        result = self._parse("Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.json")
        self.assertEqual(
            result.to_spaced(),
            "rcT2 rcN1 rcM1 \u2013 Stadium IV, UICC 8. Auflage",
        )

    # --- Test Case 6: Complex with ITC/SN suffixes ---
    def test_complex_uT2a2pN0i_sn_cM1(self):
        result = self._parse(
            "Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.json"
        )
        self.assertEqual(result.t.to_string(), "uT2a2")
        self.assertEqual(result.n.to_string(), "pN0(i-)(sn)")
        self.assertEqual(result.m.to_string(), "cM1")
        self.assertEqual(result.stadium, "IVC")

    def test_complex_spaced(self):
        result = self._parse(
            "Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.json"
        )
        self.assertEqual(
            result.to_spaced(),
            "uT2a2 pN0(i-)(sn) cM1 \u2013 Stadium IVC, UICC 8. Auflage",
        )

    # --- Test Case 7: Simple Tis N0 M0 ---
    def test_TisN0M0(self):
        result = self._parse("Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.json")
        self.assertEqual(result.t.to_string(), "cTis")
        self.assertEqual(result.n.to_string(), "cN0")
        self.assertEqual(result.m.to_string(), "cM0")
        self.assertEqual(result.stadium, "0")
        self.assertEqual(
            result.to_spaced(),
            "cTis cN0 cM0 \u2013 Stadium 0, UICC 8. Auflage",
        )

    # --- Test Case 8: Colon cancer examples ---
    def test_ascending_colon(self):
        result = self._parse("Observation-mii-exa-onko-ascending-colon-tnm.json")
        self.assertEqual(result.to_compact(), "pT3pN1cM0 (IIIB)")

    def test_colorectal(self):
        result = self._parse("Observation-mii-exa-onko-colorectal-tnm.json")
        self.assertEqual(result.to_compact(), "pT3pN1cM0 (IIIB)")


class TestTNMValueExtraction(unittest.TestCase):
    """Tests for value extraction from different coding systems."""

    def setUp(self):
        self.converter = TNMObservationToText()

    def test_snomed_display_extraction(self):
        """Test extracting T value from SNOMED display text."""
        coding = {
            "code": "1352966002",
            "system": "http://snomed.info/sct",
            "display": "Union for International Cancer Control cT3 (qualifier value)",
        }
        value = self.converter._extract_tnm_value(coding, "T")
        self.assertEqual(value, "3")

    def test_snomed_display_pT0(self):
        coding = {
            "code": "1352552004",
            "system": "http://snomed.info/sct",
            "display": "Union for International Cancer Control pT0 (qualifier value)",
        }
        value = self.converter._extract_tnm_value(coding, "T")
        self.assertEqual(value, "0")

    def test_snomed_display_cN1(self):
        coding = {
            "code": "1353043007",
            "system": "http://snomed.info/sct",
            "display": "Union for International Cancer Control cN1 (qualifier value)",
        }
        value = self.converter._extract_tnm_value(coding, "N")
        self.assertEqual(value, "1")

    def test_snomed_display_cM0(self):
        coding = {
            "code": "1352512001",
            "system": "http://snomed.info/sct",
            "display": "Union for International Cancer Control cM0 (qualifier value)",
        }
        value = self.converter._extract_tnm_value(coding, "M")
        self.assertEqual(value, "0")

    def test_uicc_direct_code(self):
        """Test extracting value from UICC direct coding."""
        coding = {
            "code": "T2a2",
            "system": "https://www.uicc.org/resources/tnm",
            "display": "T2a2",
        }
        value = self.converter._extract_tnm_value(coding, "T")
        self.assertEqual(value, "2a2")

    def test_uicc_n0(self):
        coding = {
            "code": "N0",
            "system": "https://www.uicc.org/resources/tnm",
            "display": "N0",
        }
        value = self.converter._extract_tnm_value(coding, "N")
        self.assertEqual(value, "0")

    def test_uicc_m1(self):
        coding = {
            "code": "M1",
            "system": "https://www.uicc.org/resources/tnm",
            "display": "M1",
        }
        value = self.converter._extract_tnm_value(coding, "M")
        self.assertEqual(value, "1")


class TestBundleParsing(unittest.TestCase):
    """Test parsing from FHIR Bundles."""

    def test_inline_bundle(self):
        """Test parsing a minimal Bundle with inline resources."""
        bundle = {
            "resourceType": "Bundle",
            "type": "collection",
            "entry": [
                {
                    "fullUrl": "Observation/grouper",
                    "resource": {
                        "resourceType": "Observation",
                        "id": "grouper",
                        "meta": {
                            "profile": [
                                "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
                            ]
                        },
                        "status": "final",
                        "code": {
                            "coding": [
                                {"code": "399537006", "system": "http://snomed.info/sct"}
                            ]
                        },
                        "method": {
                            "coding": [
                                {
                                    "code": "8",
                                    "system": "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
                                    "display": "8. Auflage",
                                }
                            ]
                        },
                        "hasMember": [
                            {"reference": "Observation/t1"},
                            {"reference": "Observation/n1"},
                            {"reference": "Observation/m1"},
                        ],
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "code": "IIA",
                                    "system": "https://www.uicc.org/resources/tnm",
                                    "display": "Stadium IIA",
                                }
                            ]
                        },
                    },
                },
                {
                    "fullUrl": "Observation/t1",
                    "resource": {
                        "resourceType": "Observation",
                        "id": "t1",
                        "meta": {
                            "profile": [
                                "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
                            ]
                        },
                        "status": "final",
                        "code": {
                            "extension": [
                                {
                                    "url": "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {"code": "c", "system": "https://www.uicc.org/resources/tnm"}
                                        ]
                                    },
                                }
                            ],
                            "coding": [
                                {"code": "399504009", "system": "http://snomed.info/sct"}
                            ],
                        },
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "code": "T2",
                                    "system": "https://www.uicc.org/resources/tnm",
                                }
                            ]
                        },
                    },
                },
                {
                    "fullUrl": "Observation/n1",
                    "resource": {
                        "resourceType": "Observation",
                        "id": "n1",
                        "meta": {
                            "profile": [
                                "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
                            ]
                        },
                        "status": "final",
                        "code": {
                            "extension": [
                                {
                                    "url": "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {"code": "c", "system": "https://www.uicc.org/resources/tnm"}
                                        ]
                                    },
                                }
                            ],
                            "coding": [
                                {"code": "399534004", "system": "http://snomed.info/sct"}
                            ],
                        },
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "code": "N0",
                                    "system": "https://www.uicc.org/resources/tnm",
                                }
                            ]
                        },
                    },
                },
                {
                    "fullUrl": "Observation/m1",
                    "resource": {
                        "resourceType": "Observation",
                        "id": "m1",
                        "meta": {
                            "profile": [
                                "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
                            ]
                        },
                        "status": "final",
                        "code": {
                            "extension": [
                                {
                                    "url": "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
                                    "valueCodeableConcept": {
                                        "coding": [
                                            {"code": "c", "system": "https://www.uicc.org/resources/tnm"}
                                        ]
                                    },
                                }
                            ],
                            "coding": [
                                {"code": "399387003", "system": "http://snomed.info/sct"}
                            ],
                        },
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "code": "M0",
                                    "system": "https://www.uicc.org/resources/tnm",
                                }
                            ]
                        },
                    },
                },
            ],
        }

        converter = TNMObservationToText()
        result = converter.parse_resource(bundle)
        self.assertEqual(result.to_compact(), "cT2cN0cM0 (IIA)")
        self.assertEqual(result.stadium, "IIA")
        self.assertEqual(result.tnm_version, "8")


class TestEdgeCases(unittest.TestCase):
    """Test edge cases and error handling."""

    def test_empty_has_member(self):
        """Test grouper with no hasMember."""
        grouper = {
            "resourceType": "Observation",
            "meta": {
                "profile": [
                    "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
                ]
            },
            "status": "final",
            "code": {
                "coding": [{"code": "399537006", "system": "http://snomed.info/sct"}]
            },
            "valueCodeableConcept": {
                "coding": [
                    {"code": "IV", "system": "https://www.uicc.org/resources/tnm"}
                ]
            },
        }
        converter = TNMObservationToText()
        result = converter.parse_resource(grouper)
        self.assertEqual(result.stadium, "IV")
        self.assertIsNone(result.t)
        self.assertIsNone(result.n)
        self.assertIsNone(result.m)

    def test_value_text_only(self):
        """Test valueCodeableConcept with only text (no coding)."""
        grouper = {
            "resourceType": "Observation",
            "meta": {
                "profile": [
                    "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
                ]
            },
            "status": "final",
            "code": {
                "coding": [{"code": "399588009", "system": "http://snomed.info/sct"}]
            },
            "valueCodeableConcept": {"text": "Complete pathological response"},
        }
        converter = TNMObservationToText()
        result = converter.parse_resource(grouper)
        self.assertEqual(result.stadium_display, "Complete pathological response")
        self.assertEqual(result.stadium, "")

    def test_unresolvable_reference(self):
        """Test that unresolvable references are silently skipped."""
        grouper = {
            "resourceType": "Observation",
            "meta": {
                "profile": [
                    "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
                ]
            },
            "status": "final",
            "code": {
                "coding": [{"code": "399537006", "system": "http://snomed.info/sct"}]
            },
            "hasMember": [
                {"reference": "Observation/does-not-exist"},
            ],
            "valueCodeableConcept": {
                "coding": [
                    {"code": "I", "system": "https://www.uicc.org/resources/tnm"}
                ]
            },
        }
        converter = TNMObservationToText()
        result = converter.parse_resource(grouper)
        self.assertEqual(result.stadium, "I")
        self.assertIsNone(result.t)

    def test_no_bundle_grouper_raises(self):
        """Test that a Bundle without a TNM grouper raises ValueError."""
        bundle = {
            "resourceType": "Bundle",
            "type": "collection",
            "entry": [
                {
                    "resource": {
                        "resourceType": "Patient",
                        "id": "example",
                    }
                }
            ],
        }
        converter = TNMObservationToText()
        with self.assertRaises(ValueError):
            converter.parse_resource(bundle)


if __name__ == "__main__":
    unittest.main(verbosity=2)
