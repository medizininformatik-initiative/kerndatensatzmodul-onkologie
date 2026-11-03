### Inhalt
Dieses Profil beschreibt Gewebeproben (Specimens) beim Kolorektalen Karzinom, die im Rahmen operativer Eingriffe entnommen werden. Es umfasst sowohl die Charakterisierung des Gewebes als auch spezifische pathologische Aspekte wie die TME-Qualität (Totale mesorektale Exzision) bei Rektumkarzinomen.

Das Profil basiert auf einer FHIR Specimen-Ressource und stellt die Verbindung zwischen der chirurgischen Entnahme und der pathologischen Aufarbeitung her.

---

### Verknüpfungen zu anderen Ressourcen
Das KRK-Specimen ist ein wichtiges Bindeglied in der Diagnostikkette:
- verweist über `Specimen.subject` auf den Patienten (Patient-Ressource)
- steht in Bezug zur Entnahme-Procedure über `Specimen.collection.procedure`
- kann mit pathologischen Observations verknüpft werden (z.B. Histologie, Grading)
- dient als Basis für die Bestimmung von Resektionsrändern und TNM-Klassifikation

---

### oBDS-Kontext
Das KRK-Specimen bildet die Grundlage für verschiedene oBDS-Bewertungen:
- Pathologische Beurteilung des Resektats
- TME-Qualität bei Rektumkarzinomen (KR4)
- Histopathologische Charakteristika des Tumors
- Resektionsrandbeurteilung

### Terminologie-Binding
Das Profil verwendet spezialisierte ValueSets für kolorektale Specimens, insbesondere für die Bewertung der TME-Qualität und anderer pathologischer Parameter.

#### ValueSet: MII VS Onko KRK TME Qualität

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-krk-specimen.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.html)
