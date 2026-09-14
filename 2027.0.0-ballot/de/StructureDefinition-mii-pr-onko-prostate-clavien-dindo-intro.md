### Inhalt
Dieses Profil beschreibt den Clavien-Dindo-Score für die Prostatektomie in der Onkologie. Die Clavien-Dindo-Klassifikation ist ein standardisiertes System zur Bewertung postoperativer Komplikationen basierend auf deren Schweregrad und der erforderlichen Therapie.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet SNOMED CT zur Kodierung des Assessment-Verfahrens. Es unterstützt sowohl die SNOMED CT Clavien-Dindo Grade als auch die oBDS-spezifischen Kodierungen für postoperative Komplikationen.

---

### Verknüpfungen zu anderen Ressourcen
Der Clavien-Dindo-Score ist eine wichtige postoperative Beobachtung:
- verweist über `Observation.focus[Diagnose]` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.focus[Operation]` auf die durchgeführte Operation (MII_PR_Onko_Operation)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
- kann über `Observation.specimen` mit entsprechenden Gewebeproben verknüpft werden

---

### oBDS-Kontext
Gemäß oBDS werden postoperative Komplikationen nach Prostatektomie systematisch erfasst. Die Clavien-Dindo-Klassifikation ergänzt die oBDS-Kodierung durch eine international standardisierte Bewertung der Komplikationsschwere.

### Terminologie-Binding
Das Profil verwendet **required** Bindings für beide Kodierungssysteme:

#### Assessment-Methode
- **SNOMED CT**: 789278003 "Clavien-Dindo classification (assessment scale)"

#### Beobachtungscode
- **SNOMED CT**: 789279006 "Clavien-Dindo classification grade (observable entity)"

#### Clavien-Dindo ValueSet
Das ValueSet umfasst die SNOMED CT Codes für alle Clavien-Dindo Grade:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Prostata Clavien Dindo](ValueSet-mii-vs-onko-prostata-clavien-dindo.html).
{: .ig-highlight .ig-highlight-grey}

#### oBDS Postoperative Komplikationen ValueSet
Zusätzlich werden oBDS-spezifische Codes für postoperative Komplikationen unterstützt:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Prostata Postsurgical Complications](ValueSet-mii-vs-onko-prostata-postsurgical-complications.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-prostata-surgical-complication-1](Observation-mii-exa-onko-prostata-surgical-complication-1.html)
