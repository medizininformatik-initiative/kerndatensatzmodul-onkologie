##

Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemischen Therapie für den oBDS dokumentiert werden.

Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt.

Die Angaben zur systemischen onkologischen Medikation im oBDS werden mit den folgenden Datenpunkten abgebildet. Im Medikationsprofil der Systemischen Therapie sind das im Einzelnen:

* Start und Ende der Medikation
* Name des Behandlungsschemas
* Wirkstoffe (ATC-kodiert)

---

### Konformität

Die vorliegende Profilierung ist kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-medikation-v4/isikmedikationsinformation

Die vorliegende Profilierung ist derzeit *nicht* kompatibel mit dem EPA MedicationStatement, da dort unter MedicationStatement.medication explizit eine Referenz zu einer Medication-Ressource verlangt, während im vorliegenden Onkologie-MedicationStatement eine Kodierung über ATC präferiert wird. https://simplifier.net/epa-medication/epamedicationstatement

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md gate=B -->
Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md gate=B -->
Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html).

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

    ```GET [base]/MedicationStatement?code=http://fhir.de/CodeSystem/bfarm/atc|L01AA01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "token" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

4. Der Suchparameter ```partOf``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?part-of=Procedure/123```

    Anwendungshinweise: `MedicationStatement.partOf` verweist auf die zugehörige Prozedur der systemischen Therapie, daher ist als Referenz `Procedure/[id]` anzugeben. Weitere Informationen zur Suche nach "part-of" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#all).

5. Der Suchparameter ```effective``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?effective=gt2019-01-01```

    ```GET [base]/MedicationStatement?effective=ge2019-01-01&effective=le2019-12-01```

    Anwendungshinweise: Der Suchparameter "effective" wertet den Zeitraum der Medikation (`MedicationStatement.effectivePeriod`) aus. Weitere Informationen zur Suche nach "effective" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](http://hl7.org/fhir/R4/search.html#all).

**Beispiele**

[mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.html)
