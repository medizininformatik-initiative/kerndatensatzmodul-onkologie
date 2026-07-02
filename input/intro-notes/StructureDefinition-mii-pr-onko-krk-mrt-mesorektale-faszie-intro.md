### Inhalt
Dieses Profil beschreibt den Abstand zur mesorektalen Faszie bei bildgebenden Verfahren (MRT/CT) beim Kolorektalen Karzinom gemäß oBDS KR2. Diese präoperative Bildgebungsbeurteilung ist essentiell für die Therapieplanung bei Rektumkarzinomen und die Einschätzung der lokalen Tumorausbreitung.

Das Profil basiert auf einer FHIR Observation-Ressource und beinhaltet sowohl die Quantitätsmessung als auch die Begründung für fehlende Abstandsmessungen. Der Abstand wird als Quantity-Wert in Millimetern angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die MRT-Bewertung der mesorektalen Faszie ist eine wichtige bildgebende Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die MRT-Bewertung entspricht dem oBDS-Datenfeld KR2 "MRT/CT: Abstand zur mesorektalen Faszie" und umfasst sowohl die Abstandsmessung in Millimetern als auch Codes für Situationen, in denen eine Messung nicht verfügbar ist (AbstandNichtVerfuegbarGrund).

### Terminologie-Binding
Das ValueSet für den MRT-Status der mesorektalen Faszie ist **extensible** gebunden und beinhaltet die verschiedenen Status-Codes für die bildgebende Bewertung sowie Gründe für fehlende Messungen.

#### ValueSet: MII VS Onko KRK MRT Mesorektale Faszie Status

---

Mapping Datensatz zu FHIR

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

---

**Suchparameter**

Folgende Suchparameter sind für das KRK-MRT-Mesorektale-Faszie Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-mesorektale-fascie```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-mrt-mesorektale-faszie-status|befunden```

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

    ```GET [base]/Observation?value-quantity=1.5|http://unitsofmeasure.org|mm```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Beispiele**

[Beispiel: mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.html)
