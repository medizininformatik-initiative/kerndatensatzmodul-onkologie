### Kontext

Die Informationen zu genetischen Varianten werden seit der Version 2021 als Teil des oBDS erfasst. Die Erfassung einer Variante erfolgt dabei über zwei Datenfelder:
* 'Genetische Variante Name' als Freitext
* 'Genetische Variante Ausprägung' als oBDS-spezifische Codes für die Interpretation.

Die MII bietet mit dem Molekulargenetischen Befundbericht (MolGenBB) bereits eine Struktur für den Austausch genetischer Befunde. Der MolGenBB basiert auf dem GenomicReport (Version STU2) der internationalen HL7 Clinical Genomics Working Group und verwendet internationale Terminologien und Nomenklaturen wie:
* **HGNC** für die eindeutige Beschreibung von Gennamen
* **HGVS** für die Beschreibung von Varianten im kodierenden und nicht-kodierenden DNA-Bereich sowie für Proteine
* **ISCN** für Beschreibung cytogenomischer Position und strukturellen Varianten
* **Sequence Ontology** für die semantische Annotation der Varianten

Es ist davon auszugehen, dass die genetischen Labore und bioinformatischen Pipelines auf Basis dieser Klassifikationen arbeiten oder diese abbilden können.

Die grobkörnige Erfassung der Variantendaten im oBDS macht jedoch ein direktes Mapping auf die oben genannten Terminologien und Nomenklaturen unmöglich.

### Conformance Statements
Nach Möglichkeit **SOLLTE** eine genauere Variantenbeschreibung über die MII Variante erfolgen.

Eine Einbindung dieser Varianten **SOLLTE** über die Einbettung in den MII Molekulargenetischen Befundbericht `DiagnosticReport`und die MII Molekulargenetische Anforderung `ServiceRequest` erfolgen.

Für den Fall, dass diese Module an den DIZ-Standorten gar nicht, noch nicht oder nur teilweise implementierbar sind, **SOLL** ein direktes Mapping der oBDS-Felder auf folgende Felder erfolgen:
* `Observation.note` für Variante Name
* `Observation.interpretation` für die Ausprägung der Variante.

### Übersicht MII Variante
Das Variantenprofil des Molekularen Befundberichts ist hier zu finden:
https://simplifier.net/medizininformatikinitiative-modulomics/sdmiimolgenvariante

Bei der Verwendung der MII Variante sind folgende Datenfelder zur Konformanz zwingend erforderlich:
* `subject`: Referenz auf einen Patient
* `code` : fester LOINC-Code( 69548-6) zur Identifikation als Untersuchung einer genetischen Variante
* `status` :  HL7 Status
* `category`: fester HL7-Code zur Einordnung als Laborwert

Optional können darüber hinaus folgende Angaben gemacht werden:
* `specimen`:  Referenz auf die Bioprobe
* `method`: Methodik der Untersuchung
* `valueCodeableConcept` Varianten-Assessment (präsent, nicht präsent, nicht gecalled, unbestimmt)
* `component`: alle weiteren Details über die methodische Durchführung und Auswertung sowie Varianteninformationen

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Genetische-Variante-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Genetische-Variante-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.html)
