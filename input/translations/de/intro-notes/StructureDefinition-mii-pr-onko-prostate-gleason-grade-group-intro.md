### Inhalt
Dieses Profil beschreibt den Gleason Score und die entsprechende Grade Group bei der histopathologischen Graduierung des Prostatakarzinoms. Der Gleason Score ergibt sich aus der Summe des primären und sekundären Gleason Patterns, während die Grade Group (1-5) eine internationale Standardklassifikation darstellt.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur Kodierung. Die Grade Group wird als Komponente der Observation dokumentiert.

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
Gemäß oBDS P3 wird der Gleason Score als Summe aus primärem und sekundärem Pattern dokumentiert. Die Grade Group stellt eine moderne internationale Klassifikation dar, die in der aktuellen onkologischen Praxis Standard ist.

### Terminologie-Binding
Das ValueSet für Gleason Score-Codes ist **required** gebunden. Die Grade Group-Codes sind ebenfalls **required** gebunden, da sie international standardisiert sind.

#### ValueSet: MII VS Onko Prostata Gleason Score

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Prostata Gleason Score](ValueSet-mii-vs-onko-prostata-gleason-score.html).

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Prostata Gleason Score](ValueSet-mii-vs-onko-prostata-gleason-score.html).

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.html).

---

**Suchparameter**

Folgende Suchparameter sind für das Prostata-Gleason-Score-Grade-Group Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-grade-group```

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|44642-7```

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/test```

1. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/primaertumor```

1. Der Suchparameter "value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-concept=http://snomed.info/sct|369771007```

1. Der Suchparameter "component-code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-code=http://loinc.org|79892-6```

    Anwendungshinweise: Zur Suche nach der Grade Group Komponente.

---
**Beispiele**

[mii-exa-onko-prostata-gleason-pattern-grade-group-1](Observation-mii-exa-onko-prostata-gleason-pattern-grade-group-1.html)
