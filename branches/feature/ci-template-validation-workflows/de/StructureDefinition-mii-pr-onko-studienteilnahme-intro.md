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
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/Studienteilnahme-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

Beispiel 1: Einfache Studienteilnahme

[mii-exa-onko-studienteilnahme](Observation-mii-exa-onko-studienteilnahme.html)

---

Beispiel 2: Studienteilnahme mit ResearchStudy-Referenz (PRO-B Studie)

Dieses Beispiel zeigt die Dokumentation einer Studienteilnahme mit Referenz auf eine ResearchStudy-Ressource, die detaillierte Studieninformationen inkl. DRKS-Registrierung und Innovationsfonds-Projektnummer enthält.

[mii-exa-onko-studienteilnahme-prob](Observation-mii-exa-onko-studienteilnahme-prob.html)

ResearchStudy-Ressource:

[mii-exa-onko-studie-prob](ResearchStudy-mii-exa-onko-studie-prob.html)
