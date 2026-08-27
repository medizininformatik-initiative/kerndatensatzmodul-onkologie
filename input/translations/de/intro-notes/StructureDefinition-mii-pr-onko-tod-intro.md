Dieses Profil beschreibt ob und wann ein Patient tumorbedingt verstorben ist. Es ist Teil des oBDS-Tumorregister-Datensatzes.

Das Todesdatum kann im MII Kerndatensatz ebenfalls über die Patienten-Ressource abgebildet werden, wurde hier aber aus Gründen der Datenstruktur und -zusammengehörigkeit zusätzlich als Observation hinzugefügt.

Seit der Version MII-Patient(2024) ist auch ein Sterbegrund direkt in der Patientenressource vorhanden. Im Unterschied zu der oBDS-Todesursache, die mittels ICD-10-GM erfasst wird, bezieht sich das MII-Patient-Sterbeursache auf die ICD-10-WHO.

Es beinhaltet:
* eine Referenz auf Patient
* den Observation-Code "184305005 | Cause of death (observable entity)" (SNOMED-CT)
* das genaue Todesdatum
* eine Kodierung der Todesursache nach ICD-10 GM
* eine Interpretation des Zusammenhanges zwischen Tumorerkrankung und Todesursache

Im oBDS wird die Todesmeldung als eigenständige Entität übermittelt. Da es nur eine Todesmeldung für jeden Patient geben sollte, ist in der FHIR-Profilierung daher keine direkte Verknüpfung zur Primärdiagnose oder den einzelnen Verlaufs-Stagings hinterlegt, sondern ausschließlich zum Patienten.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md gate=B -->
Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md gate=B -->
Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.html).

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

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

8. Der Suchparameter "interpretation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?interpretation=http://fhir.de/CodeSystem/icd10gm|C44.3```

    Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

9. Der Suchparameter "derived-from" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

[mii-exa-onko-tod-j](Observation-mii-exa-onko-tod-j.html)

[mii-exa-onko-tod-n](Observation-mii-exa-onko-tod-n.html)

[mii-exa-onko-tod-u](Observation-mii-exa-onko-tod-u.html)
