# MII LM Onkologie Organspezifische Zusatzmodule - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Onkologie Organspezifische Zusatzmodule**

## Logical Model: MII LM Onkologie Organspezifische Zusatzmodule 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/OrganspezifischeZusatzmodule | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_LM_Onko_Organspezifische_Zusatzmodule |

 
Logisches Modell für die organspezifischen Zusatzmodule des oBDS. Feldnummern und Struktur folgen dem amtlichen oBDS-XML-Schema (oBDS v3.0.5, Modul_Mamma/Darm/Prostata/Malignes_Melanom/Allgemein) sowie dem Feldkatalog auf basisdatensatz.de. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.csv), [Excel](../StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-onko-organspezifische-zusatzmodule",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this logical model as the module-specific information model for the Medical Informatics Initiative core dataset. The model describes clinically or administratively relevant information in a domain-oriented form and provides a bridge between the conceptual content specification and the corresponding technical FHIR profiles. It is a pattern for describing the intended content model and is not intended to be exchanged as a concrete FHIR resource instance. Implementers should use it to understand the scope, semantics, and structure of the module before applying the related FHIR profiles and mappings."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-03"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/OrganspezifischeZusatzmodule",
  "version" : "2026.0.3",
  "name" : "MII_LM_Onko_Organspezifische_Zusatzmodule",
  "title" : "MII LM Onkologie Organspezifische Zusatzmodule",
  "status" : "active",
  "date" : "2026-08-28T09:25:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Logisches Modell für die organspezifischen Zusatzmodule des oBDS. Feldnummern und Struktur folgen dem amtlichen oBDS-XML-Schema (oBDS v3.0.5, Modul_Mamma/Darm/Prostata/Malignes_Melanom/Allgemein) sowie dem Feldkatalog auf basisdatensatz.de.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "FHIR",
    "name" : "Organspezifische Zusatzmodule LogicalModel FHIR Mapping"
  },
  {
    "identity" : "oBDS",
    "name" : "Organspezifische Zusatzmodule LogicalModel oBDS Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/OrganspezifischeZusatzmodule",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "OrganspezifischeZusatzmodule",
      "path" : "OrganspezifischeZusatzmodule",
      "short" : "MII LM Onkologie Organspezifische Zusatzmodule",
      "definition" : "Logisches Modell für die organspezifischen Zusatzmodule des oBDS. Feldnummern und Struktur folgen dem amtlichen oBDS-XML-Schema (oBDS v3.0.5, Modul_Mamma/Darm/Prostata/Malignes_Melanom/Allgemein) sowie dem Feldkatalog auf basisdatensatz.de."
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma",
      "path" : "OrganspezifischeZusatzmodule.Mamma",
      "short" : "Mamma",
      "definition" : "Organspezifisches Modul Mammakarzinom, oBDS M1–M8 (XSD Modul_Mamma_Typ)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Brustspezifische Datenpunkte"
      },
      {
        "identity" : "oBDS",
        "map" : "Modul Mamma (M1–M8)",
        "comment" : "Amtlicher Feldkatalog: https://basisdatensatz.de/module/5/mammakarzinom; XSD Modul_Mamma_Typ (oBDS v3.0.5)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.Menopausenstatus",
      "path" : "OrganspezifischeZusatzmodule.Mamma.Menopausenstatus",
      "short" : "Menopausenstatus",
      "definition" : "Prätherapeutischer Menopausenstatus einer Patientin mit Mamma-Karzinom. oBDS M1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://snomed.info/sct' and code.coding.code='161712005').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "M1",
        "comment" : "Prätherapeutischer Menopausenstatus - oBDS 2021: perimenopausal wird unter prämenopausal subsumiert"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen",
      "short" : "Rezeptorstatus Estrogen",
      "definition" : "Hormonrezeptorstatus Östrogen. oBDS M2 (XSD: HormonrezeptorStatus_Oestrogen)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='40556-3')"
      },
      {
        "identity" : "oBDS",
        "map" : "M2",
        "comment" : "HormonrezeptorStatus: Östrogen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.Status",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.Status",
      "short" : "Estrogen-Rezeptorstatus",
      "definition" : "Kategoriale Bewertung des Estrogen-Rezeptorstatus: positiv/negativ. oBDS M2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "M2",
        "comment" : "Kategoriale Bewertung des Estrogen-Rezeptorstatus"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.AnteilPositiveZellen",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.AnteilPositiveZellen",
      "short" : "Anteil positive Zellen",
      "definition" : "Quantitative Bestimmung in Prozent. Komponente zu oBDS M2 (keine eigene Feldnummer, S3-Leitlinie).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.component.where(code.coding.system='http://snomed.info/sct' and code.coding.code='1234804006').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "M2 (Komponente)",
        "comment" : "Quantitative Estrogen-Bestimmung in Prozent; keine eigene oBDS-Feldnummer (S3-Leitlinie)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.Faerbeintensitaet",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.Faerbeintensitaet",
      "short" : "Färbeintensität",
      "definition" : "Qualitative Bewertung der Färbeintensität. Komponente zu oBDS M2 (keine eigene Feldnummer, S3-Leitlinie).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.component.where(code.coding.system='http://snomed.info/sct' and code.coding.code='1236874005').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "M2 (Komponente)",
        "comment" : "Estrogen-Färbeintensität; keine eigene oBDS-Feldnummer (S3-Leitlinie)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron",
      "short" : "Rezeptorstatus Progesteron",
      "definition" : "Hormonrezeptorstatus Progesteron. oBDS M3 (XSD: HormonrezeptorStatus_Progesteron)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='85339-0')"
      },
      {
        "identity" : "oBDS",
        "map" : "M3",
        "comment" : "HormonrezeptorStatus: Progesteron"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.Status",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.Status",
      "short" : "Progesteron-Rezeptorstatus",
      "definition" : "Kategoriale Bewertung des Progesteron-Rezeptorstatus: positiv/negativ. oBDS M3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "M3",
        "comment" : "Kategoriale Bewertung des Progesteron-Rezeptorstatus"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.AnteilPositiveZellen",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.AnteilPositiveZellen",
      "short" : "Anteil positive Zellen",
      "definition" : "Quantitative Bestimmung in Prozent. Komponente zu oBDS M3 (keine eigene Feldnummer, S3-Leitlinie).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.component.where(code.coding.system='http://snomed.info/sct' and code.coding.code='1234803000').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "M3 (Komponente)",
        "comment" : "Quantitative Progesteron-Bestimmung in Prozent; keine eigene oBDS-Feldnummer (S3-Leitlinie)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.Faerbeintensitaet",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.Faerbeintensitaet",
      "short" : "Färbeintensität",
      "definition" : "Qualitative Bewertung der Färbeintensität. Komponente zu oBDS M3 (keine eigene Feldnummer, S3-Leitlinie).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.component.where(code.coding.system='http://snomed.info/sct' and code.coding.code='1237278006').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "M3 (Komponente)",
        "comment" : "Progesteron-Färbeintensität; keine eigene oBDS-Feldnummer (S3-Leitlinie)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.StatusHer2neu",
      "path" : "OrganspezifischeZusatzmodule.Mamma.StatusHer2neu",
      "short" : "Her2neu-Status",
      "definition" : "Her2neu-Status des Tumorgewebes. oBDS M4 (XSD: Her2neuStatus)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='48676-1').valueCodeableConcept (Profil mii-pr-onko-mamma-status-her2neu)"
      },
      {
        "identity" : "oBDS",
        "map" : "M4",
        "comment" : "Her2neu Status"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.PraeoperativeMarkierung",
      "path" : "OrganspezifischeZusatzmodule.Mamma.PraeoperativeMarkierung",
      "short" : "Präoperative Markierung",
      "definition" : "Präoperative Drahtmarkierung durch Bildgebung gesteuert. oBDS M5 (XSD: PraeopDrahtmarkierung)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.where(meta.profile.contains('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-praeoperative-markierung'))"
      },
      {
        "identity" : "oBDS",
        "map" : "M5",
        "comment" : "Präoperative Drahtmarkierung durch Bildgebung gesteuert"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.PraeoperativeMarkierung.Modalitaet",
      "path" : "OrganspezifischeZusatzmodule.Mamma.PraeoperativeMarkierung.Modalitaet",
      "short" : "Markierungsmodalität",
      "definition" : "Art/Steuerung der präoperativen Markierung. Komponente zu oBDS M5.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.usedCode.coding.where(memberOf('mii-vs-onko-mamma-praeoperative-markierung-modalitaet'))"
      },
      {
        "identity" : "oBDS",
        "map" : "M5 (Komponente)",
        "comment" : "Modalität der präoperativen Markierung"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation",
      "path" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation",
      "short" : "Mamma-Operation",
      "definition" : "Operative Therapie; kein eigenes oBDS-Modulfeld (Abbildung über oBDS Kapitel 13/OPS).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.where(meta.profile.contains('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-operation'))"
      },
      {
        "identity" : "oBDS",
        "map" : "kein oBDS-Modulfeld",
        "comment" : "Operative Therapie über oBDS Kapitel 13 (OP) und OPS"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation.Operationstyp",
      "path" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation.Operationstyp",
      "short" : "Operationstyp",
      "definition" : "Art der Mamma-Operation. Kein oBDS-Modulfeld (OPS, oBDS Kapitel 13).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.code"
      },
      {
        "identity" : "oBDS",
        "map" : "kein oBDS-Modulfeld",
        "comment" : "Art der Mamma-Operation (BET, Mastektomie, Lymphknotenoperation, Rekonstruktion) nach OPS"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation.IntraoperativesImaging",
      "path" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation.IntraoperativesImaging",
      "short" : "Intraoperatives Präparatröntgen/Sonografie",
      "definition" : "Intraoperative Präparatkontrolle mittels Röntgen/Sonografie. oBDS M6 (XSD: IntraopPraeparatkontrolle)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.usedCode"
      },
      {
        "identity" : "oBDS",
        "map" : "M6",
        "comment" : "Intraoperatives Präparatröntgen/Sonografie"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.TumorgroesseInvasiv",
      "path" : "OrganspezifischeZusatzmodule.Mamma.TumorgroesseInvasiv",
      "short" : "Tumorgröße invasives Karzinom",
      "definition" : "Größte Ausdehnung des invasiven Karzinoms in mm. oBDS M7 (XSD: TumorgroesseInvasiv)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueQuantity (kein dediziertes Profil in v2027)"
      },
      {
        "identity" : "oBDS",
        "map" : "M7",
        "comment" : "Tumorgröße Invasives Karzinom"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.TumorgroesseDCIS",
      "path" : "OrganspezifischeZusatzmodule.Mamma.TumorgroesseDCIS",
      "short" : "Tumorgröße DCIS",
      "definition" : "Größte Ausdehnung des duktalen Carcinoma in situ in mm. oBDS M8 (XSD: TumorgroesseDCIS)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueQuantity (kein dediziertes Profil in v2027)"
      },
      {
        "identity" : "oBDS",
        "map" : "M8",
        "comment" : "Tumorgröße DCIS"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom",
      "short" : "Kolorektales Karzinom",
      "definition" : "Organspezifisches Modul Kolorektales Karzinom, oBDS KR1–KR10 (XSD Modul_Darm_Typ)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Bundle/Collection von KRK-spezifischen Ressourcen"
      },
      {
        "identity" : "oBDS",
        "map" : "Modul Kolorektales Karzinom (KR1–KR10)",
        "comment" : "Amtlicher Feldkatalog: https://basisdatensatz.de/module/6/kolorektales-karzinom; XSD Modul_Darm_Typ (oBDS v3.0.5)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.TumorLokalisation",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.TumorLokalisation",
      "short" : "Tumor Lokalisation",
      "definition" : "Tumor Lokalisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "KRK-spezifische Tumorlokalisation"
      },
      {
        "identity" : "oBDS",
        "map" : "KR1",
        "comment" : "Tumorlokalisation und anatomische Bezugspunkte"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.TumorLokalisation.AbstandAnokutanlinie",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.TumorLokalisation.AbstandAnokutanlinie",
      "short" : "Abstand Anokutanlinie",
      "definition" : "Höhe des Sitzes des Rektumkarzinoms ab Anokutanlinie in cm. oBDS KR1 (XSD: RektumAbstandAnokutanlinie)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='33748-5').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "KR1",
        "comment" : "Rektum: Abstand des Tumorunterrandes zur Anokutanlinie"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.BildgebendeVerfahren",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.BildgebendeVerfahren",
      "short" : "Bildgebende Verfahren",
      "definition" : "Bildgebende Verfahren",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "KRK-spezifische bildgebende Verfahren"
      },
      {
        "identity" : "oBDS",
        "map" : "KR5",
        "comment" : "Bildgebende Verfahren zur präoperativen Beurteilung"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.BildgebendeVerfahren.MRTMesorektale",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.BildgebendeVerfahren.MRTMesorektale",
      "short" : "MRT/CT Mesorektale Faszie",
      "definition" : "MRT oder Dünnschicht-CT mit Angabe Abstand mesorektale Faszie. oBDS KR5 (XSD: RektumMRTDuennschichtAngabemesorektaleFaszie)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='https://radelement.org' and code.coding.code='RDE96')"
      },
      {
        "identity" : "oBDS",
        "map" : "KR5",
        "comment" : "Rektum: MRT oder Dünnschicht-CT durchgeführt mit Angabe Abstand mesorektale Faszie"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.BildgebendeVerfahren.MRTMesorektale.AbstandMesorektale",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.BildgebendeVerfahren.MRTMesorektale.AbstandMesorektale",
      "short" : "Abstand Mesorektale Faszie",
      "definition" : "Abstand des Tumors zur mesorektalen Faszie in mm bei MRT/CT. oBDS KR5",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "KR5",
        "comment" : "Abstand zur mesorektalen Faszie in mm"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.BildgebendeVerfahren.MRTMesorektale.AbstandNichtVerfuegbarGrund",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.BildgebendeVerfahren.MRTMesorektale.AbstandNichtVerfuegbarGrund",
      "short" : "Grund für fehlende Abstandsmessung",
      "definition" : "Grund, warum der Abstand zur mesorektalen Faszie nicht verfügbar ist (nicht durchgeführt/nicht angegeben/unbekannt). Statusangabe zu oBDS KR5.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "KR5 (Statusangabe)",
        "comment" : "Status: D/N/U (durchgeführt aber nicht angegeben/nicht durchgeführt/unbekannt)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation",
      "short" : "KRK Operation",
      "definition" : "KRK Operation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.where(meta.profile.contains('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation'))"
      },
      {
        "identity" : "oBDS",
        "map" : "KR6, KR7, KR9",
        "comment" : "KRK-spezifische operative Verfahren"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.Operationstyp",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.Operationstyp",
      "short" : "Art des Eingriffs",
      "definition" : "Art des Eingriffs beim kolorektalen Karzinom. oBDS KR6 (XSD: ArtEingriff)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.code"
      },
      {
        "identity" : "oBDS",
        "map" : "KR6",
        "comment" : "Art des Eingriffs"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.ASAKlassifikation",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.ASAKlassifikation",
      "short" : "ASA-Klassifikation",
      "definition" : "American Society of Anesthesiologists Physical Status Classification System. oBDS KR9 (XSD: ASA)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='97816-3').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "KR9",
        "comment" : "ASA-Klassifikation"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.StomaMarkierung",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.StomaMarkierung",
      "short" : "Stoma Markierung",
      "definition" : "Präoperative Anzeichnung der Stomaposition. oBDS KR7 (XSD: RektumAnzeichnungStomaposition)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.where(meta.profile.contains('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung'))"
      },
      {
        "identity" : "oBDS",
        "map" : "KR7",
        "comment" : "Rektum: Präoperative Anzeichnung der Stomaposition"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.StomaMarkierung.Status",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.StomaMarkierung.Status",
      "short" : "Markierungsstatus",
      "definition" : "Status der präoperativen Stoma-Markierung. oBDS KR7",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.status"
      },
      {
        "identity" : "oBDS",
        "map" : "KR7",
        "comment" : "Status der präoperativen Stoma-Markierung"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.StomaMarkierung.StatusGrund",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.StomaMarkierung.StatusGrund",
      "short" : "Status Grund",
      "definition" : "Grund für Markierungsstatus (geplant/nicht geplant/abgelehnt). Komponente zu oBDS KR7.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.statusReason"
      },
      {
        "identity" : "oBDS",
        "map" : "KR7 (Komponente)",
        "comment" : "Grund für Markierungsstatus"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung",
      "short" : "Pathologische Bewertung",
      "definition" : "Pathologische Bewertung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "KRK-spezifische pathologische Bewertung"
      },
      {
        "identity" : "oBDS",
        "map" : "KR2–KR4, KR10",
        "comment" : "Pathologische Bewertung"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.ResektionsraenderAboral",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.ResektionsraenderAboral",
      "short" : "Resektionsrand aboral",
      "definition" : "Minimaler Abstand des aboralen Tumorrandes zum aboralen Resektionsrand in mm. oBDS KR2 (XSD: RektumAbstandAboralerResektionsrand)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='81175-2').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "KR2",
        "comment" : "Rektum: Minimaler Abstand vom aboralen Resektionsrand"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.ResektionsraenderCircumferell",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.ResektionsraenderCircumferell",
      "short" : "Resektionsrand circumferell",
      "definition" : "Minimaler Abstand des Tumors zur circumferentiellen Resektionsebene in mm. oBDS KR3 (XSD: RektumAbstandCircResektionsebene)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='81176-0').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "KR3",
        "comment" : "Rektum: Abstand zur circumferentiellen Resektionsebene"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.TMEQualitaet",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.TMEQualitaet",
      "short" : "TME Qualität",
      "definition" : "Qualität des TME-Präparats (Grad 1-3). oBDS KR4 (XSD: RektumQualitaetTME)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Specimen.where(meta.profile.contains('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen')).extension"
      },
      {
        "identity" : "oBDS",
        "map" : "KR4",
        "comment" : "Rektum: Qualität des TME-Präparats"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.RASMutation",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.RASMutation",
      "short" : "RAS-Mutation",
      "definition" : "Mutation des K-ras-Onkogens. oBDS KR10 (XSD: RASMutation)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation (kein dediziertes Profil in v2027; Abbildung über KDS-Modul Molekulares Tumorboard/MolGen)"
      },
      {
        "identity" : "oBDS",
        "map" : "KR10",
        "comment" : "Mutation K-ras-Onkogen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PostoperativeKomplikationen",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PostoperativeKomplikationen",
      "short" : "Postoperative Komplikationen",
      "definition" : "Postoperative Komplikationen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "KRK-spezifische postoperative Komplikationen"
      },
      {
        "identity" : "oBDS",
        "map" : "KR8",
        "comment" : "Postoperative Komplikationen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PostoperativeKomplikationen.Anastomoseninsuffizienz",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PostoperativeKomplikationen.Anastomoseninsuffizienz",
      "short" : "Anastomoseninsuffizienz",
      "definition" : "Grad der Anastomoseninsuffizienz beim Rektumkarzinom (Grad A/B/C). oBDS KR8 (XSD: GradRektumAnastomoseninsuffizienz)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://snomed.info/sct' and code.coding.code='361317002').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "KR8",
        "comment" : "Rektumkarzinom: Anastomoseninsuffizienz"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata",
      "path" : "OrganspezifischeZusatzmodule.Prostata",
      "short" : "Prostata",
      "definition" : "Organspezifisches Modul Prostatakarzinom, oBDS P1–P9 (XSD Modul_Prostata_Typ)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Bundle/Collection von Prostata-spezifischen Ressourcen"
      },
      {
        "identity" : "oBDS",
        "map" : "Modul Prostata (P1–P9)",
        "comment" : "Amtlicher Feldkatalog: https://basisdatensatz.de/module/4/prostatakarzinom; XSD Modul_Prostata_Typ (oBDS v3.0.5)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore",
      "short" : "Gleason Score",
      "definition" : "Gleason-Score. oBDS P1 (XSD: GleasonScore)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://snomed.info/sct' and code.coding.code='372278000') (Profil mii-pr-onko-prostata-gleason-score-gesamt; LOINC-Zweitkodierung 35266-6)"
      },
      {
        "identity" : "oBDS",
        "map" : "P1",
        "comment" : "Gleason-Score"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore.Score",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore.Score",
      "short" : "Gleason Score",
      "definition" : "Summe aus primärem und sekundärem Pattern. oBDS P1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "P1",
        "comment" : "Gleason Score Gesamtwert"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore.GradeGroup",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore.GradeGroup",
      "short" : "Grade Group",
      "definition" : "Internationale Standard Grade Group (1-5). Keine eigene oBDS-Feldnummer (ISUP-Ableitung aus P1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://snomed.info/sct' and code.coding.code='1812491000004107').valueCodeableConcept (Profil mii-pr-onko-prostate-gleason-grade-group; LOINC-Zweitkodierung 94734-1)"
      },
      {
        "identity" : "oBDS",
        "map" : "P1 (abgeleitet)",
        "comment" : "Internationale Standard Grade Group (1-5); keine eigene oBDS-Feldnummer (ISUP-Ableitung)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonPattern",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonPattern",
      "short" : "Gleason Pattern",
      "definition" : "Gleason Patterns (primär/sekundär/tertiär). Komponenten zu oBDS P1 (keine eigene Feldnummer).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.memberOf('mii-vs-onko-prostata-gleason-primary-secondary-tertiary'))"
      },
      {
        "identity" : "oBDS",
        "map" : "P1 (Komponente)",
        "comment" : "Gleason Patterns (primär/sekundär/tertiär); keine eigene oBDS-Feldnummer"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonPattern.PatternTyp",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonPattern.PatternTyp",
      "short" : "Pattern Typ",
      "definition" : "Primäres, sekundäres oder tertiäres Gleason Pattern.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code"
      },
      {
        "identity" : "oBDS",
        "map" : "P1 (Komponente)",
        "comment" : "Art des Gleason Patterns (primär/sekundär/tertiär)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonPattern.PatternWert",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonPattern.PatternWert",
      "short" : "Pattern Wert",
      "definition" : "Gleason Pattern Wert (1-5, ab 3 als maligne).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "P1 (Komponente)",
        "comment" : "Gleason Pattern Wert (1-5, ab 3 maligne)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.AnlassGleasonScore",
      "path" : "OrganspezifischeZusatzmodule.Prostata.AnlassGleasonScore",
      "short" : "Anlass Gleason-Score",
      "definition" : "Anlass der Gleason-Score-Bestimmung (Stanze/OP). oBDS P2 (XSD: AnlassGleasonScore)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation (Anlass als Komponente/Methode der Gleason-Score-Observation; kein dediziertes Profil in v2027)"
      },
      {
        "identity" : "oBDS",
        "map" : "P2",
        "comment" : "Anlass Gleason (Stanze/OP)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse",
      "short" : "Biopsie Ergebnisse",
      "definition" : "Prostatastanzbiopsie-Ergebnisse. oBDS P3–P6",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation Collection"
      },
      {
        "identity" : "oBDS",
        "map" : "P3–P6",
        "comment" : "Prostatabiopsie-Ergebnisse"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.DatumStanzen",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.DatumStanzen",
      "short" : "Datum der Stanzen",
      "definition" : "Datum der Entnahme der Stanzen. oBDS P3 (XSD: DatumStanzen)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Specimen.collection.collectedDateTime bzw. Observation.effectiveDateTime der Stanzen-Observations"
      },
      {
        "identity" : "oBDS",
        "map" : "P3",
        "comment" : "Datum der Stanzen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.AnzahlStanzen",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.AnzahlStanzen",
      "short" : "Anzahl Stanzen",
      "definition" : "Gesamtanzahl der entnommenen Biopsie-Stanzen. oBDS P4 (XSD: AnzahlStanzen)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='33747-0').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "P4",
        "comment" : "Anzahl der Stanzen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.AnzahlPositiverStanzen",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.AnzahlPositiverStanzen",
      "short" : "Anzahl positive Stanzen",
      "definition" : "Anzahl der tumorpositiven Stanzen. oBDS P5 (XSD: AnzahlPosStanzen)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='33746-2').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "P5",
        "comment" : "Anzahl der positiven Stanzen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.KarzinomBefallStanze",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.KarzinomBefallStanze",
      "short" : "Karzinom-Befall je Stanze",
      "definition" : "Prozentuale Ausdehnung des Karzinoms in der am stärksten befallenen Stanze. oBDS P6 (XSD: CaBefallStanze)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='44637-7').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "P6",
        "comment" : "Ca-Befall Stanze (prozentualer Befall der am stärksten befallenen Stanze)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.PSAWert",
      "path" : "OrganspezifischeZusatzmodule.Prostata.PSAWert",
      "short" : "PSA-Wert",
      "definition" : "Prostataspezifisches Antigen in ng/ml für Diagnostik und Verlaufskontrolle. oBDS P7 (XSD: PSA)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='2857-1').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "P7",
        "comment" : "PSA-Wert"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.DatumPSA",
      "path" : "OrganspezifischeZusatzmodule.Prostata.DatumPSA",
      "short" : "Datum PSA-Wert",
      "definition" : "Datum der Blutentnahme zur PSA-Bestimmung. oBDS P8 (XSD: DatumPSA)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='2857-1').effectiveDateTime"
      },
      {
        "identity" : "oBDS",
        "map" : "P8",
        "comment" : "Datum PSA-Wert"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen",
      "path" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen",
      "short" : "Chirurgische Komplikationen",
      "definition" : "Postoperative Komplikation Clavien-Dindo Grad III/IV innerhalb der ersten 6 Monate. oBDS P9 (XSD: KomplPostOP_ClavienDindo)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(method.coding.system='http://snomed.info/sct' and method.coding.code='789278003')"
      },
      {
        "identity" : "oBDS",
        "map" : "P9",
        "comment" : "Postoperative Komplikation (Clavien-Dindo Grad III/IV innerhalb 6 Monate)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen.ClavienDindoGrad",
      "path" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen.ClavienDindoGrad",
      "short" : "Clavien-Dindo Grad",
      "definition" : "Graduierung postoperativer Komplikationen nach Clavien-Dindo. oBDS P9",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "P9",
        "comment" : "Clavien-Dindo Klassifikation postoperativer Komplikationen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen.KomplikationsArt",
      "path" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen.KomplikationsArt",
      "short" : "Komplikationsart",
      "definition" : "Spezifische Art der postoperativen Komplikation. Komponente zu oBDS P9 (keine eigene Feldnummer).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.component.where(code.coding.system='http://loinc.org' and code.coding.code='LA462-5').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "P9 (Komponente)",
        "comment" : "Spezifische Art der postoperativen Komplikation; keine eigene oBDS-Feldnummer"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom",
      "short" : "Malignes Melanom",
      "definition" : "Organspezifisches Modul Malignes Melanom, oBDS MM1–MM4 (XSD Modul_Malignes_Melanom_Typ)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Bundle/Collection von Melanom-spezifischen Ressourcen"
      },
      {
        "identity" : "oBDS",
        "map" : "Modul Malignes Melanom (MM1–MM4)",
        "comment" : "Amtlicher Feldkatalog: https://basisdatensatz.de/module/3/malignes-melanom; XSD Modul_Malignes_Melanom_Typ (oBDS v3.0.5)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.Sicherheitsabstand",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.Sicherheitsabstand",
      "short" : "Sicherheitsabstand Primärtumor",
      "definition" : "Minimaler Sicherheitsabstand zum Primärtumor in mm. oBDS MM1 (XSD: Sicherheitsabstand_Primaertumor)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://snomed.info/sct' and code.coding.code='396511007').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "MM1",
        "comment" : "Sicherheitsabstand Primärtumor in mm nach definitivem operativem Eingriff"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.BreslowTiefe",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.BreslowTiefe",
      "short" : "Tumordicke (Breslow)",
      "definition" : "Breslow-Tumordicke in mm beim Malignen Melanom der Haut. oBDS MM2 (XSD: Tumordicke)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://snomed.info/sct' and code.coding.code='106243009').valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "MM2",
        "comment" : "Tumordicke (Breslow) in mm - vertikale Tumordicke von der Granularschicht der Epidermis bis zur tiefsten Tumorinvasion"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH",
      "short" : "Laktatdehydrogenase",
      "definition" : "Laktatdehydrogenase als prognostischer Marker. oBDS MM3 (XSD: LDH)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.memberOf('mii-vs-onko-melanom-ldh'))"
      },
      {
        "identity" : "oBDS",
        "map" : "MM3",
        "comment" : "LDH als prognostischer Marker beim metastasierten Melanom"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH.Wert",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH.Wert",
      "short" : "LDH-Wert",
      "definition" : "Laktatdehydrogenase Aktivität in U/L als prognostischer Marker. oBDS MM3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueQuantity"
      },
      {
        "identity" : "oBDS",
        "map" : "MM3",
        "comment" : "LDH-Wert in U/L"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH.Bewertung",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH.Bewertung",
      "short" : "LDH-Bewertung",
      "definition" : "Klinische Bewertung des LDH-Werts (normal/erhöht). Komponente zu oBDS MM3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.interpretation"
      },
      {
        "identity" : "oBDS",
        "map" : "MM3 (Komponente)",
        "comment" : "Bewertung des LDH-Werts (normal/erhöht)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.Ulzeration",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.Ulzeration",
      "short" : "Ulzeration",
      "definition" : "Pathologisches Kriterium der Ulzeration beim Malignen Melanom der Haut. oBDS MM4 (XSD: Ulzeration)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://snomed.info/sct' and code.coding.code='6270001000004106').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "MM4",
        "comment" : "Ulzeration der Epidermis über dem Melanom (J = Ja, N = Nein, U = Unbekannt)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.ModulAllgemein",
      "path" : "OrganspezifischeZusatzmodule.ModulAllgemein",
      "short" : "Modul Allgemein",
      "definition" : "Organübergreifende Zusatzitems (XSD Modul_Allgemein_Typ). Im Feldkatalog auf basisdatensatz.de noch organbezogen geführt (M9/M10 bzw. KR11/KR12), im oBDS-XML-Schema zentralisiert.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Organübergreifende Ressourcen"
      },
      {
        "identity" : "oBDS",
        "map" : "Modul Allgemein",
        "comment" : "XSD Modul_Allgemein_Typ (oBDS v3.0.5); im Web-Feldkatalog organbezogen als M9/M10 bzw. KR11/KR12 geführt"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.ModulAllgemein.Sozialdienstkontakt",
      "path" : "OrganspezifischeZusatzmodule.ModulAllgemein.Sozialdienstkontakt",
      "short" : "Datum des Sozialdienstkontaktes",
      "definition" : "Datum des Sozialdienstkontaktes. Web-Feldkatalog: M9 (Mamma) / KR11 (Kolorektal); XSD: Modul_Allgemein.Sozialdienstkontakt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.where(code.coding.system='http://snomed.info/sct' and code.coding.code='306238000').performedDateTime (Profil mii-pr-onko-mamma-sozialdienst)"
      },
      {
        "identity" : "oBDS",
        "map" : "M9 / KR11",
        "comment" : "Datum des Sozialdienstkontaktes"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.ModulAllgemein.Psychoonkologiekontakt",
      "path" : "OrganspezifischeZusatzmodule.ModulAllgemein.Psychoonkologiekontakt",
      "short" : "Datum des Psychoonkologiekontaktes",
      "definition" : "Datum des Psychoonkologiekontaktes. XSD: Modul_Allgemein.Psychoonkologiekontakt (kein Feld im Web-Feldkatalog der Organmodule)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure (kein dediziertes Profil in v2027)"
      },
      {
        "identity" : "oBDS",
        "map" : "Modul_Allgemein",
        "comment" : "Datum des Psychoonkologiekontaktes (nur XSD, kein Web-Feldkatalog-Eintrag der Organmodule)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.ModulAllgemein.Studienteilnahme",
      "path" : "OrganspezifischeZusatzmodule.ModulAllgemein.Studienteilnahme",
      "short" : "Datum der Studienrekrutierung",
      "definition" : "Datum der Studienrekrutierung. Web-Feldkatalog: M10 (Mamma) / KR12 (Kolorektal); XSD: Modul_Allgemein.Studienteilnahme",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "ResearchSubject.period.start (Profil mii-pr-onko-studienteilnahme, oBDS Kapitel 24)"
      },
      {
        "identity" : "oBDS",
        "map" : "M10 / KR12",
        "comment" : "Datum der Studienrekrutierung"
      }]
    }]
  }
}

```
