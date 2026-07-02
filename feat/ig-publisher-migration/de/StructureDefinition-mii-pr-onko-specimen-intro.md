Dieses Profil beschreibt einer Bioprobe im Rahmen in der Onkologie.

Die beiden relevanten Datenpunkte einer einzelnen Bioprobe für den oBDS sind hierbei: 
* Tumor Histologiedatum -> `collection.collectedDateTime`
* Histologie-Einsendenummer -> `accsessionIdentifier.value`

Im Rahmen des Kerndatensatzes der Medizininformatik-Initiative **KANN** eine Bioprobe ebenfalls konform zum Bioproben-Profil aus dem Biobank-Modul erstellt werden. https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Biobank/SpecimenBioprobe.html

Hierbei müssen zusätzlich zu den beiden oberen Datenpunkte folgende Elemente folgende Datenpunkte angegeben werden:  
- `status` (Verfügbarkeit der Probe)
- `type` Art der Probe (SNOMED-CT-kodiert)

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
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

**Beispiele**

[Beispiel: mii-exa-onko-specimen-1](Specimen-mii-exa-onko-specimen-1.html)
