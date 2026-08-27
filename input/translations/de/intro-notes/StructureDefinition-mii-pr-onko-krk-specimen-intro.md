
### Inhalt
Dieses Profil beschreibt Gewebeproben (Specimens) beim Kolorektalen Karzinom, die im Rahmen operativer Eingriffe entnommen werden. Es umfasst sowohl die Charakterisierung des Gewebes als auch spezifische pathologische Aspekte wie die TME-Qualität (Totale mesorektale Exzision) bei Rektumkarzinomen.

Das Profil basiert auf einer FHIR Specimen-Ressource und stellt die Verbindung zwischen der chirurgischen Entnahme und der pathologischen Aufarbeitung her.

---

### Verknüpfungen zu anderen Ressourcen
Das KRK-Specimen ist ein wichtiges Bindeglied in der Diagnostikkette:
- verweist über `Specimen.subject` auf den Patienten (Patient-Ressource)
- steht in Bezug zur Entnahme-Procedure über `Specimen.collection.procedure`
- kann mit pathologischen Observations verknüpft werden (z.B. Histologie, Grading)
- dient als Basis für die Bestimmung von Resektionsrändern und TNM-Klassifikation

---

### oBDS-Kontext
Das KRK-Specimen bildet die Grundlage für verschiedene oBDS-Bewertungen:
- Pathologische Beurteilung des Resektats
- TME-Qualität bei Rektumkarzinomen (KR4)
- Histopathologische Charakteristika des Tumors
- Resektionsrandbeurteilung

### Terminologie-Binding
Das Profil verwendet spezialisierte ValueSets für kolorektale Specimens, insbesondere für die Bewertung der TME-Qualität und anderer pathologischer Parameter.

#### ValueSet: MII VS Onko KRK TME Qualität

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.html).

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.html).

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-krk-specimen.html).

---

**Suchparameter**

Folgende Suchparameter sind für das KRK-Specimen Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "type" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?type=http://snomed.info/sct|119376003```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?status=available```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**

[mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.html)
