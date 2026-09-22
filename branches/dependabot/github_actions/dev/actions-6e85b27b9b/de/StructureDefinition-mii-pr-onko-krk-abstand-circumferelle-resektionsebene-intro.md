### Inhalt
Dieses Profil beschreibt den minimalen Abstand des Tumorrandes zur circumferellen Resektionsebene beim Kolorektalen Karzinom gemäß oBDS KR3. Diese Messung ist ein wichtiger prognostischer Faktor und wird sowohl makroskopisch als auch mikroskopisch bestimmt. Ein geringer circumfereller Resektionsrand ist mit einem erhöhten Lokalrezidivrisiko assoziiert.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet ein dediziertes ValueSet zur Unterscheidung zwischen makroskopischer und mikroskopischer Bewertung. Der Abstand wird als Quantity-Wert in Millimetern angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die circumferelle Resektionsrandmessung ist eine wichtige pathologische Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die Abstandsmessung entspricht dem oBDS-Datenfeld KR3 "Minimaler Abstand des Tumorrandes zur circumferellen Resektionsebene" und wird in Millimetern dokumentiert. Die Unterscheidung zwischen makroskopischer und mikroskopischer Bewertung ist durch das entsprechende ValueSet abgebildet.

### Terminologie-Binding
Das ValueSet für die circumferelle Resektionsebene ist **extensible** gebunden und unterscheidet zwischen makroskopischer und mikroskopischer Bewertung der Resektionsränder.

#### ValueSet: MII VS Onko KRK Abstand Circumferelle Resektionsrand

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Abstand Circumferelle Resektionsrand](ValueSet-mii-vs-onko-krk-abstand-circumferelle-resektionsrand.html).
{: .ig-highlight .ig-highlight-grey}
<!-- TODO:REVIEW Quellseite verwies auf mii-vs-onko-krk-abstand-circumferelle-resektionsebene; verlinkt ist mii-vs-onko-krk-abstand-circumferelle-resektionsrand -->

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Abstand Circumferelle Resektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.html)
