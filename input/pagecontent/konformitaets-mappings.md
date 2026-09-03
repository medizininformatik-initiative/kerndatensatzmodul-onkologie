<!-- markdownlint-disable MD041 -->

### Purpose of this page

This page collects **all concept mappings of the module in one place** — for
technical and clinical review. The tables are **not maintained by hand**: they are
generated at build time with SQL queries against the package database of this IG
(Liquid `sql` tag, see
[IG SQL guidance](https://build.fhir.org/ig/FHIR/ig-guidance/sql.html)). They
therefore always show the state of the artefacts actually built — an edit to a
ConceptMap is visible here on the next build, with no duplicate maintenance.

Every individual ConceptMap also renders as its own page under
[Artifacts](artifacts.html); this page is the cross-cutting view.

{:.bg-info}
**Reliability differs by mapping.** Officially maintained mappings (e.g. the
KDL→IHE-XDS map of the DVMD) are marked as such on the respective terminology
page. All mappings whose source system is a module-internal CodeSystem, plus the
MedDRA→SNOMED CT and ICD-O transition maps, are **project-side curations** —
verified against a terminology server, but without any guarantee of completeness
or correctness. Independent professional review is required before use in
production systems. Details and version pins: see the linked terminology pages.

### Overview: mappings per source system

{% sql SELECT CASE WHEN SourceSystem LIKE '%modul-onko/CodeSystem/%' THEN 'oBDS-CS ' || replace(SourceSystem, 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-', '') WHEN SourceSystem = 'https://www.meddra.org' THEN 'MedDRA (CTCAE v4.03)' WHEN SourceSystem LIKE '%uicc.org%' THEN 'UICC TNM' WHEN SourceSystem LIKE '%bfarm/atc%' THEN 'ATC (BfArM)' WHEN SourceSystem LIKE '%icd-o-3%' THEN 'ICD-O-3' ELSE SourceSystem END AS Quellsystem, '`' || count(*) || '`' AS Mappings, '`' || sum(CASE WHEN Relationship = 'equivalent' THEN 1 ELSE 0 END) || '`' AS Aequivalent, '`' || sum(CASE WHEN Relationship = 'source-is-narrower-than-target' THEN 1 ELSE 0 END) || '`' AS Enger, '`' || sum(CASE WHEN Relationship = 'source-is-broader-than-target' THEN 1 ELSE 0 END) || '`' AS Weiter FROM ConceptMappings GROUP BY Quellsystem ORDER BY Mappings DESC %}

### oBDS code systems → SNOMED CT / LOINC

The semantic annotation of the oBDS value lists. Source codes are the module's own
CodeSystems (`mii-cs-onko-*`), targets are international terminologies.

{% sql SELECT 'oBDS-CS ' || replace(SourceSystem, 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-', '') AS Quellsystem, '#' || SourceCode AS Code, Relationship AS Beziehung, CASE WHEN TargetSystem LIKE 'http://snomed.info/sct%' THEN 'SNOMED CT' WHEN TargetSystem LIKE 'http://loinc.org%' THEN 'LOINC' WHEN TargetSystem LIKE '%bfarm/atc%' THEN 'ATC' WHEN TargetSystem LIKE '%icd-o-3%' THEN 'ICD-O-3' WHEN TargetSystem LIKE '%MVGenomseq%' THEN 'MV Genomsequenzierung (KDK)' ELSE 'sonstiges Zielsystem' END AS Zielsystem, '#' || TargetCode AS Zielcode FROM ConceptMappings WHERE SourceSystem LIKE '%modul-onko/CodeSystem%' ORDER BY Quellsystem, CAST(SourceCode AS INTEGER), SourceCode %}

### MedDRA (CTCAE v4.03) → SNOMED CT

Curated assignment of the CTCAE adverse-event terms; see
[`mii-cm-onko-nebenwirkung-meddra-sct`](ConceptMap-mii-cm-onko-nebenwirkung-meddra-sct.html)
for the curation method, version pin and the disclaimer. Terms without a defensible
SNOMED CT equivalent are deliberately absent here and remain MedDRA-only.

{% sql SELECT '#' || SourceCode AS MedDRA, Relationship AS Beziehung, '#' || TargetCode AS SNOMED FROM ConceptMappings WHERE SourceSystem = 'https://www.meddra.org' ORDER BY CAST(SourceCode AS INTEGER) %}

### UICC TNM → SNOMED CT

Clinical and pathological TNM categories as pre-coordinated SNOMED CT qualifier
values; see [TNM](StructureDefinition-mii-pr-onko-tnm-klassifikation.html).

{% sql SELECT '#' || SourceCode AS UICC, Relationship AS Beziehung, '#' || TargetCode AS SNOMED FROM ConceptMappings WHERE SourceSystem LIKE '%uicc.org%' ORDER BY SourceCode %}

### Version transitions (ATC, ICD-O-3)

Transition maps between annual/revision states — the tool for migrating legacy
data. Background and rules: [ATC](atc-terminologie.html) and
[ICD-O](icd-o-terminologie.html).

{% sql SELECT CASE WHEN SourceSystem LIKE '%atc%' THEN 'ATC' ELSE 'ICD-O-3' END AS Katalog, '#' || SourceCode AS Von, Relationship AS Beziehung, '#' || TargetCode AS Nach FROM ConceptMappings WHERE SourceSystem LIKE '%bfarm/atc%' OR SourceSystem LIKE '%icd-o-3%' ORDER BY Katalog, SourceCode %}
