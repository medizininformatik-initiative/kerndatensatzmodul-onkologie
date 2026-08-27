##

---

### Inhalt
Dieses Profil beschreibt die Breslow-Tumordicke beim Malignen Melanom der Haut gemäß oBDS MM2 "Breslow". Die Breslow-Tiefe ist der wichtigste prognostische Faktor beim primären Melanom und beschreibt die vertikale Tumordicke in Millimetern von der Granularschicht der Epidermis bis zur tiefsten Stelle der Tumorinvasion.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet SNOMED CT zur standardisierten Kodierung der Breslow-Messung. Die Tumordicke wird als Quantity-Wert in Millimetern angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die Breslow-Tiefe ist eine zentrale histopathologische Beobachtung beim Melanom:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die Breslow-Tiefe entspricht dem oBDS-Datenfeld "Breslow" MM2 für die Tumordicke beim Malignen Melanom und wird in Millimetern dokumentiert. Diese Messung ist der wichtigste prognostische Faktor und beeinflusst die Stadieneinteilung sowie das therapeutische Vorgehen.

### Terminologie-Binding
Das Profil verwendet SNOMED CT Code 106243009 "Breslow depth staging for melanoma of skin (observable entity)" zur standardisierten Kodierung der Breslow-Messung. Der Wert wird als UCUM-konforme Quantity in Millimetern angegeben.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md gate=B -->
Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md gate=B -->
Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Melanom Breslow Tiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.html).

---

**Suchparameter**

Folgende Suchparameter sind für das Melanom-Breslow-Tiefe Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-breslow-tiefe```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://snomed.info/sct|106243009```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "value-quantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-quantity=2.1|http://unitsofmeasure.org|mm```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Beispiele**

[mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.html)
