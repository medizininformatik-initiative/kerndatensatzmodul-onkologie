Dieses Profil beschreibt einen Pathologie-Befund im Rahmen in der Onkologie.

Da die Daten aus den lokalen Tumordokumentationssystemen stammen, wird ein Großteil der Befunde in reiner Textform vorliegen. 

Die Pathologie-Befundung **KANN** im Rahmen der MII ebenfalls über den Pathologie-Befundbericht erfolgen. In dem Fall können einzelne Beobachtung als Patho Findings über LOINC oder SNOMED strukturiert codiert werden. 
https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Pathologie_Befund/MII-IG-KDS-Modul-Pathologie-Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Report.html

---

Mapping Datensatz zu FHIR

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/Condition?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

**Beispiele**

[Beispiel: mii-exa-onko-befund-1](DiagnosticReport-mii-exa-onko-befund-1.html)
