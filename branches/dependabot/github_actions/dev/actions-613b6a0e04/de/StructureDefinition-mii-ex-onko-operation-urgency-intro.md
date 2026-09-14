### Inhalt

Diese Extension erfasst die **Modalität der Eingriffsdurchführung** (Art des Eingriffs) und unterscheidet zwischen elektiven und Notfalleingriffen.

### Herkunft und Anwendungsbereich

Dieser Datenpunkt stammt ursprünglich aus dem organspezifischen Modul **Kolorektales Karzinom (KRK 6)** gemäß oBDS 2021. Da die Unterscheidung zwischen elektiven und Notfalleingriffen jedoch für alle chirurgischen Prozeduren klinisch relevant ist, wurde die Extension in das allgemeine Operation-Profil integriert und kann **universell auf alle onkologischen Operationen angewandt werden**.

### Klinische Relevanz

Die Erfassung der Eingriffsmodalität ist aus mehreren Gründen wichtig:

- **Qualitätssicherung**: Notfalleingriffe weisen oft andere Komplikationsraten auf als geplante Eingriffe
- **Risikostratifizierung**: Die Dringlichkeit beeinflusst die perioperative Morbidität und Mortalität
- **Statistische Auswertungen**: Faire Vergleiche zwischen Zentren erfordern die Berücksichtigung des Notfallanteils
- **Ressourcenplanung**: Unterscheidung zwischen planbaren und ungeplanten Eingriffen

### Wertebereich

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Urgency.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII CS Onkologie Operation Urgency](CodeSystem-mii-cs-onko-operation-urgency.html).
{: .ig-highlight .ig-highlight-grey}

### Mapping

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

Dieses Extension mappt auf das **KRK-Modul** Feld:
- **KR6**: Art des Eingriffs (Modalität der Eingriffsdurchführung)

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Urgency.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII EX Onko Operation Urgency](StructureDefinition-mii-ex-onko-operation-urgency.html).
{: .ig-highlight .ig-highlight-grey}

### Verwandte Profile

- [Operation: Procedure](StructureDefinition-mii-pr-onko-operation.html)
- [Extension Intention (Operation)](StructureDefinition-mii-ex-onko-operation-intention.html)
