### Inhalt

Das **Mamma-Präoperative Markierung Profil** dokumentiert radiologisch durchgeführte Markierungen von Tumorgewebe in der Brust vor operativen Eingriffen. Dieses Profil basiert auf der FHIR Procedure-Ressource und erfasst verschiedene Markierungsmodalitäten, die zur präzisen Lokalisation von Tumorgewebe eingesetzt werden.

Die präoperative Markierung ist ein wichtiger Bestandteil der brusterhaltenden Therapie und ermöglicht es Chirurgen, nicht-palpable Läsionen exakt zu lokalisieren und vollständig zu entfernen.

---

### Verknüpfungen zu anderen Ressourcen

Das Profil ist eng mit anderen onkologischen Ressourcen verknüpft:
- verweist über `Procedure.partOf` auf die übergeordnete Operation (MII_PR_Onko_Operation)
- verweist über `Procedure.subject` auf die Patientin (Patient-Ressource)
- kann über `Procedure.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext

Das Profil implementiert **Mamma-spezifische Markierungsverfahren** als Erweiterung des allgemeinen oBDS-Operationsdatensatzes. Die präoperative Markierung ist besonders relevant für:

**Klinische Anwendungen:**
- **Brusterhaltende Therapie**: Präzise Lokalisation nicht-palpabler Tumoren
- **Multifokale Tumoren**: Markierung mehrerer Tumorherde
- **Nachexzision**: Markierung bei R1-Resektionen
- **Qualitätssicherung**: Dokumentation der Markierungsqualität

**Markierungsmodalitäten (aktuell im ValueSet):**
- **Drahtmarkierung mit Ultraschall-Führung**: SNOMED CT 433222002
- **Marker-Insertion mit Röntgen-Führung**: SNOMED CT 836381000000102
- **Drahtmarkierung mit MRT-Führung**: SNOMED CT 911831000000104

**Weitere klinisch relevante Modalitäten (noch nicht im ValueSet):**
- **Radioaktive Seed-Markierung**: Radioaktive Seeds zur Lokalisation
- **Magnetische Seed-Markierung**: Moderne drahtlose Verfahren (z.B. Magseed®)
- **Clip-Markierung**: Metallclips zur Orientierung

*Hinweis: Das aktuelle ValueSet fokussiert auf bildgebungsgeführte Draht- und Markerverfahren. Moderne Seed-basierte Verfahren könnten in zukünftigen Versionen ergänzt werden.*

### Terminologie-Binding

Das Profil verwendet **extensible Binding** für Markierungsmodalitäten direkt auf `Procedure.code`:

#### ValueSet: MII VS Onko Mamma Präoperative Markierung Modalität

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Präoperative Markierung Modalität](ValueSet-mii-vs-onko-mamma-praeoperative-markierung-modalitaet.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Präoperative Markierung Modalität](ValueSet-mii-vs-onko-mamma-praeoperative-markierung-modalitaet.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Präoperative Markierung Mamma](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-mamma-praeoperative-markierung-1](Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.html)
