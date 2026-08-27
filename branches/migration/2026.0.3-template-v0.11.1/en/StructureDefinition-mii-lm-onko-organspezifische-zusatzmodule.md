# MII LM Onkologie Organspezifische Zusatzmodule - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Onkologie Organspezifische Zusatzmodule**

## Logical Model: MII LM Onkologie Organspezifische Zusatzmodule 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/OrganspezifischeZusatzmodule | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_LM_Onko_Organspezifische_Zusatzmodule |

 
Logisches Modell für die organspezifischen Zusatzmodule des oBDS 

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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/OrganspezifischeZusatzmodule",
  "version" : "2026.0.3",
  "name" : "MII_LM_Onko_Organspezifische_Zusatzmodule",
  "title" : "MII LM Onkologie Organspezifische Zusatzmodule",
  "status" : "active",
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Logisches Modell für die organspezifischen Zusatzmodule des oBDS",
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
      "definition" : "Logisches Modell für die organspezifischen Zusatzmodule des oBDS"
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma",
      "path" : "OrganspezifischeZusatzmodule.Mamma",
      "short" : "Mamma",
      "definition" : "Mamma",
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
        "map" : "Mamma-Zusatzmodul nach oBDS",
        "comment" : "Basiert auf oBDS Mammakarzinom-Modul: https://www.basisdatensatz.de/module/5/mammakarzinom"
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
        "comment" : "Menopausenstatus - oBDS 2021: perimenopausal wird unter prämenopausal subsumiert"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen",
      "short" : "Rezeptorstatus Estrogen",
      "definition" : "Rezeptorstatus Estrogen",
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
        "map" : "M2.1",
        "comment" : "Estrogen-Rezeptorstatus - Duale Kodierung: oBDS-Definition und S3-Leitlinien-Definition"
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
        "map" : "M2.1.1",
        "comment" : "Kategoriale Bewertung des Estrogen-Rezeptorstatus"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.AnteilPositiveZellen",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.AnteilPositiveZellen",
      "short" : "Anteil positive Zellen",
      "definition" : "Quantitative Bestimmung in Prozent.",
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
        "map" : "M2.1.2",
        "comment" : "Quantitative Estrogen-Bestimmung in Prozent"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.Faerbeintensitaet",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusEstrogen.Faerbeintensitaet",
      "short" : "Färbeintensität",
      "definition" : "Qualitative Bewertung der Färbeintensität.",
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
        "map" : "M2.1.3",
        "comment" : "Estrogen-Färbeintensität"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron",
      "short" : "Rezeptorstatus Progesteron",
      "definition" : "Rezeptorstatus Progesteron",
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
        "map" : "M2.2",
        "comment" : "Progesteron-Rezeptorstatus"
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
        "map" : "M2.2.1",
        "comment" : "Kategoriale Bewertung des Progesteron-Rezeptorstatus"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.AnteilPositiveZellen",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.AnteilPositiveZellen",
      "short" : "Anteil positive Zellen",
      "definition" : "Quantitative Bestimmung in Prozent.",
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
        "map" : "M2.2.2",
        "comment" : "Quantitative Progesteron-Bestimmung in Prozent"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.Faerbeintensitaet",
      "path" : "OrganspezifischeZusatzmodule.Mamma.RezeptorstatusProgesteron.Faerbeintensitaet",
      "short" : "Färbeintensität",
      "definition" : "Qualitative Bewertung der Färbeintensität.",
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
        "map" : "M2.2.3",
        "comment" : "Progesteron-Färbeintensität"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.PraeoperativeMarkierung",
      "path" : "OrganspezifischeZusatzmodule.Mamma.PraeoperativeMarkierung",
      "short" : "Präoperative Markierung",
      "definition" : "Präoperative Markierung",
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
        "comment" : "Präoperative Markierung"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.PraeoperativeMarkierung.Modalitaet",
      "path" : "OrganspezifischeZusatzmodule.Mamma.PraeoperativeMarkierung.Modalitaet",
      "short" : "Markierungsmodalität",
      "definition" : "Art der präoperativen Markierung",
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
        "map" : "M5.1",
        "comment" : "Modalität der präoperativen Markierung"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation",
      "path" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation",
      "short" : "Mamma-Operation",
      "definition" : "Mamma-Operation",
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
        "map" : "M4",
        "comment" : "Mamma-Operationen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation.Operationstyp",
      "path" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation.Operationstyp",
      "short" : "Operationstyp",
      "definition" : "Art der Mamma-Operation.",
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
        "map" : "M4.1",
        "comment" : "Art der Mamma-Operation (BET, Mastektomie, Lymphknotenoperation, Rekonstruktion)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation.IntraoperativesImaging",
      "path" : "OrganspezifischeZusatzmodule.Mamma.MammaOperation.IntraoperativesImaging",
      "short" : "Intraoperatives Imaging",
      "definition" : "Intraoperatives Imagung und weitere Markierungen und Hilfsmittel während der Operation.",
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
        "map" : "M4.2",
        "comment" : "Intraoperative Hilfsmittel und Markierungen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom",
      "short" : "Kolorektales Karzinom",
      "definition" : "Kolorektales Karzinom",
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
        "map" : "KRK-Zusatzmodul nach oBDS",
        "comment" : "Organspezifische Erweiterungen für Kolorektales Karzinom basierend auf oBDS-Modul"
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
      "definition" : "Höhe des Sitzes des Rektumkarzinoms ab Anokutanlinie in cm. oBDS KR1",
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
        "comment" : "Rektum: Höhe des Sitzes des Rektumkarzinoms ab Anokutanlinie in cm"
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
      "definition" : "MRT/CT Mesorektale Faszie",
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
      "definition" : "Grund warum der Abstand zur mesorektalen Faszie nicht verfügbar ist (nicht durchgeführt/nicht angegeben/unbekannt).",
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
        "map" : "KR5",
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
        "map" : "KR-Operation",
        "comment" : "KRK-spezifische operative Verfahren"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.Operationstyp",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.Operationstyp",
      "short" : "Operationstyp",
      "definition" : "Art der kolorektalen Operation (TME, PME, lokale Exzision, etc.).",
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
        "map" : "OPS",
        "comment" : "Art der kolorektalen Operation nach OPS-Katalog"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.ASAKlassifikation",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.Operation.ASAKlassifikation",
      "short" : "ASA-Klassifikation",
      "definition" : "American Society of Anesthesiologists Physical Status Classification System. oBDS KR4",
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
      "definition" : "Stoma Markierung",
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
      "definition" : "Status der präoperativen Stoma-Markierung.",
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
      "definition" : "Grund für Markierungsstatus (geplant/nicht geplant/abgelehnt).",
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
        "map" : "KR7",
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
        "map" : "KR2-KR4",
        "comment" : "Pathologische Bewertung"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.ResektionsraenderAboral",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.ResektionsraenderAboral",
      "short" : "Resektionsrand aboral",
      "definition" : "Minimaler Abstand des aboralen Tumorrandes zum aboralen Resektionsrand in mm. oBDS KR2",
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
        "comment" : "Minimaler Abstand des aboralen Tumorrandes zum aboralen Resektionsrand in mm"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.ResektionsraenderCircumferell",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.ResektionsraenderCircumferell",
      "short" : "Resektionsrand circumferell",
      "definition" : "Minimaler Abstand des Tumors zur circumferellen Resektionsebene in mm. oBDS KR3",
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
        "comment" : "Minimaler Abstand des Tumors zur circumferellen Resektionsebene in mm"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.TMEQualitaet",
      "path" : "OrganspezifischeZusatzmodule.KolorektalesKarzinom.PathologischeBewertung.TMEQualitaet",
      "short" : "TME Qualität",
      "definition" : "Qualität der totalen mesorektalen Exzision (Grad 1-3).",
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
      "definition" : "Bewertung der Anastomoseninsuffizienz nach Grad A/B/C.",
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
      "definition" : "Prostata",
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
        "map" : "Prostata-Zusatzmodul nach oBDS",
        "comment" : "Organspezifische Erweiterungen für Prostatakarzinom basierend auf oBDS-Modul"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.PSAWert",
      "path" : "OrganspezifischeZusatzmodule.Prostata.PSAWert",
      "short" : "PSA-Wert",
      "definition" : "Prostataspezifisches Antigen in ng/ml für Diagnostik und Verlaufskontrolle.",
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
        "map" : "P1",
        "comment" : "PSA-Wert als Tumormarker für Diagnostik und Verlaufskontrolle"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonPattern",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonPattern",
      "short" : "Gleason Pattern",
      "definition" : "Gleason Pattern",
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
        "map" : "P2",
        "comment" : "Gleason Pattern (primär, sekundär, tertiär) für histopathologische Klassifikation"
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
        "map" : "P2.1",
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
        "map" : "P2.2",
        "comment" : "Gleason Pattern Wert (1-5, ab 3 maligne)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore",
      "short" : "Gleason Score",
      "definition" : "Gleason Score",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.where(code.coding.system='http://loinc.org' and code.coding.code='44642-7')"
      },
      {
        "identity" : "oBDS",
        "map" : "P3",
        "comment" : "Gleason Score als Summe der Patterns"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore.Score",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore.Score",
      "short" : "Gleason Score",
      "definition" : "Summe aus primärem und sekundärem Pattern.",
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
        "map" : "P3.1",
        "comment" : "Gleason Score Gesamtwert"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore.GradeGroup",
      "path" : "OrganspezifischeZusatzmodule.Prostata.GleasonScore.GradeGroup",
      "short" : "Grade Group",
      "definition" : "Internationale Standard Grade Group (1-5).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.component.where(code.coding.system='http://loinc.org' and code.coding.code='79892-6').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "P3.2",
        "comment" : "Internationale Standard Grade Group (1-5)"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse",
      "short" : "Biopsie Ergebnisse",
      "definition" : "Biopsie Ergebnisse",
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
        "map" : "P4",
        "comment" : "Prostatabiopsie-Ergebnisse"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.AnzahlStanzen",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.AnzahlStanzen",
      "short" : "Anzahl Stanzen",
      "definition" : "Gesamtanzahl der entnommenen Biopsie-Stanzen.",
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
        "map" : "P4.1",
        "comment" : "Gesamtanzahl entnommener Biopsie-Stanzen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.AnzahlPositiverStanzen",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.AnzahlPositiverStanzen",
      "short" : "Anzahl positive Stanzen",
      "definition" : "Anzahl der tumorpositiven Stanzen.",
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
        "map" : "P4.2",
        "comment" : "Anzahl tumorpositiver Stanzen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.KarzinomBefallStanze",
      "path" : "OrganspezifischeZusatzmodule.Prostata.BiopsieErgebnisse.KarzinomBefallStanze",
      "short" : "Karzinom-Befall je Stanze",
      "definition" : "Prozentuale Ausdehnung des Karzinoms in der Stanze.",
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
        "map" : "P4.3",
        "comment" : "Prozentuale Ausdehnung Karzinom je Stanze"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen",
      "path" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen",
      "short" : "Chirurgische Komplikationen",
      "definition" : "Chirurgische Komplikationen",
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
        "map" : "P5",
        "comment" : "Postoperative Komplikationen nach Prostatektomie"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen.ClavienDindoGrad",
      "path" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen.ClavienDindoGrad",
      "short" : "Clavien-Dindo Grad",
      "definition" : "Graduierung postoperativer Komplikationen nach Clavien-Dindo.",
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
        "map" : "P5.1",
        "comment" : "Clavien-Dindo Klassifikation postoperativer Komplikationen"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen.KomplikationsArt",
      "path" : "OrganspezifischeZusatzmodule.Prostata.ChirurgischeKomplikationen.KomplikationsArt",
      "short" : "Komplikationsart",
      "definition" : "Spezifische Art der postoperativen Komplikation.",
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
        "map" : "P5.2",
        "comment" : "Spezifische Art der postoperativen Komplikation"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom",
      "short" : "Malignes Melanom",
      "definition" : "Malignes Melanom",
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
        "map" : "Melanom-Zusatzmodul nach oBDS",
        "comment" : "Organspezifische Erweiterungen für Malignes Melanom basierend auf oBDS-Modul"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.Sicherheitsabstand",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.Sicherheitsabstand",
      "short" : "Sicherheitsabstand Primärtumor",
      "definition" : "Minimaler Sicherheitsabstand zum Primärtumor in mm gemäß oBDS MM1",
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
        "comment" : "Minimaler Sicherheitsabstand zum Primärtumor in mm nach definitivem operativem Eingriff"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.BreslowTiefe",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.BreslowTiefe",
      "short" : "Breslow-Tiefe",
      "definition" : "Breslow-Tumordicke in mm beim Malignen Melanom der Haut",
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
        "map" : "Breslow",
        "comment" : "Breslow-Tumordicke in mm - vertikale Tumordicke von der Granularschicht der Epidermis bis zur tiefsten Tumorinvasion"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.Ulzeration",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.Ulzeration",
      "short" : "Ulzeration",
      "definition" : "Pathologisches Kriterium der Ulzeration beim Malignen Melanom der Haut gemäß oBDS MM4",
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
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH",
      "short" : "Laktatdehydrogenase",
      "definition" : "Laktatdehydrogenase",
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
        "map" : "LDH",
        "comment" : "Laktatdehydrogenase als prognostischer Marker beim metastasierten Melanom"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH.Wert",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH.Wert",
      "short" : "LDH-Wert",
      "definition" : "Laktatdehydrogenase Aktivität in U/L als prognostischer Marker",
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
        "map" : "LDH",
        "comment" : "LDH-Wert in U/L"
      }]
    },
    {
      "id" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH.Bewertung",
      "path" : "OrganspezifischeZusatzmodule.MalignesMelanom.LDH.Bewertung",
      "short" : "LDH-Bewertung",
      "definition" : "Klinische Bewertung des LDH-Werts (normal/erhöht)",
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
        "map" : "LDH",
        "comment" : "Bewertung des LDH-Werts (normal/erhöht)"
      }]
    }]
  }
}

```
