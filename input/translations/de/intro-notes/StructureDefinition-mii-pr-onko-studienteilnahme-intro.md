##

Dieses Profil beschreibt ob und wann ein Patient an einer Studie teilgenommen hat.

Es beinhaltet:
* eine Referenz auf Patient
* eine Referenz auf die Primärdiagnose
* den Observation-Code "709491003 | Enrollment in clinical trial (procedure)" (SNOMED-CT)
* das genaue Ersteinschlusssdatum zu einer Studie mit Ethikvotum
* den Status zur Studienteilnahme (Ja, Nein, Unbekannt)

Im Falle einer pharmakologischen Studie SOLLTE am besten eine Referenz zu einer Procedure / Systemischen Therapie bestehen, entweder über Observation.partOf = Reference (SystemischeTherapie), Observation.basedOn = Reference (MedicationRequest); oder Procedure.basedOn.

### Referenzierung von Studien

Informationen über die genaue Studie (Organisation, StudienID, Studienphase, etc.) KÖNNEN über das Element `Observation.focus[studie]` mit einer Referenz auf eine ResearchStudy-Ressource aus dem [MII Modul Studie](https://simplifier.net/medizininformatikinitiative-modul-studie) bereitgestellt werden.

Die ResearchStudy-Ressource ermöglicht die strukturierte Erfassung von:
* Studienidentifikatoren (DRKS, ClinicalTrials.gov, EudraCT, Innovationsfonds-Projektnummer)
* Studientyp und -phase
* Primäre Studienziele
* Studienkontext und Indikation
* Studienstatus

Ein vollständiges Beispiel findet sich in der PRO-B Studienteilnahme, die eine ResearchStudy mit DRKS-Registrierung (DRKS00024015) und Innovationsfonds-Projektnummer (01NVF19013) referenziert.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/Studienteilnahme-Observation.page.md gate=B -->
Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/Studienteilnahme-Observation.page.md gate=B -->
Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.html).

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|709491003```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

5. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

6. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

7. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

8. Der Suchparameter "derived-from" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

Beispiel 1: Einfache Studienteilnahme

[mii-exa-onko-studienteilnahme](Observation-mii-exa-onko-studienteilnahme.html)

---

Beispiel 2: Studienteilnahme mit ResearchStudy-Referenz (PRO-B Studie)

Dieses Beispiel zeigt die Dokumentation einer Studienteilnahme mit Referenz auf eine ResearchStudy-Ressource, die detaillierte Studieninformationen inkl. DRKS-Registrierung und Innovationsfonds-Projektnummer enthält.

[mii-exa-onko-studienteilnahme-prob](Observation-mii-exa-onko-studienteilnahme-prob.html)

ResearchStudy-Ressource:

[mii-exa-onko-studie-prob](ResearchStudy-mii-exa-onko-studie-prob.html)
