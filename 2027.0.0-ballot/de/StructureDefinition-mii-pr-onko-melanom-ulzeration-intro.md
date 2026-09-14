### Inhalt
Dieses Profil beschreibt die Ulzeration beim Malignen Melanom der Haut gemäß oBDS MM4. Die Ulzeration ist ein wichtiges histopathologisches Kriterium beim Melanom und beschreibt das Vorliegen einer Ulzeration der Epidermis über dem Melanom. Das Vorhandensein einer Ulzeration ist ein unabhängiger prognostischer Faktor und wird bei der TNM-Klassifikation (insbesondere pT1b) benötigt.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur standardisierten Kodierung der Ulzeration. Die Bewertung erfolgt durch ein dediziertes ValueSet mit den oBDS-konformen Optionen J (Ja), N (Nein) und U (Unbekannt).

---

### Verknüpfungen zu anderen Ressourcen
Die Ulzerations-Bewertung ist eine wichtige histopathologische Beobachtung beim Melanom:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die Ulzeration entspricht dem oBDS-Datenfeld MM4 "Ulzeration" und dokumentiert das Vorliegen einer Ulzeration der Epidermis über dem Melanom. Diese Information ist therapierelevant und ein wichtiges Merkmal für das biologische Verhalten sowie die Prognose des Tumors.

### Terminologie-Binding
Das ValueSet für die Melanom-Ulzeration ist **required** gebunden und umfasst die oBDS-konformen Bewertungsoptionen J (Ja), N (Nein) und U (Unbekannt). Dies entspricht der strengen Terminologie-Anforderung für oBDS-Datenfelder.

#### ValueSet: MII VS Onko Melanom Ulzeration

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Melanom Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Melanom Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Melanom Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.html)
