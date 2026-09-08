### Inhalt
Dieses Profil beschreibt das Auftreten einer Anastomoseninsuffizienz beim Kolorektalen Karzinom gemäß oBDS KR8. Die Anastomoseninsuffizienz ist eine wichtige postoperative Komplikation nach kolorektalen Resektionen und hat Einfluss auf die Prognose und weitere Therapieplanung.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet ein dediziertes ValueSet zur Kodierung des Auftretens und Schweregrads der Anastomoseninsuffizienz.

---

### Verknüpfungen zu anderen Ressourcen
Die Anastomoseninsuffizienz-Beurteilung ist eine wichtige postoperative Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
- steht in Bezug zur durchgeführten Operation (Procedure-Ressource)

---

### oBDS-Kontext
Die Anastomoseninsuffizienz entspricht dem oBDS-Datenfeld KR8 "Anastomoseninsuffizienz" und dokumentiert das Auftreten dieser postoperativen Komplikation nach kolorektalen Eingriffen mit Anastomosenanlegung.

### Terminologie-Binding
Das ValueSet für die Anastomoseninsuffizienz ist **required** gebunden und beinhaltet die Codes für das Auftreten sowie die Graduierung der Insuffizienz.

#### ValueSet: MII VS Onko KRK Anastomoseninsuffizienz

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Anastomoseninsuffizienz](ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Anastomoseninsuffizienz](ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie KRK Anastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.html)
