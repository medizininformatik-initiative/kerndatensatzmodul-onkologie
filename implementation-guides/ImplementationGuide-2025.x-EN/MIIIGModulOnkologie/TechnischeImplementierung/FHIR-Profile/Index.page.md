---
parent: 
---

## FHIR Profiles

The work on the core dataset specifications is based, where possible, on international standards and terminologies. In particular, the [International Patient Summary](http://hl7.org/fhir/uv/ips/history.html) should be highlighted. Adaptation to the general conditions of the German healthcare system is achieved through the use of the [German FHIR Base Profiles](https://simplifier.net/basisprofil-de-r4) by HL7 Germany. Additionally, compatibility with the FHIR specifications of the [National Association of Statutory Health Insurance Physicians (KBV)](https://simplifier.net/organization/kassenrztlichebundesvereinigungkbv) and [gematik](https://simplifier.net/organization/gematik) is sought.

All elements of the core dataset, adapted to the details and requirements for the use cases of the Medical Informatics Initiative, are described below in the form of FHIR StructureDefinitions. The need for adaptation of the FHIR profiles is explained in textual form below the respective profiles.

### Requirements Documentation

Requirements in this specification are indicated by the following uppercase keywords based on [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119):

| German                      	| English    	       |
|------------------------------	|--------------------- |
| MUSS / MÜSSEN                	| MUST / SHALL         |
| DARF NICHT / DÜRFEN NICHT    	| MUST NOT / SHALL NOT |
| VERPFLICHTEND                	| REQUIRED    	       |
| SOLLTE / SOLLTEN             	| SHOULD      	       |
| SOLLTE NICHT / SOLLTEN NICHT 	| SHOULD NOT  	       |
| EMPFOHLEN                    	| RECOMMENDED 	       |
| KANN / OPTIONAL               | MAY                  |

### Mandatory / must-support Elements

| Note | Mandatory / must-support Elements |
|---------|---------------------|
|WARNING! | For mandatory or must-support elements, please refer to the corresponding [IPS rules](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support), which also apply to this ImplementationGuide. |

<br><br>
