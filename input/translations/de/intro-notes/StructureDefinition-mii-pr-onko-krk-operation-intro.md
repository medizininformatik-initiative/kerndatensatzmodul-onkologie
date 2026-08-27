##

---

### Inhalt
Dieses Profil beschreibt operative Eingriffe beim Kolorektalen Karzinom gemäß verschiedenen oBDS-Kriterien. Es umfasst sowohl die Art des operativen Eingriffs als auch spezifische kolorektale Operationstypen und deren Qualitätsmerkmale wie die TME-Qualität (Totale mesorektale Exzision).

Das Profil basiert auf einer FHIR Procedure-Ressource und verwendet mehrere spezialisierte ValueSets zur Kodierung der verschiedenen operativen Aspekte beim kolorektalen Karzinom.

---

### Verknüpfungen zu anderen Ressourcen
Die KRK-Operation ist ein zentraler therapeutischer Eingriff:
- verweist über `Procedure.subject` auf den Patienten (Patient-Ressource)
- kann über `Procedure.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
- steht in Bezug zur Primärdiagnose über `Procedure.reasonReference`
- kann mit Specimen-Ressourcen für die pathologische Aufarbeitung verknüpft werden

---

### oBDS-Kontext
Die KRK-Operation umfasst mehrere oBDS-Datenfelder:
- Operationstyp nach verschiedenen Klassifikationssystemen
- TME-Qualität bei Rektumkarzinomen (KR4)
- Weitere operationsspezifische Parameter je nach Eingriff

### Terminologie-Binding
Das Profil verwendet mehrere ValueSets für die verschiedenen Aspekte der KRK-Operation:

#### ValueSet: MII VS Onko KRK TME Qualität

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md gate=B -->
Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.html).

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md gate=B -->
Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md gate=B -->
Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-krk-operation.html).

---

**Suchparameter**

Folgende Suchparameter sind für das KRK-Operation Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?code=http://snomed.info/sct|387713003```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**

[mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.html)
