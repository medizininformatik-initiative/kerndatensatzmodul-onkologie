### Inhalt

Das **Mamma-Operation Profil** dokumentiert operative Eingriffe an der Brust im Rahmen der Mammakarzinom-Behandlung. Dieses Profil erweitert das allgemeine MII_PR_Onko_Operation Profil um Mamma-spezifische Aspekte und ermöglicht die detaillierte Erfassung von brustchirurgischen Verfahren.

Das Profil unterstützt sowohl brusterhaltende Therapien als auch Mastektomien sowie begleitende Verfahren wie Lymphknotenentfernungen und den Einsatz intraoperativer Hilfsmittel.

**Kommentierungshinweis**: Zu diskutieren ist, ob präoperative Markierung als separate Extraressource (wie derzeit implementiert) oder einfach als usedCode mit präoperativ- und intraoperativ-Slices modelliert werden sollte.

---

### Verknüpfungen zu anderen Ressourcen

Das Profil ist eng mit anderen onkologischen Ressourcen verknüpft:
- verweist über `Procedure.reasonReference` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Procedure.subject` auf die Patientin (Patient-Ressource)
- kann über `Procedure.partOf` mit übergeordneten Operationen verknüpft werden
- kann über `Procedure.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext

Das Profil implementiert **Mamma-spezifische Operationsdaten** als Erweiterung des allgemeinen oBDS-Operationsdatensatzes (Sektion 13). Die Mamma-Chirurgie umfasst verschiedene Verfahren:

**Operative Verfahren:**
- **Brusterhaltende Therapie (BET)**: Lumpektomie, Segmentresektion, Quadrantektomie
- **Mastektomie**: Einfache, modifiziert radikale, radikale Mastektomie
- **Lymphknotenchirugie**: Sentinel-Lymphknoten-Biopsie, Axilladissektion
- **Rekonstruktive Verfahren**: Sofortrekonstruktion, sekundäre Rekonstruktion

**Intraoperative Hilfsmittel:**
- **Drahtmarkierungen**: Präoperative Lokalisation nicht-palpabler Tumoren
- **Seed-Markierungen**: Radioaktive Markierung zur Tumorlokalisation
- **Markierungsclips**: Orientierungshilfen für die Nachsorge
- **Intraoperatives Imaging**: Specimen-Radiographie, Ultraschall

### Terminologie-Binding

Das Profil verwendet **duale Kodierungsstrategie** mit SNOMED CT und OPS:

#### ValueSet: MII VS Onko Mamma Operation SNOMED CT

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Operation SNOMED CT](ValueSet-mii-vs-onko-mamma-operation-sct.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Operation SNOMED CT](ValueSet-mii-vs-onko-mamma-operation-sct.html).
{: .ig-highlight .ig-highlight-grey}

#### ValueSet: MII VS Onko Mamma Operation OPS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Operation OPS](ValueSet-mii-vs-onko-mamma-operation-ops.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Operation OPS](ValueSet-mii-vs-onko-mamma-operation-ops.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

`mii-exa-onko-mamma-operation-1` <!-- TODO:REVIEW Beispielinstanz nicht mehr im Modul vorhanden; Verweis pruefen -->
