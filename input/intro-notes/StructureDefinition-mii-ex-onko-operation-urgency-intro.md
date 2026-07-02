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

### Beispiel im Kontext

### Technische Details

### Mapping

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

Dieses Extension mappt auf das **KRK-Modul** Feld:
- **KR6**: Art des Eingriffs (Modalität der Eingriffsdurchführung)

### Verwandte Profile

- [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.html)
- [MII EX Onko Operation Intention](StructureDefinition-mii-ex-onko-operation-intention.html)
