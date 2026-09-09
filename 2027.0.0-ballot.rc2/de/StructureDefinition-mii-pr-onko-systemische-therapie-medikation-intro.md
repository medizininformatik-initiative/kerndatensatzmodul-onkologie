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
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.html)
