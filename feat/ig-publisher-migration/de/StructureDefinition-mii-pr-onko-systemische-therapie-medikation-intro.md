Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemischen Therapie für den oBDS dokumentiert werden.

Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt.

Die Angaben zur systemischen onkologischen Medikation im oBDS wird amit folgenden Datenpunkten 
Im Medikationsprofil der Systemischen Therapie ist das spezifisch:

* Start und Ende der Medikation
* Name des Behandlungsschemas
* Wirkstoffe (ATC-kodiert) 

---

### Konformität

Die vorliegende Profilierung ist kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-medikation-v4/isikmedikationsinformation

Die vorliegende Profilierung ist derzeit *nicht* kompatibel mit dem EPA MedicationStatement, da dort unter MedicationStatement.medication explizit eine Referenz zu einer Medication-Ressource verlangt, während im vorliegenden Onkologie-MedicationStatement eine Kodierung über ATC präferiert wird. https://simplifier.net/epa-medication/epamedicationstatement

---

Mapping Datensatz zu FHIR

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/MedicationStatement?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter ```medicationCodeableConcept``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/MedicationStatement?code=http://snomed.info/ct|400847007```

    Anwendungshinweise: Weitere Informationen zur Suche nach "event" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

4. Der Suchparameter ```partOf``` MUSS unterstützt werden:
    
    Beispiele:

    ```GET [base]/MedicationStatement?part-of=Medication/123```

    Anwendungshinweise: Weitere Informationen zur Suche nach "severity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#all).

5. Der Suchparameter ```effective``` MUSS unterstützt werden:
    
    Beispiele:

    ```GET [base]/MedicationStatement?effective=gt2019-01-01```
    
    ```GET [base]/MedicationStatement?MedicationStatement?effective=ge2019-01-01&effective=le2019-12-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "severity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#all).

**Beispiele**

[Beispiel: mii-exa-onko-systemische-therapie-1](Procedure-mii-exa-onko-systemische-therapie-1.html)
