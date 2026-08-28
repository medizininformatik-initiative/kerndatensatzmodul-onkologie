# MII CodeSystem Onkologie - Weitere Klassifikationen oBDS - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CodeSystem Onkologie - Weitere Klassifikationen oBDS**

## CodeSystem: MII CodeSystem Onkologie - Weitere Klassifikationen oBDS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Onko_Weitere_Klassifikationen_OBDS |

 
oBDS-specific classification systems and scoring systems not yet covered by international terminologies (SNOMED CT, NCI Thesaurus). These codes supplement the existing ValueSet for additional classifications. Research required: Check if SNOMED CT or LOINC codes exist for these scoring systems before using oBDS-specific codes. 

This Code system is referenced in the definition of the following value sets:

* [MII Value Set Onkologie - Weitere Klassifikationen - Auspraegungen](ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-weitere-klassifikationen-obds",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Weitere_Klassifikationen_OBDS",
  "title" : "MII CodeSystem Onkologie - Weitere Klassifikationen oBDS",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T09:25:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-specific classification systems and scoring systems not yet covered by international terminologies (SNOMED CT, NCI Thesaurus). These codes supplement the existing ValueSet for additional classifications. Research required: Check if SNOMED CT or LOINC codes exist for these scoring systems before using oBDS-specific codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "content" : "complete",
  "count" : 219,
  "concept" : [{
    "code" : "binet",
    "display" : "BINET Staging System",
    "definition" : "Staging system for chronic lymphocytic leukemia based on lymph node involvement and organ enlargement.",
    "concept" : [{
      "code" : "binet-a",
      "display" : "BINET A",
      "definition" : "Early stage CLL: lymphocytosis in blood and bone marrow only"
    },
    {
      "code" : "binet-b",
      "display" : "BINET B",
      "definition" : "Intermediate stage CLL: lymphocytosis with enlarged lymph nodes or spleen/liver"
    },
    {
      "code" : "binet-c",
      "display" : "BINET C",
      "definition" : "Advanced stage CLL: lymphocytosis with anemia or thrombocytopenia"
    }]
  },
  {
    "code" : "ann-arbor-stadium",
    "display" : "Ann-Arbor Stadium",
    "definition" : "Staging system for Hodgkin and Non-Hodgkin lymphomas based on anatomical extent of disease.",
    "concept" : [{
      "code" : "ann-arbor-i",
      "display" : "I",
      "definition" : "Single lymph node region or single extralymphatic organ"
    },
    {
      "code" : "ann-arbor-ia",
      "display" : "IA",
      "definition" : "Single lymph node region, asymptomatic"
    },
    {
      "code" : "ann-arbor-iae",
      "display" : "IAE",
      "definition" : "Single lymph node region with extranodal extension, asymptomatic"
    },
    {
      "code" : "ann-arbor-ib",
      "display" : "IB",
      "definition" : "Single lymph node region with B symptoms"
    },
    {
      "code" : "ann-arbor-ibe",
      "display" : "IBE",
      "definition" : "Single lymph node region with extranodal extension and B symptoms"
    },
    {
      "code" : "ann-arbor-ie",
      "display" : "IE",
      "definition" : "Single extralymphatic organ involvement"
    },
    {
      "code" : "ann-arbor-ix",
      "display" : "IX",
      "definition" : "Single lymph node region, symptoms unclear"
    },
    {
      "code" : "ann-arbor-ixa",
      "display" : "IXA",
      "definition" : "Single lymph node region, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-ixae",
      "display" : "IXAE",
      "definition" : "Single lymph node region with extranodal extension, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-ixb",
      "display" : "IXB",
      "definition" : "Single lymph node region, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-ixbe",
      "display" : "IXBE",
      "definition" : "Single lymph node region with extranodal extension, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-ixe",
      "display" : "IXE",
      "definition" : "Single extralymphatic organ, symptoms unclear"
    },
    {
      "code" : "ann-arbor-ii",
      "display" : "II",
      "definition" : "Two or more lymph node regions on same side of diaphragm"
    },
    {
      "code" : "ann-arbor-ii1",
      "display" : "II1",
      "definition" : "Two lymph node regions on same side of diaphragm"
    },
    {
      "code" : "ann-arbor-ii1a",
      "display" : "II1A",
      "definition" : "Two lymph node regions on same side of diaphragm, asymptomatic"
    },
    {
      "code" : "ann-arbor-ii1ae",
      "display" : "II1AE",
      "definition" : "Two lymph node regions on same side of diaphragm with extranodal extension, asymptomatic"
    },
    {
      "code" : "ann-arbor-ii1b",
      "display" : "II1B",
      "definition" : "Two lymph node regions on same side of diaphragm with B symptoms"
    },
    {
      "code" : "ann-arbor-ii1be",
      "display" : "II1BE",
      "definition" : "Two lymph node regions on same side of diaphragm with extranodal extension and B symptoms"
    },
    {
      "code" : "ann-arbor-ii1e",
      "display" : "II1E",
      "definition" : "Two lymph node regions on same side of diaphragm with extranodal extension"
    },
    {
      "code" : "ann-arbor-ii1x",
      "display" : "II1X",
      "definition" : "Two lymph node regions on same side of diaphragm, symptoms unclear"
    },
    {
      "code" : "ann-arbor-ii1xa",
      "display" : "II1XA",
      "definition" : "Two lymph node regions on same side of diaphragm, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-ii1xae",
      "display" : "II1XAE",
      "definition" : "Two lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-ii1xb",
      "display" : "II1XB",
      "definition" : "Two lymph node regions on same side of diaphragm, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-ii1xbe",
      "display" : "II1XBE",
      "definition" : "Two lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-ii1xe",
      "display" : "II1XE",
      "definition" : "Two lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear"
    },
    {
      "code" : "ann-arbor-ii2",
      "display" : "II2",
      "definition" : "Multiple lymph node regions on same side of diaphragm"
    },
    {
      "code" : "ann-arbor-ii2a",
      "display" : "II2A",
      "definition" : "Multiple lymph node regions on same side of diaphragm, asymptomatic"
    },
    {
      "code" : "ann-arbor-ii2ae",
      "display" : "II2AE",
      "definition" : "Multiple lymph node regions on same side of diaphragm with extranodal extension, asymptomatic"
    },
    {
      "code" : "ann-arbor-ii2b",
      "display" : "II2B",
      "definition" : "Multiple lymph node regions on same side of diaphragm with B symptoms"
    },
    {
      "code" : "ann-arbor-ii2be",
      "display" : "II2BE",
      "definition" : "Multiple lymph node regions on same side of diaphragm with extranodal extension and B symptoms"
    },
    {
      "code" : "ann-arbor-ii2e",
      "display" : "II2E",
      "definition" : "Multiple lymph node regions on same side of diaphragm with extranodal extension"
    },
    {
      "code" : "ann-arbor-ii2x",
      "display" : "II2X",
      "definition" : "Multiple lymph node regions on same side of diaphragm, symptoms unclear"
    },
    {
      "code" : "ann-arbor-ii2xa",
      "display" : "II2XA",
      "definition" : "Multiple lymph node regions on same side of diaphragm, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-ii2xae",
      "display" : "II2XAE",
      "definition" : "Multiple lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-ii2xb",
      "display" : "II2XB",
      "definition" : "Multiple lymph node regions on same side of diaphragm, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-ii2xbe",
      "display" : "II2XBE",
      "definition" : "Multiple lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-ii2xe",
      "display" : "II2XE",
      "definition" : "Multiple lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear"
    },
    {
      "code" : "ann-arbor-iia",
      "display" : "IIA",
      "definition" : "Two or more lymph node regions on same side of diaphragm, asymptomatic"
    },
    {
      "code" : "ann-arbor-iiae",
      "display" : "IIAE",
      "definition" : "Two or more lymph node regions on same side of diaphragm with extranodal extension, asymptomatic"
    },
    {
      "code" : "ann-arbor-iib",
      "display" : "IIB",
      "definition" : "Two or more lymph node regions on same side of diaphragm with B symptoms"
    },
    {
      "code" : "ann-arbor-iibe",
      "display" : "IIBE",
      "definition" : "Two or more lymph node regions on same side of diaphragm with extranodal extension and B symptoms"
    },
    {
      "code" : "ann-arbor-iie",
      "display" : "IIE",
      "definition" : "Two or more lymph node regions on same side of diaphragm with extranodal extension"
    },
    {
      "code" : "ann-arbor-iix",
      "display" : "IIX",
      "definition" : "Two or more lymph node regions on same side of diaphragm, symptoms unclear"
    },
    {
      "code" : "ann-arbor-iixa",
      "display" : "IIXA",
      "definition" : "Two or more lymph node regions on same side of diaphragm, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-iixae",
      "display" : "IIXAE",
      "definition" : "Two or more lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-iixb",
      "display" : "IIXB",
      "definition" : "Two or more lymph node regions on same side of diaphragm, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-iixbe",
      "display" : "IIXBE",
      "definition" : "Two or more lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-iixe",
      "display" : "IIXE",
      "definition" : "Two or more lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear"
    },
    {
      "code" : "ann-arbor-iii",
      "display" : "III",
      "definition" : "Lymph node regions on both sides of diaphragm"
    },
    {
      "code" : "ann-arbor-iiia",
      "display" : "IIIA",
      "definition" : "Lymph node regions on both sides of diaphragm, asymptomatic"
    },
    {
      "code" : "ann-arbor-iiiae",
      "display" : "IIIAE",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension, asymptomatic"
    },
    {
      "code" : "ann-arbor-iiiaes",
      "display" : "IIIAES",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement, asymptomatic"
    },
    {
      "code" : "ann-arbor-iiias",
      "display" : "IIIAS",
      "definition" : "Lymph node regions on both sides of diaphragm with spleen involvement, asymptomatic"
    },
    {
      "code" : "ann-arbor-iiib",
      "display" : "IIIB",
      "definition" : "Lymph node regions on both sides of diaphragm with B symptoms"
    },
    {
      "code" : "ann-arbor-iiibe",
      "display" : "IIIBE",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension and B symptoms"
    },
    {
      "code" : "ann-arbor-iiibes",
      "display" : "IIIBES",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension, spleen involvement, and B symptoms"
    },
    {
      "code" : "ann-arbor-iiibs",
      "display" : "IIIBS",
      "definition" : "Lymph node regions on both sides of diaphragm with spleen involvement and B symptoms"
    },
    {
      "code" : "ann-arbor-iiie",
      "display" : "IIIE",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension"
    },
    {
      "code" : "ann-arbor-iiies",
      "display" : "IIIES",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement"
    },
    {
      "code" : "ann-arbor-iiis",
      "display" : "IIIS",
      "definition" : "Lymph node regions on both sides of diaphragm with spleen involvement"
    },
    {
      "code" : "ann-arbor-iiix",
      "display" : "IIIX",
      "definition" : "Lymph node regions on both sides of diaphragm, symptoms unclear"
    },
    {
      "code" : "ann-arbor-iiixa",
      "display" : "IIIXA",
      "definition" : "Lymph node regions on both sides of diaphragm, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-iiixae",
      "display" : "IIIXAE",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-iiixaes",
      "display" : "IIIXAES",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-iiixas",
      "display" : "IIIXAS",
      "definition" : "Lymph node regions on both sides of diaphragm with spleen involvement, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-iiixb",
      "display" : "IIIXB",
      "definition" : "Lymph node regions on both sides of diaphragm, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-iiixbe",
      "display" : "IIIXBE",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-iiixbes",
      "display" : "IIIXBES",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-iiixbs",
      "display" : "IIIXBS",
      "definition" : "Lymph node regions on both sides of diaphragm with spleen involvement, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-iiixe",
      "display" : "IIIXE",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension, symptoms unclear"
    },
    {
      "code" : "ann-arbor-iiixes",
      "display" : "IIIXES",
      "definition" : "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement, symptoms unclear"
    },
    {
      "code" : "ann-arbor-iiixs",
      "display" : "IIIXS",
      "definition" : "Lymph node regions on both sides of diaphragm with spleen involvement, symptoms unclear"
    },
    {
      "code" : "ann-arbor-iii1",
      "display" : "III1",
      "definition" : "Limited lymph node regions on both sides of diaphragm"
    },
    {
      "code" : "ann-arbor-iii1a",
      "display" : "III1A",
      "definition" : "Limited lymph node regions on both sides of diaphragm, asymptomatic"
    },
    {
      "code" : "ann-arbor-iii1b",
      "display" : "III1B",
      "definition" : "Limited lymph node regions on both sides of diaphragm with B symptoms"
    },
    {
      "code" : "ann-arbor-iii2",
      "display" : "III2",
      "definition" : "Multiple lymph node regions on both sides of diaphragm"
    },
    {
      "code" : "ann-arbor-iii2a",
      "display" : "III2A",
      "definition" : "Multiple lymph node regions on both sides of diaphragm, asymptomatic"
    },
    {
      "code" : "ann-arbor-iii2b",
      "display" : "III2B",
      "definition" : "Multiple lymph node regions on both sides of diaphragm with B symptoms"
    },
    {
      "code" : "ann-arbor-iv",
      "display" : "IV",
      "definition" : "Disseminated involvement of one or more extralymphatic organs"
    },
    {
      "code" : "ann-arbor-iva",
      "display" : "IVA",
      "definition" : "Disseminated involvement of extralymphatic organs, asymptomatic"
    },
    {
      "code" : "ann-arbor-ivae",
      "display" : "IVAE",
      "definition" : "Disseminated involvement of extralymphatic organs with additional extranodal extension, asymptomatic"
    },
    {
      "code" : "ann-arbor-ivb",
      "display" : "IVB",
      "definition" : "Disseminated involvement of extralymphatic organs with B symptoms"
    },
    {
      "code" : "ann-arbor-ivbe",
      "display" : "IVBE",
      "definition" : "Disseminated involvement of extralymphatic organs with additional extranodal extension and B symptoms"
    },
    {
      "code" : "ann-arbor-ive",
      "display" : "IVE",
      "definition" : "Disseminated involvement of extralymphatic organs with extranodal extension"
    },
    {
      "code" : "ann-arbor-ivx",
      "display" : "IVX",
      "definition" : "Disseminated involvement of extralymphatic organs, symptoms unclear"
    },
    {
      "code" : "ann-arbor-ivxa",
      "display" : "IVXA",
      "definition" : "Disseminated involvement of extralymphatic organs, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-ivxae",
      "display" : "IVXAE",
      "definition" : "Disseminated involvement of extralymphatic organs with additional extranodal extension, symptoms unclear, asymptomatic features"
    },
    {
      "code" : "ann-arbor-ivxb",
      "display" : "IVXB",
      "definition" : "Disseminated involvement of extralymphatic organs, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-ivxbe",
      "display" : "IVXBE",
      "definition" : "Disseminated involvement of extralymphatic organs with additional extranodal extension, symptoms unclear, B symptom features"
    },
    {
      "code" : "ann-arbor-ivxe",
      "display" : "IVXE",
      "definition" : "Disseminated involvement of extralymphatic organs with extranodal extension, symptoms unclear"
    }]
  },
  {
    "code" : "iss",
    "display" : "International Staging System",
    "definition" : "Staging system for multiple myeloma based on serum beta-2 microglobulin and albumin levels.",
    "concept" : [{
      "code" : "iss-i",
      "display" : "ISS I",
      "definition" : "Beta-2 microglobulin <3.5 mg/L and albumin ≥3.5 g/dL"
    },
    {
      "code" : "iss-ii",
      "display" : "ISS II",
      "definition" : "Not ISS I or ISS III"
    },
    {
      "code" : "iss-iii",
      "display" : "ISS III",
      "definition" : "Beta-2 microglobulin ≥5.5 mg/L"
    }]
  },
  {
    "code" : "isswm",
    "display" : "International Scoring System for Waldenström's Macroglobulinemia",
    "definition" : "Prognostic scoring system for Waldenström's macroglobulinemia based on age, beta-2 microglobulin, and albumin levels.",
    "concept" : [{
      "code" : "isswm-n",
      "display" : "ISSWM Niedrig",
      "definition" : "Low risk: age ≤65 years, beta-2 microglobulin ≤3 mg/L, albumin >3.5 g/dL"
    },
    {
      "code" : "isswm-i",
      "display" : "ISSWM Intermediär",
      "definition" : "Intermediate risk: one adverse factor"
    },
    {
      "code" : "isswm-h",
      "display" : "ISSWM Hoch",
      "definition" : "High risk: age >65 years or beta-2 microglobulin >3 mg/L, or albumin ≤3.5 g/dL (≥2 factors)"
    }]
  },
  {
    "code" : "who-grad",
    "display" : "WHO Grade",
    "definition" : "World Health Organization grading system for central nervous system tumors based on histological features.",
    "concept" : [{
      "code" : "who-grad-i",
      "display" : "WHO Grad I",
      "definition" : "Well-differentiated, slow-growing, low proliferative potential"
    },
    {
      "code" : "who-grad-ii",
      "display" : "WHO Grad II",
      "definition" : "Moderately differentiated, infiltrative, low proliferative potential"
    },
    {
      "code" : "who-grad-iii",
      "display" : "WHO Grad III",
      "definition" : "Poorly differentiated, anaplastic, high proliferative potential"
    },
    {
      "code" : "who-grad-iv",
      "display" : "WHO Grad IV",
      "definition" : "Poorly differentiated, high mitotic activity, necrosis, microvascular proliferation"
    }]
  },
  {
    "code" : "formen",
    "display" : "Formen",
    "definition" : "Classification of lymphoma forms distinguishing classical and variant presentations.",
    "concept" : [{
      "code" : "formen-k",
      "display" : "Klassisch",
      "definition" : "Classical form of lymphoma presentation"
    },
    {
      "code" : "formen-v",
      "display" : "Variante",
      "definition" : "Variant form of lymphoma presentation"
    }]
  },
  {
    "code" : "eln-klassifikation",
    "display" : "ELN-Klassifikation",
    "definition" : "European LeukemiaNet risk stratification for acute myeloid leukemia based on cytogenetic and molecular genetic abnormalities.",
    "concept" : [{
      "code" : "eln-g",
      "display" : "ELN Günstig",
      "definition" : "Favorable risk: good prognosis cytogenetic/molecular markers"
    },
    {
      "code" : "eln-i1",
      "display" : "ELN Intermediär I",
      "definition" : "Intermediate risk I: intermediate prognosis markers"
    },
    {
      "code" : "eln-i2",
      "display" : "ELN Intermediär II",
      "definition" : "Intermediate risk II: intermediate prognosis markers"
    },
    {
      "code" : "eln-u",
      "display" : "ELN Ungünstig",
      "definition" : "Unfavorable risk: poor prognosis cytogenetic/molecular markers"
    },
    {
      "code" : "eln-cp",
      "display" : "ELN Chronische Phase",
      "definition" : "Chronic phase (CML context)"
    },
    {
      "code" : "eln-ap",
      "display" : "ELN Akzelierte Phase",
      "definition" : "Accelerated phase (CML context)"
    },
    {
      "code" : "eln-bk",
      "display" : "ELN Blastenkrise",
      "definition" : "Blast crisis phase (CML context)"
    }]
  },
  {
    "code" : "durie-salmon-stadium",
    "display" : "Durie-Salmon Stadium",
    "definition" : "Multiple myeloma staging system based on tumor burden and organ function.",
    "concept" : [{
      "code" : "durie-salmon-i",
      "display" : "Durie-Salmon I",
      "definition" : "Low tumor burden: hemoglobin >10 g/dL, calcium normal, no bone lesions"
    },
    {
      "code" : "durie-salmon-ia",
      "display" : "Durie-Salmon IA",
      "definition" : "Low tumor burden with normal renal function"
    },
    {
      "code" : "durie-salmon-ib",
      "display" : "Durie-Salmon IB",
      "definition" : "Low tumor burden with abnormal renal function"
    },
    {
      "code" : "durie-salmon-ii",
      "display" : "Durie-Salmon II",
      "definition" : "Intermediate tumor burden: neither stage I nor III criteria"
    },
    {
      "code" : "durie-salmon-iia",
      "display" : "Durie-Salmon IIA",
      "definition" : "Intermediate tumor burden with normal renal function"
    },
    {
      "code" : "durie-salmon-iib",
      "display" : "Durie-Salmon IIB",
      "definition" : "Intermediate tumor burden with abnormal renal function"
    },
    {
      "code" : "durie-salmon-iii",
      "display" : "Durie-Salmon III",
      "definition" : "High tumor burden: hemoglobin <8.5 g/dL, calcium elevated, extensive bone lesions"
    },
    {
      "code" : "durie-salmon-iiia",
      "display" : "Durie-Salmon IIIA",
      "definition" : "High tumor burden with normal renal function"
    },
    {
      "code" : "durie-salmon-iiib",
      "display" : "Durie-Salmon IIIB",
      "definition" : "High tumor burden with abnormal renal function"
    }]
  },
  {
    "code" : "figo",
    "display" : "FIGO",
    "definition" : "Staging system of the International Federation of Gynecology and Obstetrics (FIGO) for gynecological malignancies.",
    "concept" : [{
      "code" : "figo-i",
      "display" : "FIGO I",
      "definition" : "Tumor confined to the organ of origin"
    },
    {
      "code" : "figo-ia",
      "display" : "FIGO IA",
      "definition" : "Stage I with limited local extent (entity-specific definition)"
    },
    {
      "code" : "figo-ia1",
      "display" : "FIGO IA1",
      "definition" : "Stage IA, subgroup 1 (e.g. cervix: measured stromal invasion <3 mm)"
    },
    {
      "code" : "figo-ia2",
      "display" : "FIGO IA2",
      "definition" : "Stage IA, subgroup 2 (e.g. cervix: measured stromal invasion 3 to <5 mm)"
    },
    {
      "code" : "figo-ia3",
      "display" : "FIGO IA3",
      "definition" : "Stage IA, subgroup 3 (entity-specific definition)"
    },
    {
      "code" : "figo-ib",
      "display" : "FIGO IB",
      "definition" : "Stage I with extended local extent (entity-specific definition)"
    },
    {
      "code" : "figo-ib1",
      "display" : "FIGO IB1",
      "definition" : "Stage IB, subgroup 1 (e.g. cervix: invasive carcinoma <2 cm)"
    },
    {
      "code" : "figo-ib2",
      "display" : "FIGO IB2",
      "definition" : "Stage IB, subgroup 2 (e.g. cervix: invasive carcinoma 2 to <4 cm)"
    },
    {
      "code" : "figo-ib3",
      "display" : "FIGO IB3",
      "definition" : "Stage IB, subgroup 3 (e.g. cervix: invasive carcinoma 4 cm or larger)"
    },
    {
      "code" : "figo-ic",
      "display" : "FIGO IC",
      "definition" : "Stage I with capsule rupture, surface involvement or malignant ascites"
    },
    {
      "code" : "figo-ic1",
      "display" : "FIGO IC1",
      "definition" : "Stage IC due to intraoperative surgical spill"
    },
    {
      "code" : "figo-ic2",
      "display" : "FIGO IC2",
      "definition" : "Stage IC due to preoperative capsule rupture or surface tumor"
    },
    {
      "code" : "figo-ic3",
      "display" : "FIGO IC3",
      "definition" : "Stage IC due to malignant cells in ascites or peritoneal washings"
    },
    {
      "code" : "figo-ii",
      "display" : "FIGO II",
      "definition" : "Tumor extending beyond the organ of origin within the pelvis"
    },
    {
      "code" : "figo-iia",
      "display" : "FIGO IIA",
      "definition" : "Stage II with limited extension (entity-specific definition)"
    },
    {
      "code" : "figo-iia1",
      "display" : "FIGO IIA1",
      "definition" : "Stage IIA, subgroup 1 (e.g. cervix: lesion <4 cm)"
    },
    {
      "code" : "figo-iia2",
      "display" : "FIGO IIA2",
      "definition" : "Stage IIA, subgroup 2 (e.g. cervix: lesion 4 cm or larger)"
    },
    {
      "code" : "figo-iib",
      "display" : "FIGO IIB",
      "definition" : "Stage II with extended extension (entity-specific definition)"
    },
    {
      "code" : "figo-iic",
      "display" : "FIGO IIC",
      "definition" : "Stage II with capsule rupture, surface involvement or malignant ascites (historical FIGO revisions)"
    },
    {
      "code" : "figo-iii",
      "display" : "FIGO III",
      "definition" : "Tumor with extrapelvic peritoneal spread and/or regional lymph node involvement"
    },
    {
      "code" : "figo-iiia",
      "display" : "FIGO IIIA",
      "definition" : "Stage III with microscopic or limited extrapelvic spread (entity-specific definition)"
    },
    {
      "code" : "figo-iiia1",
      "display" : "FIGO IIIA1",
      "definition" : "Stage III with retroperitoneal lymph node metastasis only"
    },
    {
      "code" : "figo-iiia1i",
      "display" : "FIGO IIIA1(i)",
      "definition" : "Stage IIIA1 with lymph node metastasis 10 mm or smaller"
    },
    {
      "code" : "figo-iiia1ii",
      "display" : "FIGO IIIA1(ii)",
      "definition" : "Stage IIIA1 with lymph node metastasis larger than 10 mm"
    },
    {
      "code" : "figo-iiia2",
      "display" : "FIGO IIIA2",
      "definition" : "Stage III with microscopic extrapelvic peritoneal involvement"
    },
    {
      "code" : "figo-iiib",
      "display" : "FIGO IIIB",
      "definition" : "Stage III with macroscopic extrapelvic peritoneal metastasis 2 cm or smaller"
    },
    {
      "code" : "figo-iiic",
      "display" : "FIGO IIIC",
      "definition" : "Stage III with macroscopic extrapelvic peritoneal metastasis larger than 2 cm and/or regional lymph node metastasis"
    },
    {
      "code" : "figo-iiic1",
      "display" : "FIGO IIIC1",
      "definition" : "Stage III with pelvic lymph node metastasis"
    },
    {
      "code" : "figo-iiic1r",
      "display" : "FIGO IIIC1r",
      "definition" : "Stage IIIC1 established by imaging"
    },
    {
      "code" : "figo-iiic1p",
      "display" : "FIGO IIIC1p",
      "definition" : "Stage IIIC1 established by pathology"
    },
    {
      "code" : "figo-iiic2",
      "display" : "FIGO IIIC2",
      "definition" : "Stage III with para-aortic lymph node metastasis"
    },
    {
      "code" : "figo-iiic2r",
      "display" : "FIGO IIIC2r",
      "definition" : "Stage IIIC2 established by imaging"
    },
    {
      "code" : "figo-iiic2p",
      "display" : "FIGO IIIC2p",
      "definition" : "Stage IIIC2 established by pathology"
    },
    {
      "code" : "figo-iv",
      "display" : "FIGO IV",
      "definition" : "Distant metastasis beyond the peritoneal cavity"
    },
    {
      "code" : "figo-iva",
      "display" : "FIGO IVA",
      "definition" : "Stage IV with spread to adjacent pelvic organs or pleural effusion with positive cytology (entity-specific definition)"
    },
    {
      "code" : "figo-ivb",
      "display" : "FIGO IVB",
      "definition" : "Stage IV with distant metastasis including extra-abdominal organs and lymph nodes"
    },
    {
      "code" : "figo-ivc",
      "display" : "FIGO IVC",
      "definition" : "Stage IV with distant metastasis (entity-specific definition)"
    }]
  },
  {
    "code" : "bismuth",
    "display" : "Bismuth",
    "definition" : "Classification system for hilar cholangiocarcinoma based on the extent of biliary involvement and resectability.",
    "concept" : [{
      "code" : "bismuth-i",
      "display" : "Bismuth I",
      "definition" : "Tumor below confluence of left and right hepatic ducts"
    },
    {
      "code" : "bismuth-ii",
      "display" : "Bismuth II",
      "definition" : "Tumor reaching confluence but not involving secondary ducts"
    },
    {
      "code" : "bismuth-iii",
      "display" : "Bismuth III",
      "definition" : "Tumor involving confluence and either right or left secondary ducts"
    },
    {
      "code" : "bismuth-iiia",
      "display" : "Bismuth IIIA",
      "definition" : "Tumor involving confluence and right secondary ducts"
    },
    {
      "code" : "bismuth-iiib",
      "display" : "Bismuth IIIB",
      "definition" : "Tumor involving confluence and left secondary ducts"
    },
    {
      "code" : "bismuth-iv",
      "display" : "Bismuth IV",
      "definition" : "Tumor involving confluence and both right and left secondary ducts"
    }]
  },
  {
    "code" : "masaoka",
    "display" : "Masaoka",
    "definition" : "Staging system for thymomas based on invasiveness and extent of disease.",
    "concept" : [{
      "code" : "masaoka-i",
      "display" : "Masaoka I",
      "definition" : "Encapsulated tumor without invasion"
    },
    {
      "code" : "masaoka-ii",
      "display" : "Masaoka II",
      "definition" : "Invasion into surrounding fatty tissue or mediastinal pleura"
    },
    {
      "code" : "masaoka-iii",
      "display" : "Masaoka III",
      "definition" : "Invasion into neighboring organs"
    },
    {
      "code" : "masaoka-iv",
      "display" : "Masaoka IV",
      "definition" : "Pleural or pericardial dissemination"
    },
    {
      "code" : "masaoka-iva",
      "display" : "Masaoka IVA",
      "definition" : "Pleural or pericardial implants"
    },
    {
      "code" : "masaoka-ivb",
      "display" : "Masaoka IVB",
      "definition" : "Lymphogenous or hematogenous metastasis"
    }]
  },
  {
    "code" : "mitoserate-gist",
    "display" : "Mitoserate-GIST",
    "definition" : "Mitotic rate assessment for gastrointestinal stromal tumors.",
    "concept" : [{
      "code" : "mitoserate-gist-n",
      "display" : "Mitoserate-GIST Niedrig",
      "definition" : "Low mitotic rate: ≤5 mitoses per 50 HPF"
    },
    {
      "code" : "mitoserate-gist-h",
      "display" : "Mitoserate-GIST Hoch",
      "definition" : "High mitotic rate: >5 mitoses per 50 HPF"
    }]
  },
  {
    "code" : "p16",
    "display" : "p16",
    "definition" : "p16 protein expression status assessment.",
    "concept" : [{
      "code" : "p16-p",
      "display" : "p16 Positiv",
      "definition" : "Positive p16 protein expression"
    },
    {
      "code" : "p16-n",
      "display" : "p16 Negativ",
      "definition" : "Negative p16 protein expression"
    }]
  },
  {
    "code" : "eutos-score",
    "display" : "EUTOS-Score",
    "definition" : "European Treatment and Outcome Study prognostic score for chronic myeloid leukemia.",
    "concept" : [{
      "code" : "eutos-score-n",
      "display" : "EUTOS-Score Niedrigrisiko",
      "definition" : "Low risk EUTOS score: ≤87"
    },
    {
      "code" : "eutos-score-h",
      "display" : "EUTOS-Score Hochrisiko",
      "definition" : "High risk EUTOS score: >87"
    }]
  },
  {
    "code" : "sanz-score",
    "display" : "Sanz-Score",
    "definition" : "Risk assessment score for acute promyelocytic leukemia.",
    "concept" : [{
      "code" : "sanz-score-n",
      "display" : "Sanz-Score Niedrig",
      "definition" : "Low risk: WBC <10x10⁹/L and platelets >40x10⁹/L"
    },
    {
      "code" : "sanz-score-i",
      "display" : "Sanz-Score Intermediär",
      "definition" : "Intermediate risk: WBC <10x10⁹/L and platelets ≤40x10⁹/L"
    },
    {
      "code" : "sanz-score-h",
      "display" : "Sanz-Score Hoch",
      "definition" : "High risk: WBC ≥10x10⁹/L"
    }]
  },
  {
    "code" : "ipi",
    "display" : "IPI",
    "definition" : "International Prognostic Index for aggressive non-Hodgkin lymphoma.",
    "concept" : [{
      "code" : "ipi-n",
      "display" : "IPI Niedrig",
      "definition" : "Low risk: 0-1 risk factors"
    },
    {
      "code" : "ipi-ni",
      "display" : "IPI Niedrig-Intermediär",
      "definition" : "Low-intermediate risk: 2 risk factors"
    },
    {
      "code" : "ipi-hi",
      "display" : "IPI Hoch-Intermediär",
      "definition" : "High-intermediate risk: 3 risk factors"
    },
    {
      "code" : "ipi-h",
      "display" : "IPI Hoch",
      "definition" : "High risk: 4-5 risk factors"
    }]
  },
  {
    "code" : "flipi",
    "display" : "FLIPI",
    "definition" : "Follicular Lymphoma International Prognostic Index.",
    "concept" : [{
      "code" : "flipi-l",
      "display" : "FLIPI Low risk",
      "definition" : "Low risk: 0-1 risk factors"
    },
    {
      "code" : "flipi-i",
      "display" : "FLIPI Intermediate risk",
      "definition" : "Intermediate risk: 2 risk factors"
    },
    {
      "code" : "flipi-h",
      "display" : "FLIPI High risk",
      "definition" : "High risk: ≥3 risk factors"
    }]
  },
  {
    "code" : "mipi",
    "display" : "MIPI",
    "definition" : "Mantle Cell Lymphoma International Prognostic Index.",
    "concept" : [{
      "code" : "mipi-n",
      "display" : "MIPI Niedrig",
      "definition" : "Low risk MIPI score"
    },
    {
      "code" : "mipi-i",
      "display" : "MIPI Intermediär",
      "definition" : "Intermediate risk MIPI score"
    },
    {
      "code" : "mipi-h",
      "display" : "MIPI Hoch",
      "definition" : "High risk MIPI score"
    }]
  },
  {
    "code" : "risikogruppen-ghsg",
    "display" : "Risikogruppen GHSG",
    "definition" : "German Hodgkin Study Group risk stratification.",
    "concept" : [{
      "code" : "risikogruppen-ghsg-fr",
      "display" : "GHSG Frühe",
      "definition" : "Early favorable risk group"
    },
    {
      "code" : "risikogruppen-ghsg-i",
      "display" : "GHSG Intermediär",
      "definition" : "Intermediate risk group"
    },
    {
      "code" : "risikogruppen-ghsg-fo",
      "display" : "GHSG Fortgeschritten",
      "definition" : "Advanced risk group"
    }]
  },
  {
    "code" : "ipss",
    "display" : "IPSS",
    "definition" : "International Prognostic Scoring System for myelodysplastic syndromes.",
    "concept" : [{
      "code" : "ipss-l",
      "display" : "IPSS Low",
      "definition" : "Low risk: score 0"
    },
    {
      "code" : "ipss-i1",
      "display" : "IPSS Intermediate-I",
      "definition" : "Intermediate-1 risk: score 0.5-1.0"
    },
    {
      "code" : "ipss-i2",
      "display" : "IPSS Intermediate-II",
      "definition" : "Intermediate-2 risk: score 1.5-2.0"
    },
    {
      "code" : "ipss-h",
      "display" : "IPSS High risk",
      "definition" : "High risk: score ≥2.5"
    }]
  },
  {
    "code" : "her2-neu",
    "display" : "HER2-neu",
    "definition" : "HER2-neu protein expression and gene amplification status.",
    "concept" : [{
      "code" : "her2-neu-p",
      "display" : "HER2-neu Positiv",
      "definition" : "Positive HER2-neu status (IHC 3+ or FISH amplified)"
    },
    {
      "code" : "her2-neu-n",
      "display" : "HER2-neu Negativ",
      "definition" : "Negative HER2-neu status (IHC 0-1+ or FISH not amplified)"
    }]
  }]
}

```
