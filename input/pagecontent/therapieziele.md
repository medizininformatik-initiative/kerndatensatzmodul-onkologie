<!-- markdownlint-disable MD041 -->
<!-- English source page. German mirror:
     input/translations/de/pagecontent/therapieziele.md — both files must say
     the same thing. Outlook page: relationship to the BIH-CEI
     "Therapieziele Onkologie" specification (external, 1.0.0-ballot). -->

This module documents **what happened**: diagnoses, classifications,
procedures, systemic therapies, follow-up — the oBDS reporting view of an
oncological course of disease. What it does not yet model in a structured way
is **why**: the therapy goal that patient and treating team agree on when a
treatment plan is drawn up.

That gap is addressed by a separate specification:

> **[Implementierungsleitfaden Therapieziele Onkologie](https://bih-cei.github.io/TherapiezieleOnkologie/)**
> (BIH-CEI, developed within the BIH-CEI / gematik oncology cooperation,
> currently 1.0.0-ballot)

#### What the Therapieziele specification covers

- **OnkoCarePlan** — the oncological care plan carrying the therapy
  intention, the addressed tumour disease and the link to treatment lines.
- **OnkoBehandlungsepisode** — treatment episodes whose type distinguishes
  systemic therapy lines (following the **EnLiST** line model), locoregional
  treatment, diagnostics and surveillance.
- **OnkoTherapyGoal** — the structured therapy goal with a coded goal type
  (cure, prolongation of life, symptom control, quality of life).
- **OnkoTherapyIntent** — the therapy intention (curative, neoadjuvant,
  adjuvant, maintenance, palliative, supportive) as an extension.

#### How this relates to the module

The two specifications look at the same course of treatment from two sides,
and they touch where this module already records intention-like facts:

| This module (oBDS view) | Therapieziele specification |
|---|---|
| Operation intention (`mii-ex-onko-operation-intention`) | Therapy intention on plan and episode level |
| Radiotherapy / systemic therapy intention and relation to surgery | `OnkoTherapyIntent`, treatment lines of `OnkoBehandlungsepisode` |
| Tumour board resolution (`mii-pr-onko-tumorkonferenz` with CarePlan activity) | `OnkoCarePlan` as the plan the board resolves on |
| Follow-up (`mii-pr-onko-verlauf`) as the outcome bracket | Goal attainment against `OnkoTherapyGoal` |

The Therapieziele specification is deliberately developed **outside** the
core data set: it can iterate at its own pace and validate its model (EnLiST
lines, goal taxonomy, plan structure) against real projects first. **Results
that prove themselves there can flow into this module in later versions** —
for example as a structured goal reference on therapy profiles or as an
alignment of the intention value sets. Until then the specification linked
above is the place to model therapy goals; nothing in this module conflicts
with using both side by side on the same patient.
