### Inhalt
Dieses Profil beschreibt den minimalen Abstand des aboralen Tumorrandes zum aboralen Resektionsrand beim Kolorektalen Karzinom gemäß oBDS KR2. Diese Messung ist entscheidend für die Beurteilung der R-Klassifikation und des Risikos für Lokalrezidive bei Rektumkarzinomen.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet ein dediziertes ValueSet zur Spezifikation der aboralen Resektionsebene. Der Abstand wird als Quantity-Wert in Millimetern angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die aborale Resektionsrandmessung ist eine wichtige pathologische Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die Abstandsmessung entspricht dem oBDS-Datenfeld KR2 "Minimaler Abstand des aboralen Tumorrandes zum aboralen Resektionsrand" und wird in Millimetern dokumentiert. Diese Messung ist besonders bei Rektumkarzinomen von prognostischer Bedeutung.

### Terminologie-Binding
Das ValueSet für die aborale Resektionslinie ist **extensible** gebunden und spezifiziert die verschiedenen Aspekte der aboralen Resektionsrandbestimmung.

#### ValueSet: MII VS Onko KRK Abstand Resektionslinie Aboral

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Abstand Resektionslinie Aboral](ValueSet-mii-vs-onko-krk-abstand-resektionslinie-aboral.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Abstand Resektionslinie Aboral](ValueSet-mii-vs-onko-krk-abstand-resektionslinie-aboral.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Abstand Aboral](StructureDefinition-mii-pr-onko-krk-abstand-aboral.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.html)
