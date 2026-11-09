### Inhalt
Dieses Profil beschreibt die Gesamtanzahl der entnommenen Biopsie-Stanzen bei der Prostatabiopsie. Diese Information ist wichtig für die Bewertung der Repräsentativität der Biopsie und die Interpretation der Befunde.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur Kodierung. Der Wert wird als Quantity mit der Einheit "Stück" angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die Anzahl der Stanzen ist eine wichtige Biopsie-Parameter:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.partOf` mit der entsprechenden Biopsie-Procedure verknüpft werden

---

### oBDS-Kontext
Gemäß oBDS P4 (Anzahl der Stanzen) wird die Gesamtanzahl der entnommenen Biopsie-Stanzen dokumentiert. Diese Information ist essentiell für die Beurteilung der Adequatheit der Probeentnahme.

### Terminologie-Binding
Der LOINC-Code für die Anzahl der Stanzen ist **required** gebunden.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Stanzen-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Stanzen-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Prostata Anzahl Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-prostata-anzahl-stanzen-1](Observation-mii-exa-onko-prostata-anzahl-stanzen-1.html)
