### Inhalt
Dieses Profil beschreibt den minimalen Sicherheitsabstand zum Primärtumor beim Malignen Melanom gemäß oBDS MM1. Diese Messung erfolgt nach definitivem operativem Eingriff und gibt den minimalen Abstand des Melanoms zum nächstgelegenen lateralen chirurgischen Resektionsrand in der Exzisionsprobe an. Ein Wert von 0 entspricht einem lokalen R1- oder R2-Resektionsstatus.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet SNOMED CT zur standardisierten Kodierung der Sicherheitsabstandsmessung. Der Abstand wird als Quantity-Wert in Millimetern (mm) angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die Sicherheitsabstandsmessung ist eine wichtige chirurgische Beobachtung beim Melanom:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die Sicherheitsabstandsmessung entspricht dem oBDS-Datenfeld MM1 "Minimaler Sicherheitsabstand zum Primärtumor" und wird in Millimetern dokumentiert. Diese Messung ist essentiell für die Beurteilung der Vollständigkeit der Tumorresektion und der Prognose beim Melanom.

**Hinweis zur Kodierung von nicht beurteilbaren Fällen:**
Gemäß oBDS kann der Sicherheitsabstand folgende Werte annehmen:
- **-1**: nicht beurteilbar → In FHIR wird `dataAbsentReason` verwendet (z.B. "unknown" oder "not-asked") statt `valueQuantity`
- **0**: kein Sicherheitsabstand (R1/R2-Resektion) → `valueQuantity.value = 0`
- **n**: Sicherheitsabstand in mm → `valueQuantity.value = n`

Das Profil enthält eine Invariante, die sicherstellt, dass entweder `valueQuantity` oder `dataAbsentReason` vorhanden sein muss.

### Terminologie-Binding
Das Profil verwendet SNOMED CT Code 396511007 "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)" zur standardisierten Kodierung der Sicherheitsabstandsmessung. Der Wert wird als UCUM-konforme Quantity in Millimetern (mm) angegeben.

---

Mapping Datensatz zu FHIR

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

---

**Suchparameter**

Folgende Suchparameter sind für das Melanom-Sicherheitsabstand Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://snomed.info/sct|396511007```

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

    ```GET [base]/Observation?value-quantity=5|http://unitsofmeasure.org|mm```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Beispiele**

[Beispiel: mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.html)
