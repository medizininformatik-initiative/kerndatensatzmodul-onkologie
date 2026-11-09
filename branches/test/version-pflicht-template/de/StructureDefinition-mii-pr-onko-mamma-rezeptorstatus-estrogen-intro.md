### Inhalt

Das **Estrogen-Rezeptorstatus Profil** dokumentiert den diagnostischen Estrogen-Rezeptorstatus einer pathologisch untersuchten Probe beim Mammakarzinom. Dieses Profil ermöglicht die detaillierte Erfassung sowohl der quantitativen Messwerte (Anteil positiver Zellen, Färbeintensität) als auch der interpretierten Ergebnisse nach verschiedenen Definitionen.

Der Estrogen-Rezeptorstatus ist ein zentraler prognostischer und prädiktiver Biomarker beim Mammakarzinom und entscheidet wesentlich über die Therapieplanung, insbesondere bezüglich einer antihormonellen Therapie.

---

### Verknüpfungen zu anderen Ressourcen

Das Profil ist eng mit anderen onkologischen Ressourcen verknüpft:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf die Patientin (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext

Das Profil implementiert die **oBDS-Datenfelder für den Estrogen-Rezeptorstatus** beim Mammakarzinom. Dabei ist zu beachten, dass der [oBDS Mamma ursprünglich 2015 veröffentlicht wurde](https://www.basisdatensatz.de/download/Brust.pdf) und die Methodologie seither erheblichen Veränderungen unterworfen war.

**Historische vs. aktuelle Praxis:**
- **IRS (Immunreactive Score)**: Wurde 2015 noch verwendet, ist aber heute nicht mehr in breiter klinischer Anwendung, obwohl weiterhin relevant für Registerdaten
- **Schwellenwerte**: Moderne pathologische Praxis beginnt die Positivität bereits bei >1% positiven Zellen (statt der historischen 10%-Schwelle)
- **Bewertungsansätze**: Aktuelle S3-Leitlinien verwenden andere Definitionen als der ursprüngliche oBDS

**Modellierungskompromiß**: Das hier vorgeschlagene Profil stellt einen Kompromiß dar zwischen älteren Registerdaten, die durch das aktuelle Register-Framework erforderlich sind, und den Veränderungen in der klinischen und pathologischen Praxis.

**Kommentierungshinweis**: Zu diskutieren ist, ob ein separates Profil für den IRS (Immunreactive Score) ergänzt werden sollte, um historische Daten vollständig abzubilden.

### Terminologie-Binding

Das Profil verwendet eine **duale Kodierungsstrategie** mit **extensible** Binding. Dies bedeutet, dass die Codes aus den definierten ValueSets bevorzugt verwendet werden SOLLEN, jedoch bei Bedarf auch andere geeignete Codes verwendet werden KÖNNEN.

#### ValueSet: MII VS Onko Mamma Rezeptorstatus oBDS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Rezeptorstatus oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Rezeptorstatus oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.html).
{: .ig-highlight .ig-highlight-grey}

#### ValueSet: MII VS Onko Mamma Rezeptorstatus Leitlinie

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Rezeptorstatus Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.html)
