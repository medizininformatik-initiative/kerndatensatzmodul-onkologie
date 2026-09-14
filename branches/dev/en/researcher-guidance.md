# Guidance for Researchers - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc3

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Researchers**

## Guidance for Researchers

### Guidance for Researchers

The data of this module originates from **oncological tumour documentation along the oBDS reporting events** (diagnosis, surgery, start/end of radio- and systemic therapy, follow-up, death) — the same documentation stream that feeds the German cancer registries. Two consequences of this origin matter for every analysis:

#### 1. The data arrives with a reporting lag

Reporting events are documented and forwarded with delay — legal reporting deadlines, site-internal documentation backlogs and registry processing add up to months. For research this means:

* **Recent time periods are systematically incomplete.** A drop in case counts or therapy events in the most recent months is usually a reporting artefact, not an epidemiological signal.
* Define **cohort cut-offs conservatively** (data-freeze date well before the analysis date) and state the freeze date alongside every result.
* The **absence of a recent event is weak evidence**: a missing follow-up or therapy-end record may simply not have arrived yet.

#### 2. A single site's extract can be incomplete

Oncological care is distributed: the resection may happen at a centre while **follow-up and adjuvant therapy take place at other sites** (practices, community hospitals, rehabilitation). A data extract drawn from one site therefore documents that site's share of the course of disease, not necessarily all of it:

* **Absence of a record is not absence of treatment.** A patient without a documented systemic therapy may have received it elsewhere.
* Signals inside the data can point to external treatment — for example a TNM classification carrying the **y prefix** (state during/after neoadjuvant therapy) without any documented systemic therapy episode.
* Be careful with **denominators**: "patients without adjuvant therapy" from a single-site extract mixes truly untreated patients with externally-treated ones. Prefer research questions robust to this, or use the population-based state cancer registries (Landeskrebsregister), whose cross-site consolidation is the completer source for full-course questions.
* In multi-site MII projects, **record linkage across sites** mitigates — but does not eliminate — this fragmentation.

Both properties are inherent to registry-fed clinical cancer documentation; they are not data-quality defects of an individual site. Analyses should name them in their limitations section.

