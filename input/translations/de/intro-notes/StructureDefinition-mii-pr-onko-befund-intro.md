Dieses Profil beschreibt einen Pathologie-Befund im Rahmen der Onkologie.

Da die Daten aus den lokalen Tumordokumentationssystemen stammen, wird ein Großteil der Befunde in reiner Textform vorliegen.

Die Pathologie-Befundung **KANN** im Rahmen der MII ebenfalls über den Pathologie-Befundbericht erfolgen. In dem Fall können einzelne Beobachtungen als Patho Findings über LOINC oder SNOMED strukturiert codiert werden. Siehe dazu [MII PR Patho Report (Modul Pathologie-Befund)](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Pathologie_Befund/MII-IG-KDS-Modul-Pathologie-Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Report.html).

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.html).
{: .ig-highlight .ig-highlight-grey}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?_id=1234```

    <!-- TODO:REVIEW Die Quellseite nannte hier "GET [base]/Condition?_id=1234"; fuer ein DiagnosticReport-Profil korrigiert. -->

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

**Beispiele**

[mii-exa-onko-befund-1](DiagnosticReport-mii-exa-onko-befund-1.html)
