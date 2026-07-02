# mii-exa-onko-weitere-klassifikationen-4 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: mii-exa-onko-weitere-klassifikationen-4

-------

**German**

-------

Profile: [MII PR Onkologie Weitere Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md) version: 2026.0.3

**status**: Final

**code**: BINET Klassifikation für chronische lymphatische Leukämie

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**focus**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**effective**: 2024-01-13

**value**: BINET B - Intermediäres Stadium mit Lymphknotenvergrößerung oder Organomegalie

**note**: 

> 

BINET-Klassifikation wird spezifisch für chronische lymphatische Leukämie (CLL, ICD-10: C91.1) verwendet. Stadium B indiziert Lymphknotenvergrößerung in ≥3 Regionen oder Splenomegalie/Hepatomegalie ohne Anämie oder Thrombozytopenie.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-weitere-klassifikationen-4",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "text" : "BINET Klassifikation für chronische lymphatische Leukämie"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "focus" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "effectiveDateTime" : "2024-01-13",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "code" : "binet-b"
    }],
    "text" : "BINET B - Intermediäres Stadium mit Lymphknotenvergrößerung oder Organomegalie"
  },
  "note" : [{
    "text" : "BINET-Klassifikation wird spezifisch für chronische lymphatische Leukämie (CLL, ICD-10: C91.1) verwendet. Stadium B indiziert Lymphknotenvergrößerung in ≥3 Regionen oder Splenomegalie/Hepatomegalie ohne Anämie oder Thrombozytopenie."
  }]
}

```
