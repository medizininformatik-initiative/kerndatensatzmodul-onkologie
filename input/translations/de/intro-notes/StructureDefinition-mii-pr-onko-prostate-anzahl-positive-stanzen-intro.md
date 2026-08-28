### Inhalt
Dieses Profil beschreibt die Anzahl der tumorpositiven Stanzen bei der Prostatabiopsie. Diese Information ist entscheidend für die Risikoeinschätzung und Therapieplanung, da sie das Ausmaß der Tumorausbreitung in der Prostata widerspiegelt.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur Kodierung. Der Wert wird als Quantity mit der Einheit "Stück" angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die Anzahl positiver Stanzen ist ein wichtiger Biopsie-Parameter:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.partOf` mit der entsprechenden Biopsie-Procedure verknüpft werden
- steht in Relation zur Gesamtanzahl der Stanzen (separate Observation)

---

### oBDS-Kontext
Gemäß oBDS P5 (Anzahl der positiven Stanzen) wird die Anzahl der tumorpositiven Stanzen dokumentiert. Diese Information ist zusammen mit der Gesamtanzahl der Stanzen essentiell für die Beurteilung der Tumorlast.

### Terminologie-Binding
Der LOINC-Code für die Anzahl positiver Stanzen ist **required** gebunden.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Positive-Stanzen-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Positive-Stanzen-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Prostata Anzahl positiver Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-prostata-anzahl-positiver-stanzen-1](Observation-mii-exa-onko-prostata-anzahl-positiver-stanzen-1.html)
