##

---

### Inhalt
Dieses Profil beschreibt die Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom gemäß oBDS "LDH". Die LDH ist ein wichtiger prognostischer Marker beim metastasierten Melanom und wird zur Beurteilung des Krankheitsverlaufs und der Prognose herangezogen. Erhöhte LDH-Werte korrelieren mit schlechterer Prognose.

Das Profil basiert auf einer FHIR Observation-Ressource mit Kategorie "laboratory" und verwendet LOINC zur standardisierten Kodierung der LDH-Bestimmung. Der Wert wird als Quantity in Units per Liter (U/L) angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die LDH-Bestimmung ist eine wichtige laborchemische Beobachtung beim Melanom:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
- dient als prognostischer Marker für die Therapieplanung

---

### oBDS-Kontext
Die LDH-Bestimmung entspricht dem oBDS-Datenfeld "LDH" für die Laktatdehydrogenase beim Malignen Melanom und wird als prognostischer Marker dokumentiert, insbesondere bei metastasierter Erkrankung. Eine Bewertung der LDH als normal oder erhöht erfolgt in Relation zu laborspezifischen Referenzwerten.

### Terminologie-Binding
Das Profil verwendet LOINC-Codes zur standardisierten Kodierung der LDH-Bestimmung. Das ValueSet umfasst drei verschiedene LDH-spezifische LOINC-Codes und ist **required** gebunden:

* 2532-0 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
* 14804-9 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
* 14805-6 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Pyruvate to lactate reaction"

#### ValueSet: MII VS Onko Melanom LDH

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md gate=B -->
Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Melanom LDH](ValueSet-mii-vs-onko-melanom-ldh.html).

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md gate=B -->
Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Melanom LDH](ValueSet-mii-vs-onko-melanom-ldh.html).

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md gate=B -->
Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md gate=B -->
Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Melanom LDH](StructureDefinition-mii-pr-onko-melanom-ldh.html).

---

**Suchparameter**

Folgende Suchparameter sind für das Melanom-LDH Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ldh```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|14805-6```

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

    ```GET [base]/Observation?value-quantity=280|http://unitsofmeasure.org|U/L```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Beispiele**

[mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.html)
