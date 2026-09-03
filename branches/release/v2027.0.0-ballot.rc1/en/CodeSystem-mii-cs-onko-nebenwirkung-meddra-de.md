# MII CS Onko Nebenwirkung MedDRA Deutsch (Supplement) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onko Nebenwirkung MedDRA Deutsch (Supplement)**

## CodeSystem: MII CS Onko Nebenwirkung MedDRA Deutsch (Supplement) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-meddra-de | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_CS_Onko_Nebenwirkung_MedDRA_DE |

 
Deutschsprachiges CodeSystem-Supplement für MedDRA-Codes der CTCAE v4.03 Nebenwirkungen. Quelle: §65c-Plattform / Krebsregister-Liste (Deutsche Übersetzung CTCAE Version 4). 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem Supplement is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-nebenwirkung-meddra-de",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.onkologie"
      },
      {
        "url" : "version",
        "valueString" : "2026.0.3"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
  },
  "language" : "de-DE",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
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
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-meddra-de",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Onko_Nebenwirkung_MedDRA_DE",
  "title" : "MII CS Onko Nebenwirkung MedDRA Deutsch (Supplement)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T08:25:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Deutschsprachiges CodeSystem-Supplement für MedDRA-Codes der CTCAE v4.03 Nebenwirkungen. Quelle: §65c-Plattform / Krebsregister-Liste (Deutsche Übersetzung CTCAE Version 4).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "supplement",
  "supplements" : "https://www.meddra.org",
  "property" : [{
    "code" : "grad3",
    "description" : "CTCAE Grad 3 Kriterium (deutsch)",
    "type" : "string"
  },
  {
    "code" : "grad4",
    "description" : "CTCAE Grad 4 Kriterium (deutsch)",
    "type" : "string"
  },
  {
    "code" : "grad5",
    "description" : "CTCAE Grad 5 Kriterium (deutsch)",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "10002272",
    "display" : "Anämie",
    "definition" : "Eine Störung, die durch eine Verminderung der Menge des Hämoglobins in 100 ml Blut gekennzeichnet ist. Zeichen und Symptome der Anämie können Blässe der Haut und der Schleimhäute, Kurzatmigkeit, Herzklopfen, weiche systolische Geräusche, Trägheit und Ermüdbarkeit einschließen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blutarmut"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Hämoglobin (Hb) <8.0 g/dL; <4.9 mmol/L; <80 g/L; Transfusion angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013442",
    "display" : "Disseminierte intravaskuläre Koagulation",
    "definition" : "Eine Störung, die durch eine systemische krankhafte Aktivierung der Blutgerinnungsmechanismen gekennzeichnet ist und Gerinnselbildung im ganzen Körper zur Folge hat. Es existiert ein erhöhtes Blutungsrisikos, da der Körper an Blutplättchen und Gerinnungsfaktoren verarmt ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gerinnungsstörung"
    },
    {
      "language" : "de-DE",
      "value" : "disseminierte intravasale Koagulopathie"
    },
    {
      "language" : "de-DE",
      "value" : "ausgedehnte intravaskuläre Koagulation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Laborbefunde und Blutungsneigung"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10016288",
    "display" : "Fieberhafte Neutropenie",
    "definition" : "Eine Störung, die durch eine absolute Neutrophilenanzahl von <1000/mm3 und einer einmaligen Temperatur von >38.3 Grad C oder einer anhaltenden Tempaeratur von >=38 Grad C für länger als eine Stunde gekennzeichnet ist.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "Absolute Neutrophilenzahl <1000/mm3 mit einer einzelnen Temperatur von >38.3 Grad C oder einer andauernden Temperatur von >=38 Grad C über mehr als eine Std."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019491",
    "display" : "Hämolyse",
    "definition" : "Eine Störung, die als Ergebnis einer Laboruntersuchung durch eine verbreitete Membranzerstörung von Erythrozyten gekennzeichnet ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blutauflösung"
    },
    {
      "language" : "de-DE",
      "value" : "Transfusionszwischenfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion oder medizinische Intervention notwendig (z. B. Steroide)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019515",
    "display" : "Hämolytischurämisches Syndrom (HUS)",
    "definition" : "Eine Störung, die durch eine Form der thrombotischen Mikroangiopathie mit Nierenversagen, hämolytischer Anämie und schwerer Thrombozytopenie gekennzeichnet ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Transfusionszwischenfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Laborergebnisse mit klinischen Auswirkungen (z. B. Nierenversagen, Petechien: Kapillarblutungen an Haut und Schleimhaut)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; z. B. ZNS-Blutung oder Thrombose / Embolie oder Nierenversagen)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10048580",
    "display" : "Hypozelluläres Knochenmark",
    "definition" : "Eine Störung, die durch eine Verminderung der Menge des Hämoglobins in 100 ml Blut gekennzeichnet ist. Zeichen und Symptome der Anämie können Blässe der Haut und der Schleimhäute, Kurzatmigkeit, Herzklopfen, weiche systolische Geräusche, Trägheit und Ermüdbarkeit einschließen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zellarmes Knochenmark"
    },
    {
      "language" : "de-DE",
      "value" : "Knochenmarkhypozellularität"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Hämoglobin (Hb) <8.0 g/dL; <4.9 mmol/L; <80 g/L; Transfusion angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10024378",
    "display" : "Leukozytose",
    "definition" : "Eine Störung, gekennzeichnet durch Laboruntersuchungen, die eine erhöhte Anzahl weißer Zellen im Blut anzeigen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Erhöhung der weißen Blutkörperchen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">100000/mm3"
    },
    {
      "code" : "grad4",
      "valueString" : "Klinische Manifestation einer Leukostasis; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10025182",
    "display" : "Lymphknotenschmerzen",
    "definition" : "Eine Störung, die durch das Gefühl deutlicher Beschwerden in einem Lymphknoten gekennzeichnet ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; begrenzte Selbstversorgung bei ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10041633",
    "display" : "Milzerkrankung",
    "definition" : "Eine Erkrankung der Milz.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störung der Milzfunktion"
    },
    {
      "language" : "de-DE",
      "value" : "Erkrankung der Milz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10043648",
    "display" : "Thrombotische thrombozytopenische Purpura",
    "definition" : "Eine Störung, gekennzeichnet durch das Vorhandensein einer mikroangiopathischen hämolytischen Anämie, thrombozytopenischen Purpura, Fieber, renaler Abnormitäten und neurologischer Abnormitäten wie Krämpfe, Halbseitenlähmung und Sehstörungen. Es handelt sich um eine akute oder subakute Situation.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Thrombotischthrombozytopenische Purpura"
    },
    {
      "language" : "de-DE",
      "value" : "Moschcowitz Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "TTP"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Laboruntersuchungen mit klinischen Auswirkungen (z. B. Niereninsuffizienz, Petechien)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; z. B. ZNS-Blutung oder Thrombose / Embolie oder Nierenversagen)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10005329",
    "display" : "Störungen des Blut- und Lymphsystems - Sonstige, zu spezifizieren",
    "definition" : "Sonstige zu spezifizierende Störungen des hämatopoietischen und/oder lymphoiden Gewebes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störungen des hämatopoietischen und lymphoiden Systems"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere oder medizinisch signifikante aber nicht unmittelbar das Leben bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10051592",
    "display" : "Akutes Koronarsyndrom",
    "definition" : "Eine Störung, gekennzeichnet durch Zeichen und Symptome, verbunden mit einer akuten Ischämie des Herzmuskels als Folge einer koronaren Herzerkrankung. Die klinische Präsentation deckt ein Spektrum von Herzerkrankungen von der instabilen Angina pectoris bis zum Myokardinfarkt ab",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Akute Herzstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch, instabile Angina und / oder akuter Myokardinfarkt, kardiale Enzyme anormal, hämodynamisch stabil"
    },
    {
      "code" : "grad4",
      "valueString" : "Symptomatisch, instabile Angina und / oder akuter Myokardinfarkt, kardiale Enzyme anormal, hämodynamisch instabil."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061589",
    "display" : "Aortenklappenkrankheit",
    "definition" : "Eine Störung, gekennzeichnet durch einen Defekt der Aortenklappenfunktion oder Struktur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Aortenklappenstenose"
    },
    {
      "language" : "de-DE",
      "value" : "Aortenklappeninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch; schwerer Rückfluss oder schwere Stenose durch Bildgebung; Symptome kontrolliert durch medizinische Intervention"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. Klappenersatz, Klappenplastik)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003586",
    "display" : "Asystolie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie ohne kardiale elektrische Aktivität. Typischerweise ist dies begleitet von einer Beendigung der Pumpfunktion des Herzens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzstillstand"
    },
    {
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003674",
    "display" : "AV Block ersten Grades",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Zeitverzögerung die für Leitung eines elektrischen Impulses durch den atrioventrikulären (AV)-Knoten über 0.2 Sekunden benötigt wird; Verlängerung des PR-Intervalls größer als 200 Millisekunden.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10027786",
    "display" : "AV Block, Mobitz Typ II",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit relativ konstanten PR Intervallen vor dem Block eines atrialen Impulses. Dies ist das Ergebnis eines intermittierenden Versagens des atrialen elektrischen Impulses durch den AV-Knoten zu den Kammern.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. Schrittmacher)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003673",
    "display" : "AV Block, vollständiger",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit komplettem Versagen der atrialen elektrischen Impulsleitung durch den AV-Knoten zu den Kammern.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Kompletter AV'-Block"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. Schrittmacher)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10053565",
    "display" : "Herzbeuteltamponade",
    "definition" : "Eine Störung, gekennzeichnet durch einen Anstieg des intraperikardialen Drucks aufgrund der Ansammlung von Blut oder Flüssigkeit im Perikard (genauer: Herzbeutel).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034484",
    "display" : "Herzbeutelentzündung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Reizung der Schichten des Perikards (dem schützenden Beutel um das Herz).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Perikarditis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Perikarditis mit physiologischen Konsequenzen (z. B. perikardiale Konstriktion)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034474",
    "display" : "Herzbeutelerguss",
    "definition" : "Eine Störung, gekennzeichnet durch Flüssigkeitsansammlung im Herzbeutel, in der Regel aufgrund einer Entzündung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Perikarderguss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Erguss mit physiologischen Konsequenzen"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10033557",
    "display" : "Herzklopfen",
    "definition" : "Eine Störung, gekennzeichnet durch eine unangenehme Empfindung von irregulärem und/oder kräftigem Klopfen des Herzens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Palpitationen"
    },
    {
      "language" : "de-DE",
      "value" : "Herzrasen"
    },
    {
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10007515",
    "display" : "Herzstillstand",
    "definition" : "Eine Störung, gekennzeichnet durch einen Stillstand der Pumpfunktion des Herzens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kardialer Stillstand"
    },
    {
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019279",
    "display" : "Herzversagen",
    "definition" : "Eine Störung, gekennzeichnet durch das Unvermögen des Herzens, Blut in einem angemessenen Volumen zu pumpen, um die Gewebestoffwechselbedürfnisse zu gewährleisten, oder die Fähigkeit, dies lediglich durch eine Anhebung des Fülldrucks zu erreichen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzinsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Herzfehler"
    },
    {
      "language" : "de-DE",
      "value" : "Kardiogener Schock"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Ruhesymptome oder bei minimaler Aktivität oder Anstrengung; Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. kontinuierliche i. v. Therapie oder mechanische hämodynamische Unterstützung)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10047290",
    "display" : "Kammerflimmern",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie ohne erkennbare QRS Komplexe aufgrund schneller repetitiver Erregung der Muskelfasern ohne koordinierte Kontraktion der Kammern.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ventrikuläres Flimmern"
    },
    {
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; hämodynamische Beeinträchtigung; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10008481",
    "display" : "Kardialer Brustschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch substernales Missempfinden aufgrund unzureichender myokardialer Sauerstoffversorgung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Angiona pectoris Schmerz"
    },
    {
      "language" : "de-DE",
      "value" : "Kardialer Thoraxschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Ruheschmerz; Einschränkung der Selbstversorgung bei Verrichtungen des täglichen Lebens"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10069501",
    "display" : "Linksventrikuläre systolische Dysfunktion",
    "definition" : "Eine Störung, gekennzeichnet durch ein Versagen des linken Ventrikels, genügenden Auswurf zu erzeugen, trotz eines Anstiegs des Ausdehnungsdrucks und des enddiastolischen Volumens. Klinische Manifestationen können Atemnot, Atemnot im Liegen und andere Zeichen pulmonaler Stauung und Ödeme.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Systolische Dysfunktion linke Herzkammer"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch aufgrund eines Abfalls der Ejektionsfraktion, ansprechend auf Intervention"
    },
    {
      "code" : "grad4",
      "valueString" : "Nicht ansprechendes oder schlecht kontrolliertes Herzversagen aufgrund des Abfalls der Ejektionsfraktion; Interventionen wie ventrikuläre Unterstützungsgeräte, intravenöse Vasopressorenunterstützung oder Herztransplantation angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061532",
    "display" : "Mitralklappenerkrankung",
    "definition" : "Eine Störung, gekennzeichnet durch einen Defekt der Mitralklappenfunktion- oder struktur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mitralklappeninsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Mitralklappenstenose"
    },
    {
      "language" : "de-DE",
      "value" : "Mitralklappenkrankheit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch; schwerer Rückfluss oder schwere Stenose durch Bildgebung; Symptome kontrolliert durch medizinische Intervention"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. Klappenersatz, Klappenplastik)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10027787",
    "display" : "Mobitz Typ I",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit relativ konstanten PR Intervallen vor dem Block eines atrialen Impulses. Dies ist das Ergebnis eines intermittierenden Versagens des atrialen elektrischen Impulses durch den AV-Knoten zu den Kammern.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. SM)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10028596",
    "display" : "Myokardinfarkt",
    "definition" : "Eine Störung, gekennzeichnet durch eine schwerwiegende Nekrose des Myokards; dies liegt an einer Unterbrechung der Blutversorgung zu diesem Bereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzinfarkt"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; kardiale Enzyme anormal ; hämodynamisch stabil; EKG Veränderungen übereinstimmend mit Infarkt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; hämodynamisch instabil"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10028606",
    "display" : "Myokarditis",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung des Herzmuskelgewebes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwer mit Ruhesymptomen oder bei minimaler Aktivität oder Anstrengung; Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. kontinuierliche i. v. Therapie oder mechanische hämodynamische Unterstützung)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034040",
    "display" : "Paroxysmale Vorhoftachykardie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit abrupten Beginn und plötzlichem Ende von atrialen Kontraktionen mit einer Rate von 150-250 Schlägen pro Minute. Die rhythmische Störung entsteht in den Vorhöfen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Anfallsweise Vorhoftachykardie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. Medikation angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010783",
    "display" : "Perikarditis, konstriktive",
    "definition" : "Eine Störung, gekennzeichnet durch Verdickung und einem fibrotischen perikardialen Herzbeutel; diese fibrotischen Veränderungen behindern die normale myokardiale Funktion durch Einschränkung der myokardialen Funktion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisches Herzversagen oder kardiale Symptome, die auf Intervention reagieren"
    },
    {
      "code" : "grad4",
      "valueString" : "Auf Therapie nicht ansprechendes Herzversagen oder andere schlecht kontrollierbare kardiale Symptome"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061541",
    "display" : "Pulmonalklappenerkrankung",
    "definition" : "Eine Störung, gekennzeichnet durch einen Defekt der Pulmonaklappenfunktion- oder struktur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pulmonalklappenstenose"
    },
    {
      "language" : "de-DE",
      "value" : "Pulmonalklappeninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch; schwerer Rückfluss oder schwere Stenose durch Bildgebung; Symptome kontrolliert durch medizinische Intervention"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. Klappenersatz, Klappenplastik)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038748",
    "display" : "Restriktive Kardiomyopathie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Unfähigkeit der Kammern, sich mit Blut zu füllen, weil das Myokard versteift und seine Flexibilität verliert.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "RCM"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisches Herzversagen oder kardiale Symptome, ansprechbar auf Intervention"
    },
    {
      "code" : "grad4",
      "valueString" : "Therapieresistentes Herzversagen oder andere schlecht kontrollierbare kardiale Symptome"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10058597",
    "display" : "Rechtsventrikuläre Dysfunktion",
    "definition" : "Eine Störung, gekennzeichnet durch ein Versagen der Funktion der rechten Kammer, assoziiert mit einer niedrigen Ejektionsfraktion und einer Verringerung in der Motilität der rechten Kammerwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rechtsherzdysfunktion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome, assoziiert mit Hypoxie, rechtem Herzversagen; Sauerstoff angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. ventrikuläre Unterstützungsgerät); Herztransplantation angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040639",
    "display" : "Sick-sinus-Syndrom",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit alternierenden Perioden von Bradykardie und atrialer Tachykardie, begleitet von Synkopen, Müdigkeit und Schwindel.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Syndrom des kranken Sinusknotens"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere, medizinisch signifikante Zeichen; medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040741",
    "display" : "Sinusbradykardie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Herzfrequenz von weniger als 60 Schlägen pro Minute, die vom Sinusknoten stammen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere, medizinisch signifikante Zeichen; medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040752",
    "display" : "Sinustachykardie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Herzfrequenz  von mehr als 100 Schlägen pro Minute, die vom Sinusknoten stammen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Dringliche medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10042604",
    "display" : "Supraventrikuläre Tachykardie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Herzfrequenz  von mehr als 100 Schlägen pro Minute, die oberhalb der Kammern entstehen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061389",
    "display" : "Trikuspidalklappenerkrankung",
    "definition" : "Eine Störung, gekennzeichnet durch einen Defekt der Pulmonalklappenfunktion- oder struktur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Trikuspidalklappenstenose"
    },
    {
      "language" : "de-DE",
      "value" : "Trikuspidalklappeninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch; schwerer Rückfluss oder schwere Stenose durch Bildgebung; Symptome kontrolliert durch medizinische Intervention"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010276",
    "display" : "Überleitungsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch pathologische Irregularitäten im kardialen Leitungssystem",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10047281",
    "display" : "Ventrikuläre Arrhythmie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie, die in den Kammern entsteht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Kammerarhythmie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; hämodynamische Beeinträchtigung; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10047302",
    "display" : "Ventrikuläre Tachykardie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Herzfrequenz  von mehr als 100 Schlägen pro Minute, die distel des His'schen Bündels entsteht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kammertachykardie"
    },
    {
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003662",
    "display" : "Vorhofflattern",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit organisierten rhythmischen Vorhofkontraktionen einer Rate von 200-300 Schlägen pro Minute, Die rhythmische Störung entsteht in den Vorhöfen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. Schrittmacher) oder Ablation"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003658",
    "display" : "Vorhofflimmern",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysrhythmie ohne erkennbare P-Wellen und einer irreguläre ventrikuläre Antwort aufgrund multipler wiedereintretender Stromkreise.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. Schrittmacher) oder Ablation"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10048015",
    "display" : "Wolff-Parkinson-White Syndrom (WPW)",
    "definition" : "Eine Störung, gekennzeichnet durch das Vorhandensein eines akzessorischen Leitungsweges zwischen den Vorhöfen und den Kammern, was vorzeitige ventrikuläre Aktivierungen bewirkt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "WPW'-Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "Herzrhythmusstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und medizinisch inkomplett kontrolliert oder kontrolliert mit Prozeduren"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; hämodynamische Beeinträchtigung; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10007541",
    "display" : "Herzerkrankungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Herzstörungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere oder medizinisch signifikante aber nicht unmittelbar das Lehen bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden Verrichtungen des täglichen Lebens"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010331",
    "display" : "Angeborene, familiäre und genetische Erkrankungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende angeborene, familiäre und genetische Störungen, die unerwünschte Ereignisse im Rahmen einer Behandlung darstellen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kongenitale, familiäre und vererbbare Krankheiten-Sonstige, zu spezifizieren"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere oder medizinisch signifikante aber nicht unmittelbar das Leben bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden Verrichtungen des täglichen Lebens"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019245",
    "display" : "Beeinträchtigung des Hörens",
    "definition" : "Eine Störung, gekennzeichnet durch teilweisen oder kompletten Verlust der Fähigkeit, Schall (Töne, Geräusche) wahrzunehmen oder zu verstehen, hervorgerufen durch Verletzung/Schädigung von Ohrstrukturen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hörbehinderung"
    },
    {
      "language" : "de-DE",
      "value" : "Hypakusis"
    },
    {
      "language" : "de-DE",
      "value" : "Schwerhörigkeit"
    },
    {
      "language" : "de-DE",
      "value" : "Hörminderung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Erwachsene: Aufgenommen in ein Überwachungsprogramm (1, 2, 4, 3, 6 und 8 kHz Audiogramm): Schwellenveränderung von 15-25 dB aus Durchschnitt zweier konsekutiver Testfrequenzen bei mindestens einem Ohr. Erwachsene: Nicht aufgenommen in ein Überwachungsprogramm: Hörverlust mit Hörhilfe oder Intervention angezeigt; Einschränkung der selbstversorgenden ATL; Pädiatrisch (1, 2, 4, 3, 6 und 8 kHz Audiogramm): Hörverlust ausreichend für eine therapeutische Indikation, einschließlich Hörhilfen; Schwellenveränderung >20 dB bei 3 kHz und darüber an mindestens einem Ohr; zusätzliche Sprach-Rede-bezogene Unterrichtsdienste angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Erwachsene: Schwerer bilateraler Hörverlust (Schwelle > 80dB HL bei 2 kHz und darüber); nicht dienliches Hören. Pädiatrisch: Audiologische Indikation für ein kochleares Implantat und zusätzlich Sprach-Rede-bezogene Unterrichtsdienste angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065838",
    "display" : "Mittelohrentzündung",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch Entzündung (physiologische Reaktion auf Reizung), Schwellung und Rötung des Mittelohres.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Otitis media"
    },
    {
      "language" : "de-DE",
      "value" : "Paukendrainage"
    },
    {
      "language" : "de-DE",
      "value" : "Paukenröhrchen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Mastoiditis; Nekrose von Weichgewebe oder Knochen"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10014020",
    "display" : "Ohrenschmerzen",
    "definition" : "Eine Befindlichkeitsstörung, gekennzeichnet durch ein Gefühl ausgeprägter Beschwerden im Ohr.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065837",
    "display" : "Otitis externa",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch Entzündung, Schwellung und Rötung am äußeren Ohr und dem Ohrkanal.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Entzündung des äußeren Ohres"
    },
    {
      "language" : "de-DE",
      "value" : "Ohrkanalentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Otitis externa mit Mastoiditis; Stenose oder Osteomyelitis; Nekrose von Weichgewebe oder Knochen"
    },
    {
      "code" : "grad4",
      "valueString" : "Dringliche operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065785",
    "display" : "Schmerzen des äußeren Ohres",
    "definition" : "Eine Befindlichkeitsstörung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden der äußeren Ohrregion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Äußere Ohrenschmerzen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10043882",
    "display" : "Tinnitus",
    "definition" : "Eine Störung, gekennzeichnet durch Geräusch in den Ohren, wie Klingeln, Summen, Brausen oder Klicken.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ohrgeräusch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047340",
    "display" : "Vertigo",
    "definition" : "Eine Störung, gekennzeichnet durch ein Empfinden, als ob die äußere Welt sich um den Patienten drehen würde (objektiver Schwindel) oder als ob er selbst sich im Raum drehen würde (subjektiver Schwindel).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Schwindel"
    },
    {
      "language" : "de-DE",
      "value" : "Drehschwindel"
    },
    {
      "language" : "de-DE",
      "value" : "Labyrithschwindel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047386",
    "display" : "Vestibuläre Störung",
    "definition" : "Eine Störung, gekennzeichnet durch Schwindelgefühl, Gleichgewichtsstörungen, Übelkeit, und Sehstörungen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vestibulumerkrankung"
    },
    {
      "language" : "de-DE",
      "value" : "Gleichgewichtsstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10013993",
    "display" : "Ohr- und Innenohrerkrankungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Erkrankungen des Ohrorgans, die unerwünschte Ereignisse im Rahmen einer Behandlung darstellen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ohr-, Ohrgangs- und Labyrintherkrankungen Sonstige zu spezifizieren Labyrinth"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwer oder medizinisch signifikant aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung eines bestehenden Aufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10011655",
    "display" : "Cushing-ähnliches Syndrom",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Zeichen und Symptome, die der Cushing'schen Erkrankung oder dem Cushing-Syndrom ähneln: Büffelnackenfett, Striae, Adipositas, Hochdruck, Diabetes und Osteoporose, normalerweise durch exogen zugeführte Kortikosteroide.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Cushingoid"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Mäßige Symptome; medizinische Intervention oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10020705",
    "display" : "Hyperparathyreoidismus",
    "definition" : "Eine Störung, gekennzeichnet durch eine erhöhte Erzeugung des Parat-Hormons durch die Nebenschilddrüsen. Dies resultiert in Hyperkalzämie (abnorm hohe Kalziumspiegel im Blut).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Überfunktion der Nebenschilddrüsen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10021041",
    "display" : "Hypoparathyreoidismus",
    "definition" : "Eine Störung, gekennzeichnet durch eine erniedrigte Erzeugung des Parathormons durch die Nebenschilddrüsen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Unterfunktion der Nebenschilddrüsen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; medizinische Intervention oder Krankenhausaufnahme angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10047488",
    "display" : "Maskulinisierung",
    "definition" : "Eine Störung, gekennzeichnet durch nicht angemessene Maskulinisierung bei einer Frau oder einem präpubertären Knaben.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vermännlichung"
    },
    {
      "language" : "de-DE",
      "value" : "Virilisierung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10001367",
    "display" : "Nebenniereninsuffizienz",
    "definition" : "Eine Erkrankung, die auftritt, wenn die Nebennierenrinde nicht genügende Mengen des Hormons Kortisol und in einigen Fällen des Hormons Aldosteron erzeugt. Dies kann durch eine Störung des Nebennierenkortex bedingt sein wie bei der Addison'schen Erkrankung oder durch eine primäre Nebenniereninsuffizienz.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nebennierenschwäche"
    },
    {
      "language" : "de-DE",
      "value" : "adrenale Insuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Mäßige Symptome; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020850",
    "display" : "Schilddrüsenüberfunktion",
    "definition" : "Eine Störung, gekennzeichnet durch exzessive Spiegel von Schilddrüsenhormonen im Körper. Gewöhnliche Ursachen schließen eine überaktive Schilddrüse oder Schilddrüsenhormonüberdosierung ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hyperthyreoidismus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021114",
    "display" : "Schilddrüsenunterfunktion",
    "definition" : "Eine Störung, gekennzeichnet durch eine erniedrigte Erzeugung von Schilddrüsenhormonen durch die Schilddrüse.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hypothyreoidismus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; medizinische Intervention oder Krankenhausaufnahme angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10058084",
    "display" : "Verfrühte Pubertät",
    "definition" : "Eine Störung, in der Regel gekennzeichnet durch frühe Entwicklung der sekundären Geschlechtsmerkmale; der Beginn der geschlechtlichen Reifung beginnt in der Regel vor dem 8. LJ bei Mädchen und vor dem 9. LJ bei Jungen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pubertas präcox"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10012205",
    "display" : "Verzögerte Pubertät",
    "definition" : "Eine Störung, gekennzeichnet durch ungewöhnlich späte sexuelle Reife.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Retardierte Pubertät"
    },
    {
      "language" : "de-DE",
      "value" : "Verspätete Pubertät"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Keine Brustentwicklung im Alter von 14 Jahren bei weiblichen Probandinnen; keine Steigerung des Testesvolumens oder keine Tanner-Stadium 2 Entwicklung bis zum Alter von 16 Jahren bei männlichen Probanden; Hormonersatztherapie angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10018746",
    "display" : "Wachstumsbeschleunigung",
    "definition" : "Eine Störung, gekennzeichnet durch ein stärkeres Wachstum als für das Alter erwartet.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wachstums akzeleration"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10014698",
    "display" : "Endokrine Erkrankungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige endokrine Störungen, die als unerwünschte Ereignisse bei einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere oder medizinisch signifikante aber nicht unmittelbar das Leben bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015829",
    "display" : "Augenmuskellähmung, äußere",
    "definition" : "Eine Erkrankung, gekennzeichnet durch inkomplette Lähmung eines extraokulären Muskels.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Extraokuläre Muskelparese"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061322",
    "display" : "Augennerverkrankung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Beteiligung des Augennerven (Nervus opticus; 2. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervus opticus Erkrankung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnnervenausfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Begrenzte Sehfähigkeit des betroffenen Auges (schlechter als 20/40 aber besser als 20/200))"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10013774",
    "display" : "Augentrockenheit",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Trockenheit der Hornhaut und Konjunktiven.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Xerophthalmie"
    },
    {
      "language" : "de-DE",
      "value" : "trockenes Auge"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Herabsetzung der Sehschärfe (<20/40); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061145",
    "display" : "Augenlidfunktionsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch beeinträchtigte Augenlidfunktion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10015958",
    "display" : "Augenschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Auge.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047656",
    "display" : "Glaskörperblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Blutaustritt in die Glaskörperflüssigkeit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blutige Glaskörperextravasation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; Vitrektomie angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10018304",
    "display" : "Glaukom",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Augeninnendruckerhöhung aufgrund einer Verlegung des Abflusses der Augenflüssigkeit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Grüner Star"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "EIOD, der deutliche Gesichtsfeldausfälle erzeugt (z. B. sowohl oberes wie unteres Gesichtsfeld); operative Intervention angezeigt; Einschränkung der instrumentellen ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10007739",
    "display" : "Grauer Star",
    "definition" : "Eine Störung, gekennzeichnet durch partielle oder vollständige Trübung der kristallenen Linse eines oder beider Augen. Dies hat eine Verminderung der Sehschärfe und, wenn unbehandelt, letztendliche Blindheit zur Folge.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Katarakt"
    },
    {
      "language" : "de-DE",
      "value" : "Augenlinsentrübung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch mit deutlicher Verringerung der Sehschärfe (schlechter als 20/40, aber besser als 20/200); operative Intervention angezeigt (z. B. KataraktOperation)"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10023332",
    "display" : "Hornhautentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Hornhaut des Auges.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Keratitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Herabsetzung der Sehschärfe (schlechter als <20/40 aber besser als 20/200); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Perforation oder Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10048492",
    "display" : "Hornhautgeschwür",
    "definition" : "Eine Erkrankung, gekennzeichnet durch den Verlust epithelialen Gewebes in einem Bereich der Oberfläche der Hornhaut. Das ist mit Entzündungszellen in der Kornea und der vorderen Kammer verbunden.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ulkus der Hornhaut"
    },
    {
      "language" : "de-DE",
      "value" : "koroneales Ulcus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; herabgesetzte (schlechter als 20/40, aber besser als 20/200)"
    },
    {
      "code" : "grad4",
      "valueString" : "Perforation oder Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10029404",
    "display" : "Nachtblindheit",
    "definition" : "Eine Störung, gekennzeichnet durch die Unfähigkeit, in dämmrigem Licht klar zu sehen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10010741",
    "display" : "Konjunktivitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Entzündung, Schwellung und Rötung der Bindehäute des Auges.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bindehautentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016757",
    "display" : "Lichtblitze",
    "definition" : "Eine Störung, gekennzeichnet durch eine plötzliche oder kurze Salve von Licht(blitzen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10038848",
    "display" : "Netzhautablösung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch die Trennung der inneren Netzhautschichten von dem darunter liegenden Pigmentepithel.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Retinaablösung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Zerreißungs- oder exudative Ablösung; operative Intervention angezeigt; Herabsetzung der Sehfähigkeit (schlechter als 20/40 aber besser als 20/200)"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10038897",
    "display" : "Netzhautriss",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen kleinen Einriss der Retina, der auftreten kann, wenn der Glaskörper sich von der Retina trennt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Retinaeinriss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Vitroretinale chirurgische Reparatur angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10034960",
    "display" : "Photophobie",
    "definition" : "Eine Störung, gekennzeichnet durch Scheu vor und Vermeidung von Licht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Lichtscheu"
    },
    {
      "language" : "de-DE",
      "value" : "Lichtüberempfindlichkeit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10038923",
    "display" : "Retinopathie",
    "definition" : "Eine die Netzhaut betreffende Erkrankung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Netzhauterkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch mit deutlicher Herabsetzung der Sehschärfe (schlechter als <20/40); behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Perforation oder Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061510",
    "display" : "Sklerale Störung",
    "definition" : "Eine die Lederhaut (Sklera) betreffende Störung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Sklera Erkrankung"
    },
    {
      "language" : "de-DE",
      "value" : "Lederhaut Erkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch; Einschränkung der selbstversorgenden ATL; deutliche Herabsetzung der Sehschärfe (<20/40)"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10033703",
    "display" : "Stauungspapille",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Schwellung der Papille (Sehnervenscheibe).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Papillenödem"
    },
    {
      "language" : "de-DE",
      "value" : "Sehscheibenschwellung"
    },
    {
      "language" : "de-DE",
      "value" : "Papillenschwellung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Deutlicher Gesichtsfeldausfall im betroffenen Auge (schlechter als 20/40 aber besser als 20/200)"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047848",
    "display" : "Tränende Augen",
    "definition" : "Eine Erkrankung, gekennzeichnet durch exzessives Tränen der Augen; dies kann durch eine Überproduktion von Tränen oder eine behinderte Drainage des Tränengangs verursacht sein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wässernde Augen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046851",
    "display" : "Uveitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Regenbogenhaut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Regenbogenhautentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Posteriore Panuveitis"
    },
    {
      "code" : "grad4",
      "valueString" : "Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10038901",
    "display" : "Vaskuläre retinale Erkrankung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch krankhafte Netzhautblutgefäße, die die Sehfähigkeit nachteilig beeinflussen kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Intravitreale Medikation; op. Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10005886",
    "display" : "Verschwommenes Sehen",
    "definition" : "Eine Störung, gekennzeichnet durch visuelle Wahrnehmung unklarer oder unscharfer Bilder.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Unscharfes Sehen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10015919",
    "display" : "Augenerkrankungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Augenerkrankungen, die unerwünschte Ereignisse im Rahmen einer Behandlung darstellen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere oder medizinisch signifikante aber nicht unmittelbar das Sehen bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Sichtbedrohende Folgen; Intervention dringlich angezeigt; Blindheit (20/200 oder schlechter) im betroffenen Auge"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10000060",
    "display" : "Abdominale Blähung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Aufblähung des Abdomens",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Aufgetriebener Bauch"
    },
    {
      "language" : "de-DE",
      "value" : "Abdominale Aufblähung"
    },
    {
      "language" : "de-DE",
      "value" : "Bauchblähung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Starke Beschwerden; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10000081",
    "display" : "Abdominale Schmerzen",
    "definition" : "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Bauchraum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchschmerzen"
    },
    {
      "language" : "de-DE",
      "value" : "Bauchkrämpfe"
    },
    {
      "language" : "de-DE",
      "value" : "abdominale Schmerzen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Starke Schmerzen; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10055226",
    "display" : "Analblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Blutung aus der Analregion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Afterblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Analhämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002156",
    "display" : "Analfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Öffnung des Analkanals und der perianalen Haut.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPE (totale parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002180",
    "display" : "Analgeschwür",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotische erosive Läsion der Schleimhautoberfläche des Analkanals.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Analulkus"
    },
    {
      "language" : "de-DE",
      "value" : "Analulcus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; TPN (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065721",
    "display" : "Analmukositis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Anusschleimhaut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Anale Schleimhautentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065722",
    "display" : "Analnekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess im Analbereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Afternekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002167",
    "display" : "Analschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Analbereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Afterschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10002176",
    "display" : "Analstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Analkanals.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Analverengung"
    },
    {
      "language" : "de-DE",
      "value" : "Afterstenose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und stark veränderte gastrointestinale Funktion; nichtdringliche operative Intervention angezeigt; TPN (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003445",
    "display" : "Aszites",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Ansammlung von seröser oder blutiger Flüssigkeit im Peritonealraum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchwassersucht"
    },
    {
      "language" : "de-DE",
      "value" : "abdominelle Flüssigkeitsansammlung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; invasive Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10016766",
    "display" : "Blähungen",
    "definition" : "Eine Störung, gekennzeichnet durch das Zustand exzessiven Gases im Ernährungstrakt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Flatulenz"
    },
    {
      "language" : "de-DE",
      "value" : "Winde"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10051746",
    "display" : "Blutung des unteren Gastrointestinaltraktes",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus dem unteren GI-Trakt (Dünndarm, Dickdarm und Anus).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Untere GI- Trakt- Blutung"
    },
    {
      "language" : "de-DE",
      "value" : "Blutung distaler GI'-Trakt"
    },
    {
      "language" : "de-DE",
      "value" : "Peranale Blutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10008417",
    "display" : "Cheilitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Lippen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Lippenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10014893",
    "display" : "Darmentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Dünn- und Dickdarmes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enteritis"
    },
    {
      "language" : "de-DE",
      "value" : "Enterokolitis"
    },
    {
      "language" : "de-DE",
      "value" : "Enterocolitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere oder persistierende abdominelle Schmerzen; Fieber; Ileus; Peritoneale Zeichen"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10009995",
    "display" : "Dickdarmfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem Dickdarm und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kolonfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Darmstillstand, Sondenernährung; TPN oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10009998",
    "display" : "Dickdarmblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Blutung aus dem Dickdarm.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kolonhämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Kolonblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010000",
    "display" : "Dickdarmobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Verhinderung (Obstruktion) des normalen Flusses der Inhalte des Dickdarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kolonobstruktion"
    },
    {
      "language" : "de-DE",
      "value" : "Dickdarmverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Darmpassagestörungen (z. B. protrahierte Atonie, Subileus, Ileus)"
    },
    {
      "language" : "de-DE",
      "value" : "Dickdarmileus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010001",
    "display" : "Dickdarmperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Dickdarmwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dickdarmdurchbruch"
    },
    {
      "language" : "de-DE",
      "value" : "Kolonperforation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010004",
    "display" : "Dickdarmstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Dickdarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dickdarmverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010006",
    "display" : "Dickdarmulkus",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Dickdarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kolonulcus"
    },
    {
      "language" : "de-DE",
      "value" : "Kolonulkus"
    },
    {
      "language" : "de-DE",
      "value" : "Dickdarmgeschwür"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; TPN angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10041101",
    "display" : "Dünndarmobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte (des Dünndarms).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dünndarmverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Dünndarmmileus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10041103",
    "display" : "Dünndarmperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Dünndarmwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dünndarmdurchbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; op. Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065710",
    "display" : "Dünndarmschleimhautentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Dünndarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dünndarmmukositis"
    },
    {
      "language" : "de-DE",
      "value" : "Dünndarmentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; die orale Aufnahme beeinträchtigend; Sondenernährung; TPE oder Krankenhauseinweisung angezeigt; begrenzte selbstversorgende ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062263",
    "display" : "Dünndarmstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Dünndarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dünndarmverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend veränderte GI- Funktion; Sondenernährung, TPE oder Krankenhauseinweisung angezeigt; nichtdringliche operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10041133",
    "display" : "Dünndarmgeschwür",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Dünndarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dünndarmulkus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055242",
    "display" : "Duodenalblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Duodenum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zwölffingerdarmblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013828",
    "display" : "Duodenalfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem Zwölffingerdarm und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zwölffingerdarmfistel"
    },
    {
      "language" : "de-DE",
      "value" : "Duodenalblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPN (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013830",
    "display" : "Duodenalobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Mageninhalte durch das Duodenum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zwölffingerdarmverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung oder elektive operative Intervention angezeigt: behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013832",
    "display" : "Duodenalperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Zwölffingerdarmwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Duodenaldurchbruch"
    },
    {
      "language" : "de-DE",
      "value" : "Zwölffingerdarmdurchbruch"
    },
    {
      "language" : "de-DE",
      "value" : "Zwölffingerdarmperforation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10050094",
    "display" : "Duodenalstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Zwölffingerdarmes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zwölffingerdarmstenose"
    },
    {
      "language" : "de-DE",
      "value" : "Zwölffingerdarmverengung"
    },
    {
      "language" : "de-DE",
      "value" : "Duodenalulcus"
    },
    {
      "language" : "de-DE",
      "value" : "Ulcus duodeni"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung; Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013836",
    "display" : "Duodenalulkus",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Zwölffingerdarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zwölffingerdarmgeschwür"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI Funktion; totale parenterale Ernährung (TPE) angezeigt; elektive operative oder endoskopische Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10012727",
    "display" : "Durchfall",
    "definition" : "Eine Störung, gekennzeichnet durch häufige und wässrige Stuhlentleerungen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Diarrhö"
    },
    {
      "language" : "de-DE",
      "value" : "Diarrhoe"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Erhöhung >= 7 Stühle pro Tag über die Normalfrequenz hinaus; Inkontinenz; Krankenhauseinweisung angezeigt; schwerwiegender Anstieg der Stuhlmenge über die Normalmenge hinaus; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10047700",
    "display" : "Erbrechen",
    "definition" : "Eine Störung, gekennzeichnet durch den reflexiven Akt des Auswerfens des Mageninhaltes durch den Mund.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Emesis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Frequenz >= 6 pro 24 h (5 min voneinander getrennt); Ernährungssonde, TPE oder Krankenhauseinweisung angezeigt (24 h)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Konsequenzen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017877",
    "display" : "Gastrointestinale Fistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen irgendeinem Teil des GI-Systems und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enterale Fistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPE oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017999",
    "display" : "Gastrointestinale Schmerzen",
    "definition" : "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im GI Bereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchschmerzen"
    },
    {
      "language" : "de-DE",
      "value" : "abdominelle Schmerzen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10066874",
    "display" : "Gastroösophageale Refluxkrankheit",
    "definition" : "Eine Störung, gekennzeichnet durch einen Rückfluss gastrischer und/oder duodenaler Inhalte in den unteren Ösophagus. Sie ist ihrer Natur nach chronisch und in der Regel durch die Inkompetenz des unteren Speiseröhrenschließmuskels bedingt und kann zu einer Läsion der Speiseröhrenschleimhaut führen. Symptome schließen Sodbrennen und saure Magenverstimmungen / Verdauungsstörungen ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Sodbrennen"
    },
    {
      "language" : "de-DE",
      "value" : "Magenbrennen"
    },
    {
      "language" : "de-DE",
      "value" : "Pyrosis"
    },
    {
      "language" : "de-DE",
      "value" : "Refluxösophagitis"
    },
    {
      "language" : "de-DE",
      "value" : "gastroesophageal reflux disease, GERD"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; chirurgische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10018043",
    "display" : "Gastroparese",
    "definition" : "Eine Störung, gekennzeichnet durch die unvollständige Lähmung der Muskeln der Magenwand mit der Folge einer verzögerten Entleerung des Mageninhaltes in den Dünndarm.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Magenlähmung"
    },
    {
      "language" : "de-DE",
      "value" : "Magenatonie"
    },
    {
      "language" : "de-DE",
      "value" : "Magenentleerungsstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Gewichtsverlust; resistent gegenüber medizinischer Intervention ; unfähig, die Ernährung oral aufrecht zu erhalten"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10060640",
    "display" : "Hämorrhoidale Blutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus den Hämorrhoiden.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Afterblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Analhämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019611",
    "display" : "Hämorrhoiden",
    "definition" : "Eine Störung, gekennzeichnet durch das Vorhandensein erweiterter Venen im Rektum und dem umgebenden Bereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10062570",
    "display" : "Harnblasen-Darm-Fistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Harnblase und Darm.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enterovesikale Fistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwer, medizinisch signifikant; medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055287",
    "display" : "Ileumblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Ileum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ileumhämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Ileum Blutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065728",
    "display" : "Ileumfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem Ileum und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ileum Fistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065730",
    "display" : "Ileumobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte des Ileums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ileumverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Ileumileus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021305",
    "display" : "Ileumperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) des Ileums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Unterer Dünndarmdurchbruch"
    },
    {
      "language" : "de-DE",
      "value" : "Ileumdurchbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021307",
    "display" : "Ileumstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des unteren Dünndarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Untere Dünndarmstenose"
    },
    {
      "language" : "de-DE",
      "value" : "Ileumverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend veränderte gastrointestinale Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021309",
    "display" : "Ileumulkus",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Ileums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ileumgeschwür"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI Funktion; Sondenernährung angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021328",
    "display" : "Ileus",
    "definition" : "Eine Erkrankung, gekennzeichnet durch die Unfähigkeit des Ileums (des Darmes allgemein), die Inhalte zu transportieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Darmverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI Funktion; TPE angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055291",
    "display" : "Intraabdominelle Blutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Blutung innerhalb der Bauchhöhle.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraabdominale Blutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065719",
    "display" : "Jejunumfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem Jejunum und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Obere Dünndarmfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055300",
    "display" : "Jejunumblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Ileum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Jejunumhämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065732",
    "display" : "Jejunumobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte des Jejunums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "JejunumiIeus"
    },
    {
      "language" : "de-DE",
      "value" : "Jejunumverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Ileus des Jejunums"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023174",
    "display" : "Jejunumperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) des Jejunums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Jejunale Perforation"
    },
    {
      "language" : "de-DE",
      "value" : "oberer Dünndarmdurchbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023176",
    "display" : "Jejunumstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Jejunums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Jejunumverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend veränderte gastrointestinale Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive op. Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023177",
    "display" : "Jejunumulkus",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Jejunums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Jejunumgeschwür"
    },
    {
      "language" : "de-DE",
      "value" : "Dünndarmulkus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10009887",
    "display" : "Kolitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Dickdarms.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dickdarmentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere abdominelle Schmerzen; veränderte Stuhlgangsverhalten; medizinische Intervention angezeigt; peritoneale Zeichen"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10024561",
    "display" : "Lippenschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden der Lippen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Labialer Schmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10017789",
    "display" : "Magenblutung",
    "definition" : "Eine Erkrankung gekennzeichnet durch eine Blutung aus der Magenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gastrische Hämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065713",
    "display" : "Magenfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Magen und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gastrische Fistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10051886",
    "display" : "Magennekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in der Magenwand auftritt.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "Unfähigkeit sich durch den GI-Trakt angemessen zu ernähren; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017815",
    "display" : "Magenperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Magenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Magendurchbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061970",
    "display" : "Magenstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Magens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Magenverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung; Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017853",
    "display" : "Magenschleimhautentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Magens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gastritis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend geändertes Essen oder gastrische Funktion; TPE oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10042112",
    "display" : "Magenschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Magen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gastrischer Schmerz"
    },
    {
      "language" : "de-DE",
      "value" : "Oberbauchschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10017822",
    "display" : "Magenulkus",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Magens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Magengeschwür"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10025476",
    "display" : "Malabsorption",
    "definition" : "Eine Erkrankung, gekennzeichnet durch unzulängliche Aufnahme von Nahrungsstoffen im Dünndarm. Symptome schließen deutliche Beschwerden, Völlegefühl und Durchfall ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Resorptionsstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Kurzarmsyndrom"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Unfähigkeit sich angemessen zu ernähren; TPE angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065720",
    "display" : "Mundhöhlenfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Mundhöhle und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013781",
    "display" : "Mundtrockenheit",
    "definition" : "Eine Störung, gekennzeichnet durch verringerten Speichelfluss in der Mundhöhle.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Xerostomie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Unfähigkeit, angemessen oral zu ernähren; Sondenernährung oder TPE angezeigt; unstimulierte Speichelfluss < 0,1 ml/min"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10028813",
    "display" : "Nausea",
    "definition" : "Eine Störung, gekennzeichnet durch ein mulmiges Gefühl und / oder den Drang zu erbrechen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Übelkeit"
    },
    {
      "language" : "de-DE",
      "value" : "Brechreiz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Unzureichende orale kalorische oder flüssige Aufnahme; Sondenernährung; Totale Parenterale Ernährung (TPE) oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10015453",
    "display" : "Ösophageale Varizenblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Blutung aus ösophagealen Varizen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Krampfaderblutung der Speiseröhre"
    },
    {
      "language" : "de-DE",
      "value" : "Speiseröhren- Varizen- Blutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015461",
    "display" : "Speiseröhrenentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Speiseröhrenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ösophagitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend geändertes Essen / Schlucken; Sondenernährung oder TPE oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015384",
    "display" : "Speisröhrenblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Blutung aus der Speisröhre.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ösophagushämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Ösophagusblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065851",
    "display" : "Ösophagusfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Speiseröhre und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Speiseröhrenfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPE oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065727",
    "display" : "Ösophagusnekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in der Speiseröhrenwand auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Speiseröhrennekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Unfähigkeit sich durch den GI-Trakt angemessen zu ernähren; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015387",
    "display" : "Ösophagusobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte der Speiseröhre.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Speiseröhrenverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Speiseröhrenobstruktion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055472",
    "display" : "Ösophagusperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Speiseröhrenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Speiseröhrenperforation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015388",
    "display" : "Ösophagusschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Speiseröhrenbereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Speiseröhrenschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10015448",
    "display" : "Ösophagusstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite der Speiseröhre.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Speiseröhrenverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung; Krankenhauseinweisung angezeigt; elektive op. Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015451",
    "display" : "Ösophagusulkus",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche der Speiseröhrenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Speiseröhrengeschwür"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend gestörte GI Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10028130",
    "display" : "Orale Mukositis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Mundschleimhaut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mundschleimhautentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; beeinträchtigt Nahrungsaufnahme."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10029957",
    "display" : "Magenobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses des Mageninhalts.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Magenverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Magenileus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055356",
    "display" : "Obere gastrointestinale Blutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus dem oberen GI-Trakt (Mundhöhle, Pharynx, Speiseröhre, und Magen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hämorrhagie des oberen GI'-Traktes"
    },
    {
      "language" : "de-DE",
      "value" : "Blutung, obere gastrointestinale (z. B. \"Streßulkus\")"
    },
    {
      "language" : "de-DE",
      "value" : "Blutung oberer Gastro'-Intestinal'-Trakt"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010774",
    "display" : "Obstipation",
    "definition" : "Eine Störung, gekennzeichnet durch eine irreguläre und seltene oder schwierige Entleerung des Darmes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verstopfung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Obstipation mit manueller Entleerung angezeigt; Einschränkung der instrumentellen ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10054520",
    "display" : "Orale Dysästhesie",
    "definition" : "Eine Störung, gekennzeichnet durch ein brennendes oder kribbelndes Empfinden der Lippen, Zunge oder dem gesamten Mund.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mundempfindungsstörungen"
    },
    {
      "language" : "de-DE",
      "value" : "Geschmacksstörungen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Behindernden Schmerz; Sondenernährung oder TPL angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10030980",
    "display" : "Orale Blutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Mund.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mundblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10031009",
    "display" : "Oraler Schmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Mund, an der Zunge oder den Lippen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mundschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065703",
    "display" : "Pankreasgangverengung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verengung der lichten Weite des Pankreasganges.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchspeicheldrüsenverengung"
    },
    {
      "language" : "de-DE",
      "value" : "Pankreasgangstenose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend veränderte gastrointestinale Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10033626",
    "display" : "Pankreasblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Pankreas.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchspeicheldrüsenblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10049192",
    "display" : "Pankreasfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Pankreas und einem anderen Organ oder anatomischen Ort.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte gastrointestinale Funktion; Sondenernährung oder TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10058096",
    "display" : "Pankreasnekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der im Pankreas auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchspeicheldrüsennekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Sondenernährung oder TPE angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10033645",
    "display" : "Pankreatitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Pankreas.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchspeicheldrüsenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Erbrechen; medizinische Intervention angezeigt (z. B. Schmerzbekämpfung, Ernährungsunterstützung)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034536",
    "display" : "Periodontale Erkrankung",
    "definition" : "Eine Erkrankung des periodontalen Zahnfleischgewebes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Periodontale Zahnfleischerkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Spontanblutung; schwerer Knochenverlust mit und ohne Zahnverlust; Osteonekrose des Ober oder Unterkiefers"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065704",
    "display" : "Peritoneale Nekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess des Bauchfells.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchfellnekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Sondenernährung oder TPE angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10036774",
    "display" : "Proktitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Rektums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enddarmentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Rektumentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Stuhldrang oder Stuhlinkontinenz; begrenzte selbstversorgende ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10063190",
    "display" : "Rektale Schleimhautentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Schleimhaut des Rektums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enddarmschleimhautentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Rektumentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Rektale Mukositis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; begrenzte selbstversorgende ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038064",
    "display" : "Rektumblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Bluten aus der Rektumwand und Ausfluss aus dem Anus.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enddarmblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Rektale Blutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038062",
    "display" : "Rektumfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Rektum und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enddarmfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte GI-Funktion; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065709",
    "display" : "Rektumnekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in der Rektumwand auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enddarmnekrose"
    },
    {
      "language" : "de-DE",
      "value" : "Reaktale Nekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Sondenernährung oder TPE angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065707",
    "display" : "Rektumobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte im Rektum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enddarmverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Rektumverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038072",
    "display" : "Rektumschmerz",
    "definition" : "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Rektum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enddarmschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10038073",
    "display" : "Rektumperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Rektumwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Enddarmperforation"
    },
    {
      "language" : "de-DE",
      "value" : "Enddarmdurchbruch"
    },
    {
      "language" : "de-DE",
      "value" : "rektale Perforation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038079",
    "display" : "Rektumverengung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Rektums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rektumstenose"
    },
    {
      "language" : "de-DE",
      "value" : "Enddarmverengung"
    },
    {
      "language" : "de-DE",
      "value" : "Rektaleverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend veränderte GI-Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038080",
    "display" : "Rektumgeschwür",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Rektums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ileumulkus"
    },
    {
      "language" : "de-DE",
      "value" : "Enddarmgeschwür"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI-Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038981",
    "display" : "Retroperitoneale Blutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Blutung im retroperitonealen Bereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Retroperitoneale Hämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013950",
    "display" : "Schluckstörung",
    "definition" : "Eine Störung, gekennzeichnet durch Schwierigkeit beim Schlucken.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dysphagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend geändertes Essen/Schlucken; Sondenernährung oder TPE oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10039411",
    "display" : "Speicheldrüsenfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen einer Speicheldrüse und einem anderen Organ oder anatomischen Ort.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwer veränderte GI-Funktion; Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10056681",
    "display" : "Speicheldrüsengangentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Speicheldrüsenganges.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Entzündung des Speichelganges"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Akute Speichelgangnekrose; schwere Sekretionsinduzierte Symptome (z. B. dicker Speichel / orale Sekretion oder Würgen); Sondenernährung oder TPE angezeigt; begrenzte selbstversorgende ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10016296",
    "display" : "Stuhlinkontinenz",
    "definition" : "Eine Erkrankung, gekennzeichnet durch die Unfähigkeit, den Austritt von Stuhl aus dem Rektum zu kontrollieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fäkalinkontinenz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10005265",
    "display" : "Völlegefühl",
    "definition" : "Eine Befindlichkeitsstörung, gekennzeichnet durch ein subjektiv-berichtetes unangenehmes Völlegefühl im Bauchraum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gefühl des Aufgeblähtsein"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10045271",
    "display" : "Typhlitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Zökums.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Entzündung des Blinddarms"
    },
    {
      "language" : "de-DE",
      "value" : "Entzündung des Zökums"
    },
    {
      "language" : "de-DE",
      "value" : "Akute Zökumentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch (z. B. Bauchschmerzen; Fieber, Änderung der Stuhlgewohnheiten mit Ileus); Peritonealzeichen"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013946",
    "display" : "Verdauungsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch ein unangenehmes, oft schmerzhaftes Gefühl im Magen, das von einer Verdauungsbehinderung herrührt; Symptome schließen Brennen im Magen, Völlegefühl, Sodbrennen, Übelkeit und Erbrechen ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dyspepsie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Mäßige Symptome; chirurgische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10044030",
    "display" : "Zahnentwicklungsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch einen krankhaften Prozess, der Zähne (Zahnentwicklung), auftretend während der Zahnentwicklung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zahnbildungsstöhrung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Fehlentwicklung nicht durch orale Chirurgie korrigierbar; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10018286",
    "display" : "Zahnfleischschmerzen",
    "definition" : "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Zahnfleischbereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gingivaschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Schmerz; unfähig, sich oral zu ernähren"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10012318",
    "display" : "Zahnkaries",
    "definition" : "Eine Störung, gekennzeichnet durch den Zerfall eines Zahnes, bei dem er aufweicht, sich verfärbt und / oder porös wird.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Dentale Karies, der in einer Pulpitis oder einem periapikalen Abszess oder einem Zahnverlust resultiert"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10044055",
    "display" : "Zahnschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden in einem Zahn.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10044031",
    "display" : "Zahnverfärbung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Veränderung des Tones oder der Farbe des Zahnes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065747",
    "display" : "Zökumblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Blutung aus dem Zökum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blinddarmblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Zäckumblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Caecumblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017947",
    "display" : "Gastrointestinale Erkrankungen  Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende GI-Störungen oder Erkrankungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062501",
    "display" : "Brustschmerz, nicht kardial",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Brustkorb, ohne Bezug zu einer Herzkrankheit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Brustschmerz nicht herzbedingt"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10022998",
    "display" : "Erregbarkeit",
    "definition" : "Eine Störung, gekennzeichnet durch eine anormale Reaktionsbereitschaft auf Reize oder eine physiologische Erregung; kann in Reaktion auf Schmerz, Angst, einem Medikament, einer emotionalen Situation oder einem medizinischen Umstand auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Irritabilität"
    },
    {
      "language" : "de-DE",
      "value" : "Erregung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere anormale oder übermäßige Reaktionen; Einschränkung der selbstversorgenden ATL; untröstbar"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10064774",
    "display" : "Extravasat am Infusionsort",
    "definition" : "Eine Störung, gekennzeichnet durch das Auslaufen einer pharmakologischen oder biologischen Substanz vom Infusionsort in das umgebende Gewebe. Zeichen und Symptome schließen Induration, Rötung, Schwellung, Brennen und deutliche Beschwerden am Infusionsort ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infusionsflüssigkeitsaustritt"
    },
    {
      "language" : "de-DE",
      "value" : "Blutaustritt aus Gefäß am Infusionsort"
    },
    {
      "language" : "de-DE",
      "value" : "Paravasation"
    },
    {
      "language" : "de-DE",
      "value" : "Paravasat am Infusionsort"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Ulzeration oder Nekrose, schwerer Gewebeschaden; operative Intervention indiziert"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Konsequenzen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10050068",
    "display" : "Extremitätenödem",
    "definition" : "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung in den oberen oder unteren Extremitäten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gliederödem"
    },
    {
      "language" : "de-DE",
      "value" : "Ödem Extremitäten"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">30% Unterschied im Volumen grobe Abweichung von der normalen anatomischen Kontur; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016256",
    "display" : "Fatigue",
    "definition" : "Eine Störung, gekennzeichnet durch einen Zustand allgemeiner Schwäche mit betonter Unfähigkeit, genügend Energie für die Verrichtungen des täglichen Lebens zu sammeln.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Erschöpfung"
    },
    {
      "language" : "de-DE",
      "value" : "Abgeschlagenheit"
    },
    {
      "language" : "de-DE",
      "value" : "Müdigkeit"
    },
    {
      "language" : "de-DE",
      "value" : "Energielosigkeit"
    },
    {
      "language" : "de-DE",
      "value" : "Schwäche"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Fatigue, durch Ruhe nicht erleichtert; eingeschränkte Selbstversorgungs-ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016558",
    "display" : "Fieber",
    "definition" : "Eine Störung, gekennzeichnet durch eine Erhöhung der Körpertemperatur über die obere Grenze des Normalen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Erhöhte Körpertemperatur"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">40.0°C für <=24 h"
    },
    {
      "code" : "grad4",
      "valueString" : ">40.0°C für >24 h"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017577",
    "display" : "Gang-/ Gehbewegungsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch Schwierigkeiten beim Gehen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gangstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Behinderung; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10014222",
    "display" : "Gesichtsödem",
    "definition" : "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung in Gesichtsgewebe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Faziales Ödem"
    },
    {
      "language" : "de-DE",
      "value" : "Gesichtsschwellung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Schwellung; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016059",
    "display" : "Gesichtsschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Gesicht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fazialisschmerz"
    },
    {
      "language" : "de-DE",
      "value" : "Nervus facialis Schmerz"
    },
    {
      "language" : "de-DE",
      "value" : "Facialischmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016791",
    "display" : "Grippeähnliche Symptome",
    "definition" : "Eine Störung, gekennzeichnet durch eine Gruppe von Symptomen ähnlich wie sie bei Patienten mit Grippe beobachtet werden. Dies schließt Fieber, Frösteln, Körperschmerzen, Krankheitsgefühl; Appetitverlust und trockenen Husten ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Grippesymptome"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10054482",
    "display" : "Halsödem",
    "definition" : "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung am Hals.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Halsschwellung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Allgemeines Halsödem (z. B. Schwierigkeit, den Hals zu drehen); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10051792",
    "display" : "Infusionsbezogene Reaktion",
    "definition" : "Eine Störung, gekennzeichnet durch eine heftige unerwünschte Reaktion gegenüber Infusion mit einer pharmakologischen oder biologischen Substanz.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infusionsbedingte Reaktion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Anhaltend (d. h. nicht schnell reagierend auf symptomatische Medikation und/oder kurze Unterbrechung der Infusion); Wiederauftreten der Symptome nach initialer Besserung; Krankenhauseinweisung wegen klinischer Folgen angezeigt;"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Konsequenzen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10025482",
    "display" : "Krankheitsgefühl",
    "definition" : "Eine Befindlichkeitsstörung, gekennzeichnet durch allgemeines Unwohlsein und Unbehagen, Gefühl der Indisponiertheit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Malaise"
    },
    {
      "language" : "de-DE",
      "value" : "Unwohlsein"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10028154",
    "display" : "Multiorganversagen",
    "definition" : "Eine Störung, gekennzeichnet durch eine fortschreitende Verschlechterung der Lungen-, Leber-, Nieren- und Gerinnungsvorgänge.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Versagen mehrerer Organe"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schock mit Azotämie und des Säure-Basen-Störung; signifikante Koagulationsauffälligkeiten"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Konsequenzen (z. B. Vasopressoren abhängige und oligurische / anurische / ischämische Kolitis oder Milchsäureazidose)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10011912",
    "display" : "Neugeborenentod",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beendigung des Lebens während der ersten 28 Tage des Lebens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "SIDS"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062466",
    "display" : "Ödem, lokales",
    "definition" : "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung an einem spezifischen anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ödem, örtliches"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schweres lokalisiertes Ödem und Intervention angezeigt; begrenzte Selbstversorgung bei ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10058720",
    "display" : "Stammödem",
    "definition" : "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung im Bereich des Körperstammes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Flüssigkeitseinlagerung im Körperstamm"
    },
    {
      "language" : "de-DE",
      "value" : "Wassereinlagerung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Grobe Abweichung von der normalen anatomischen Kontur; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10042435",
    "display" : "Plötzlicher Tod, nicht näher bezeichnet",
    "definition" : "Eine unerwartete Beendigung des Lebens, die keinem CTCAE-Begriff mit dem Grad 5 zugeordnet werden kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Unerwarteter Tod"
    },
    {
      "language" : "de-DE",
      "value" : "plötzliches Ableben/ Sterben"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10022095",
    "display" : "Reaktion am Injektionsort",
    "definition" : "Eine Störung, gekennzeichnet durch eine heftige Reaktion (in der Regel immunologisch) am Injektionsort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Ulzeration oder Nekrose; schwerer Gewebeschaden; operative Intervention indiziert"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Konsequenzen; dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10033371",
    "display" : "Schmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden, Pein oder Qual.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Qual"
    },
    {
      "language" : "de-DE",
      "value" : "Pein"
    },
    {
      "language" : "de-DE",
      "value" : "Algesie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10008531",
    "display" : "Schüttelfrost",
    "definition" : "Eine Störung, gekennzeichnet durch ein Gefühl von Kälte, die oft eine physiologische Reaktion auf Schwitzen nach Fieber kennzeichnet.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Frösteln mit Muskelzitten"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwer und lang andauernd, auf Narkotika nicht ansprechend"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10011914",
    "display" : "Tod, n.n.b.",
    "definition" : "Eine Beendigung des Lebens,  welche nicht zu einem CTCAE-Begriff, assoziiert mit Grad 5, zugeordnet werden kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ableben, n.n.b."
    },
    {
      "language" : "de-DE",
      "value" : "Sterben, n.n.b."
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021113",
    "display" : "Unterkühlung",
    "definition" : "Eine Störung, gekennzeichnet durch eine anormal niedrige Körpertemperatur. Intervention ist erforderlich, wenn Körpertemperatur 35°C oder darunter.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hypothermie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "32->28°C"
    },
    {
      "code" : "grad4",
      "valueString" : ">28°C; lebensbedrohliche Folgen (z. B. Koma, Hypotension, Lungenödem, Azidämie, Kammerflimmern)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10018065",
    "display" : "Allgemeine Störungen und anwendungsbedingten Umstände - Sonstiges, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende allgemeine Störungen oder Erkrankungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere oder medizinisch signifikante aber nicht unmittelbar lebensbedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10004665",
    "display" : "Biliäre Fistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen den Gallengängen und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gallenfistel"
    },
    {
      "language" : "de-DE",
      "value" : "Gallengangfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stark veränderte GI-Funktion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10008612",
    "display" : "Gallenblasenentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung, die die Gallenblase betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Cholezystitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017631",
    "display" : "Gallenblasenfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Gallenblase und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Cholezystische Fistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und stark veränderte GI-Funktion; TPE (Totale Parenterale Ernährung) angezeigt; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10059446",
    "display" : "Gallenblasennekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in der Gallenblase auftritt.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017636",
    "display" : "Gallenblasenobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte der Gallenblase.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gallenblasenverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und stark veränderte GI-Funktion; Sondenernährung, TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; nichtdringliche operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017639",
    "display" : "Gallenblasenperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Gallenblasenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gallenblasendurchbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017638",
    "display" : "Gallenblasenschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden in der Gallenblasenregion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gallenblasenkoliken"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10034405",
    "display" : "Gallengangperforation",
    "definition" : "Eine Störung, gekennzeichnet durch eine Perforation (Ruptur) der Wand des extra oder intrahepatischen Gallengangs.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gallengangdruchbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10051341",
    "display" : "Gallengangstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Gallenganges.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gallengangverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI-Funktion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019678",
    "display" : "Leberblutung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Blutung aus der Leber.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hepatische Hämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019692",
    "display" : "Lebernekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der im Leberparenchym auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hepatische nekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; radiologische oder operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019705",
    "display" : "Leberschmerz",
    "definition" : "Eine Befindlichkeitsstörung, gekennzeichnet durch das Gefühl deutlicher Beschwerden in der Leberregion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hepatischer Schmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10019663",
    "display" : "Leberversagen",
    "definition" : "Eine Erkrankung, gekennzeichnet durch die Unfähigkeit der Leber, die chemischen Substanzen des Körpers zu verstoffwechseln. Laborergebnisse zeigen anormale Ammoniak-, Bilirubin-, Milchsäure-, Dehydrogenase- und alkalische Phosphatasewert.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hepatisches Versagen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Flattertremor (Asterixis); milde Enzephalopathie; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Mäßige bis schwere Enzephalopathie; Koma; Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10036206",
    "display" : "Pfortaderthrombose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch die Bildung eines Thrombus (Blutgerinnsels) in der Pfortader.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pfortadergerinnsel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10036200",
    "display" : "Portale Hypertonie",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Erhöhung des Blutdrucks im portalen venösen System.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pfortaderhochdruck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Gegensinniger / retrograder portaler Blutfluss, assoziiert mit Varizen und / oder Aszites"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019805",
    "display" : "Hepatobiliäre Erkrankungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende hepatobiliäre Störung oder Erkrankung, die als unerwünschtes Ereignis im Rahmen einer Behandlung auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10001718",
    "display" : "Allergische  Reaktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine unerwünschte lokale oder allgemeine Reaktion durch Exposition gegenüber einem Allergen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Überempfindlichkeitsreaktion"
    },
    {
      "language" : "de-DE",
      "value" : "Allergische Reaktion ohne Schocksymptomatik"
    },
    {
      "language" : "de-DE",
      "value" : "Transfusionszwischenfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Anhaltend (d. h. auf symptomatische Medikation nicht schnell reagierend und/oder kurzer Infusionsunterbrechung); Wiederauftreten der Symptome nach initialer Besserung; Krankenhauseinweisung wegen klinischer Folgen angezeigt (z. B. Nierenschädigung, pulmonale Infiltrate)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002218",
    "display" : "Anaphylaxie",
    "definition" : "Eine Störung, gekennzeichnet durch eine akute entzündliche Reaktion aufgrund der Freisetzung von Histamin und Histaminähnlichen Substanzen aus Mastzellen, die eine immunologische Überempfindlichkeitsreaktion verursacht. Klinisch präsentiert sie sich mit Atemschwierigkeiten, Schwindel, Hypotension, Zyanose und Bewußtlosigkeit; kann zum Tode führen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Anaphylaktischer Schock"
    },
    {
      "language" : "de-DE",
      "value" : "Transfusionszwischenfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatischer Bronchospasmus, mit oder ohne Urtikaria; parenterale Intervention angezeigt; Allergiebezogenes Ödem / Angioödem; niedriger Blutdruck"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061664",
    "display" : "Autoimmunstörung",
    "definition" : "Eine Störung, gekennzeichnet durch Funktionsverlust oder Gewebezerstörung eines Organs oder mehrerer Organe, entstehend durch humorale oder zelluläre Immunreaktionen eines Individuums zu seinen eigenen Gewebebestandteilen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Autoimmunerkrankung"
    },
    {
      "language" : "de-DE",
      "value" : "Autoimmunreaktion"
    },
    {
      "language" : "de-DE",
      "value" : "AIR"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Autoimmunreaktion, die wichtige Organe betrifft (z. B. Kolitis, Anämie, Myokarditis, Niere)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040400",
    "display" : "Serumkrankheit",
    "definition" : "Eine Störung, gekennzeichnet durch eine Überempfindlichkeit verzögerten Typs gegenüber fremden Eiweissen aus tierischen Seren. Sie tritt ca. sechs bis 21 Tage nach der Anwendung des fremden Antigens auf. Symptome schließen Fieber, Gelenkschmerzen, Muskelschmerzen, Hautausschläge, Lymphadenopathien, deutliche Thoraxbeschwerden und Luftnot ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Überempfindlichkeit vom verzögerter Typ"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Gelenkschmerzen oder Entzündung; ausgedehnter Ausschlag; Steroide oder i. v. Flüssigkeiten angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention dringende angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10052015",
    "display" : "Zytokinsturm",
    "definition" : "Eine Störung, gekennzeichnet durch Übelkeit, Kopfschmerz, Tachykardie, Hypotonie, Hautausschlag und Kurzatmigkeit, verursacht durch Freisetzung von Zytokinen aus den Zellen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zytokinfreisetzungssyndrom"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Anhaltend (d. h. auf symptomatische Medikation nicht schnell reagierend und/oder kurzer Infusionsunterbrechung); Wiederauftreten der Symptome nach initialer Besserung; Krankenhauseinweisung wegen klinischer Folgen angezeigt (z. B. Nierenschädigung, pulmonale Infiltrate)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021428",
    "display" : "Immunsystemstörungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen oder Erkrankungen des Immunsystems, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10056519",
    "display" : "Abdominelle Infektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die abdominelle Höhle betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bauchinfektion"
    },
    {
      "language" : "de-DE",
      "value" : "intraabdomineller Abszess"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. Antibiotika, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061640",
    "display" : "Anorektale  Infektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Analbereich und das Rektum betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rektoanale Infektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. Antibiotika, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003011",
    "display" : "Appendizitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine akute Entzündung, die die Appendix  vermiformen betrifft, verursacht durch ein pathogenes Agens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wurmfortsatzentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Blinddarmentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. Antibiotika, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003012",
    "display" : "Appendizitis, perforierte",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine akute Entzündung der  Appendix vermiformen, verursacht durch ein pathogenes Agens, mit gangränösen Veränderungen, die in einer Ruptur der Appendixwand resultieren. Die Appendixwandruptur verursacht die Freisetzung der entzündlichen und bakteriellen Inhalte aus dem Wurmfortsatzlumen in die abdominelle Höhle.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wurmfortsatzperforation"
    },
    {
      "language" : "de-DE",
      "value" : "Perforierte Wurmfortsatzentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065744",
    "display" : "Arteriitis, infektiöse",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der eine Arterie betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Arterienentzündung, infektiös"
    },
    {
      "language" : "de-DE",
      "value" : "Infektiöse Arterienentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. Antibiotika, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015929",
    "display" : "Augeninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Augen betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Augenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10058674",
    "display" : "Beckeninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Beckenhöhle umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Beckenentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Abszess, intraabdominaler"
    },
    {
      "language" : "de-DE",
      "value" : "pelvine Infektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10005047",
    "display" : "Blasenentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Harnblase betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zystitis"
    },
    {
      "language" : "de-DE",
      "value" : "Cystitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10006259",
    "display" : "Brustentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Mamma betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mammaentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Mastitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Infektion; axilläre Lymphknotenentzündung; i. v. antibakterielle, antifungizide oder antivirale Intervention angezeigt;"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055078",
    "display" : "Bronchialinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Bronchien betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bronchitis, infektiöse"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065771",
    "display" : "Dünndarminfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Dünndarm betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dünndarmentzündung, infektiös"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065752",
    "display" : "Duodenitis, infektiöse",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Duodenum betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zwölffingerdarminfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Duodenalinfektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055005",
    "display" : "Eileiterinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Eierstöcke betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eileiterentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10014801",
    "display" : "Entzündung des Augeninneren",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Innenstruktur des Auges umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Endophthalmitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Systemische Intervention oder Krankenhauseinweisung angezeigt;"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10014594",
    "display" : "Enzephalitische Infektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Gehirngewebe betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Enzephalitis"
    },
    {
      "language" : "de-DE",
      "value" : "Hirninfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; schwere Veränderungen des Mentalstaus; selbstbegrenzende Krampfaktivität, fokale neurologische Anormalitäten"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062632",
    "display" : "Gallenblaseninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Gallenblase betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektion der Gallenblase"
    },
    {
      "language" : "de-DE",
      "value" : "Gallenblasenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061695",
    "display" : "Gallenweginfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Gallengangstrakt umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektion des biliären Traktes"
    },
    {
      "language" : "de-DE",
      "value" : "Infektiöse Cholangitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10008330",
    "display" : "Gebärmutterhalsinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die uterine Zervix betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Cervicitis"
    },
    {
      "language" : "de-DE",
      "value" : "Zervixinfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Zervizitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10033072",
    "display" : "Gehörgangentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das äußere Ohr und den Ohrkanal umfasst. Beitragende Faktoren schließen übermäßige Wasserexposition (Badeotitis) und Schnitte im Ohrkanal ein. Symptome schließen Völlegefühl, Jucken, Schwellung und deutliche Beschwerden im Ohr und Ohrausfluss ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Außenohrentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10064687",
    "display" : "Gerätebezogene Infektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Gebrauch eines medizinischen Gerätes betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10052298",
    "display" : "Harnröhreninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Harnröhre betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Urethritis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v.  antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046571",
    "display" : "Harnwegsinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Urintrakt, am häufigsten die Blase und die Urethra, umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnwegsinfekt"
    },
    {
      "language" : "de-DE",
      "value" : "Infektion der ableitenden Harnwege"
    },
    {
      "language" : "de-DE",
      "value" : "Harnröhrenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopische oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040872",
    "display" : "Hautinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Haut betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Dermatitis"
    },
    {
      "language" : "de-DE",
      "value" : "HautInfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Herpes Zoster"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065765",
    "display" : "Hirnnervenentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der einen Kopfnerven betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kopfnerventzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnnervenausfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10014621",
    "display" : "Hirn-Rückenmark-Infektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Gehirn und Rückenmarkgewebe umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Encephalomyelitis"
    },
    {
      "language" : "de-DE",
      "value" : "ZNS Infektion"
    },
    {
      "language" : "de-DE",
      "value" : "Infektion des zentralen Nervensystems"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061788",
    "display" : "Hornhautentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Augenhornhaut betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Korneale Infektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046300",
    "display" : "Infektion der oberen Atemwege",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die oberen Luftwege betrifft (Nase, Nebenhöhlen, Pharynx, Larynx oder Trachea).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektion der oberen Luftwege"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v.  antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10014678",
    "display" : "Infektiöse Endokarditis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die endokardiale Schicht (Innenhaut) des Herzens betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Herzinnenhautentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Endocarditis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10058838",
    "display" : "Infektiöse Enterokolitis",
    "definition" : "Eine Störung, die durch eine Entzündung des Dünn- und Dickdarms gekennzeichnet ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Darmentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt; profuse wässriger Durchfall mit Zeichen der Hypovolämie; blutiger Durchfall; Fieber; schwere abdominelle Schmerzen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10007810",
    "display" : "Katheterbezogene Infektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der sekundär durch Kathetergebrauch entsteht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Abszess in einem Drainagekanal"
    },
    {
      "language" : "de-DE",
      "value" : "Abszess in einem Katheterkanal"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061017",
    "display" : "Knochenentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Knochen betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ostitis"
    },
    {
      "language" : "de-DE",
      "value" : "Osteitis"
    },
    {
      "language" : "de-DE",
      "value" : "Osteomyelitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10010742",
    "display" : "Konjunktivitis, infektiöse",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Konjunktiven betrifft. Klinische Manifestationen umfassen rosa oder rote Farbe in den Augen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Augenbindehautentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10056522",
    "display" : "Leberinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Leber betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hepatische Infektion"
    },
    {
      "language" : "de-DE",
      "value" : "Leber Infektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021918",
    "display" : "Infektiöse Myositis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Skelettmuskeln betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektion Skelettmuskulatur"
    },
    {
      "language" : "de-DE",
      "value" : "Skelettmuskelinfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Skelettmuskulaturentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023216",
    "display" : "Gelenkinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der ein Gelenk betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Arthritis"
    },
    {
      "language" : "de-DE",
      "value" : "Gelenkentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Arthroskopische Intervention angezeigt (z. B. Drainage) oder Arthrotomie (z. B. offen chirurgische Drainage)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023874",
    "display" : "Kehlkopfentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Kehlkopf betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Laryngitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065755",
    "display" : "Lippeninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Lippen betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Labiale Infektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061229",
    "display" : "Lungeninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Lungen betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Pneumonie"
    },
    {
      "language" : "de-DE",
      "value" : "Infektiöse Lungenentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Pneumonie"
    },
    {
      "language" : "de-DE",
      "value" : "Abszess, intrathorakaler"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10050823",
    "display" : "Lymphknoteninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Lymphknoten betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Lymphdrüsenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10057483",
    "display" : "Mediastinuminfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Mediastinum umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mediastinale Infektion"
    },
    {
      "language" : "de-DE",
      "value" : "Mediastinalinfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Mediastinitis"
    },
    {
      "language" : "de-DE",
      "value" : "Abszess intraabdominaler oder intrathorakaler"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10027199",
    "display" : "Meningitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine akute Entzündung der Häute des Gehirns und des Rückenmarks.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide, antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062112",
    "display" : "Milzinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Milz betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Splenitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061304",
    "display" : "Nagelinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der einen Nagel betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Nagelentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10033078",
    "display" : "Mittelohrentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Mittelohr betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Otitis media"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065764",
    "display" : "Mukositis, infektiöse",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der eine Schleimhautoberfläche betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Schleimhautinfektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023424",
    "display" : "Niereninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Nieren betrifft.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10058804",
    "display" : "Ösophagitis, infektiöse",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Speiseröhre betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Speiseröhreninfektion"
    },
    {
      "language" : "de-DE",
      "value" : "infektiöse Speiseröhrenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10051741",
    "display" : "Pankreasinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Pankreas betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pankreatitis"
    },
    {
      "language" : "de-DE",
      "value" : "Pankreasentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide, antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10069138",
    "display" : "Papulopustulärer Ausschlag",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen Ausschlag, bestehend aus Papeln (kleine, erhabene Pickeln) und Pusteln (mit Eiter gefüllte Pusteln), typischerweise im Gesicht, Haarbereich und oberen Brustkorb und Rücken. Anders als Akne, zeigt dieser Ausschlag sich nicht mit Mittessern und kann mit juckenden oder empfindlichen Läsionen symptomatisch sein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eitriger Hautausschlag"
    },
    {
      "language" : "de-DE",
      "value" : "Eitriger Ausschlag"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Papeln und/oder Pusteln auf >30% der Körperoberfläche, assoziiert oder nicht mit Symptomen von Juckreiz und Druckschmerz; Einschränkung der selbstversorgenden ATL; assoziiert mit lokaler Superinfektion, (Therapie) mit oralen Antibiotika angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Papeln und/oder Pusteln auf jeglicher % der KOF, assoziiert oder nicht mit Symptomen von Juckreiz und Druckschmerz und sind assoziiert mit ausgedehnter Superinfektion, (Therapie) mit i. v. Antibiotika angezeigt; Antibiotika angezeigt; Lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034016",
    "display" : "Paronychie",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Weichgewebe um den Nagel herum umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nagelbettentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Nagelfalzentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Chirurgische Intervention oder i. v. Antibiotika indiziert; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061912",
    "display" : "Penisinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Penis betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Penisentzündung, infektiös"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065766",
    "display" : "Periphere Nerveninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der periphere Nerven betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektion eines peripheren Nerven"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10051472",
    "display" : "Periorbitale Infektion",
    "definition" : "Eine Erkrankung gekennzeichnet durch einen infektiösen Prozess, der die Augenhöhle betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Augenhöhleninfektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10057262",
    "display" : "Peritoneale Infektion",
    "definition" : "Eine Erkrankung gekennzeichnet durch einen infektiösen Prozess, der das Bauchfell betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Peritonitis"
    },
    {
      "language" : "de-DE",
      "value" : "peritonealer Abszess"
    },
    {
      "language" : "de-DE",
      "value" : "Peritonitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034835",
    "display" : "Pharyngitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Rachen betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rachenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061351",
    "display" : "Pleurainfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Pleura involviert.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Pleuritis (einschließlich Rip'-penfell, Brustfell, Lungenfell, Pleurahöhle)"
    },
    {
      "language" : "de-DE",
      "value" : "Pleuraempyem"
    },
    {
      "language" : "de-DE",
      "value" : "pleuraler Abszess"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10056627",
    "display" : "Phlebitis, infektiöse",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Venen betrifft. Klinische Manifestationen schließen Rötung, deutliche Beschwerden, Schwellung und Induration im Verlauf der infizierten Vene ein.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v.antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10050662",
    "display" : "Prostatainfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Prostata betrifft.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10037888",
    "display" : "Pustulöser Hautausschlag",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebenen und erhabene Hautläsion, gefüllt mit Eiter.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10059827",
    "display" : "Rhinitis, infektiöse",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Nasenschleimhaut umfasst.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10039413",
    "display" : "Speicheldrüseninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der eine Speicheldrüse betrifft.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040047",
    "display" : "Sepsis",
    "definition" : "Eine Erkrankung, die durch das Vorhandensein pathogener Mikroorganismen im Blutstrom gekennzeichnet ist, was eine schnell fortschreitende systemische Reaktion verursacht, die zu einem Schock führen kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blutvergiftung"
    },
    {
      "language" : "de-DE",
      "value" : "septischer Schock"
    },
    {
      "language" : "de-DE",
      "value" : "Infektiöser Transfusionszwischenfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040753",
    "display" : "Sinusitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Schleimhäute der Nasennebenhöhlen betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nasennebenhöhlenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopische oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062156",
    "display" : "Skrotuminfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Skrotum betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Skrotumentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Hodensackinfektion"
    },
    {
      "language" : "de-DE",
      "value" : "skrotale Infektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10064505",
    "display" : "Stomatitis, infektiöse",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der ein Stoma (chirurgisch erzeugte Öffnung an der Körperoberfläche) betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Stomainfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Infektion Stomaregion"
    },
    {
      "language" : "de-DE",
      "value" : "Infektion im Stomabereich"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10044302",
    "display" : "Tracheitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Luftröhre betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Luftröhreninfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Luftröhrenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019799",
    "display" : "Virushepatitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen viralen pathologischen Prozess, der das Leberparenchym betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Virale Hepatitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatische Leberdysfunktion; Fibrose durch Biopsie; kompensierte Zirrhose; Reaktivierung einer chronischen Hepatitis"
    },
    {
      "code" : "grad4",
      "valueString" : "Dekompensierte Leberfunktion (z. B. Aszites, Koagulopathie, Enzephalopathie, Koma)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062233",
    "display" : "Uterusinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Endometrium betrifft. Er kann sich auf das Myometrium und parametriale Gewebe ausdehnen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gebärmutterinfektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046914",
    "display" : "Vaginale Infektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Vagina betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Vaginitis"
    },
    {
      "language" : "de-DE",
      "value" : "Vaginaentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Scheidenentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Vaginalentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065772",
    "display" : "Vulvainfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Vulva betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Vulvitis"
    },
    {
      "language" : "de-DE",
      "value" : "Vulvaentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "infektiöse Schamlippenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062255",
    "display" : "Weichgewebeinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der Weichgewebe betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Weichteilgewebeinfektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10048038",
    "display" : "Wundinfektion",
    "definition" : "Eine Störung, gekennzeichnet durch einen infektiösen Prozess, der eine Wunde betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Abszess, subfaszialer"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10018784",
    "display" : "Zahnfleischinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Zahnfleisch betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Infektiöse Zahnfleischentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10048762",
    "display" : "Zahninfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der einen Zahn betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pulpitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopische oder operative Intervention angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065761",
    "display" : "Zökalinfektion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Zökum betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blinddarminfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Zökuminfektion"
    },
    {
      "language" : "de-DE",
      "value" : "Coecalinfektion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021881",
    "display" : "Infektionen und Infestationen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige zu spezifizierende Infektionen oder Infestationen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002899",
    "display" : "Aortenverletzung",
    "definition" : "Der Befund einer Aortenverletzung/Schädigung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Aortenschädigung"
    },
    {
      "language" : "de-DE",
      "value" : "Verletzung der Aorta"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; behindernd; Reparatur oder Revision angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Nachweis einer Endorganschädigung; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003162",
    "display" : "Arterienverletzung",
    "definition" : "Der Befund einer Arterien Verletzung/Schädigung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Aortenschaden"
    },
    {
      "language" : "de-DE",
      "value" : "Verletzung einer Arterie"
    },
    {
      "language" : "de-DE",
      "value" : "Arterienschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; behindernd; Reparatur oder Revision angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Nachweis einer Endorganschädigung; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10037767",
    "display" : "Bestrahlungs-Recall-Reaktion (dermatologisch)",
    "definition" : "Der Befund einer akuten Hautentzündung, verursacht durch Medikamente, speziell Chemotherapeutika, Wochen oder Monate nach Radiotherapie. Die Entzündungsreaktion ist auf die vorher bestrahlte Haut begrenzt und die Symptome verschwinden nach dem Absetzen des pharmazeutischen Agens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "dermatitische Recall'-Reaktion"
    },
    {
      "language" : "de-DE",
      "value" : "Radiologische Recall'-Reaktion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Feuchte Desquamation in Bereichen außerhalb von Hautfalten und Furchen, Blutung induziert durch geringes Trauma oder Abschürfung"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Hautnekrose oder Ulzeration der gesamten Kutis spontane Blutungen des betroffenen Gebietes; Hauttransplantation indiziert"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10050458",
    "display" : "Biliäre Anastomoseninsuffizienz",
    "definition" : "Der Befund von Gallenflüssigkeitsaustritt aufgrund des Versagens der Gallenanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Biliäres Anastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Gallenanastomoseninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065891",
    "display" : "Dickdarmanastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens einer Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dickdarmanastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Kolonanastomoseninsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Kolonleck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065892",
    "display" : "Dünndarmanastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund Versagens einer Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen) im Dünndarm.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dünndarmanastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Duodenalstumpf"
    },
    {
      "language" : "de-DE",
      "value" : "Jejunumstumpf"
    },
    {
      "language" : "de-DE",
      "value" : "Ileumstumpfinsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065788",
    "display" : "Eileiteranastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens einer Eileiteranastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Tuba uterina / fallopiiinsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Eileiteranastomosenleck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065790",
    "display" : "Eileiterperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Eileiterwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eileiterdurchbruch"
    },
    {
      "language" : "de-DE",
      "value" : "Eileiterruptur"
    },
    {
      "language" : "de-DE",
      "value" : "Tuba uterina/fallopiiperforation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt (z. B. Organresektion)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10017076",
    "display" : "Fraktur",
    "definition" : "Der Befund der traumatischen Verletzung eines Knochens, durch den die Kontinuität des Knochens unterbrochen ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Knochenbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; disloziert oder offene Wunde mit Knochenexposition; behindernd; operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065893",
    "display" : "Gastrische Anastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens einer Magenanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Magenanastomoseninsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Magenanastomosenleck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065879",
    "display" : "Gastrointestinale Anastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens einer gastrointestinalen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gastrointestinales"
    },
    {
      "language" : "de-DE",
      "value" : "Anastomosenleck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065712",
    "display" : "Gastrointestinale Stomanekrose",
    "definition" : "Der Befund eines nekrotischen Prozesses, der in (an) einem gastrointestinalen Stoma auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Komplikation GI- Stomaanlage"
    },
    {
      "language" : "de-DE",
      "value" : "GI- satomakomplikation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Krankenhauseinweisung angezeigt oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065898",
    "display" : "Gastrointestinale Stomastenose",
    "definition" : "Der Befund einer Verengung des gastrointestinalen Stoma (chirurgisch hergestellte Öffnung an der Körperoberfläche).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verengung gastrointestinales Stoma"
    },
    {
      "language" : "de-DE",
      "value" : "GI- Stomaanlagenverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende gestörte GI Funktion; Sondenernährung, TPE oder Krankenhausaufnahme angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062169",
    "display" : "Gefäßzugangskomplikation",
    "definition" : "Der Befund eines vorher nicht dokumentierten Problems in Bezug auf den vaskulären Zugangsort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Komplikation beim Gefäßzugang"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Thrombose der tiefen Venen oder kardial; Intervention angezeigt (z. B. Antikoagulation, Lysis, Filter, invasive Prozedur)"
    },
    {
      "code" : "grad4",
      "valueString" : "Embolisches Ereignis einschließlich Lungenembolie oder lebensbedrohlicher Thrombus"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065802",
    "display" : "Harnblasenanastomoseninsuffizienz",
    "definition" : "Der Befund von Urinaustritt aufgrund des Versagens einer Harnblasenanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen.)",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnblasenanastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Anastomoseninsuffizienz ableitende Harnwege"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10048049",
    "display" : "Handgelenksfraktur",
    "definition" : "Der Befund einer traumatischen Verletzung des Handgelenks, bei dem die Kontinuität eines Handgelenkknochens unterbrochen ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Handgelenksbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; elektive Chirurgie angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065814",
    "display" : "Harnleiteranastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund Versagens einer ureteralen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnleiteranastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Ureteranastomoseninsuffizien"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065815",
    "display" : "Harnröhrenanastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund Versagens einer urethralen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Urethrales Anastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Urethraanastomoseninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020100",
    "display" : "Hüftfraktur",
    "definition" : "Der Befund einer traumatischen Verletzung der Hüfte, durch den die Kontinuität entweder des Hüftkopfes, des Hüfthalses, des intertrochantären oder subtrochantären Bereiches gebrochen ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hüftbruch"
    },
    {
      "language" : "de-DE",
      "value" : "Schenkelhalsfraktur"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Krankenhauseinweisung zur Schmerzkontrolle angezeigt (z. B. Traktion); operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Symptome assoziiert mit neurovaskulärer Beeinträchtigung"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10059095",
    "display" : "Intestinales Stomainsuffizienz",
    "definition" : "Der Befund des Austritts von Inhalt an einem intestinalen Stoma (chirurgische hergestellte Öffnung an der Körperoberfläche).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Anastomoseninsuffizienz Enterostomie"
    },
    {
      "language" : "de-DE",
      "value" : "Komplikation einer intestinalen Stomaanlage"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065745",
    "display" : "Intestinaler Stomaprolaps",
    "definition" : "Der Befund eines intestinalen Stomavorfalls (chirurgisch hergestellte Öffnung an der Körperoberfläche) über das Niveau der Bauchoberfläche.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vorfall des künstlichen Darmausganges"
    },
    {
      "language" : "de-DE",
      "value" : "Vorfall / Prolaps intestinale Stomaanlage"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10059094",
    "display" : "Intestinale Stomaobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte eines intestinalen Stoma.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ausflussbehinderung / Verschluss intestinales Stoma"
    },
    {
      "language" : "de-DE",
      "value" : "Stomaausflussbehinderung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende Symptome; i. V. Flüssigkeiten; Sondenernährung oder TPE für >24h; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10049468",
    "display" : "Intestinale Stomablutung",
    "definition" : "Der Befund eines Blutaustritts aus einem intestinalen Stoma.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intestinale Stomahämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Stomablutungskomplikation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065826",
    "display" : "Intraoperative Arterienverletzung",
    "definition" : "Der Befund der Verletzung/Schädigung einer Arterie während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Schlagaderverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "Arterienschädigung, intraoperativ"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055298",
    "display" : "Intraoperative Blutung",
    "definition" : "Der Befund einer unkontrollierten Blutung während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Hämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Postoperative radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065843",
    "display" : "Intraoperative Herzverletzung",
    "definition" : "Der Befund einer Verletzung/Schädigung des Herzens während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative kardiale Verletzung"
    },
    {
      "language" : "de-DE",
      "value" : "intraoperative Herzschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Primäre Wiederherstellung eines(r) verletzten Organs/Struktur angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065834",
    "display" : "Intraoperative endokrine Verletzung",
    "definition" : "Der Befund der Verletzung / Schädigung einer endokrinen Drüse während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Drüsenverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "intraoperative Drüsenschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065825",
    "display" : "Intraoperative gastrointestinale Verletzung",
    "definition" : "Der Befund der Verletzung/Schädigung des gastrointestinalen Systems während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Darmverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "intraoperative Darmschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065831",
    "display" : "Intraoperative Mammaverletzung",
    "definition" : "Der Befund der Verletzung/Schädigung des Mammaparenchyms während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Brustverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "Intraoperative Mammaschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065844",
    "display" : "Intraoperative Ohrverletzung",
    "definition" : "Der Befund der Verletzung/Schädigung des Ohres während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Ohrschädigung"
    },
    {
      "language" : "de-DE",
      "value" : "Intraoperative aurikuläre Verletzung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd (z. B. beeinträchtigtes Hören; beeinträchtigtes Gleichgewicht)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065827",
    "display" : "Intraoperative hepatobiliäre Verletzung",
    "definition" : "Der Befund der Verletzung/Schädigung des hepatischen Parenchyms und/oder der Gallengänge während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Verletzung der Leber und/oder Gallenwege"
    },
    {
      "language" : "de-DE",
      "value" : "i. o. hepatobiliäre Schädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065842",
    "display" : "Intraoperative Kopf/ Halsverletzung",
    "definition" : "Der Befund der Verletzung/Schädigung des Kopfes und Halses während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Schädigung im Bereich des Kopfes / Halses"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065829",
    "display" : "Intraoperative Muskel/ Skelettverletzung",
    "definition" : "Der Befund der Verletzung/Schädigung des muskuloskelettären Systems während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Muskel- / Skelettschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065830",
    "display" : "Intraoperative neurologische Verletzung",
    "definition" : "Der Befund der Verletzung/Schädigung des Nervensystems während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "intraoperative Nervenverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "intraoperative Nervenschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065841",
    "display" : "Intraoperative okuläre Verletzung",
    "definition" : "Der Befund der Verletzung / Schädigung des Auges während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Augenverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "i. o. Augenschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065845",
    "display" : "Intraoperative renale Verletzung",
    "definition" : "Der Befund der Verletzung/Schädigung der Niere während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Nierenverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "intraoperative Nierenschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065840",
    "display" : "Intraoperative Reproduktionsorganverletzung",
    "definition" : "Der Befund der Verletzung/Schädigung der Reproduktionsorgane während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Schädigung im Bereich des Reproduktionstraktes"
    },
    {
      "language" : "de-DE",
      "value" : "intraoperative Genitalverletzung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065832",
    "display" : "Intraoperative respiratorische Verletzung",
    "definition" : "Der Befund der Verletzung/Schädigung des Atemsystems während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Schädigung der Respirationsorgane"
    },
    {
      "language" : "de-DE",
      "value" : "intraoperative Atemwegsverletzung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065846",
    "display" : "Intraoperative Hautverletzung",
    "definition" : "Der Befund der Verletzung/Schädigung der Haut während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Hautschädigung"
    },
    {
      "language" : "de-DE",
      "value" : "Kutane Verletzung"
    },
    {
      "language" : "de-DE",
      "value" : "Kutisverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "Kutisschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065847",
    "display" : "Intraoperative splenische Verletzung",
    "definition" : "Der Befund der Verletzung/Schädigung der Milz während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Milzverletzung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065828",
    "display" : "Intraoperative Verletzung der Harnorgane",
    "definition" : "Der Befund der Verletzung/Schädigung des Harnsystems während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Schädigung der ableitenden Harnwege"
    },
    {
      "language" : "de-DE",
      "value" : "i. o. Schädigung des Harntraktes"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065848",
    "display" : "Intraoperative venöse Verletzung",
    "definition" : "Der Befund der Verletzung/Schädigung einer Vene während einer chirurgischen Prozedur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Intraoperative Schädigung einer Vene"
    },
    {
      "language" : "de-DE",
      "value" : "intraoperative Schädigung venöses System"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065849",
    "display" : "Jugularvenenverletzung",
    "definition" : "Der Befund einer Verletzung/Schädigung der Jugularvene (Drosselvene).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Drosselvenenverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "V. jugularisVerletzung"
    },
    {
      "language" : "de-DE",
      "value" : "Jugularvenenschädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch; Einschränkung der selbstversorgenden ATL; behindernd; Wiederherstellung oder Revision angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10022161",
    "display" : "Karotisverletzung/Schädigung",
    "definition" : "Der Befund einer Verletzung/Schädigung der Karotisarterie (A. carotis).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Halsschlagaderverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "Halsschlagader schädigung"
    },
    {
      "language" : "de-DE",
      "value" : "Carotisverletzung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL (z. B. transiente zerebrale Ischämie); Wiederherstellung oder Revision angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002544",
    "display" : "Knöchelfraktur",
    "definition" : "Der Befund eines Knöchelgelenksschadens, gekennzeichnet durch einen Bruch des ununterbrochenen Zusammenhangs (Kontinuität) der Knöchelbeine. Symptome schließen deutliche Beschwerden, Schwellung und Bewegungsschwierigkeiten des betroffenen Beines und Fußes ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Knöchelbruch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; elektive Chirurgie angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10062548",
    "display" : "Luftröhrenblutung",
    "definition" : "Der Befund einer Blutung aus der Luftröhre.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Trachealblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10044291",
    "display" : "Luftröhrenobstruktion",
    "definition" : "Der Befund einer Blockierung des Lumens der Trachea.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Tracheale Obstruktion"
    },
    {
      "language" : "de-DE",
      "value" : "Luftröhrenverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stridor; radiologische oder endoskopische Intervention angezeigt (z. B. Stent, Laser); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringlich angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10050457",
    "display" : "Pankreatische Anastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens einer pankreatischen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pankreasanastomoseninsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Pankreasanastomosenleck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065705",
    "display" : "Pharyngeale Anastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund Versagens einer pharyngealen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pharynxanastomoseninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055322",
    "display" : "Postoperative Blutung",
    "definition" : "Der Befund einer Blutung, die nach einer chirurgischen Prozedur auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Postoperative Hämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Nachblutung, a. n. e."
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10056745",
    "display" : "Postoperative Thoraxprozedurkomplikation",
    "definition" : "Der Befund einer vorher nicht dokumentierten Problems, das nach einer Thoraxprozedur auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "p. o. Komplikation bei Thoraxprozedur"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Extubiert > 24-72 h postoperativ, aber vorher Tracheotomie angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Atemwegsbeeinträchtigung; dringliche Intervention angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10006504",
    "display" : "Quetschung",
    "definition" : "Der Befund einer Weichgewebe oder Knochenverletzung, gekennzeichnet durch Einsickern von Blut in das umgebende Gewebe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Prellung"
    },
    {
      "language" : "de-DE",
      "value" : "Kontusion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065803",
    "display" : "Renale Anastomoseninsuffizienz",
    "definition" : "Der Befund des Austritts von Urin aufgrund des Versagens einer Nierenanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Renales Anastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Nierenanastomoseninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065894",
    "display" : "Rektale Anastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens einer rektalen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rektales Anastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Rektumanastomoseninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065888",
    "display" : "Samenleiteranastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund Versagens einer Samenleiteranastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vas deferens Anastomoseninsuffizienz/leck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive OP angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065897",
    "display" : "Samenstranganastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund Versagens einer Samenstranganastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Samenstranganastomosenleck"
    },
    {
      "language" : "de-DE",
      "value" : "Funiculus spermaticusinsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040102",
    "display" : "Serom",
    "definition" : "Der Befund einer tumorähnlichen Ansammlung von Serum in Geweben.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061103",
    "display" : "Strahlendermatitis",
    "definition" : "Der Befund einer kutanen Entzündungsreaktion, die aufgrund einer Exposition gegenüber einem biologisch effektiven Niveau ionisierender Strahlung auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Epitheliolyse"
    },
    {
      "language" : "de-DE",
      "value" : "Kontaktblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Erythem"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Feuchte Desquamation außerhalb von Hautfalten, erhöhte Blutungsneigung durch geringes Trauma oder Abschürfung"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Hautnekrose oder Ulzeration der gesamten Kutis spontane Blutungen des betroffenen Gebietes; Hauttransplantation indiziert"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065961",
    "display" : "Speiseröhrenanastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens der Ösophagusanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ösophageale Anastomoseninsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Speiseröhrenanastomosenleck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10042127",
    "display" : "Stomaulkus",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotischerosive Läsion der jejunalen Schleimhautoberfläche in der Nähe der Anastomosenlokalisation nach Anlage einer Gastroenterostomie.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Stomageschwür"
    },
    {
      "language" : "de-DE",
      "value" : "Gastroenterostomieulcus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016173",
    "display" : "Sturz",
    "definition" : "Der Befund einer plötzlichen Bewegung nach unten, gewöhnlich mit dem Resultat einer Verletzung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065749",
    "display" : "Tracheostomablutung",
    "definition" : "Der Befund einer Blutung am Ort der Tracheostomie.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Tracheostomahämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Blutung im Bereich des Tracheostoma"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065822",
    "display" : "Urostomaprolaps",
    "definition" : "Der Befund einer Urostomaverlagerung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Urostomavorfall"
    },
    {
      "language" : "de-DE",
      "value" : "Vorfall künstlicher Harnausgang"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Dysfunktionelles Stoma; elektive operative Intervention oder größere Stomarevision angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065748",
    "display" : "Urostomablutung",
    "definition" : "Der Befund einer Blutung am Ort des Urostomas.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Urostomahämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Blutung im Bereich des  Urostomas"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065882",
    "display" : "Urostomaleck",
    "definition" : "Der Befund des Austritts von Inhalt aus einem Urostoma.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnausgangsinsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Urostomakomplikation"
    },
    {
      "language" : "de-DE",
      "value" : "Urostomabehinderung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065883",
    "display" : "Urostomaobstruktion",
    "definition" : "Der Befund der Obstruktion eines Urostomas.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Urostomabehinderung"
    },
    {
      "language" : "de-DE",
      "value" : "Urostomaverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Urostomablockade"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Veränderte Organfunktion (z. B. Sepsis oder Hydronephrose, oder renale Dysfunktion); elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Organversagen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065885",
    "display" : "Urostomastenose",
    "definition" : "Der Befund einer Verengung des Urostomas.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnausgangsinsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Urostomaverengung"
    },
    {
      "language" : "de-DE",
      "value" : "Urostomaabflusskomplikation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch (z. B. Hydronephrose oder renale Dysfunktion); elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065886",
    "display" : "Uterine(s) Anastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens einer uterinen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Anastomosenleck des Uterus"
    },
    {
      "language" : "de-DE",
      "value" : "Uterusanastomoseninsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046810",
    "display" : "Uterine Perforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Uteruswand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Uterusdurchbruch"
    },
    {
      "language" : "de-DE",
      "value" : "Uterusruptur"
    },
    {
      "language" : "de-DE",
      "value" : "Uterusperforation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt (z. B. Organresektion)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065887",
    "display" : "Vaginale(s) Anastomoseninsuffizienz",
    "definition" : "Der Befund einer Undichtigkeit aufgrund des Versagens einer vaginalen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vaginaanastomoseninsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Vaginales Anastomosenleck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10022356",
    "display" : "Vena cava superior Verletzung",
    "definition" : "Der Befund einer Verletzung/Schädigung der Vena cava superior (obere Hohlvene).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Oberen Hohlvenenschädigung"
    },
    {
      "language" : "de-DE",
      "value" : "Vena cavasuperior Verletzung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; behindernd; Wiederherstellung oder Revision angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10047228",
    "display" : "Venenverletzung",
    "definition" : "Der Befund der Verletzung/Schädigung einer Vene.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Venenschädigung"
    },
    {
      "language" : "de-DE",
      "value" : "Venenschaden"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; Reparatur oder Revision angezeigt; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Nachweis einer Endorganschädigung; operative Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10006634",
    "display" : "Verbrennung",
    "definition" : "Der Befund einer beschädigten Integrität einer anatomischen Lokalisation durch eine unerwünschte thermische Einwirkung. Verbrennungen können durch Exposition gegenüber chemischen Substanzen, direkter Hitze, Elektrizität, Flammen und Strahlung verursacht werden. Das Ausmaß der Schädigung hängt von der Dauer und Intensität der Exposition und der Zeit bis zur Verfügungstellung der Intervention ab.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Thermische Schädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Mäßiges bis umfassendes Debridement oder Rekonstruktion angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10022213",
    "display" : "Vena cava inferior Verletzung",
    "definition" : "Der Befund einer Verletzung/Schädigung der Vena cava inferior (untere Hohlvene).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Untere Hohlvenenverletzung"
    },
    {
      "language" : "de-DE",
      "value" : "Vena Cava inferior Schädigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen;  Intervention dringlich angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10041569",
    "display" : "Wirbelsäulenfraktur",
    "definition" : "Der Befund einer traumatischen Verletzung der Wirbelsäule, bei der die Kontinuität eines Wirbelknochens unterbrochen ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Spinale Fraktur"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Rückenschmerzen; Krankenhauseinweisung oder Intervention zur Schmerzkontrolle angezeigt (z. B. Vertebroplasty);  Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10053692",
    "display" : "Wundkomplikation",
    "definition" : "Der Befund der Entwicklung eines neuen Problems am Ort einer bestehenden Wunde.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wundheilungsstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Abszess, subfaszial"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Hernie ohne Nachweis einer Einklemmung; fasziale Unterbrechung/Dehiszenz; primärer Wundverschluss oder Revision durch operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Hernie mit Zeichen der Einklemmung; großer Rekonstruktionslappen, Transplantation, Resektion oder Amputation angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10048031",
    "display" : "Wunddehiszenz",
    "definition" : "Der Befund des Auseinanderweichens der angenäherten (zusammengehörigen) Ränder einer chirurgischen Wunde.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Auseinanderweichen der Wundränder"
    },
    {
      "language" : "de-DE",
      "value" : "Platzbauch"
    },
    {
      "language" : "de-DE",
      "value" : "Nahtinsuffizienz, a. n. e."
    },
    {
      "language" : "de-DE",
      "value" : "Wundheilungsstörung, s. c."
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Fasziale Unterbrechung oder Dehiszenz ohne Eviszeration; primärer Wundverschluss oder Revision durch operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; symptomatische Hernie mit Zeichen der Einklemmung; fasziale Unterbrechung mit Eviszeration; großer Rekonstruktionslappen, Transplantation, Resektion oder Amputation angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10022117",
    "display" : "Verletzung, Vergiftung und prozedurale Komplikationen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Verletzungen, Vergiftungen und/oder prozedurale Komplikationen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10005452",
    "display" : "ACTH (Corticotropin) im Blut erniedrigt",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der einen erniedrigten Spiegel von ACTH (Corticotropin) in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Corticotropin"
    },
    {
      "language" : "de-DE",
      "value" : "Adrenocorticotropin"
    },
    {
      "language" : "de-DE",
      "value" : "Adrenocorticotropes Hormon"
    },
    {
      "language" : "de-DE",
      "value" : "ACTH erniedrigt"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10000636",
    "display" : "Aktivierte partielle Thromboplastinzeit verlängert",
    "definition" : "Eine anormales Labortestergebnis, bei dem die partielle Thromboplastinzeit größer als der Kontrollwert gefunden wird. Als ein möglicher Indikator einer Koagulopathie kann eine verlängerte partielle Thromboplastinzeit (PTT) bei verschiedenen Störungen und Krankheiten auftreten, sowohl primär als auch verbunden mit einer Intervention.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "PTT"
    },
    {
      "language" : "de-DE",
      "value" : "Partielle Thromboplastinzeit verlängert"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">2.5 x obere Normgrenze; Blutung"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10001551",
    "display" : "Alanin-Aminotransferase erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erhöhung des Spiegels der Alanin-Aminotransferase in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "ALAT"
    },
    {
      "language" : "de-DE",
      "value" : "ALT"
    },
    {
      "language" : "de-DE",
      "value" : "GPT erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">5.0-20.0 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">20.0 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10001675",
    "display" : "Alkalische Phosphatase erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erhöhung des Spiegels der Alkalischen Phosphatase in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "AP erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">5.0-20.0 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">20.0 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10003481",
    "display" : "Aspartat-Aminotransferase erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erhöhung des Spiegels der Aspartat-Aminotransferase in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "AST, GOT erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">5.0-20.0 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">20.0 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10005332",
    "display" : "Antidiuretisches Hormon im Blut außerhalb Norm",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erhöhung des Spiegels von Antidiuretischem Hormon in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "ADH Vasopression VP"
    },
    {
      "language" : "de-DE",
      "value" : "Arginin Vasopressin  AVP erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10005364",
    "display" : "Bilirubin im Blut erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der einen anormal hohen Spiegel von Bilirubin in einer Blutprobe anzeigt. Übermäßiges Bilirubin ist mit Ikterus assoziiert.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hyperbilirubinämie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">3.0-10.0 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">10.0 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10007839",
    "display" : "CD4-Lymphozyten verringert",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erniedrigte Spiegel von CD4-Lympophozyten in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<200-50/mm3; <0.2 x 0.05 - 10e9/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<50/mm3; <0.05 x 10e9/L"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10008661",
    "display" : "Cholesterin hoch",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der höhere als normale Spiegel von Cholesterin in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Cholesterin erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">400-500 mg/dL; >10.34 - 12.92 mmol/L"
    },
    {
      "code" : "grad4",
      "valueString" : ">500 mg/dL; >12.92 mmol/L"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10011268",
    "display" : "Creatinphosphokinase erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von CPK in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "CPK hoch"
    },
    {
      "language" : "de-DE",
      "value" : "Creatinkinase erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">5 x obere Normgrenze 10 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">10 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10050528",
    "display" : "Ejektionsfraktion herabgesetzt",
    "definition" : "Der Prozentsatz wird errechnet, wenn die Blutmenge, ausgeworfen während einer Kammerkontraktion des Herzens, verglichen wird mit der Menge, die vor der Kontraktion vorhanden war.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ejektionsfraktion verringert"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Verbleibende Ejektionsfraktion (EF) 39-20%; >20% Abfall gegenüber der Grundlinie"
    },
    {
      "code" : "grad4",
      "valueString" : "Verbleibende Ejektionsfraktion (EF) <20%"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10014383",
    "display" : "EKG: korrigiertes QT Intervall verlängert",
    "definition" : "Der Befund einer kardialen Dysrhythmie, gekennzeichnet durch ein anormal langes korrigiertes QT-Intervall.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "EKG: QT Dauer verlängert"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "QTc >= 501 ms bei mindestens zwei getrennten EKGs"
    },
    {
      "code" : "grad4",
      "valueString" : "QTc >= 501 oder >60 ms Veränderung gegenüber Grundlinie und Torsade de pointes oder polymorphische ventrikuläre Tachykardie oder Zeichen/Symptome schwerwiegender Arrhythmie"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016987",
    "display" : "FEV1 erniedrigt",
    "definition" : "Ein Befund, basierend auf einem Testergebnis, der eine relative Erniedrigung im Anteil der forcierten Vitalkapazität, die während einer spezifischen Zahl von Sekunden ausgeatmet wird, anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Forcierte Vitalkapazität verringert"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "50-59%"
    },
    {
      "code" : "grad4",
      "valueString" : "<= 49%"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016596",
    "display" : "Fibrinogen verringert",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung des Fibrinogenspiegels in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<0.5-0.25 x Untere Normgrenze oder 50-<75% Erniedrigung gegenüber der Basislinie"
    },
    {
      "code" : "grad4",
      "valueString" : "<0.25 x Untere Normgrenze oder 75% Erniedrigung gegenüber der Basislinie oder dem absoluten Wert <50 mg/dL"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10056910",
    "display" : "Gamma-Glutamyltransferase erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der höhere als normale Spiegel von Gamma-Glutamyltransferase in einer Blutprobe anzeigt. GGT katalysiert den Transfer einer Gammaglutamyl-Gruppe von einem Gammaglutamyl-Peptid zu einem anderen Peptid, einer Aminosäure oder Wasser.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "GGT"
    },
    {
      "language" : "de-DE",
      "value" : "γ-Glutamyltransferase"
    },
    {
      "language" : "de-DE",
      "value" : "Gamma-GT"
    },
    {
      "language" : "de-DE",
      "value" : "γ-Glutamyltranspeptidase"
    },
    {
      "language" : "de-DE",
      "value" : "γ-GTP erhöht"
    },
    {
      "language" : "de-DE",
      "value" : "γ-GTP"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">5.0-20.0 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">20.0 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10049182",
    "display" : "Gesamt-Leukozyten verringert",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Zahl der weißen Blutkörperchen in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Leukozytopenie"
    },
    {
      "language" : "de-DE",
      "value" : "Weiße Blutkörperchenverringerung"
    },
    {
      "language" : "de-DE",
      "value" : "Leukopenie"
    },
    {
      "language" : "de-DE",
      "value" : "Leukozytenabfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<2000-1000/mm3; <2.0-1.0 x 10e9/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<1000/mm3; <1.0 x 10e9/L"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047900",
    "display" : "Gewichtsverlust",
    "definition" : "Ein Befund, gekennzeichnet durch eine Erniedrigung des Gesamtkörpergewichts; in der Pädiatrie, weniger als die Grundlinienkurve.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Körpergewichterniedrigung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">=20% der Basislinie; Sondenernährung oder TPE angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047896",
    "display" : "Gewichtszunahme",
    "definition" : "Ein Befund, gekennzeichnet durch ein Ansteigen des Gesamtkörpergewichts; in der Pädiatrie, größer als die Grundlinienkurve.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Körpergewichtserhöhung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">=20% der Basislinie"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10005561",
    "display" : "Gonadotropin im Blut anormal",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der einen anormalen Spiegel eines Gonadotropins (FSK, LH, hCG) in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Luteinisierendes Hormon LH"
    },
    {
      "language" : "de-DE",
      "value" : "Follikelstimulierendes Hormon FSH"
    },
    {
      "language" : "de-DE",
      "value" : "Humanes Choriongonadotropin hCG"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10019150",
    "display" : "Haptoglobin verringert",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung des Haptoglobinspiegels in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10055599",
    "display" : "Hämoglobin erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Hämoglobin in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hb erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Erhöhung auf >4 g/dL oberhalb der oberen Normgrenze oder oberhalb der Basislinie, wenn die Basislinie oberhalb der oberen Normgrenze liegt."
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10007612",
    "display" : "Kardiales Troponin I erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von kardialem Troponin I in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Spiegel vereinbar mit Myokardinfarkt wie vom Hersteller definiert"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10007613",
    "display" : "Kardiales Troponin T erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel kardialen Troponin T‘s in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Spiegel vereinbar mit Myokardinfarkt wie vom Hersteller definiert"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10011368",
    "display" : "Kreatinin erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Kreatinin in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Creatinin erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">3.0 baseline; >3.0-6.0 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">6.0 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10024574",
    "display" : "Lipase erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Lipase in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Lipoproteinlipase LPL, LP"
    },
    {
      "language" : "de-DE",
      "value" : "Pankreaslipase"
    },
    {
      "language" : "de-DE",
      "value" : "Steapsin erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">2.0-5.0 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">5.0 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10025256",
    "display" : "Lymphozytopenie",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Lymphozytenzahl in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<500-200/mm3; <0.5-0.2 x 10e9/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<200/mm3; <0.2 x 10e9/L"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10025258",
    "display" : "Lymphozytose",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine anormale Erhöhung der Lymphozytenzahl im Blut, in Ergüssen oder im Knochenmark anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">20,000/mm3"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10029366",
    "display" : "Neutrophile Granulozyten verringert",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Zahl der neutrophilen Granulozyten in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Leukozytopenie"
    },
    {
      "language" : "de-DE",
      "value" : "Leukopenie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<1000-500/mm3; <1.0-0.5 x 10e9/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<500/mm3; <0.5 x 10e9/L"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10062646",
    "display" : "Pankreasenzym verringert",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Pankreasenzyme in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pankreas Amylase"
    },
    {
      "language" : "de-DE",
      "value" : "Pankreaslipase herabgesetzt"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Folgen des Absorptionsmangels"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10005778",
    "display" : "Prolaktin im Blut außerhalb Norm",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der einen anormalen Spiegel von Prolaktin in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Prolaktin"
    },
    {
      "language" : "de-DE",
      "value" : "PRL Laktotropes Hormon"
    },
    {
      "language" : "de-DE",
      "value" : "LTH Lactotropin"
    },
    {
      "language" : "de-DE",
      "value" : "Laktotropin außerhalb der Norm"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065906",
    "display" : "Pulmonale Transferkapazität für Kohlenmonoxid verringert",
    "definition" : "Ein Befund, basierend auf einem Lungenfunktionstestergebnis, der eine Erniedrigung der Lungenkapazität anzeigt, Kohlenstoffmonoxyd zu absorbieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Asymptomatische Erniedrigung von >8 Einheiten Abfall; >5 Einheiten Abfall bei Vorhandensein von Lungensymptomen (z.B. >Grad 2 Hypoxie oder >Grad 2 oder höhere Dyspnoe)"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10022402",
    "display" : "Prothrombinzeit erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der einen anormalen Spiegel von Prolaktin in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "INR erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">2.5 x obere Normgrenze; >2.5 x oberhalb der Basislinie, wenn auf Antikoagulantien Therapie"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10040139",
    "display" : "Serum Amylase erhöht",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Amylas in einer Serumprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "α'-Amylase"
    },
    {
      "language" : "de-DE",
      "value" : "β'-Amylase"
    },
    {
      "language" : "de-DE",
      "value" : "γ'-Amylase erhöht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">2.0-5.0 x obere Normgrenze"
    },
    {
      "code" : "grad4",
      "valueString" : ">5.0 x obere Normgrenze"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10035528",
    "display" : "Thrombozytopenie",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Zahl der Blutplättchen in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Thrombopenie"
    },
    {
      "language" : "de-DE",
      "value" : "Blutplättchen erniedrigt"
    },
    {
      "language" : "de-DE",
      "value" : "Thrombozytenabfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<50,000-25,000/mm3; <50.0 - 25.0 x 10e9/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<25,000/mm3; <25.0 x 10e9/L"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10059895",
    "display" : "Urinausscheidung verringert",
    "definition" : "Ein Befund, basierend auf Testergebnissen, der anzeigt, dass die Urinproduktion verringert ist, verglichen mit der vorherigen Menge.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Oligurie (<80 ml in 8 h)"
    },
    {
      "code" : "grad4",
      "valueString" : "Anuri (<240 ml in 24 h)"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047580",
    "display" : "Vitalkapazität anormal",
    "definition" : "Ein Befund, basierend auf einem Lungenfunktionstestergebnis, der eine anormale Vitalkapazität (Menge ausgeatmet nach maximaler Einatmung) anzeigt, wenn mit dem prognostizierten Wert verglichen wird.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Maximales Atemvolumen außerhalb der Norm"
    },
    {
      "language" : "de-DE",
      "value" : "Vitalkapazität außerhalb der Norm"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<50% des prognostizierten Wertes; begrenzte selbstversorgende ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10018748",
    "display" : "Wachstumshormon außerhalb Norm",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der einen anormalen Spiegel von Wachstumshormon in einer Blutprobe anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "growth hormone außerhalb der Norm"
    },
    {
      "language" : "de-DE",
      "value" : "GH"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10022891",
    "display" : "Untersuchungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Untersuchungen, die unerwünschte Ereignisse im Rahmen einer Behandlung anzeigen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Sonstige Laborwerte"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10029883",
    "display" : "Adipositas",
    "definition" : "Eine Störung, gekennzeichnet durch das Vorhandensein eines hohen Anteils von Körperfett.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fettleibigkeit"
    },
    {
      "language" : "de-DE",
      "value" : "Übergewicht"
    },
    {
      "language" : "de-DE",
      "value" : "Obesitas"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "BMI 30-39.9 kg/m2"
    },
    {
      "code" : "grad4",
      "valueString" : "BMI >=40 kg/m2"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10001598",
    "display" : "Alkoholintoleranz",
    "definition" : "Eine Störung, gekennzeichnet durch eine Erhöhung der Empfindlichkeit gegenüber den unerwünschten Wirkungen von Alkohol, was Nasenverstopfung, Hautrötungen, Herzdysrhythmien, Übelkeit, Erbrechen, Verdauungsstörungen und Kopfschmerzen einschließen kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Alkoholunverträglichkeit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL;"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10001680",
    "display" : "Alkalose",
    "definition" : "Eine Störung, gekennzeichnet durch anormal hohe Alkalinität (niedrige Wasserionenkonzentration) des Blutes und anderen Körpergewebe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blut pH Erhöhung"
    },
    {
      "language" : "de-DE",
      "value" : "Störung des Flüssigkeits, Elektrolyt und Säurebasenhaushaltes"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "pH >7.5"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002646",
    "display" : "Anorexie",
    "definition" : "Eine Störung, gekennzeichnet durch Verlust des Appetites.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Magersuch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Assoziiert mit signifikantem Gewichtsverlust oder Fehlernährung (z. B. inadäquate orale kalorische und/oder Flüssigkeitsaufnahme); Sondenernährung oder PE angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10000486",
    "display" : "Azidose",
    "definition" : "Eine Störung, gekennzeichnet durch anormal hohe Azidität (hohe Wasserionenkonzentration) des Blutes und anderen Körpergeweben.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "pH<7.3"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10012174",
    "display" : "Dehydrierung",
    "definition" : "Eine Störung, gekennzeichnet durch übermäßigen Verlust an Wasser aus dem Körper. Dies ist in der Regel durch schweren Durchfall, Erbrechen oder Diaphoresis (Schwitzen) verursacht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Exsikkose"
    },
    {
      "language" : "de-DE",
      "value" : "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes, Exsiccose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "i. v. Flüssigkeit oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065973",
    "display" : "Eisenüberlastung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Anreicherung von Eisen in den Geweben.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Erhöhter Eisengehalt"
    },
    {
      "language" : "de-DE",
      "value" : "Hypersiderinämie"
    },
    {
      "language" : "de-DE",
      "value" : "Gewebeeisenerhöhung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10052426",
    "display" : "Glucoseintoleranz",
    "definition" : "Eine Störung, gekennzeichnet durch die Unfähigkeit, Glukose richtig zu verstoffwechseln.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Glukosestoffwechselstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Zuckerintoleranz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Insulin angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020587",
    "display" : "Hyperkalzämie",
    "definition" : "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Kalzium (korrigiert für Albumin) im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes Hypercalcämie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Korrigiertes Serum Calcium von >12.5-13.5 mg/dL; >3.1-3.4 mmol/L; ionisiertes Calcium >1.6 - 1.8 mmol/L; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Korrigiertes Serum Calcium von >13.5 mg/dL; >3.4 mmol/L; ionisiertes Calcium >1.8 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020639",
    "display" : "Hyperglykämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine erhöhte Konzentration von Blutzucker anzeigt. Es ist normalerweise ein Hinweis auf einen Diabetes mellitus oder eine Glukoseintoleranz.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">250-500 mg/dL; >13.9-27.8 mmol/L; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : ">500 mg/dL; >27.8 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020647",
    "display" : "Hyperkaliämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das erhöhte Spiegel von Kalium im Blut anzeigt; assoziiert mit Nierenversagen oder manchmal mit der Anwendung von Diuretika.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kaliumerhöhung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">6.0-7.0 mmol/L; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : ">7.0 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020670",
    "display" : "Hypermagnesiämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das erhöhte Spiegel von Magnesium im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Magnesiumerhöhung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">3.0-8.0 mg/dL; >1.23-3.30 mmol/L"
    },
    {
      "code" : "grad4",
      "valueString" : ">8.0 mg/dL; >3.30 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020680",
    "display" : "Hypernatriämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das erhöhte Spiegel von Natrium im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Natriumerhöhung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">155-160 mmol/L; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : ">160 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020870",
    "display" : "Hypertriglyzeridämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine erhöhte Konzentration von Triglyzeriden im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Neutralblutfetterhöhung"
    },
    {
      "language" : "de-DE",
      "value" : "Triglyzeriderhöhung"
    },
    {
      "language" : "de-DE",
      "value" : "Triacylglycerol-, TAG-, Tri- Oacylglycerol Erhöhung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">500 mg/dL-1000 mg/dL; >5.7 mmol/L-11.4 mmol/L"
    },
    {
      "code" : "grad4",
      "valueString" : ">1000 mg/dL; >11.4 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020907",
    "display" : "Hyperurikämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine erhöhte Konzentration von Harnsäure im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnsäureerhöhung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">ULN-10 mg/dL (0.59 mmol/L) mit physiologischen Folgen"
    },
    {
      "code" : "grad4",
      "valueString" : ">10 mg/dL; >0.59 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020943",
    "display" : "Hypoalbuminämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Albumin im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Albuminerniedrigung"
    },
    {
      "language" : "de-DE",
      "value" : "Albuminmangel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<2 g/dL; <20 g/L"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen;  Dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020949",
    "display" : "Hypokalzämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Kalzium (Calcium) im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kalziumerniedrigung"
    },
    {
      "language" : "de-DE",
      "value" : "niedriges Calcium"
    },
    {
      "language" : "de-DE",
      "value" : "Calciummangel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Korrigiertes Serum-Calcium von <7.0-6.0 mg/dL; <1.75-1.5 mmol/L; ionisiertes Calcium <0.9 - 0.8 mmol/L; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Korrigiertes Serum-Calcium von <6.0 mg/dL; <1.5 mmol/L;  ionisiertes Calcium <0.8 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021005",
    "display" : "Hypoglykämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Glukose im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blutzuckererniedrigung"
    },
    {
      "language" : "de-DE",
      "value" : "Unterzuckerrung"
    },
    {
      "language" : "de-DE",
      "value" : "Niedriger Blutzucker"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<40-30 mg/dL; <2.2-1.7 mmol/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<30 mg/dL; <1.7 mmol/L; lebensbedrohliche Folgen Krämpfe"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021018",
    "display" : "Hypokaliämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Kalium im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
    },
    {
      "language" : "de-DE",
      "value" : "Niedriges Kalium"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<3.0-2.5 mmol/L; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "<2.5 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021028",
    "display" : "Hypomagnesiämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Magnesium im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
    },
    {
      "language" : "de-DE",
      "value" : "Niedriges Magnesium"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<0.9-0.7 mg/dL; <0.4-0.3 mmol/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<0.7 mg/dL; <0.3 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021038",
    "display" : "Hyponatriämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Natrium im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
    },
    {
      "language" : "de-DE",
      "value" : "Niedriges Natrium"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<130-120 mmol/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<120 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021059",
    "display" : "Hypophosphatämie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Phosphaten im Blut anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
    },
    {
      "language" : "de-DE",
      "value" : "Niedrige Blutphosphate"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<2.0-1.0 mg/dL; <0.6-0.3 mmol/L"
    },
    {
      "code" : "grad4",
      "valueString" : "<1.0 mg/dL; <0.3 mmol/L; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10045152",
    "display" : "Tumorlyse Syndrom",
    "definition" : "Eine Störung, gekennzeichnet durch metabolische Abnormalität, die von einer spontanen oder therapieassoziierten Zytolyse von Tumorzellen resultieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "tumor lysis syndrome (engl.)"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Vorhanden"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Dringliche Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10027433",
    "display" : "Stoffwechsel und Ernährung - Sonstiges, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Stoffwechsel- und Ernährungsstörungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065775",
    "display" : "Abdominale Weichgewebenekrose",
    "definition" : "Eine Störung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben der Bauchwand auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Abdominale Weichteilnekrose"
    },
    {
      "language" : "de-DE",
      "value" : "Absterben von Bauchweichgewebe"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003239",
    "display" : "Arthralgie",
    "definition" : "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden in einem Gelenk.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gelenkschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10003246",
    "display" : "Arthritis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung, die ein Gelenk einbezieht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gelenkentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Heftiger Schmerz, assoziiert Zeichen der Entzündung, Rötung und Gelenkschwellung; irreversibler Gelenkschaden; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10066480",
    "display" : "Avaskuläre Nekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch nekrotische Veränderungen im Knochen aufgrund der Unterbrechung der Blutzufuhr. Am häufigsten die Epiphyse der langen Knochen betreffend führen die nekrotischen Veränderungen zum Zusammenbruch und zur Zerstörung der Knochenstrukturen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Avaskuläre Knochennekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065799",
    "display" : "Bindegewebefibrose, tiefe",
    "definition" : "Eine Störung, gekennzeichnet durch fibrotische Degeneration der tiefen Bindegewebe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fibrose des tiefen Bindegewebes"
    },
    {
      "language" : "de-DE",
      "value" : "Tiefe Bindegewebsnekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Induration; unfähig, die Haut zu verschieben oder zu kneifen; begrenzende Gelenk oder Öffnungsbewegung (z. B. Mund, Anus); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Generalisiert; assoziiert mit Zeichen oder Symptomen behindernden Atmens oder der Nahrungsaufnahme"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10008496",
    "display" : "Brustwandschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl im Bereich der Brustkorbwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Thoraxwandschmerzen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10015688",
    "display" : "Exostose",
    "definition" : "Eine Störung, gekennzeichnet durch eine nichtneoplastische Wucherung von Knochen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10016750",
    "display" : "Flankenschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl des seitlichen Körpers im Bereich unterhalb der Rippen und oberhalb der Hüfte.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10062572",
    "display" : "Generelle Muskelschwäche",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Muskelstärke an mehreren anatomischen Orten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Allgemeine Muskelparese"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwäche begrenzt die selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10023215",
    "display" : "Gelenkerguss",
    "definition" : "Eine Störung, gekennzeichnet durch übermäßige Flüssigkeit in einem Gelenk, in der Regel als Ergebnis einer Gelenkentzündung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Flüssigkeitserguss eines Gelenkes"
    },
    {
      "language" : "de-DE",
      "value" : "Übermäßige Gelenkflüssigkeit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10048677",
    "display" : "Gesäßschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl in den Gesäßbacken.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10028836",
    "display" : "Halsschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch deutliche Beschwerden im Halsbereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065781",
    "display" : "Halsweichgewebenekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben des Halses auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bindegewebenekrose im Nackenbereich"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10006002",
    "display" : "Knochenschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl in den Knochen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ossäre Schmerzen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10023509",
    "display" : "Kyphose",
    "definition" : "Eine Störung, gekennzeichnet durch eine anormale Steigerung der Kurvatur des thorakalen Anteils der Wirbelsäule.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dorsal konvexe Wirbelsäulenverkrümmung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10024842",
    "display" : "Lordose",
    "definition" : "Eine Störung, gekennzeichnet durch eine anormale Steigerung der Kurvatur des lumbalen Anteils der Wirbelsäule.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ventral konvexe Wirbelsäulenverkrümmung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065780",
    "display" : "Muskelschwäche, linksseitig",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Muskelstärke auf der linken Körperseite.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hemiparese linksseitig"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065776",
    "display" : "Muskelschwäche, untere Extremität",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Stärke der unteren Gliedmaßenmuskulatur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Muskelschwäche untere Gliedmaßen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065794",
    "display" : "Muskelschwäche, rechtsseitig",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Muskelstärke auf der rechten Körperseite.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hemiparese rechtsseitig"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065795",
    "display" : "Muskelschwäche, Rumpf",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Stärke der Körperstammmuskulatur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Muskelschwäche Körperstamm"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065895",
    "display" : "Muskelschwäche, obere Extremität",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Stärke der oberen Gliedmaßenmuskulatur.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Muskelschwäche obere Gliedmaßen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065783",
    "display" : "Muskel-Skelett-Deformität",
    "definition" : "Eine Störung, gekennzeichnet durch eine Malformation des muskuloskelettären Systems.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Deformierung Bewegungsapparat"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Signifikante Deformität, Hypoplasie oder Asymmetrie, nicht korrigierbar durch Prothese oder durch Kleidungsbedeckung; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10028411",
    "display" : "Myalgie",
    "definition" : "Eine Störung, gekennzeichnet durch deutliche Beschwerden, hervorgerufen durch einen Muskel oder eine Muskelgruppe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Muskelschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10028653",
    "display" : "Myositis",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung der Skelettmuskeln.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Muskelentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz, assoziiert mit starker Schwäche; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10064658",
    "display" : "Osteonekrose Kiefer",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben des Unterkiefers auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kieferknochennekrose"
    },
    {
      "language" : "de-DE",
      "value" : "Kiefernekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10031282",
    "display" : "Osteoporose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine verringerte Knochenmasse, mit einer Verminderung der kortikalen Dicke und der Zahl und Größe der Knochenbälkchen der Spongiosa (aber normaler chemischer Zusammensetzung), mit dem Ergebnis einer erhöhten Frakturinzidenz.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Knochenschwund"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Körpergrößenverlust >=2cm; Krankenhauseinweisung angezeigt; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065793",
    "display" : "Pelvine Weichgewebenekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben des Beckens auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Weichgewebenekrose des Beckens"
    },
    {
      "language" : "de-DE",
      "value" : "Weichgewebenekrose Becken"
    },
    {
      "language" : "de-DE",
      "value" : "Weichteilgewebenekrose des Beckens"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003988",
    "display" : "Rückenschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl im Rückenbereich.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "low back pain"
    },
    {
      "language" : "de-DE",
      "value" : "Lumbago"
    },
    {
      "language" : "de-DE",
      "value" : "Hexenschuss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10033425",
    "display" : "Schmerz in Extremität",
    "definition" : "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl in den oberen oder unteren Extremitäten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gliederschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10039722",
    "display" : "Skoliose",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verformung der seitlichen Kurvatur der WS.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Seitliche Rückgratverkrümmung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">45 Grad; skapulare Prominenz bei Vorwärtsbeugung; operative Intervention angezeigt; Einschränkung der selbstversorgenden ATL; behindernd"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10044684",
    "display" : "Trismus",
    "definition" : "Eine Störung, gekennzeichnet durch die Unfähigkeit, den Mund aufgrund einer Herabsetzung des Bewegungsumfanges der Kaumuskulatur vollständig zu öffnen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eingeschränkte Mundöffnung"
    },
    {
      "language" : "de-DE",
      "value" : "Kieferklemme"
    },
    {
      "language" : "de-DE",
      "value" : "Kiefersperre"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Verminderter Bewegungsumfang unfähig, sich oral zu ernähren oder zu hydratieren (mit Flüssigkeit zu versorgen)"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10048706",
    "display" : "Verminderung des Bewegungsumfangs eines Gelenkes",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Beweglichkeit irgendeines Gelenkes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eingeschränkter Bewegungsbereich im Gelenk"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">50% Verminderung des Bewegungsbereiches; Einschränkung der selbstversorgenden ATL;"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065796",
    "display" : "Verminderung des Bewegungsumfangs der HWS",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Beweglichkeit der Halswirbelsäulengelenke.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eingeschränkter Bewegungsbereich der Halswirbelsäule"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Vollständige Versteifung / verschmolzen über mehrere Segment ohne C-Wirbel Drehung"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065800",
    "display" : "Verminderung des Bewegungsumfanges der LWS",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Beweglichkeit der Lendenwirbelsäulengelenke.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eingeschränkter Bewegungsbereich in Lendenwirbelsäule"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">50% Verminderung des LWS-Bewegungsbereiches; assoziiert mit Symptomen der Versteifung oder verschmolzen über mehrere Segmente ohne L-Wirbelbeugung (z. B. unfähig ein sehr leichtes Objekt aufzuheben)"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10018761",
    "display" : "Wachstumshemmung",
    "definition" : "Eine Störung gekennzeichnet durch eine Statur, die für das Alter kleiner als normal ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wachstumsstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Wachstumsunterdrückung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Verringerung der Wachstumsgeschwindigkeit um >=50% idealerweise gemessen über die Periode eines Jahres"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065779",
    "display" : "Weichgewebenekrose, Kopf(-bereich)",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben des Kopfes auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kopf- Weichgewebenekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065777",
    "display" : "Weichgewebenekrose, untere Extremität",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben der unteren Gliedmaßen auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Weichgewebenekrose untere Gliedmaße"
    },
    {
      "language" : "de-DE",
      "value" : "Weichteilnekrose der unteren Extremität"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065778",
    "display" : "Weichgewebenekrose, obere Extremität",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben der oberen Gliedmaßen auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Weichgewebenekrose obere Gliedmaßen"
    },
    {
      "language" : "de-DE",
      "value" : "Weichteilnekrose der oberen Extremität"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065798",
    "display" : "Weichgewebefibrose, oberflächliche",
    "definition" : "Eine Störung, gekennzeichnet durch fibrotische Degeneration des oberflächlichen Bindegewebes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Oberflächliche Weichgewebsnekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Induration; unfähig, die Haut zu verschieben oder zu kneifen; begrenzende Gelenk- oder Öffnungsbewegung (z. B. Mund, Anus); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Generalisiert; assoziiert mit Zeichen oder Symptomen behindernden Atmens oder der Nahrungsaufnahme"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065738",
    "display" : "Ungleiche Gliedmaßenlänge",
    "definition" : "Eine Störung, gekennzeichnet durch einen Unterschied (Diskrepanz) zwischen den Längen der oberen oder unteren Extremitäten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende Längendiskrepanz >5cm; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10028395",
    "display" : "Bewegungsapparat und Bindegewebe - Sonstiges, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen des Bewegungsapparates und Bindegewebes, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10048293",
    "display" : "Leukämie, sekundär durch onkologische Chemotherapie",
    "definition" : "Eine Erkrankung, charakterisiert als Leukämie, entstanden als Ergebnis mutagener Wirkungen chemotherapeutischer Agentien.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Leukämie, verursacht durch onkologische Chemotherapie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Vorhanden"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10028533",
    "display" : "Myelodysplastisches Syndrom (MDS)",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine gesundheitlich unzureichende hämatopoietische Zellerzeugung durch das Knochenmark.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10049737",
    "display" : "Sekundäre Malignität, behandlungsassoziiert",
    "definition" : "Eine Erkrankung, gekennzeichnet durch die Entwicklung einer Malignität, aller Wahrscheinlichkeit nach als Ergebnis der Behandlung einer vorher existierenden Malignität.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Therapiebedingte maligne Zweiterkrankung"
    },
    {
      "language" : "de-DE",
      "value" : "Bösartige Zweiterkrankung aufgrund Intervention"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Nicht lebensbedrohliche sekundäre Malignität"
    },
    {
      "code" : "grad4",
      "valueString" : "Akut lebensbedrohliche sekundäre Malignität; Blastenkrise bei Leukämie"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10045158",
    "display" : "Tumorschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch deutliche Beschwerden aufgrund einer Neoplasie, die auf einen Nerven drücken, Blutgefäße blockiert, sich entzündet haben oder Frakturen durch Metastasen erzeugen kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10029104",
    "display" : "Neoplasien, gutartig, bösartig und/oder unbekannten Verhaltens - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen bei gut und bösartigen oder unspezifischen und unsicheren Neoplasien, bei denen unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10053662",
    "display" : "Abducens Störung",
    "definition" : "Eine Störung, gekennzeichnet durch die Beteiligung des Nervus abducens (6. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervus abducens Erkrankung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnnervenausfall"
    },
    {
      "language" : "de-DE",
      "value" : "Erkrankung im Nervus abducens"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10060929",
    "display" : "Accessorius Störung",
    "definition" : "Eine Störung, gekennzeichnet durch die Beteiligung des Nervus accessorius (11. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervus accessorius Störung"
    },
    {
      "language" : "de-DE",
      "value" : "Accessorius Krankheit"
    },
    {
      "language" : "de-DE",
      "value" : "XI. Kopfnervausfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10000521",
    "display" : "Akustikus Störung o. n. A",
    "definition" : "Eine Störung, gekennzeichnet durch die Beteiligung des Nervus acusticus (8. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hörnerverkrankung, o. n. A."
    },
    {
      "language" : "de-DE",
      "value" : "Akustikus'-Nerv'-Erkrankung,"
    },
    {
      "language" : "de-DE",
      "value" : "8. Hirnnervenausfall"
    },
    {
      "language" : "de-DE",
      "value" : "Erkrankung des Gehörnerv"
    },
    {
      "language" : "de-DE",
      "value" : "N. acusticus Erkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10001540",
    "display" : "Akathisie",
    "definition" : "Eine Störung, gekennzeichnet durch ein unangenehmes Gefühl innerer Ruhelosigkeit und Unfähigkeit, still zu sein; dies ist eine Nebenwirkung einiger psychotroper Medikamente.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Psychomotorische Unruhe"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Heftige Unruhe oder erhöhte motorische Aktivität; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10001949",
    "display" : "Amnesie",
    "definition" : "Eine Störung, gekennzeichnet durch systematischen und weitgehenden Verlust des Gedächtnisses.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gedächtnisverlust"
    },
    {
      "language" : "de-DE",
      "value" : "Erinnerungsstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwer; Langzeitgedächtnisverlust; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10039906",
    "display" : "Krampfanfall",
    "definition" : "Eine Störung, gekennzeichnet durch plötzliche, unwillkürliche Skelettmuskelkontraktionen mit Ursprung im Gehirn oder Hirnstamm.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Epilepsie"
    },
    {
      "language" : "de-DE",
      "value" : "epileptischer Anfall"
    },
    {
      "language" : "de-DE",
      "value" : "Anfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Mehrfache Krampfanfälle trotz medizinischer Intervention"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002953",
    "display" : "Aphonie",
    "definition" : "Eine Störung, gekennzeichnet durch die Unfähigkeit zu sprechen. Dies kann durch Verletzungen der Stimmlippen oder funktional (psychogen) bedingt sein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Stimmverlust"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stimmlosigkeit; unfähig zu sprechen"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10003074",
    "display" : "Arachnoiditis",
    "definition" : "Eine Störung, gekennzeichnet durch Entzündung der Arachnoidalmembran (Spinnwebenmembran) und des angrenzenden subarachnoidalen Raumes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Entzündung der Spinnenhaut des ZNS"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003591",
    "display" : "Ataxie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Fehlen der Koordination der Muskelbewegungen, hervorgerufen durch eine Beeinträchtigung oder Unfähigkeit, willentliche Aktivitäten zu vollziehen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gangunsicherheit"
    },
    {
      "language" : "de-DE",
      "value" : "Fallneigung"
    },
    {
      "language" : "de-DE",
      "value" : "Koordinationsstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Störung der Bewegungskoordination"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065417",
    "display" : "Brachiale Plexopathie",
    "definition" : "Eine Störung, gekennzeichnet durch eine regionale Missempfindung des Armplexus, deutliche Beschwerden, Muskelschwäche und begrenzter Bewegung von Arm und Hand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Funktionsbeeinträchtigung des Armplexus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10013887",
    "display" : "Dysarthrie",
    "definition" : "Eine Störung, gekennzeichnet durch langsames und undeutliches Sprechen, hervorgerufen durch die Unfähigkeit, die beim Sprechen benutzten Muskeln zu koordinieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Sprechstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Sprachstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Beeinträchtigung der Artikulation oder undeutliches Sprechen"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10062872",
    "display" : "Dysästhesie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verfälschung der sensorischen Empfindung, mit dem Ergebnis einer anormalen und unangenehmen Empfindung .",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Berührungsmissempfindung"
    },
    {
      "language" : "de-DE",
      "value" : "Störung Sensibilität"
    },
    {
      "language" : "de-DE",
      "value" : "sensorische Störung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere sensorische Veränderung; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10013951",
    "display" : "Dysphasie",
    "definition" : "Eine Störung, gekennzeichnet durch Beeinträchtigung der (meist kognitiv bedingten) verbalen Kommunikationsfähigkeiten, oft als Ergebnis einer Gehirnschädigung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Minderung der Sprachausdrucksfähigkeit"
    },
    {
      "language" : "de-DE",
      "value" : "Minderung der Sprachfähigkeit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Aufnahme oder Ausdrucksbesonderheiten; beeinträchtigte Fähigkeit zu lesen, schreiben oder einsichtig zu kommunizieren"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10014625",
    "display" : "Enzephalopathie",
    "definition" : "Eine Störung, gekennzeichnet durch einen das Gehirn betreffenden, pathologischen Prozess.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015832",
    "display" : "Extrapyramidale Störungen",
    "definition" : "Eine Störung, gekennzeichnet durch anormale, sich wiederholende, unwillkürliche Muskelbewegungen, hektische Sprechweise und extreme Unruhe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Extrapyramidale Erkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere unwillentliche Bewegungen und Torticollis; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10027175",
    "display" : "Gedächtnisschwäche",
    "definition" : "Eine Störung, gekennzeichnet durch Verschlechterung der Gedächtnisfunktion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Gedächtnisbeeinträchtigung; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10013911",
    "display" : "Geschmacksstörung",
    "definition" : "Eine Störung, gekennzeichnet durch anormale sensorische Erfahrung mit Nahrungsmitteln; dies kann mit einer Verminderung des Geruchssinnes verbunden sein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dygeusie"
    },
    {
      "language" : "de-DE",
      "value" : "Ageusie"
    },
    {
      "language" : "de-DE",
      "value" : "Schmekstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10051272",
    "display" : "Gesichtsmuskelschwäche",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Kraft der Gesichtsmuskeln.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fazialisparese"
    },
    {
      "language" : "de-DE",
      "value" : "Gesichtsnervausfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061457",
    "display" : "Gesichtsnervstörung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beteiligung des Gesichtsnerven, Nervus facialis (7. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fazialisparese"
    },
    {
      "language" : "de-DE",
      "value" : "Gesichtsnervausfall"
    },
    {
      "language" : "de-DE",
      "value" : "Fazialislähmung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061185",
    "display" : "Glossopharyngeus Störung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beteiligung des N glossopharyngeus  (9. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervus glossopharyngeussstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnnervenausfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10014217",
    "display" : "Hirnödem",
    "definition" : "Eine Störung, gekennzeichnet durch ein Anschwellen des Gehirns aufgrund einer übermäßigen Ansammlung von Flüssigkeit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hirndruck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10020508",
    "display" : "Hydozephalus",
    "definition" : "Eine Störung, gekennzeichnet durch einen anormalen Anstieg zerebrospinaler Flüssigkeit in den Hirnventrikeln.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wasserkopf"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome oder neurologische Defizite; Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020765",
    "display" : "Hypersomnie",
    "definition" : "Eine Störung, gekennzeichnet durch übermäßige Schläfrigkeit während des Tages.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Exzessives Schlafbedürfnis"
    },
    {
      "language" : "de-DE",
      "value" : "Tagesschlafbedürfnis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend erhöhter Bedarf an Schlaf"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061212",
    "display" : "Hypoglossus Störung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus hypoglossus. Unterzungennerven (12. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervus hypoglossus Störung"
    },
    {
      "language" : "de-DE",
      "value" : "Störung des Unterzungennerven"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10022763",
    "display" : "Intrakranielle Blutung",
    "definition" : "Eine Störung, gekennzeichnet durch Bluten im Schädel (innerhalb des Schädels).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zerebrale Blutung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Schädelblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Ventikulostomie, ICP Monitoring, intraventrikuläre Thrombolyse oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10009845",
    "display" : "Kognitionsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch eine auffällige Veränderung der kognitiven Funktion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kognitive Störung"
    },
    {
      "language" : "de-DE",
      "value" : "Desorientiertheit"
    },
    {
      "language" : "de-DE",
      "value" : "Wahrnehmungsstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere kognitive Behinderung; Signifikante Beeinträchtigung der Arbeits/Schul/Lebensleistung"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10010250",
    "display" : "Konzentrationsschwäche",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verschlechterung der Konzentrationsfähigkeit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende Beeinträchtigung der Aufmerksamkeit oder herabgemindertes Niveau der Konzentration; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10019211",
    "display" : "Kopfschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch deutliche Beschwerden in verschiedenen Teilen des Kopfes, nicht begrenzt auf den Bereich irgendeines Nerven.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Cephalgie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10024264",
    "display" : "Lethargie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung des Bewusstseins, charakterisiert durch geistige und körperliche Trägheit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10024382",
    "display" : "Leukenzephalopathie",
    "definition" : "Eine Störung, gekennzeichnet durch diffuse reaktive Astrozytose mit multiplen Bereichen nekrotischer Herde ohne Entzündung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Krankhafte Veränderung der weißen Hirnsubstanz"
    },
    {
      "language" : "de-DE",
      "value" : "Nichtentzündliche nekrotische Herde in der weißen Hirnsubstanz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; ausgedehnte T2/FLAIR Hyperintensitäten mit Beteiligung periventrikulärer weißer Substanz und Beteiligung von 2/3 oder mehr anfälliger Bereiche des Gehirns +/- mäßige bis schwere Vergrößerung des SAS und/oder mäßige bis schwere Ventrikulomegalie"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; ausgedehnte T2/FLAIR Hyperintensitäten mit Beteiligung periventrikulärer weißer Substanz und Beteiligung der meisten der anfälligen Bereiche des Gehirns +/- mäßige bis schwere Vergrößerung des SAS und/oder mäßige bis schwere Ventrikulomegalie"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10027198",
    "display" : "Meningismus",
    "definition" : "Eine Störung, gekennzeichnet durch Halssteifheit, Kopfschmerzen und Lichtscheu, hervorgerufen durch Reizung der zerebralen Meningen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10028524",
    "display" : "Myelitis",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung des Rückenmarks. Symptome schließen Schwäche, Parästhesien, Sensibilitätsverlust, deutliche Beschwerden und Inkontinenz ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rückenmarksentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Schwäche oder schwerer Sensibilitätsverlust; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040747",
    "display" : "Nasennebenhöhlenschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch deutliche Beschwerden im Gesicht, zwischen den Augen oder an den oberen Zähnen, die ihren Ursprung in den Nebenhöhlen haben.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Sinusschmerz"
    },
    {
      "language" : "de-DE",
      "value" : "Stirnhöhlenschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065784",
    "display" : "Nekrose des Zentralnervensystems",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der im Gehirn und/oder Rückenmark auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nekrose im Zentralnervensystem"
    },
    {
      "language" : "de-DE",
      "value" : "ZNS- Nekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10029223",
    "display" : "Neuralgie",
    "definition" : "Eine Störung, gekennzeichnet durch eine intensive schmerzhafte Empfindung entlang eines Nerven oder einer Gruppe von Nerven.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervenschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10029864",
    "display" : "Nystagmus",
    "definition" : "Eine Störung, gekennzeichnet durch unwillkürliche Bewegungen der Augäpfel.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Unkontrollierte Augenbewegungen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10053661",
    "display" : "Oculomotorius Störung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus oculomotorius (3. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervus oculomotorius Störung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnnervenausfall, Okulomotoriuserkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10056388",
    "display" : "Olfactorius Störung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus olfactorius (1. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervus olfactorius Störung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnnervenausfall"
    },
    {
      "language" : "de-DE",
      "value" : "Okulomotoriuserkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10034580",
    "display" : "Periphere motorische Neuropathie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung oder Degeneration eines peripheren motorischen Nerven.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Motorische Neuropathie"
    },
    {
      "language" : "de-DE",
      "value" : "Periphere Parese"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034620",
    "display" : "Periphere sensorische Neuropathie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung oder Degeneration eines peripheren sensorischen Nerven.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Empfindungsstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Sensibilitätsstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10056238",
    "display" : "Phantomschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch deutliche Beschwerden, mit Bezug zu einem Gliedmaß oder Organ, das vom Körper entfernt oder physikalisch nicht Teil des Körpers ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10036653",
    "display" : "Präsynkope",
    "definition" : "Eine Störung, gekennzeichnet durch eine Episode von Benommenheit und Schwindel, die einer Synkope vorausgehen kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zustand von Ohnmacht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10063636",
    "display" : "Pyramidenbahn-Syndrom",
    "definition" : "Eine Störung, gekennzeichnet durch eine Dysfunktion der corticospinalen (pyramidalen) Bahnen des Rückenmarks. Symptome schließen einen Anstieg des Muskeltonus der unteren Extremitäten, Hyperreflexie, einen positiven Babinski und die Herabsetzung der feinmotorischen Koordination ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10061928",
    "display" : "Radikulitis",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung, die eine Nervenwurzel betrifft. Patienten erfahren deutliche Beschwerden, die aufgrund des spinalen Drucks auf die damit verbundene Nervenwurzel entlang des Nervenverlaufs ausstrahlen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Radikulopathie"
    },
    {
      "language" : "de-DE",
      "value" : "Wurzelsyndrom"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038130",
    "display" : "Recurrensparese",
    "definition" : "Eine Störung, gekennzeichnet durch Lähmung des Nervus recurrens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rekurrenslähmung"
    },
    {
      "language" : "de-DE",
      "value" : "Lähmung des Nervus laryngeusrecur"
    },
    {
      "language" : "de-DE",
      "value" : "Rekurrensparese"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; medizinische Intervention angezeigt (z. B. Thyroplasty, Stimmlippeninjektion)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10063761",
    "display" : "Reversibles posteriores Leukenzephalopathie-Syndrom (RPLS)",
    "definition" : "Eine Störung, gekennzeichnet durch Kopfschmerzen, Veränderungen des Geisteszustandes, visuelle Störungen und Krämpfe, assoziiert mit bildgebenden Befunden einer posterioren Leukenzephalopathie. Diese wurde in Assoziation mit hypertensiver Enzephalopathie, Eklampsie und Immunsuppressiver und zytotoxischer Medikamententherapie beobachtet. Es handelt sich um einen akuten oder subakuten, reversiblen Zustand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Posteriores reversibles enzephalopathie-Syndrom"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; sehr anormale Bildgebungsbefunde; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10041349",
    "display" : "Schläfrigkeit",
    "definition" : "Eine Störung, gekennzeichnet durch übermäßige Schläfrigkeit und Benommenheit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Somnolenz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Sopor (tiefer Schlaf) oder Stupor (Erstarrung)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10042244",
    "display" : "Schlaganfall",
    "definition" : "Eine Krankheitsbild, gekennzeichnet durch einen plötzlichen Verlust der sensorischen Funktionen, aufgrund eines intrakraniellen Ereignisses.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Apoplex"
    },
    {
      "language" : "de-DE",
      "value" : "Zerebrovaskulären Insult"
    },
    {
      "language" : "de-DE",
      "value" : "apoplexie"
    },
    {
      "language" : "de-DE",
      "value" : "Hinrnschlag"
    },
    {
      "language" : "de-DE",
      "value" : "Cerebrovaskuläres Ereignis"
    },
    {
      "language" : "de-DE",
      "value" : "Apoplektischer Insult"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere neurologische Defizite"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013573",
    "display" : "Schwindel",
    "definition" : "Eine Störung, gekennzeichnet durch eine verstörende Empfindung von Benommenheit, Unruhe, Schwindelgefühl, Drehen oder Schaukeln.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Benommenheit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Unsicherheit oder Bewegungsempfindung; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10033987",
    "display" : "Sensibilitätsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch funktionelle Störungen sensibler Neuronen, mit dem Ergebnis anormaler kutaner Empfindungen von Kribbeln, Taubheit, Druck, Kälte und Wärme, die in Abwesenheit eines Reizes erfahren werden.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Parästhesie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10041416",
    "display" : "Spastische Lähmung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen erhöhten unwillkürlichen Muskeltonus, der die Bereiche befällt, die mit willkürlichen Bewegungen interferieren. Dies verursacht Gang-, Bewegungs- und Sprachstörungen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Spastizität"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Anstieg des Muskeltonus und Erhöhung des Widerstandes im Bewegungsbereich"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; unfähig, sich aktiv oder passiv im Bewegungsbereich zu bewegen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10042772",
    "display" : "Synkope",
    "definition" : "Eine Störung, gekennzeichnet durch einen spontanen Verlust des Bewusstseins, verursacht durch ungenügende Blutversorgung des Gehirns.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ohnmacht"
    },
    {
      "language" : "de-DE",
      "value" : "Kollaps"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Ohnmacht; orthostatische Kollaps"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10044391",
    "display" : "Transistorische ischämische Attacke (TIA)",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch eine kurze Attacke (weniger als 24 h) einer zerebralen Dysfunktion vaskulären Ursprungs, ohne anhaltenden neurologischen Ausfall.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vorübergehende Durchblutungsstörung des Gehirns"
    },
    {
      "language" : "de-DE",
      "value" : "TIA"
    },
    {
      "language" : "de-DE",
      "value" : "transitorische ischämische Attacke"
    },
    {
      "language" : "de-DE",
      "value" : "RIND"
    },
    {
      "language" : "de-DE",
      "value" : "reversibles ischämisches neurologisches Defizit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10044565",
    "display" : "Tremor",
    "definition" : "Eine Störung, gekennzeichnet durch unkontrolliertes Schütteln des ganzen Körpers oder individueller Teile.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10060890",
    "display" : "Trigeminus Störung",
    "definition" : "Eine Krankheit, gekennzeichnet durch eine Beteiligung des Nervus trigeminus (5. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Trigeminuserkrankung"
    },
    {
      "language" : "de-DE",
      "value" : "Nervus trigeminus Störung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065836",
    "display" : "Trochlearis Störung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus trochlearis (4. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nervus trochlearis Störung"
    },
    {
      "language" : "de-DE",
      "value" : "Störung des schrägen, oberen Augenmuskels"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10028041",
    "display" : "Unwillkürliche Bewegungen",
    "definition" : "Eine Störung, gekennzeichnet durch unkontrollierte und ziellose Bewegungen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061403",
    "display" : "Vagus Störung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus vagus (10. Kopfnerv).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vagusnerv Erkrankung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnnervenausfall"
    },
    {
      "language" : "de-DE",
      "value" : "Nervus vagus Störung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047166",
    "display" : "Vasovakale Synkope",
    "definition" : "Eine Störung, gekennzeichnet durch einen plötzlichen Blutdruckabfall, Bradykardie und periphere Vasodilation, die zum Bewusstseinsverlust führen kann. Dies resultiert aus einem Anstieg der Stimulation des Nervus vagus.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kurze Bewusstlosigkeit"
    },
    {
      "language" : "de-DE",
      "value" : "Boygroup'-Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "Vasovagale Reaktion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10012373",
    "display" : "Verminderter Bewusstseinszustand",
    "definition" : "Eine Störung, gekennzeichnet durch eine Herabsetzung der Fähigkeit wahrzunehmen und zu antworten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verringerter Bewusstseinszustand"
    },
    {
      "language" : "de-DE",
      "value" : "reduzierter Bewusstseinszustand"
    },
    {
      "language" : "de-DE",
      "value" : "erniedrigter Bewusstseinszustand"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwierig aufzuwecken"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10008164",
    "display" : "Zerbrospinales Flüssigkeitsleck",
    "definition" : "Eine Störung, gekennzeichnet durch einen Verlust zerebrospinaler Flüssigkeit in das umgebende Gewebe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verlust von Hirn'-/ Rückenmarksflüssigkeit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023030",
    "display" : "Zerebrovaskuläre Ischämie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung oder das Fehlen der Blutversorgung des Gehirns, verursacht durch Obstruktion (Thrombose oder Embolie) einer Arterie, mit der Folge neurologischer Schädigung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Zerebrovaskuläre Mangeldurchblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnminderdurchblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10029205",
    "display" : "Erkrankungen des Nervensystems - Sonstige  zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen des Nervensystems, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hemiparese"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10016479",
    "display" : "Fetaler Tod",
    "definition" : "Eine Störung, gekennzeichnet durch Tod in utero; Unvermögen des Konzeptionsproduktes (Fetus), Zeichen einer Atmung, eines Herzschlags oder einer definitiven Bewegung willkürlicher Muskulatur nach Ausstoß aus der Gebärmutter zu zeigen, ohne Möglichkeit einer Wiederbelebung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fetaltod"
    },
    {
      "language" : "de-DE",
      "value" : "Todgeburt"
    },
    {
      "language" : "de-DE",
      "value" : "Fötaler Tod"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Fötaler Verlust jeglichen Schwangerschaftsalters"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10054746",
    "display" : "Fetale Wachstumsverzögerung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Hemmung des fetalen Wachstums, die in der Unfähigkeit des Fetus resultiert, sein potentielles Gewicht zu erreichen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fetale Retardation"
    },
    {
      "language" : "de-DE",
      "value" : "fetale Verzögerung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "<5% Perzentile des Gewichts nach Schwangerschaftsalter"
    },
    {
      "code" : "grad4",
      "valueString" : "<1% Perzentile des Gewichts nach Schwangerschaftsalter"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10036595",
    "display" : "Frühgeburt",
    "definition" : "Eine Störung, gekennzeichnet durch Entbindung eines lebensfähigen Kindes vor dem Ende der Schwangerschaft. Typischerweise ist die Lebensfähigkeit zwischen der 20. und 37. Schwangerschaftswoche erreichbar.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Prämature Geburt"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Entbindung eines lebendgeborenen Kindes nach 24 bis 28 Schwangerschaftswochen"
    },
    {
      "code" : "grad4",
      "valueString" : "Entbindung eines lebendgeborenen Kindes nach 24 Schwangerschaftswochen oder weniger"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10045542",
    "display" : "Unbeabsichtigte Schwangerschaft",
    "definition" : "Eine Störung, gekennzeichnet durch eine unerwartete Schwangerschaft zur Zeit der Empfängnis.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ungewollte Schwangerschaft"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Unbeabsichtigte Schwangerschaft"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10036585",
    "display" : "Schwangerschaft, Kindbett, perinatale Erkrankungen - Sonstiges, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störung der Schwangerschaft, des Wochenbettes und der Perinatalzeit, die als unerwünschtes Ereignis im Rahmen einer Behandlung auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10001497",
    "display" : "Agitiertheit",
    "definition" : "Eine Störung, gekennzeichnet durch einen Zustand der Gemütserregung mit unangenehmen Empfindungen der Reizbarkeit und Anspannung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Unruhe"
    },
    {
      "language" : "de-DE",
      "value" : "Aufgeregtheit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Agitiertheit; Krankenhauseinweisung nicht angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002855",
    "display" : "Angstgefühl",
    "definition" : "Eine Störung, gekennzeichnet durch die Befürchtung einer Gefahr und eines Schreckens, begleitet von Unruhe, Anspannung, Tachykardie und Atemnot, unabhängig von einem klar identifizierbaren Auslöseimpuls.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Innere Unruhe"
    },
    {
      "language" : "de-DE",
      "value" : "Andauernde Furcht"
    },
    {
      "language" : "de-DE",
      "value" : "Beklemmung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Krankenhauseinweisung nicht angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002652",
    "display" : "Anorgasmie",
    "definition" : "Eine Störung, gekennzeichnet durch die Unfähigkeit, einen Orgasmus zu erlangen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Orgasmusunfähigkeit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10012218",
    "display" : "Delirium",
    "definition" : "Eine Störung, gekennzeichnet durch eine akute und plötzliche Entwicklung von Konfusion, Sinnestäuschungen, Bewegungswechseln, Agitiertheit und Halluzinationen. Gewöhnlich ist dies ein umkehrbarer Zustand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wahn"
    },
    {
      "language" : "de-DE",
      "value" : "Alkoholentzugspsychose"
    },
    {
      "language" : "de-DE",
      "value" : "Entzugspsychosen, andere"
    },
    {
      "language" : "de-DE",
      "value" : "Drogenentzugspsychose"
    },
    {
      "language" : "de-DE",
      "value" : "Hirnorganisches Psychosyndrom"
    },
    {
      "language" : "de-DE",
      "value" : "HOP (z.B. \"Durchgangssyndrom\")"
    },
    {
      "language" : "de-DE",
      "value" : "kurzzeitiges Delir"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10012378",
    "display" : "Depression",
    "definition" : "Eine Störung, gekennzeichnet durch melancholische Gefühle von Trauer oder Elend.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Schwere Niedergeschlagenheit"
    },
    {
      "language" : "de-DE",
      "value" : "tiefe Verstimmung"
    },
    {
      "language" : "de-DE",
      "value" : "Schwermut"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere depressive Symptome; Einschränkung der selbstversorgenden ATL; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015533",
    "display" : "Euphorie",
    "definition" : "Eine Störung, gekennzeichnet durch ein übertriebenes Gefühl von Wohlsein, das zu Ereignissen oder Reizen unverhältnismäßig erscheint.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hochstimmung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende Anhebung der Stimmungslage (z. B. Hypomanie)"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10019077",
    "display" : "Halluzinationen",
    "definition" : "Eine Störung, gekennzeichnet durch abwegige sinnliche Empfindungen in der Abwesenheit eines äußerlichen Reizes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wahnvorstellungen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Halluzinationen; Krankenhauseinweisung nicht angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10024419",
    "display" : "Libido, vermindert",
    "definition" : "Eine Störung, gekennzeichnet durch die Verringerung sexuellen Verlangens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10024421",
    "display" : "Libido, gesteigert",
    "definition" : "Eine Störung, gekennzeichnet durch die Steigerung sexuellen Verlangens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Starke Steigerung sexuellen Verlangens, die zu gefährdendem Verhalten führt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10026749",
    "display" : "Manie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Erregung psychotischen Ausmaßes, die sich durch mentale und körperliche Hyperaktivität, Desorganisation des Verhaltens und erhöhte Stimmungslage zeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wahnsinn"
    },
    {
      "language" : "de-DE",
      "value" : "manische Episode"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend manische Symptome (z. B. Hypomanie; größere sexuelle oder finanzielle Indiskretionen); Krankenhauseinweisung nicht angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10057066",
    "display" : "Orgasmus, verzögert",
    "definition" : "Eine Störung, gekennzeichnet durch die sexuelle Dysfunktion einer Verzögerung der Klimax.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verzögerter Höhepunkt"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10034719",
    "display" : "Persönlichkeitsveränderung",
    "definition" : "Eine Störung, gekennzeichnet durch eine auffällige Veränderung im Verhalten und Denken einer Person.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "personality change"
    },
    {
      "language" : "de-DE",
      "value" : "verzögerter Klimax"
    },
    {
      "language" : "de-DE",
      "value" : "Persönlichkeitswechsel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Persönlichkeitsveränderung; Krankenhauseinweisung nicht angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10037234",
    "display" : "Psychose",
    "definition" : "Eine Störung, gekennzeichnet durch eine Persönlichkeitsveränderung, beeinträchtigtes Funktionieren und Realitätsverlust. Dies kann die Manifestation einer Schizophrenie, bipolaren Störung oder eines Hirntumors sein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bewusstseinsspaltung"
    },
    {
      "language" : "de-DE",
      "value" : "Psychotische Störung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere psychotische Symptome (z. B. paranoid; extreme Ungeordnetheit) Krankenhauseinweisung nicht angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10022437",
    "display" : "Schlaflosigkeit",
    "definition" : "Eine Störung, gekennzeichnet durch die Schwierigkeit einzuschlafen und/oder schlafen zu bleiben.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Schlafstörung"
    },
    {
      "language" : "de-DE",
      "value" : "Insomnia"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende Schwierigkeit einzuschlafen, durchzuschlafen oder frühes Erwachen"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10042458",
    "display" : "Suizidgedanken",
    "definition" : "Eine Störung, gekennzeichnet durch Gedanken, sich selbst das Leben zu nehmen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Suizidvorstellungen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Spezifischer Plan, Suizid zu begehen, ohne ernsthafte Absicht zu sterben, was eine Krankenhauseinweisung nicht erfordern muss"
    },
    {
      "code" : "grad4",
      "valueString" : "Spezifischer Plan, Suizid zu begehen, mit ernsthafter Absicht zu sterben, was eine Krankenhauseinweisung erforderlich macht"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10042464",
    "display" : "Suizidversuche",
    "definition" : "Eine Störung, gekennzeichnet durch einen sich selbst zugefügten Schaden beim Versuch, das eigene Leben zu beenden.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Selbstmordversuch"
    },
    {
      "language" : "de-DE",
      "value" : "Selbsttötungsversuch"
    },
    {
      "language" : "de-DE",
      "value" : "Freitodversuch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Selbsttötungsversuch oder Geste ohne Absicht zu sterben, was eine Krankenhauseinweisung nicht erfordern muss"
    },
    {
      "code" : "grad4",
      "valueString" : "Selbsttötungsversuch mit der Absicht zu sterben, was eine Krankenhauseinweisung erforderlich macht"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038743",
    "display" : "Unruhe",
    "definition" : "Eine Störung, gekennzeichnet durch die Unfähigkeit, sich auszuruhen, zu entspannen oder still zu sein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ruhelosigkeit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10010300",
    "display" : "Verwirrung",
    "definition" : "Eine Störung, gekennzeichnet durch das Fehlen klaren geordneten Denkens und Verhaltens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Desorientiertheit"
    },
    {
      "language" : "de-DE",
      "value" : "Konfusion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10012260",
    "display" : "Wahnvorstellungen",
    "definition" : "Eine Störung, gekennzeichnet durch abwegige persönliche Glaubensvorstellungen, trotz gegenteiliger Belege und gesundem Menschenverstand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Drogenentzugspsychose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Einbildungssymptome; Einschränkung der selbstversorgenden ATL; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10037175",
    "display" : "Psychiatrische Störungen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende psychiatrische Störungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Krankenhauseinweisung oder dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10069339",
    "display" : "Akutes Nierenversagen",
    "definition" : "Eine Störung, gekennzeichnet durch einen akuten Verlust der Nierenfunktion, der traditionell als prärenal (niedriger Blutzufluss in die Niere), renal (Nierenschaden) und postrenal (Harnleiter- oder Blasenabflussbehinderung) klassifiziert wird.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Akutes renales Versagen"
    },
    {
      "language" : "de-DE",
      "value" : "Akute Niereninsufizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Akuter Nierenfunktionsverlust"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Kreatinin >3 x Ausgangswert oder >4.0 mg/dL; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Dialyse angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10063057",
    "display" : "Blasenentzündung, nichtinfektiöse",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung der Blase, die nicht durch eine Infektion der ableitenden Harnwege verursacht ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Abakterielle Harnblasenentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "abakterielle Zystitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Makroskopische Hämaturie; Transfusion, i. v. Medikationen oder Krankenhauseinweisung angezeigt; elektive endoskopische, radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10048994",
    "display" : "Blasenkrampf",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine plötzliche und unwillkürliche Kontraktion der Blasenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnblasenspassmus"
    },
    {
      "language" : "de-DE",
      "value" : "Schmerzhafter Harndrang"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10063575",
    "display" : "Blasenperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Blasenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Organversagen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10064848",
    "display" : "Chronische Nierenerkrankung",
    "definition" : "Eine Störung, gekennzeichnet durch den graduellen und normalerweise permanenten Verlust der Nierenfunktion mit dem Resultat eines Nierenversagens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Chronische Niereninsuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "chronisches Nierenversagen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "eGFR oder CrCl 29-15 ml/min/1.73 m2"
    },
    {
      "code" : "grad4",
      "valueString" : "eGFR oder CrCl <15 ml/min/1.73 m2; Dialyse oder Nierentransplantation angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019450",
    "display" : "Hämaturie",
    "definition" : "Eine Störung, gekennzeichnet durch Laborergebnisse, die Blut im Urin anzeigen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blutiger Urin"
    },
    {
      "language" : "de-DE",
      "value" : "Blutharnen"
    },
    {
      "language" : "de-DE",
      "value" : "Blut im Urin"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Makroskopische Hämaturie; Transfusion, i. v. Medikationen oder Krankenhauseinweisung angezeigt; elektive endoskopische, radiologische oder operative Intervention angezeigt; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10019489",
    "display" : "Hämoglobinurie",
    "definition" : "Eine Störung, gekennzeichnet durch Laborergebnisse, die das Vorhandensein von freiem Hämoglobin im Urin anzeigen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046593",
    "display" : "Harndrang,  vermehrter",
    "definition" : "Eine Befindlichkeitsstörung, gekennzeichnet durch eine plötzlichen unwiderstehlichen Drang zu urinieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Urindrang"
    },
    {
      "language" : "de-DE",
      "value" : "Miktionsdran"
    },
    {
      "language" : "de-DE",
      "value" : "Pollakisurie"
    },
    {
      "language" : "de-DE",
      "value" : "Polyurie"
    },
    {
      "language" : "de-DE",
      "value" : "Nykturei"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046628",
    "display" : "Harnfarbveränderung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Farbveränderung des Urins.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Urindiskoloration"
    },
    {
      "language" : "de-DE",
      "value" : "Urinverfärbung"
    },
    {
      "language" : "de-DE",
      "value" : "Veränderung der Harnfarbe"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046555",
    "display" : "Harnstau",
    "definition" : "Eine Störung, gekennzeichnet durch die Ansammlung von Urin in der Blase aufgrund der Unfähigkeit zu urinieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnretention"
    },
    {
      "language" : "de-DE",
      "value" : "Urinretention"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Elektive operative oder radiologische Intervention angezeigt; substantieller Verlust der betroffenen Nierenfunktion oder Masse"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Organversagen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062225",
    "display" : "Harnwegsschmerz",
    "definition" : "Eine Befindlichkeitsstörung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Harntrakt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Algurie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061574",
    "display" : "Harnwegsverschluss",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Obstruktion des normalen Flusses der Inhalte des Harntraktes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blasenverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Harnwegsobstruktion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch und veränderte Organfunktion (z. B. Hydronephrose oder renale Dysfunktion); elektive radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046543",
    "display" : "Inkontinenz",
    "definition" : "Eine Störung, gekennzeichnet durch die Unfähigkeit, den Harnfluss der Blase zu kontrollieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnblasenschwäche"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Intervention angezeigt (z. B. Klemme, Kollageninjektionen); operative Intervention angezeigt; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10038463",
    "display" : "Nierenblutung",
    "definition" : "Eine Störung, gekennzeichnet durch Blutung aus der Niere.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Renale Hämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion, Bestrahlung oder Krankenhauseinweisung angezeigt; elektive radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038419",
    "display" : "Nierenkolik",
    "definition" : "Eine Störung, gekennzeichnet durch anfallsweise und ernsthafte Beschwerden im Bereich der Flanke mit Ausstrahlung in die Leistengegend. Oft ist der Grund ein Abgang von Nierensteinen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10038385",
    "display" : "Nierenstein",
    "definition" : "Eine Störung, gekennzeichnet durch die Bildung von Kristallen im Nierenbecken.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Calculus renalis"
    },
    {
      "language" : "de-DE",
      "value" : "Harnstein"
    },
    {
      "language" : "de-DE",
      "value" : "Nierenbeckenstein"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Krankenhauseinweisung angezeigt; i. v. Intervention (z. B. Schmerzmittel, Antiemetika); elektive endoskopische, radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046539",
    "display" : "Pollakisurie",
    "definition" : "Eine Störung, gekennzeichnet durch kurze zeitliche Intervalle des Wasserlassens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "häufiges Wasser lassen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10037032",
    "display" : "Proteinurie",
    "definition" : "Eine Störung, gekennzeichnet durch Laborergebnisse, die das Vorhandensein von übermäßigem Eiweiß im Urin anzeigen. Es handelt sich überwiegend um Albumin, aber auch Globulin.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Erwachsene: Urin-protein >3,5 g g/24 h; Kinder: Urin-P/C >1,9"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065368",
    "display" : "Urinfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen irgendeinem Teil des Harnsystems und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Harnfistel"
    },
    {
      "language" : "de-DE",
      "value" : "Blasenfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; elektive radiologische, endoskopische oder operative Intervention angezeigt; permanente Harnableitung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende radiologische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038359",
    "display" : "Störungen der Nieren-und Harnorganen - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen der Nieren und Harnorgane, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003883",
    "display" : "Azoospermie",
    "definition" : "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine vollständige Abwesenheit von Spermatozoen in der Samenflüssigkeit anzeigt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Abwesenheit von Spermien im Ejakulat"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10064026",
    "display" : "Beckenbodenmuskelschwäche",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung der Muskelstärke des Beckenbodens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034263",
    "display" : "Beckenschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Becken.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10006179",
    "display" : "Brustatrophie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Unterentwicklung der Brust (Mamma).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mammaatrophie"
    },
    {
      "language" : "de-DE",
      "value" : "Brustschwund"
    },
    {
      "language" : "de-DE",
      "value" : "Atrophie der Mamma"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Asymmetrie >1/3 des Mammavolumens; schwere Atrophie"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10006298",
    "display" : "Brustschmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Brustregion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mammaschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065823",
    "display" : "Brustwarzendeformierung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Fehlbildung der Brustwarze.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061339",
    "display" : "Dammschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Region zwischen den Geschlechtsorganen und dem Anus.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Perinealer Schmerz"
    },
    {
      "language" : "de-DE",
      "value" : "Perineumschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10013934",
    "display" : "Dysmenorrhoe",
    "definition" : "Eine Störung, gekennzeichnet durch anormale schmerzhafte abdominelle Krämpfe während der Menstruation.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Menstruationsbeschwerden"
    },
    {
      "language" : "de-DE",
      "value" : "Dysmenorrhö"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10013941",
    "display" : "Dyspareunie",
    "definition" : "Eine Störung, gekennzeichnet durch schmerzhaften oder schwierigen Koitus.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Beschwerden beim Geschlechtsverkehr"
    },
    {
      "language" : "de-DE",
      "value" : "Schmerzen beim Geschlechtsverkehr"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Mäßige Beschwerden oder Schmerzen assoziiert mit vaginaler Penetration; Beschwerden ungelindert bei Gebrauch vaginaler Gleitmittel oder Östrogen"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10033279",
    "display" : "Eierstockruptur",
    "definition" : "Eine Störung, gekennzeichnet durch eine Zerreißung oder Ruptur des ovariellem Gewebe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eierstockeinriss"
    },
    {
      "language" : "de-DE",
      "value" : "ovarielle Ruptur"
    },
    {
      "language" : "de-DE",
      "value" : "Ovarrptur"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion angezeigt; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065763",
    "display" : "Eierstockblutung",
    "definition" : "Eine Störung, gekennzeichnet durch Blutung aus den Eierstöcken.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Ovarialblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Ovarielle Blutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065789",
    "display" : "Eileiterobstruktion",
    "definition" : "Eine Störung, gekennzeichnet durch die Behinderung (Obstruktion) des normalen Flusses der Inhalte im Eileiter.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eileiterverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065791",
    "display" : "Eileiterstenose",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verengung des Eileiterlumens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eileiterverenung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (z. B. Organresektion)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10014326",
    "display" : "Ejakulationsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch Probleme bezogen auf die Ejakulation. Diese Kategorie schließt vorzeitige, verzögerte, retrograde und schmerzhafte Ejakulation ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Samenergusssstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061461",
    "display" : "Erektionsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch persistierende oder rekurrierende Unfähigkeit, während sexueller Aktivität eine Erektion zu erreichen oder aufrechtzuerhalten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Erektile Dysfunktion"
    },
    {
      "language" : "de-DE",
      "value" : "Erektionsschwierigkeiten"
    },
    {
      "language" : "de-DE",
      "value" : "Potenzstörungen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Herabsetzung der erektilen Funktion (Häufigkeit / Rigidität der Erektionen), aber erektile Intervention nicht hilfreich (z. B. Medikation oder mechanische Mittel wie Penispumpe); Setzen einer permanenten Penisprothese angezeigt (vorher nicht vorhanden)"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10054382",
    "display" : "Feminisierung, erworbene",
    "definition" : "Eine Störung, gekennzeichnet durch die Entwicklung sekundärer weiblicher Kennzeichen bei Männern aufgrund äußerer Faktoren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Erworbene Verweiblichung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10018146",
    "display" : "Genitales Ödem",
    "definition" : "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund einer übermäßigen Ansammlung von Flüssigkeit in den Genitalien.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Genitale Schwellung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Lymphorrhö; grobe Abweichung von der normalen anatomischen Umrisslinie; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061149",
    "display" : "Genitalfistel, weibliches Geschlecht",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem weiblichen Reproduktionssystem und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Weibliche Genitalfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10018801",
    "display" : "Gynäkomastie",
    "definition" : "Eine Störung, gekennzeichnet durch die übermäßige Entwicklung der Brüste beim Mann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vergrößerung der männlichen Brustdrüsen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10060602",
    "display" : "Hämatosalpinx",
    "definition" : "Eine Störung, gekennzeichnet durch das Vorhandensein von Blut im Eileiter.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Eileiterblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Eileiterblutstau"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055347",
    "display" : "Hodenblutung",
    "definition" : "Eine Störung, gekennzeichnet durch Blutung aus dem Samenstrang.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Testeshämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Hodenhämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "testikuläre Blutung"
    },
    {
      "language" : "de-DE",
      "value" : "testikuläre Hämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10043306",
    "display" : "Hodenerkrankung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Beteiligung des Hodens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hodenfunktionsstörung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; mit dem Urinieren oder sexuellen Aktivitäten interferierend; Einschränkung der selbstversorgenden ATL; Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10043345",
    "display" : "Hodenschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Hoden.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Testesschmerz"
    },
    {
      "language" : "de-DE",
      "value" : "testikulärer Schmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10061261",
    "display" : "Laktationsstörung",
    "definition" : "Eine Störung, gekennzeichnet durch Störungen der Milchsekretion. Diese muss nicht notwendigerweise schwangerschaftsbezogen sein, wie bei Frauen beobachtet, sie wird auch bei Männern gesehen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Störung der Milchproduktion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10036601",
    "display" : "Menopause, verfrühte",
    "definition" : "Eine Störung, gekennzeichnet durch ovarielles Versagen vor dem 40. Lebensjahr. Symptome schließen Hitzewallungen, Nachtschweiß, Stimmungsschwankungen und eine Verminderung des Geschlechtstriebes ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verfrühtes Klimakterium"
    },
    {
      "language" : "de-DE",
      "value" : "Climacterium präcox"
    },
    {
      "language" : "de-DE",
      "value" : "vorzeitige Wechseljahre"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Vorhanden"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10027313",
    "display" : "Menorrhagie",
    "definition" : "Eine Störung, gekennzeichnet durch anormal starke vaginale Blutungen während der Menses.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Schwere Menstruationsblutungen"
    },
    {
      "language" : "de-DE",
      "value" : "Andauernde Menstruation"
    },
    {
      "language" : "de-DE",
      "value" : "abnormale uterine Blutung (AUB)"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; operative Intervention angezeigt (z. B. Hysterektomie)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10022992",
    "display" : "Menstruation, unregelmäßige",
    "definition" : "Eine Störung, gekennzeichnet durch irreguläre Zyklen oder Dauer der Menses.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Amenorrhö für mehr als 6 Monate vorhanden"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10030300",
    "display" : "Oligospermie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verminderung in der Zahl der Spermatozoen in der Samenflüssigkeit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verminderte Spermienzahl"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Spermienkonzentration <13 Million/mL oder Beweglichkeit <32%"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10033314",
    "display" : "Ovulationsschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden auf einer Seite des Abdomens zwischen menstruellen Zyklen, um die Zeit des Austritts des Eies aus dem ovariellen Follikel.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mittelschmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10034310",
    "display" : "Penisschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Penis.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Peniler Schmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10055325",
    "display" : "Prostatablutung",
    "definition" : "Eine Störung, gekennzeichnet durch Blutung aus der Prostatadrüse.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blutung der Vorsteherdrüse"
    },
    {
      "language" : "de-DE",
      "value" : "Prostatahämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055026",
    "display" : "Prostataobstruktion",
    "definition" : "Eine Störung, gekennzeichnet durch eine Kompression der Harnröhre, aufgrund der Vergrößerung der Prostatadrüse. Daraus ergeben sich Schwierigkeiten beim Wasserlassen (Anstrengung bei der Entleerung, langsamer Urinfluss und inkomplette Entleerung der Blase).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Prostataverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Behinderung (des Wasserlassens durch die Prostata)"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10036968",
    "display" : "Prostataschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Prostatadrüse.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065762",
    "display" : "Samenstrangblutung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Blutung aus dem Samenstrang.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Corda spermatica Blutung"
    },
    {
      "language" : "de-DE",
      "value" : "Samenstranghämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065805",
    "display" : "Samenstrangobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte des Samenstranges.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Samenstrangverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10039757",
    "display" : "Skrotalschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Skrotalregion.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hodensackschermz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065811",
    "display" : "Uterusfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Gebärmutter und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gebärmutterfistel"
    },
    {
      "language" : "de-DE",
      "value" : "uterinale Fistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046789",
    "display" : "Uterusblutung",
    "definition" : "Eine Störung, gekennzeichnet durch Blutung aus der Gebärmutter.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Uterushämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "uterine Blutung"
    },
    {
      "language" : "de-DE",
      "value" : "uterine Hämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065928",
    "display" : "Uterusobstruktion",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des Uterusausgangs.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gebärmutterverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Uterus Verschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046809",
    "display" : "Uterusschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Gebärmutter.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gebärmutterschmerz"
    },
    {
      "language" : "de-DE",
      "value" : "uteriner Schmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046901",
    "display" : "Vaginaler Ausfluss",
    "definition" : "Eine Störung, gekennzeichnet durch vaginale Sekretionen. Schleim, erzeugt durch die Gebärmutterhalsdrüsen, wird natürlicherweise von der Vagina abgeführt, insbesondere während der fruchtbaren Jahre.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vaginale Sekretion"
    },
    {
      "language" : "de-DE",
      "value" : "Scheidensekretion"
    },
    {
      "language" : "de-DE",
      "value" : "Scheidenausfluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046904",
    "display" : "Vaginale Trockenheit",
    "definition" : "Eine Störung, gekennzeichnet durch unangenehmes Gefühl des Juckens und Brennens in der Vagina.",
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere vaginale Trockenheit, die Dyspareunie oder schwerwiegende Beschwerden hervorruft"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046912",
    "display" : "Vaginalblutung",
    "definition" : "Eine Störung, gekennzeichnet durch Blutung aus der Vagina.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vaginalhämorrhagie"
    },
    {
      "language" : "de-DE",
      "value" : "Scheidenblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046916",
    "display" : "Vaginalentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung, die die Vagina umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Scheidenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Heftige(r) Beschwerden oder Schmerz, Ödem oder Rötung; Einschränkung der instrumentellen ATL; kleine Bereiche von Schleimhautulzerationen"
    },
    {
      "code" : "grad4",
      "valueString" : "Ausgedehnte Bereiche mukosaler Ulzerationen; lebensbedrohliche Folgen; Intervention dringlich angezeigt."
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065813",
    "display" : "Vaginafistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Vagina und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vaginale Fistel"
    },
    {
      "language" : "de-DE",
      "value" : "Scheidenfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065818",
    "display" : "Vaginalperforation",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Vaginalwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Scheidenperforation"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046937",
    "display" : "Vaginalschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Scheide.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Scheidenschmerz"
    },
    {
      "language" : "de-DE",
      "value" : "vaginaler Schmerz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10053496",
    "display" : "Vaginalstenose",
    "definition" : "Eine Störung, gekennzeichnet durch die Verengung des Scheidenkanals.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Scheidenverengung"
    },
    {
      "language" : "de-DE",
      "value" : "Vaginalverenung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Vaginalverengung und/oder verkürzung, den Gebrauch von Tampons, die sexuelle Aktivität oder die körperliche Untersuchung beeinträchtigend"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065817",
    "display" : "Vaginalverschluss",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Behinderung im (Obstruktion des) Scheidenkanal(s).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Scheidenverschlusss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10046947",
    "display" : "Vaginismus",
    "definition" : "Eine Störung, gekennzeichnet durch unwillkürliche Verkrampfungen (Spasmen) der Beckenbodenmuskulatur, sodass eine krankhafte Anspannung der Scheidenwand während der Penetration wie beim Geschlechtsverkehr entsteht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Scheidenkrampf"
    },
    {
      "language" : "de-DE",
      "value" : "Scheidenspasmen"
    },
    {
      "language" : "de-DE",
      "value" : "Vaginalspasmen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Mäßige Beschwerden oder Schmerzen, assoziiert mit vaginalen(r) Spasmen/Verengung; unfähig, vaginale Penetration oder körperliche Untersuchung zu tolerieren"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10038604",
    "display" : "Störungen der Fortpflanzungsorgane und der Brust - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen der Fortpflanzungsorgane und der Brust, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10001723",
    "display" : "Allergische Rhinitis",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung der nasalen Schleimhäute, hervorgerufen durch eine IgE-vermittelte Antwort auf externe Allergene. Die Entzündung kann auch die Schleimhäute der Nasennebenhöhlen, der Augen, des Mittelohres und des Rachens umfassen. Symptome können Niesen, Nasenverstopfung, Nasenlaufen und Jucken einschließen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003504",
    "display" : "Aspiration",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch die Inhalation (Einatmung) fester oder flüssiger Stoffe in die Lunge.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Atemnot und Symptome der Lungenentzündung (z. B. Aspirationspneumonie); medizinische Intervention angezeigt (z. B. Absaugung oder Sauerstoff); Krankenhauseinweisung angezeigt; Unfähigkeit zur oralen Ernährung"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10003598",
    "display" : "Atelektasen",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch den Kollaps von Teilen oder der ganzen Lunge.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Sekundäre Atelektase"
    },
    {
      "language" : "de-DE",
      "value" : "Lungenkollaps"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Sauerstoff angezeigt; Krankenhauseinweisung oder elektive operative Intervention angezeigt (z. B. Stent, Laser)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10001409",
    "display" : "Atemnotsyndrom des Erwachsenen",
    "definition" : "Eine Störung, gekennzeichnet durch zunehmende und lebensbedrohliche pulmonale Atemnot in Abwesenheit eines zugrundeliegenden pulmonalen Leidens, gewöhnlich als Folge einer schwerwiegenden Gewalteinwirkung / Wunde oder chirurgischen Intervention.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Akutes respiratorisches Distress Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "ARDS"
    },
    {
      "language" : "de-DE",
      "value" : "respiratorisches Distress Syndrom RDS"
    },
    {
      "language" : "de-DE",
      "value" : "Schocklunge"
    },
    {
      "language" : "de-DE",
      "value" : "adultes respiratorisches Distress Syndrom"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Vorhanden mit radiologischen Befunden; Intubation nicht angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10002972",
    "display" : "Atemstillstand",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch Stillstand des Atmens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Apnoe"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Vorhanden; medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder  Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10035742",
    "display" : "Atypische Pneumonie",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Entzündung, fokal oder diffus, die das Lungenparenchym betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Interstielle Pneumonie"
    },
    {
      "language" : "de-DE",
      "value" : "Atypische Lungenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; Sauerstoff angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische Beeinträchtigung; dringende Intervention angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10006437",
    "display" : "Bronchialfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Bronchus und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bronchusstumpfinsuffizienz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (Thorakoplastik, chronische offene Drainage oder multiple Thorakotomien)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10006440",
    "display" : "Bronchiale Obstruktion",
    "definition" : "Der Befund der Behinderung (Obstruktion) eines Bronchusdurchgangs, am häufigsten durch bronchiale Sekretionen oder Exsudate.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bronchialverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Kurzatmigkeit mit Stridor; endoskopische Intervention angezeigt (z. B. Laser, Stentplatzierung)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder Intervention dingend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10063524",
    "display" : "Bronchialstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Verengung der Bronchialröhre.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bronchialverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Kurzatmigkeit mit Stridor; endoskopische Intervention angezeigt (z. B. Laser, Stentplatzierung)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10053481",
    "display" : "Bronchopleurale Fistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Bronchus und der Pleurahöhle.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bronchus- Pleura- Fistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (Thorakoplastik, chronische offene Drainage oder multiple Thorakotomien)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065746",
    "display" : "Bronchopulmonale Blutung",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch Blutung aus der Bronchialwand und/oder dem Lungenparenchym.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bronchialblutung"
    },
    {
      "language" : "de-DE",
      "value" : "Bronchialhämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10006482",
    "display" : "Bronchospasmus",
    "definition" : "Eine Störung, gekennzeichnet durch plötzliche Kontraktion der glatten Muskulatur der Bronchialwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bronchialkrampf"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; Sauerstoffsättigung herabgesetzt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10051228",
    "display" : "Chylothorax",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch einen milchigen pleuralen Erguss (anormale Ansammlung von Flüssigkeit), der durch die Ansammlung von Lymphflüssigkeit in der Pleurahöhle hervorgerufen wird.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Lymphe in der Pleurahöhle"
    },
    {
      "language" : "de-DE",
      "value" : "pleurale Lymphansammlung"
    },
    {
      "language" : "de-DE",
      "value" : "pleuraler Lympherguss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (Thorakoplastik, chronische offene Drainage oder multiple Thorakotomien)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10013963",
    "display" : "Dyspnoe",
    "definition" : "Eine Störung, gekennzeichnet durch die unangenehme Empfindung von Atemschwierigkeiten (Atemnot).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kurzatmigkeit"
    },
    {
      "language" : "de-DE",
      "value" : "Atemnot"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Kurzatmigkeit in Ruhe; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015090",
    "display" : "Epistaxis",
    "definition" : "Eine Störung, gekennzeichnet durch eine Blutung aus der Nase.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nasenbluten"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10047924",
    "display" : "Giemen",
    "definition" : "Eine Störung, gekennzeichnet durch ein hellklingendes, pfeifendes Geräusch während des Atmens.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pfeifen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Atemsymptome, Einschränkung der selbstversorgenden ATL; Sauerstofftherapie oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende  Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10041367",
    "display" : "Halsentzündung, Rachenentzündung",
    "definition" : "Eine Störung, gekennzeichnet durch ausgeprägte Beschwerden im Hals.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Haslschmerzen"
    },
    {
      "language" : "de-DE",
      "value" : "Halsentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Rachenentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Halsbeschwerden"
    },
    {
      "language" : "de-DE",
      "value" : "Rachenbeschwerden"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL; Fähigkeit zu schlucken ist eingeschränkt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10020201",
    "display" : "Heiserkeit",
    "definition" : "Eine Störung, gekennzeichnet durch eine harsche und kratzende Stimme, die vom Kehlkopf herkommt oder zu diesem sich ausbreitet.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Stimmveränderungen einschließlich hauptsächlich Flüstersprache"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10011224",
    "display" : "Husten",
    "definition" : "Eine Störung, gekennzeichnet durch plötzliche, oft sich wiederholende, krampfartige Kontraktionen der Brusthöhle (des Brustkorbes), mit der Folge einer gewaltsamen Freigabe von Luft aus den Lungen und gewöhnlich begleitet von einem charakteristischen Geräusch.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10021143",
    "display" : "Hypoxie",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verringerung der Sauerstoffkonzentration im Körper.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Sauerstoffmangel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Herabgesetzte Sauerstoffsättigung in Ruhe (z. B. Pulsoximeter <88% oder PaO2 <=55 mmHG); Intermittierende Gabe von zusätzlichem Sauerstoff"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringend angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065735",
    "display" : "Laryngitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung, die den Kehlkopf umfasst.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Larynxentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Kehlkopfentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Heftige Halsschmerzen; endoskopische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10062667",
    "display" : "Laryngopharyngeale Dysästhesie",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine unangenehme, persistierende Empfindung im Bereich des Laryngopharynx.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Larynx'-Pharynx'-Dysästhesie"
    },
    {
      "language" : "de-DE",
      "value" : "Larynxdysästhesie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Atemnot und Schluckschwierigkeiten; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023891",
    "display" : "Laryngospasmus",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch anfallsweise krampfartige Kontraktion der Stimmlippen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Stimmlippenkrampf"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Wiederholte Episoden; nichtinvasive Intervention angezeigt (Atemtechniken, Druckpunktmassage)"
    },
    {
      "code" : "grad4",
      "valueString" : "Persistierende oder schwere Episoden assoziiert mit Ohnmacht; dringende Intervention angezeigt (z. B. fiberoptische Laryngyskopie, Intubation, Botoxinjektion)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065759",
    "display" : "Larynxblutung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Blutung aus dem Kehlkopf.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kehlkopfblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringend angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065786",
    "display" : "Larynxfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Kehlkopf und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kehlkopffistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (z. B. Thorakoplastik, chronische offene Drainage oder multiple Thorakotomien)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023838",
    "display" : "Larynxödem",
    "definition" : "Ein Krankheitsbild, gekennzeichnet durch Anschwellung (hauptsächlich der Kehlkopfschleimhaut) aufgrund einer übermäßigen Ansammlung von Flüssigkeit im Kehlkopf.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kehlkopfödem"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stridor; Atemnot; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringend angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10059639",
    "display" : "Larynxobstruktion",
    "definition" : "Eine Störung, gekennzeichnet durch eine Behinderung (Obstruktion) der Atemwege des Kehlkopfes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Laryngeale Obstruktion"
    },
    {
      "language" : "de-DE",
      "value" : "Kehlkopfhindernis"
    },
    {
      "language" : "de-DE",
      "value" : "Kehlkopfobstruktion"
    },
    {
      "language" : "de-DE",
      "value" : "Larynxverschluss"
    },
    {
      "language" : "de-DE",
      "value" : "Kehlkopfverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; Stridor; endoskopische Intervention angezeigt (z. B. Stent, Laser)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065880",
    "display" : "Larynxschleimhautentzündung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Kehlkopfschleimhaut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Larynxhindernis"
    },
    {
      "language" : "de-DE",
      "value" : "Kehlkopfschleimhautentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "laryngeale Mukositis"
    },
    {
      "language" : "de-DE",
      "value" : "Larynxmukositis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; schwerwiegend verändertes Essen/Schlucken; medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringend angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10023862",
    "display" : "Larynxstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Verengung im Bereich des Pharyngolarynx.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kehlkopfverenugung"
    },
    {
      "language" : "de-DE",
      "value" : "Larynxverenungung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; Stridor; endoskopische Intervention angezeigt (z. B. Stent, Laser)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10037383",
    "display" : "Lungenfibrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch den Ersatz von Lungengewebe durch Bindegewebe, das zu fortschreitender Atemnot, Atemversagen oder Rechtherzversagen führt, Störungen des Gasaustausches verursacht und zum Atemversagen führen kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pulmonalfibrose"
    },
    {
      "language" : "de-DE",
      "value" : "interstitielle Lungenerkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Hypoxämie; Zeichen eines Rechtsherzversagens; radiographische pulmonale Fibrose >5075%"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen (z. B. hämodynamisch/pulmonale Komplikationen): Intubation mit Atemunterstützung angezeigt; radiographische pulmonale Fibrose >75% mit schwerer Bienenwabenbildung"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065873",
    "display" : "Lungenfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Lunge und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pulmonalfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; endoskopische Stenting oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10037375",
    "display" : "Lungenödem",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Ansammlung von Flüssigkeit in den Lungengeweben, das Störungen des Gasaustausches verursacht und zum Atemversagen führen kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pulmonales Ödem"
    },
    {
      "language" : "de-DE",
      "value" : "Wasserlunge"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Atemnot oder Ruhedyspnoe; Sauerstoff angezeigt; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische Beeinträchtigung; dringende Intervention oder Intubation mit Atemunterstützung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10056356",
    "display" : "Mediastinale Blutung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Blutung aus dem Mediastinum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Mittelfellblutung"
    },
    {
      "language" : "de-DE",
      "value" : "mediastinale Thoraxblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062244",
    "display" : "Nasennebenhöhlenerkrankung",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Beteiligung der Nasennebenhöhlen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Paranasale Sinuserkrankung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stenose mit signifikanter nasaler Behinderung; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Nekrose von Weichgewebe oder Knochen, dringend operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10028735",
    "display" : "Nasenverstopfung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Behinderung der nasalen Passage aufgrund eines Schleimhautödems.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nasenkongestion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Assoziiert mit blutigem nasalen Ausfluss oder Epistaxis"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10041232",
    "display" : "Niesen",
    "definition" : "Eine Auffälligkeit, gekennzeichnet durch unwillkürliche Ausstoß von Luft aus der Nase.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065881",
    "display" : "Pharyngeale Mukositis",
    "definition" : "Eine Störung, gekennzeichnet durch eine Entzündung der Rachenschleimhaut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rachenschleimhautentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Pharynxschleimhautentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Pharynxmukositis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Unfähigkeit einer angemessenen oralen Ernährung und Flüssigkeitsaufnahme; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende  Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055315",
    "display" : "Pharyngxblutung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Blutung aus dem Pharynx.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rachenblutung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034825",
    "display" : "Pharynxfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Pharynx und einem anderen Organ oder einer anderen anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rachenfistel"
    },
    {
      "language" : "de-DE",
      "value" : "Hypopharynsfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034844",
    "display" : "Pharynx-Larynx-Schmerzen",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Rachen-Kehlkopf-Region.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rachen- Kehlkopf- Schmerzen"
    },
    {
      "language" : "de-DE",
      "value" : "Rachen- Hals- Schmerzen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10065706",
    "display" : "Pharynxnekrose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der im Pharynx auftritt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rachennekrose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Unfähigkeit der Ernährung über den GI-Trakt; Sondenernährung oder TPE angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10050028",
    "display" : "Pharynxstenose",
    "definition" : "Eine Störung, gekennzeichnet durch eine Verengung im Bereich der pharyngealen Atemwege.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Rachenverengung"
    },
    {
      "language" : "de-DE",
      "value" : "Pharynxverengung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Einschränkung der selbstversorgenden ATL; Stridor; endoskopische Intervention angezeigt (z. B. Stent, Laser)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische Beeinträchtigung; dringende Intervention angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10055319",
    "display" : "Pleurablutung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Blutung aus der Pleurahöhle.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pleurahämorrhagie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : ">1000 ml Blut abpunktiert; persistierende Blutung (150-200ml/h über 2-4 h); persistierende Transfusion angezeigt; elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder Intervention dingend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10035598",
    "display" : "Pleuraerguss",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Erhöhung der Flüssigkeitsmenge innerhalb der Pleurahöhle. Symptome schließen Kurzatmigkeit, Husten und ausgeprägte Brustbeschwerden ein.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Brustfellerguss"
    },
    {
      "language" : "de-DE",
      "value" : "Pleuraeffusion"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch mit Atemnot und Hypoxie; chirurgische Intervention einschließlich Pleuradrainage oder Pleurodese angezeigt."
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder  Intervention dringlich angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10035623",
    "display" : "Pleuraschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Pleura.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10035759",
    "display" : "Pneumothorax",
    "definition" : "Eine Störung, gekennzeichnet durch das anormale Vorhandensein von Luft in der Brustfellhöhle mit der Folge eines Lungenkollaps.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Pneu"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Operative Intervention angezeigt; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10036790",
    "display" : "Produktiver Husten",
    "definition" : "Eine Störung, gekennzeichnet durch Auswurf von Absonderungen bei Husten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Husten mit Auswurf"
    },
    {
      "language" : "de-DE",
      "value" : "Husten mit Expektoration"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10037400",
    "display" : "Pulmonale Hypertonie",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen Druckanstieg im Lungenkreislauf aufgrund einer Lungen- oder Herzerkrankung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Lungenhochdruck"
    },
    {
      "language" : "de-DE",
      "value" : "Pulmonalhypertonie"
    },
    {
      "language" : "de-DE",
      "value" : "Hypertonie des kleinen Kreislaufs"
    },
    {
      "language" : "de-DE",
      "value" : "Lungenkreislaufhypertonus"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome, assoziiert mit Hypoxämie, rechtem Herzversagen; Sauerstoff angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038695",
    "display" : "Respirationsversagen",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen behinderten Gasaustausch im Atemsystem mit der Folge einer Hypoxämie und Verminderung der Sauerstoffversorgung der Gewebe, was mit einem Anstieg der arteriellen Konzentration von Kohlendioxid assoziiert sein kann.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Atemversagen"
    },
    {
      "language" : "de-DE",
      "value" : "Respiratorische Insuffizienz"
    },
    {
      "language" : "de-DE",
      "value" : "Respiratorisches Versagen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende  Intervention, Intubation oder Atemunterstützung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038921",
    "display" : "Retinsäure Syndrom",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Gewichtszunahme, Atemnot, pleurale und perikardiale Ergüsse, Leukozytose und oder Nierenversagen, ursprünglich beschrieben bei mit alltrans Retinsäure behandelten Patienten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "ATRA'-Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "Retinolsäuresyndrom"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; Atemunterstützung angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040975",
    "display" : "Schlaf-Apnoe Syndrom (SAS)",
    "definition" : "Eine Störung, gekennzeichnet durch Aufhören der Atmung für kurze Perioden während des Schlafes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Herabsetzung der Sauerstoffsättigung; assoziiert mit Hochdruck; medizinische Intervention angezeigt; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Kardiovaskuläre oder neuropsychiatrische Symptome; dringend operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020039",
    "display" : "Schluckauf",
    "definition" : "Eine Störung, gekennzeichnet durch wiederholte Schluckgeräusche, die aus der unwillkürlichen Öffnung und Schließung der Stimmritze resultieren.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hicksen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; beeinträchtigt den Schlaf; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10036402",
    "display" : "Sinubronchiales Syndrom",
    "definition" : "Eine Störung, gekennzeichnet durch übermäßige Schleimhautsekretion an der Rückwand der Nasenhöhle oder des Rachens, die Halsschmerzen und/oder Husten herruft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Airway Cough Syndrome"
    },
    {
      "language" : "de-DE",
      "value" : "UACS"
    },
    {
      "language" : "de-DE",
      "value" : "Postnasal'-Drip'-Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "PNDS"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047681",
    "display" : "Stimmänderung",
    "definition" : "Eine Störung, gekennzeichnet durch eine Veränderung in dem Klang und/oder der Geschwindigkeit der Stimme.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegende Stimmänderung einschließlich hauptsächlich flüsternde Sprache; kann für Verständlichkeit häufige Wiederholung oder facetoface Kontakt notwendig machen"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10042241",
    "display" : "Stridor",
    "definition" : "Eine Störung, gekennzeichnet durch ein hellklingendes Atemgeräusch aufgrund Kehlkopf- oder oberer Luftwegsbehinderung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Atemgeräusch"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Respiratorische Atemnot, die selbstversorgenden ATL begrenzend; med. Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Luftwegbehinderung; Intervention dringlich angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065787",
    "display" : "Trachealfistel",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Trachea und einem anderen Organ oder anatomischen Ort.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Luftröhrenfistel"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10050816",
    "display" : "Trachealstenose",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Verengung der Trachea.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Luftröhrenstenose"
    },
    {
      "language" : "de-DE",
      "value" : "Luftföhrenversagung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Stridor oder Atemnot; Einschränkung der selbstversorgenden ATL; endoskopische Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Luftwegbehinderung; Intervention dringlich angezeigt (z. B. Tracheotomie oder Intubation)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065900",
    "display" : "Tracheitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Luftröhrenschleimhaut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Luftröhrenschleimhautentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Tracheale Mukositis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Hämorrhagie oder Atemsymptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende  Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10038738",
    "display" : "Störungen der Atmungsorgane, des Thorax und Mediastinums - Sonstige,  zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen der Atmungsorgane, des Thorax und Mediastinums, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10037847",
    "display" : "Akneiformes Exanthem",
    "definition" : "Eine Störung, gekennzeichnet durch einen Ausschlag von Papeln und Pusteln, die typischerweise im Gesicht, der Kopfschwarte, dem oberen Brustkorb und dem Rücken auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Akneähnlicher Ausschlag"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Papeln und/oder Pusteln auf >30% der Körperoberfläche, assoziiert oder nicht mit Symptomen von Juckreiz und Druckschmerz; Einschränkung der selbstversorgenden ATL; assoziiert mit lokaler Superinfektion, (Therapie) mit oralen Antibiotika angezeigt;"
    },
    {
      "code" : "grad4",
      "valueString" : "Papeln und/oder Pusteln auf jeglicher % der Körperoberfläche, assoziiert oder nicht mit Symptomen von Juckreiz und Druckschmerz und sind assoziiert mit ausgedehnter Superinfektion, (Therapie) mit i. v. Antibiotika angezeigt; lebensbedrohliche Folgen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10006556",
    "display" : "Bullöse Dermatitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Haut, charakterisiert durch das Vorhandensein von flüssigkeitsgefüllten Blasen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blasige Hautentzündung"
    },
    {
      "language" : "de-DE",
      "value" : "Dermatitis mit Blausenbildung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Blasen bedecken >30% der KOF; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Blasen bedecken >30% der KOF; assoziiert mit Flüssigkeits oder Elektrolyt Anormalitäten; Intensivstation ICU (intensive care unit) angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10015218",
    "display" : "Erythema exsudativum multiforme",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Schießscheibenläsionen (rosaroter Ring um ein blasses Zentrum).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Erythema multiforme"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schießscheibenläsionen bedecken >30% der KOF und assoziiert mit oralen oder genitale Erosionen"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10015277",
    "display" : "Erythrodemie",
    "definition" : "Eine Störung, gekennzeichnet durch ein generalisiertes entzündliches Erythem und Exfoliation.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hautrötung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Erythem bedeckt >90% der KOF mit assoziierten Symptomen (z. B. Juckreiz oder Druckschmerzhaftigkeit); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Erythem bedeckt >90% der KOF mit assoziierten Flüssigkeits- oder Elektrolytanormalitäten; Symptomen (z. B. Juckreiz oder Druckschmerzhaftigkeit); Intensivstation ICU (intensive care unit) angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10016241",
    "display" : "Fettatrophie",
    "definition" : "Eine Störung, gekennzeichnet durch Schrumpfen des Fettgewebes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Fettschwund"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Betroffen >30% der KOF und assoziiert mit Erythem oder Druckschmerzhaftigkeit; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10001760",
    "display" : "Haarausfall",
    "definition" : "Eine Störung, gekennzeichnet durch eine Abnahme der Haardichte im Vergleich zum Normalen für ein gegebenes Individuum eines bestimmten Alters und der Körperlokalisation.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Alopezie"
    },
    {
      "language" : "de-DE",
      "value" : "Alopecia"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10054524",
    "display" : "Hand-Fuß-Syndrom",
    "definition" : "Eine Störung, gekennzeichnet durch Rötung, ausgeprägte Beschwerden, Schwellung und Kribbeln der Handflächen und Fußsohlen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Palmarplantare"
    },
    {
      "language" : "de-DE",
      "value" : "Erythrodyästhesie PPE"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Hautveränderungen (z. B. Abschälen, Blasen, Bluten, Ödem oder Hyperkeratose) mit Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040799",
    "display" : "Hautatropie",
    "definition" : "Eine Störung, gekennzeichnet durch die Degeneration und Verdünnung der Epidermis und der Dermis.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hautschwund"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Betroffen >30% der KOF; assoziiert mit Ulzeration"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10040865",
    "display" : "Hauthyperpigmentierung",
    "definition" : "Eine Störung, gekennzeichnet durch ein Dunkelwerden der Haut aufgrund übermäßiger Melaninablagerung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Chloasma"
    },
    {
      "language" : "de-DE",
      "value" : "Melasma"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10040868",
    "display" : "Hauthypopigmentierung",
    "definition" : "Eine Störung, gekennzeichnet durch Verlust von Hautpigment.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Depigemtierung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10033474",
    "display" : "Hautschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Haut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10051837",
    "display" : "Hautverhärtung",
    "definition" : "Eine Störung, gekennzeichnet durch ein Areal der Verhärtung in der Haut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hautinduration"
    },
    {
      "language" : "de-DE",
      "value" : "kutane Induration"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Induration; unfähig, die Haut zu verschieben oder zu kneifen; begrenzende Gelenk- oder Öffnungsbewegung (z. B. Mund, Anus); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Generalisiert; assoziiert mit Zeichen oder Symptomen behindernden Atmens oder der Nahrungsaufnahme"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020112",
    "display" : "Hirsutismus",
    "definition" : "Eine Störung, die durch das Vorhandensein von überschüssigem Haarwachstum bei Frauen an anatomischen Stellen gekennzeichnet ist, an denen Wachstum als ein sekundäres männliches Merkmal und unter androgener Kontrolle stehend gilt (Bart, Moustache, Brust, Bauch).",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vermehrte Behaarung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10020642",
    "display" : "Hyperhidrose",
    "definition" : "Eine Störung, gekennzeichnet durch übermäßige Perspiration.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vermehrte Schweißbildung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Generalisiert, mit Betroffenheit anderer Lokalisationen außer Handflächen, Fußsohlen oder Achselhöhlen; assoziiert mit Flüssigkeits oder Elektrolytunausgeglichenheit"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10020864",
    "display" : "Hypertrichosis",
    "definition" : "Eine Störung, die durch eine Haardichte oder -länge gekennzeichnet ist, die über die akzeptierte Grenze des Normalen in einer bestimmten Körperregion für ein(e) besondere(s) Alter oder Rasse hinausgeht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verstärkte Behaarung"
    },
    {
      "language" : "de-DE",
      "value" : "starke Behaarung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10021013",
    "display" : "Hypohidrose",
    "definition" : "Eine Störung, gekennzeichnet durch vermindertes Schwitzen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Verminderte Schweißbildung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Anstieg der Körpertemperatur; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Hitzschlag"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10005901",
    "display" : "Körpergeruch",
    "definition" : "Eine Störung, gekennzeichnet durch einen anormalen Körpergeruch, als Folge von Bakterienwachstum auf dem Körper.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Schweißgeruch Ketose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10049120",
    "display" : "Kopfhautschmerz",
    "definition" : "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Haut, die den oberen und den hinteren Teil des Kopfes bedeckt.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10034966",
    "display" : "Lichtempfindlichkeit",
    "definition" : "Eine Störung, gekennzeichnet durch erhöhte Empfindlichkeit der Haut auf Licht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Photosensibilität"
    },
    {
      "language" : "de-DE",
      "value" : "Photohypersensibilität"
    },
    {
      "language" : "de-DE",
      "value" : "Lichtüberempfindlichkeit"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Rötung >30% der KOF betreffend und Erythem mit Blasenbildung; Lichtüberempfindlichkeit; orale Corticosteroidtherapie angezeigt; Schmerzkontrolle angezeigt (z. B. Betäubungsmittel oder NSAIDs)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Auswirkungen; dringende  Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10062315",
    "display" : "Lipohypertrophy",
    "definition" : "Eine Störung, gekennzeichnet durch eine Hypertrophy des subkutanen Fettgewebes am Ort mehrfacher subkutaner Insulininjektionen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Vermehrung von Fettgewebe"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Betroffen >30% der KOF und assoziiert mit Druckschmerzhaftigkeit und Betäubungsmittel oder NSAIDs angezeigt; Lipohypertrophy; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10044223",
    "display" : "Lyell-Syndrom medikamentöses",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Ablösung von mehr als 30% der Gesamtkörperhaut. Das Syndrom wird einem Hypersensitivitätskomplex zugeschrieben, der Haut und Schleimhäute betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Medikamentöse bedingte toxische Nekrolyse der Epidermis"
    },
    {
      "language" : "de-DE",
      "value" : "toxic epidermal necrolysis"
    },
    {
      "language" : "de-DE",
      "value" : "TEN"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "Hautabschälung von >=30% der KOF mit assoziierten Zeichen (z. B. Erythem, Purpura, epidermale Ablösung)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10037868",
    "display" : "Makulopapulöses Hautexanthem",
    "definition" : "Eine Erkrankung, gekennzeichnet durch einen Ausschlag von Papeln und Pusteln, die typischerweise im Gesicht, der Kopfschwarte, dem oberen Brustkorb und dem Rücken auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Knotigfleckiger Hautausschlag"
    },
    {
      "language" : "de-DE",
      "value" : "makulopapulöses Exanthem"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Papeln und/oder Pusteln auf >30% der KOF, assoziiert oder nicht mit Symptomen (z. B. Juckreiz, Brennen, Spannung); Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10028691",
    "display" : "Nagelverfärbungen",
    "definition" : "Eine Störung, gekennzeichnet durch eine Farbveränderung der Nagelplatte.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nageldiskoloration"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10049281",
    "display" : "Nagelverlust",
    "definition" : "Eine Störung, gekennzeichnet durch den Verlust des ganzen oder eines Teils des Nagels.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nagelausfall"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10062283",
    "display" : "Nagelrinnen",
    "definition" : "Eine Störung, gekennzeichnet durch vertikale oder horizontale Rinnen auf den Nägeln.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nagelfurchen"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10054541",
    "display" : "Periorbitales Ödem",
    "definition" : "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßige Ansammlung von Flüssigkeit um die Augenhöhle herum.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Periorbitale Schwelllung"
    },
    {
      "language" : "de-DE",
      "value" : "Augenhöhlenschwellung"
    },
    {
      "language" : "de-DE",
      "value" : "Augenödem"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Ödem assoziiert mit Sehstörungen; erhöhter intraokularer Druck, Glaukom oder retinale Blutung; Neuritis des Opticus; Diuretika angezeigt; operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10037087",
    "display" : "Pruritus",
    "definition" : "Eine Störung, gekennzeichnet durch eine intensive Juckempfindung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Juckreiz"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Intensiv und großflächig; konstant; Einschränkung der selbstversorgenden ATL oder des Schlafes; orale Corticosteroide oder immunsuppressive Therapie angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10037549",
    "display" : "Purpura",
    "definition" : "Eine Erkrankung, gekennzeichnet durch hämorrhagische Bereiche der Haut und Schleimhäute. Neuere Läsionen erscheinen rötlich in der Farbe.  Ältere Läsionen sind gewöhnlich von violetter Farbe und werden letztendlich bräunlich-gelblich in der Farbe.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Kapilarbutungen der Haut, Unterhaut oder Schleimhäuten"
    },
    {
      "language" : "de-DE",
      "value" : "Petichien"
    },
    {
      "language" : "de-DE",
      "value" : "Rötung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Zusammengenommener Bereich von Läsionen >30% der KOF; spontane Blutungen"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10042033",
    "display" : "Stevens-Johnson-Syndrom, SJS",
    "definition" : "Eine Erkrankung, gekennzeichnet durch Ablösung von weniger als 10% der Gesamtkörperhaut. Das Syndrom wird einem Hypersensitivitätskomplex zugeschrieben, der Haut und Schleimhäute betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Dermatostomatitis Baader"
    },
    {
      "language" : "de-DE",
      "value" : "Fiessinger'-Rendu'-Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "bullöses Erythema exsudativum multiforme"
    },
    {
      "language" : "de-DE",
      "value" : "kutane Arzneimittelhautallergie"
    },
    {
      "language" : "de-DE",
      "value" : "infektallergische Hautallergie"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Hautabschälung von 10% der KOF mit assoziierten Zeichen (z. B. Erythem, Purpura, epidermale Ablösung und Schleimhautablösung)"
    },
    {
      "code" : "grad4",
      "valueString" : "Hautabschälung von 10-30% der KOF mit assoziierten Zeichen (z. B. Erythem, Purpura, epidermale Ablösung und Schleimhautablösung)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10043189",
    "display" : "Teleangiektasie",
    "definition" : "Eine Störung, gekennzeichnet durch eine lokale Erweiterung von kleinen Gefäßen mit der Folge einer roten Verfärbung der Haut oder der Schleimhäute.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Erweiterung der (kapillären) Haut'-Blutgefäße"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10013786",
    "display" : "Trockene Haut",
    "definition" : "Eine Störung, gekennzeichnet durch schuppenartige und schlaffe Haut; die Poren sind allgemein fein, die Textur ist von papierener Beschaffenheit.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Ausbreitung >30% der BSA und assoziiert mit Jucken; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10040947",
    "display" : "Ulzeration der Haut",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine umschriebene entzündliche und nekrotische erosive Läsion der Haut.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Hautulzeration"
    },
    {
      "language" : "de-DE",
      "value" : "Hautulceration"
    },
    {
      "language" : "de-DE",
      "value" : "Hautgeschwürbildung"
    },
    {
      "language" : "de-DE",
      "value" : "Hautulkus"
    },
    {
      "language" : "de-DE",
      "value" : "Hautulcus"
    },
    {
      "language" : "de-DE",
      "value" : "Druck'- und Lagerungsschäden, z.B. Dekubitalulzera"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Zusammengenommener Bereich der Ulcera >2 cm; Hautverlust in voller Dicke, der die Schädigung oder Nekrose des subkutanen Gewebes umfasst und die sich bis zur Faszie ausdehnen kann"
    },
    {
      "code" : "grad4",
      "valueString" : "Jegliche Geschwürgröße mit ausgedehnter Zerstörung, Gewebenekrose oder Schädigung von Muskeln, Knochen oder Stützstrukturen, mit oder ohne Verlust der Haut in voller Dicke"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10046735",
    "display" : "Urtikaria",
    "definition" : "Eine Störung, gekennzeichnet durch einen juckenden Hautausschlag, charakterisiert durch Quaddeln mit blassem Innenhof und gut definierten roten Rändern.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Nesselfiber"
    },
    {
      "language" : "de-DE",
      "value" : "Nesselsucht"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Urtikarielle Läsionen >30% der KOF betreffend; i. v. Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10040785",
    "display" : "Störungen der Haut und Unterhautgewebe - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen der Haut und des Unterhautgewebes, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10027308",
    "display" : "Menopause",
    "definition" : "Eine Störung, gekennzeichnet durch ein andauerndes Aufhören der Menstruationsblutung, gewöhnlich definiert durch 12 aufeinander folgende Monate der Amenorrhoe einer Frau über 45 Jahre.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Klimakterium"
    },
    {
      "language" : "de-DE",
      "value" : "Wechseljahre"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Menopause im Alter vor dem 40. Lebensjahr"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10041244",
    "display" : "Störungen der sozialen Umstände - Sonstige, zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen der sozialen Umstände, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10042613",
    "display" : "Chirurgische und medizinische Prozeduren - Sonstige,  zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen chirurgischer oder medizinischer Prozeduren, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10016825",
    "display" : "Hautrötung",
    "definition" : "Eine Störung, gekennzeichnet durch eine episodische Rötung des Gesichtes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Flush"
    },
    {
      "language" : "de-DE",
      "value" : "Errötung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Symptomatisch; assoziiert mit Hypotonie und /oder Tachykardie; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10019428",
    "display" : "Hämatom",
    "definition" : "Eine Störung, gekennzeichnet durch eine lokalisierte Ansammlung von normalerweise geronnenem Blut in einem Organ, Raum oder Gewebe, als Folge einer Zerreissung der Wand eines Blutgefäßes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Wundhämatom (konservativ therapiert)"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10020407",
    "display" : "Hitzewallung",
    "definition" : "Eine Störung, gekennzeichnet durch eine unangenehme und vorübergehende Empfindung intensiver Körperwärme, Erröten, manchmal begleitet von Schwitzen bei Abkühlung.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10020772",
    "display" : "Hypertonie",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine krankhafte Erhöhung des Blutdrucks; eine wiederholte Erhöhung des Blutdrucks, 140 zu 90 mmHg übersteigend.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Bluthochdruck"
    },
    {
      "language" : "de-DE",
      "value" : "Hypertonus"
    },
    {
      "language" : "de-DE",
      "value" : "Hochdruck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Hypertonus Stadium 2 (systolisch RR 160 mm Hg oder diastolisch RR >100 mm Hg); medizinische Intervention angezeigt; mehr als ein Medikament oder intensivere Behandlung als vorher angewendet indiziert; Kinderheilkunde: dasselbe wie beim Erwachsenen"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen (z. B. maligne Hypertonie, vorübergehende oder permanente neurologische Defizite, hypertensive Krise); Intervention dringend angezeigt; Kinderheilkunde: dasselbe wie beim Erwachsenen"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10021097",
    "display" : "Hypotonie",
    "definition" : "Eine Störung gekennzeichnet durch einen Blutdruck, der unterhalb des Normalen liegt und für ein Individuum in einer gegebenen Umgebung erwartet wird.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Blutdruckerniedrigung"
    },
    {
      "language" : "de-DE",
      "value" : "Hypotonus"
    },
    {
      "language" : "de-DE",
      "value" : "Blultdruckabfall"
    },
    {
      "language" : "de-DE",
      "value" : "niedriger Blutdruck"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Medizinische Intervention oder Krankenhauseinweisung angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10007196",
    "display" : "Kapillarlecksyndrom",
    "definition" : "Eine Erkrankung, gekennzeichnet durch das Austreten (Leckage) intravaskulärer Flüssigkeit in den extravaskulären Raum. Das Syndrom wird bei Patienten beobachtet, die einen Zustand generalisiert undichter Kapillaren zeigen, in der Folge eines Schocksyndroms, niedriger Perfusionszustände, Ischämie-Reperfusions Schädigung, Toxämien (Sepsis, Blutvergiftung), Medikationen oder Vergiftung. Es kann zu einem generalisierten Ödem oder Multiorganversagen führen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Clarkson'-Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "capillary leakage syndrome, CLS"
    },
    {
      "language" : "de-DE",
      "value" : "systemic capillary leak syndrome, SCLS"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10065773",
    "display" : "Lymphaustritt",
    "definition" : "Eine Störung, gekennzeichnet durch den Verlust von Lymphflüssigkeit in die umgebenden Gewebe oder in eine Körperhöhle.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Lymphleck"
    },
    {
      "language" : "de-DE",
      "value" : "Lymphleckage"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10025233",
    "display" : "Lymphödem",
    "definition" : "Eine Störung, gekennzeichnet durch übermäßige Flüssigkeitsansammlung in Geweben, die eine Schwellung verursacht.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Lymphschwellung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10048642",
    "display" : "Lymphozele",
    "definition" : "Eine Störung, gekennzeichnet durch eine zystenartige Läsion, die Lymphe enthält.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Lymphansammlung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10034578",
    "display" : "Periphere Ischämie",
    "definition" : "Eine Störung, gekennzeichnet durch beeinträchtigte Zirkulation in einer Extremität.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Periphere Durchblutungsstörung"
    },
    {
      "language" : "de-DE",
      "value" : "peripherer arterieller Verschluß"
    },
    {
      "language" : "de-DE",
      "value" : "arterielle Embolie/Thrombose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Wiederholt und anhaltend (>=24h) und/oder invasive Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Evidenz einer Endorganschädigung; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10034879",
    "display" : "Phlebitis",
    "definition" : "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Venenwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Venenentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10043565",
    "display" : "Thromboembolisches Ereignis",
    "definition" : "Eine Störung, gekennzeichnet durch den Verschluss eines Gefäßes durch einen Thrombus, der von einem entfernten Ort über den Blutstrom gewandert ist.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Thromboembolie"
    },
    {
      "language" : "de-DE",
      "value" : "Ileofemorale Venenthrombose"
    },
    {
      "language" : "de-DE",
      "value" : "Pulmonalarterienembolie"
    },
    {
      "language" : "de-DE",
      "value" : "Embolie"
    },
    {
      "language" : "de-DE",
      "value" : "thrombotischer Gefäßverschluss"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Thrombose (z. B. unkomplizierte Lungenembolie [venös], nichtembolische Herzwand[arterielle] Thrombose, medizinische Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohlich (z. B. Lungenembolie, zerebrovaskuläres Ereignis, arterielle Insuffizienz); hämodynamische oder neurologische Instabilität; dringende Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10042554",
    "display" : "Thrombophlebitis, oberflächliche",
    "definition" : "Eine Erkrankung, gekennzeichnet durch ein Blutgerinnsel und eine Entzündung, die eine oberflächliche Vene der Extremitäten betrifft.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Oberflächen'-Thrombophlebitis"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "-"
    },
    {
      "code" : "grad4",
      "valueString" : "-"
    },
    {
      "code" : "grad5",
      "valueString" : "-"
    }]
  },
  {
    "code" : "10047115",
    "display" : "Vaskulitis",
    "definition" : "Eine Störung, gekennzeichnet durch die Entzündung einer Blutgefäßwand.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Gefäßwandentzündung"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; medizinische Intervention angezeigt (z. B. Steroide)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohlich; Evidenz einer peripheren oder viszeralen Ischämie; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10042569",
    "display" : "Vena-cava-superior-(VCS) Syndrom",
    "definition" : "Eine Störung, gekennzeichnet durch Behinderung des Blutflusses in der oberen Vena cava. Zeichen und Symptome umfassen Schwellung und Zyanose des Gesichts, des Halses und der oberen Arme, Husten, Atemnot im Liegen und Kopfschmerzen.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Syndrom der oberen Einflussstauung"
    },
    {
      "language" : "de-DE",
      "value" : "Vena Cava Syndrom"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwere Symptome; multimodale Intervention angezeigt (z. B. Antikoagulation, Chemotherapie, Bestrahlung, Stenting)"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; dringend mulktimodale Intervention angezeigt (z. B. Lyse, Thrombektomie, Chirurgie)"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10054692",
    "display" : "Viszerale arterielle Ischämie",
    "definition" : "Eine Störung, gekennzeichnet durch Verminderung der Blutversorgung aufgrund einer Verengung oder Obstruktion eines viszeralen (mesenterischen) Gefäßes.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "Viszerale Ischämie"
    },
    {
      "language" : "de-DE",
      "value" : "Leriche- Syndrom"
    },
    {
      "language" : "de-DE",
      "value" : "Bauchschlagaderischämie"
    },
    {
      "language" : "de-DE",
      "value" : "Mesesenterialarterien- oder venenthrombose"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Anhaltend (>=24h) oder wiederholte Symptome und/oder invasive Intervention angezeigt"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Evidenz einer Endorganschädigung; dringende operative Intervention angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  },
  {
    "code" : "10047065",
    "display" : "Vaskuläre Störung  - Sonstige,  zu spezifizieren",
    "definition" : "Sonstige, zu spezifizierende Störungen des Gefäßsystems, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten.",
    "designation" : [{
      "language" : "de-DE",
      "value" : "-"
    }],
    "property" : [{
      "code" : "grad3",
      "valueString" : "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
    },
    {
      "code" : "grad4",
      "valueString" : "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
    },
    {
      "code" : "grad5",
      "valueString" : "Tod"
    }]
  }]
}

```
