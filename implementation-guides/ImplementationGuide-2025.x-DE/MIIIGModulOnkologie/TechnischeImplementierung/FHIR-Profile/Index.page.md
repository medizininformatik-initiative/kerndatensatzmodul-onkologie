---
parent: 
---

## FHIR-Profile

Die Arbeiten der Kerndatensatzspezifikationen basieren, falls möglich, auf internationalen Standards und Terminologien. Insbesondere sei hier die [International Patient Summary](http://hl7.org/fhir/uv/ips/history.html) hervorgehoben. Eine Anpassung an die allgemeinen Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der [Deutschen FHIR Basisprofile](https://simplifier.net/basisprofil-de-r4) von HL7 Deutschland. Außerdem wird Kompatibilität zu den FHIR-Spezifikationen der [Kassenärztlichen Bundesvereinigung (KBV)](https://simplifier.net/organization/kassenrztlichebundesvereinigungkbv) und der [gematik](https://simplifier.net/organization/gematik) angestrebt. 

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert.

### Anforderungsdokumentation

Anforderungen in dieser Spezifikation werden durch folgende in Großbuchstaben geschriebenen Schlüsselworte basierend auf [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119) gekennzeichnet:

| Deutsch                      	| Englisch    	       |
|------------------------------	|--------------------- |
| MUSS / MÜSSEN                	| MUST / SHALL         |
| DARF NICHT / DÜRFEN NICHT    	| MUST NOT / SHALL NOT |
| VERPFLICHTEND                	| REQUIRED    	       |
| SOLLTE / SOLLTEN             	| SHOULD      	       |
| SOLLTE NICHT / SOLLTEN NICHT 	| SHOULD NOT  	       |
| EMPFOHLEN                    	| RECOMMENDED 	       |
| KANN / OPTIONAL               | MAY                  |

### Verpflichtende / must-support Elemente

| Hinweis | Verpflichtende / must-support Elemente |
|---------|---------------------|
|WARNUNG! | Für verpflichtende oder als must-support markierten Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten. |

<br><br>
