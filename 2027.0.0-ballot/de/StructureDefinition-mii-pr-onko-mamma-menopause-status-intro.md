### Inhalt
Dieses Profil beschreibt den (prätherapeutischen) Menopausenstatus einer Patientin mit Mamma-Karzinom in der Onkologie. Der Menopausenstatus ist ein wichtiger prognostischer Faktor für die Behandlungsplanung und Therapieauswahl bei Mamma-Karzinom.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet SNOMED CT zur Kodierung des beobachteten Merkmals (Menopause-Funktion). Die spezifischen Ausprägungen des Menopausenstatus werden über ein dediziertes ValueSet definiert.

---

### Verknüpfungen zu anderen Ressourcen
Der Menopausenstatus ist eine wichtige tumorspezifische Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf die Patientin (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Gemäß der aktuellen oBDS-Version 2021 wird der perimenopausal Status implizit unter prämenopausal subsumiert. Diese Konvention wird in der FHIR-Profilierung durch das entsprechende ValueSet abgebildet.

### Terminologie-Binding
Das ValueSet für den Menopausenstatus ist **extensible** gebunden. Dies bedeutet, dass die Codes aus dem definierten ValueSet bevorzugt verwendet werden SOLLEN, jedoch bei Bedarf auch andere geeignete Codes verwendet werden KÖNNEN, falls die vordefinierten Werte nicht ausreichen.

#### ValueSet: MII VS Onko Mamma Menopause Status

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Menopause Status](ValueSet-mii-vs-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Menopause Status](ValueSet-mii-vs-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Menopausenstatus Mamma](StructureDefinition-mii-pr-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-mamma-menopause-status-1](Observation-mii-exa-onko-mamma-menopause-status-1.html)
