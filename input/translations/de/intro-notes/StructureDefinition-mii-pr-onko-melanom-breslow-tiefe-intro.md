### Inhalt
Dieses Profil beschreibt die Breslow-Tumordicke beim Malignen Melanom der Haut gemäß oBDS MM2 "Breslow". Die Breslow-Tiefe ist der wichtigste prognostische Faktor beim primären Melanom und beschreibt die vertikale Tumordicke in Millimetern von der Granularschicht der Epidermis bis zur tiefsten Stelle der Tumorinvasion.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet SNOMED CT zur standardisierten Kodierung der Breslow-Messung. Die Tumordicke wird als Quantity-Wert in Millimetern angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die Breslow-Tiefe ist eine zentrale histopathologische Beobachtung beim Melanom:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die Breslow-Tiefe entspricht dem oBDS-Datenfeld "Breslow" MM2 für die Tumordicke beim Malignen Melanom und wird in Millimetern dokumentiert. Diese Messung ist der wichtigste prognostische Faktor und beeinflusst die Stadieneinteilung sowie das therapeutische Vorgehen.

### Terminologie-Binding
Das Profil verwendet SNOMED CT Code 106243009 "Breslow depth staging for melanoma of skin (observable entity)" zur standardisierten Kodierung der Breslow-Messung. Der Wert wird als UCUM-konforme Quantity in Millimetern angegeben.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Melanom Breslow Tiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.html)
