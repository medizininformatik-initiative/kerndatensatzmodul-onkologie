### Inhalt
Dieses Profil beschreibt die einzelnen Gleason Patterns (primär, sekundär, tertiär) bei der histopathologischen Graduierung des Prostatakarzinoms. Die Gleason-Patterns bilden die Grundlage für die Gleason-Score-Berechnung und sind entscheidend für die Prognoseeinschätzung.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur Kodierung der verschiedenen Pattern-Typen. Jedes Pattern wird mit einem Wert von 1-5 bewertet, wobei Pattern ≥3 als maligne gelten.

---

### Verknüpfungen zu anderen Ressourcen
Die Gleason Patterns sind wichtige histopathologische Beobachtungen:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
- kann über `Observation.partOf` mit der entsprechenden Biopsie-Procedure verknüpft werden

---

### oBDS-Kontext
Als Komponente von oBDS P1 (Gleason-Score) werden Gleason Patterns als primäres, sekundäres oder tertiäres Pattern dokumentiert. Die Pattern-Werte von 1-5 entsprechen der internationalen Gleason-Graduierung, wobei Pattern ab Grad 3 als maligne klassifiziert werden.

### Terminologie-Binding
`Observation.code` ist gesliced (GitHub-Issue #259): Ein **SNOMED-CT-Coding ist verpflichtend** (1..1, required gebunden an das ValueSet der Primär-/Sekundär-/Tertiär-Pattern-Observables), ein **LOINC-Coding ist optional** (0..1, Codes 44641-9/44642-7/44643-5) als Zweitkodierung für die Interoperabilität mit LOINC-basierten Systemen (z.B. KDS-Modul Pathologie-Befund).

#### ValueSet: MII VS Onko Prostata Gleason Patterns

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Prostata Gleason Patterns](ValueSet-mii-vs-onko-prostata-gleason-patterns.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Prostata Gleason Patterns](ValueSet-mii-vs-onko-prostata-gleason-patterns.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Prostata Gleason Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-prostata-gleason-pattern-primary-1](Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.html)

[mii-exa-onko-prostata-gleason-pattern-secondary-1](Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.html)
