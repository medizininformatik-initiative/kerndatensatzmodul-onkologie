### Inhalt
Dieses Profil beschreibt die ASA-Klassifikation (American Society of Anesthesiologists Physical Status Classification) in der Onkologie. Die ASA-Klassifikation dient primär der präoperativen Risikobewertung und wird zur Einschätzung des allgemeinen körperlichen Zustands von Patienten vor operativen Eingriffen verwendet. Sie kann aber auch als Komorbidätsindex für systemische Therapieentscheidungen herangezogen werden.

Ursprünglich aus oBDS KR9 (Kolorektales Karzinom Modul), wurde dieses Profil für alle onkologischen Indikationen generalisiert, da die ASA-Klassifikation ein universelles präoperatives Assessment-Tool ist.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur standardisierten Kodierung der ASA-Klassifikation. Die spezifischen ASA-Klassen (ASA I bis VI) werden über ein dediziertes oBDS-ValueSet definiert.

---

### Verknüpfungen zu anderen Ressourcen
Die ASA-Klassifikation ist eine wichtige präoperative Bewertung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die ASA-Klassifikation entspricht dem oBDS-Datenfeld KR9 "ASA-Klassifikation" und umfasst die Bewertungsstufen ASA I bis VI sowie "Unbekannt" (U). Die Klassifikation berücksichtigt auch hirntote Patienten zur Organspende (ASA VI).

### Terminologie-Binding
Das ValueSet für die ASA-Klassifikation ist **required** gebunden. Dies bedeutet, dass ausschließlich die Codes aus dem definierten oBDS-ValueSet verwendet werden MÜSSEN.

#### ValueSet: MII VS Onko ASA oBDS

---

Mapping Datensatz zu FHIR

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

---

**Suchparameter**

Folgende Suchparameter sind für das ASA-Klassifikation Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-asa-klassifikation```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|97816-3```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-concept=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds|2```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**

[Beispiel: mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.html)
