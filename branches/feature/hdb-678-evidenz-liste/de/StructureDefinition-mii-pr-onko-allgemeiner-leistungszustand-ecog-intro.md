### Kontext
Dieses Profil beschreibt den allgemeinen Leistungszustand eines Patienten in der Onkologie nach ECOG.

Die Erfassung des allgemeine Leistungszustand wird im oBDS vorgeschrieben.
Dabei wird die eigentliche Meldung als ECOG kodiert und übertragen, wobei die Antwortmöglichkeiten ein Mapping vom Karnofsky-Score ermöglichen.

Im bisherigen oBDS und in den vorliegenden FHIR-Profilen ist sowohl eine Dokumentation des ECOG mit den Antwortmöglichkeiten 0-4 als auch des Karnofsky-Scores mit 10%, 20% etc.  gestattet.
Der aktuelle Umsetzungsleitfaden enthält jedoch einen Hinweis, dass in Zukunft ausschließlich der ECOG gemeldet werden soll. https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532323/Allgemeiner+Leistungszustand+Typ

Für den Fall, dass in den Befunden nur Bezug auf den Allgemeinzustand genommen wird, ohne dabei in ECOG oder Karnofsky zu kodieren, empfiehlt der Dokumentationsleitfaden der Plattform §65c die Entwicklung hausinterner Richtlinien zur besseren Reproduzierbarkeit. https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/86310992/Allgemeiner+Leistungszustand

### ECOG-Karnofsky Mapping: oBDS vs. klinische Literatur

**Wichtiger Hinweis**: Es existieren unterschiedliche ECOG-Karnofsky-Konversionstabellen in der Literatur:

**oBDS 12.1 Spezifikation** (in diesem Profil verwendet):
- ECOG 0 = Karnofsky 90-100%
- ECOG 1 = Karnofsky 70-80%
- ECOG 2 = Karnofsky 50-60%
- ECOG 3 = Karnofsky 30-40%
- ECOG 4 = Karnofsky 10-20%

**Klinische Literatur** (Buccheri et al., 1996; Ma et al., 2010):
- ECOG 0 = Karnofsky 100%
- ECOG 1 = Karnofsky 80-90%
- ECOG 2 = Karnofsky 70%
- ECOG 3 = Karnofsky 50-60%
- ECOG 4 = Karnofsky 10-40%

Die oBDS-Mappings sind gegenüber der klinischen Literatur um ca. 10-20% nach unten verschoben. Da diese Profile den oBDS implementieren, verwenden alle Referenzbereiche und ObservationDefinitions die oBDS-Spezifikation.

Implementierer sollten sich dieser Unterschiede bewusst sein, insbesondere bei der Konversion zwischen ECOG und Karnofsky oder beim Austausch mit internationalen Systemen, die möglicherweise andere Konversionstabellen verwenden.

### LOINC-Unterstützung für internationale Interoperabilität

Das Profil unterstützt optionale LOINC-Kodierung zusätzlich zur verpflichtenden oBDS-Kodierung:

- **`code.coding`**: Neben dem verpflichtenden SNOMED CT Code (423740007) kann optional der LOINC Code 89262-0 angegeben werden
- **`valueCodeableConcept.coding`**: Neben der verpflichtenden oBDS-Kodierung können optional LOINC Answer List Codes angegeben werden

Zur Übersetzung zwischen oBDS- und LOINC-Codes steht folgende ConceptMap zur Verfügung:
- [mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc.html)

---

**Beispiele**

<!-- TODO:REVIEW Quellseite verweist auf mii-exa-onko-allgemeiner-leistungszustand-ecog-1; im Repository existiert nur mii-exa-onko-allgemeiner-leistungszustand-ecog -->
[mii-exa-onko-allgemeiner-leistungszustand-ecog](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.html)
