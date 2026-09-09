### Inhalt
Dieses Profil beschreibt den Gleason Score und die entsprechende Grade Group bei der histopathologischen Graduierung des Prostatakarzinoms. Der Gleason Score ergibt sich aus der Summe des primären und sekundären Gleason Patterns, während die Grade Group (1-5) eine internationale Standardklassifikation darstellt.

Das Profil basiert auf einer FHIR Observation-Ressource. `Observation.code` ist SNOMED-CT-kodiert (verpflichtender Slice, ISUP-Observable 1812491000004107) mit optionaler LOINC-Zweitkodierung (94734-1, GitHub-Issue #259). Score und Grade Group werden als `valueCodeableConcept` dokumentiert.

---

### Verknüpfungen zu anderen Ressourcen
Der Gleason Score ist eine zentrale histopathologische Bewertung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
- kann über `Observation.partOf` mit der entsprechenden Biopsie-Procedure verknüpft werden
- kann über `Observation.hasMember` die einzelnen Gleason Pattern-Observations referenzieren

---

### oBDS-Kontext
Gemäß oBDS P1 (Gleason-Score) wird der Gleason Score als Summe aus primärem und sekundärem Pattern dokumentiert. Die Grade Group stellt eine moderne internationale Klassifikation dar, die in der aktuellen onkologischen Praxis Standard ist.

### Terminologie-Binding
`Observation.code` ist gesliced (GitHub-Issue #259): SNOMED CT verpflichtend (1..1), LOINC optional (0..1) als Zweitkodierung. Das ValueSet für die Score-/Grade-Group-Werte in `valueCodeableConcept` ist **extensible** gebunden.

#### ValueSet: MII VS Onko Prostata Gleason Score

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Prostata Gleason Score](ValueSet-mii-vs-onko-prostata-gleason-score.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Prostata Gleason Score](ValueSet-mii-vs-onko-prostata-gleason-score.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-prostata-gleason-pattern-grade-group-1](Observation-mii-exa-onko-prostata-gleason-pattern-grade-group-1.html)
