---
parent: 
topic: MammaModule
subject: 
---

# {{page-title}}

## Inhalt

Das **Mamma-Modul** implementiert die organspezifischen FHIR-Profile für die Dokumentation von Mammakarzinom-relevanten Daten gemäß dem onkologischen Basisdatensatz (oBDS). 

Das Modul umfasst spezialisierte Profile für die charakteristischen Aspekte der Mammakarzinom-Behandlung:

- **Rezeptorstatus-Bestimmungen**: Estrogen- und Progesteron-Rezeptorstatus mit detaillierter Dokumentation von Färbeintensität und Anteil positiver Zellen
- **Menopausenstatus**: Prätherapeutische Bestimmung des Menopausenstatus als wichtiger prognostischer Faktor
- **Operationsverfahren**: Mamma-spezifische chirurgische Eingriffe und deren Dokumentation
- **Bildgebungsverfahren**: Präoperative Markierungsmodalitäten und intraoperatives Imaging
- **Soziale Betreuung**: Integration von Sozialdienst-Maßnahmen in die onkologische Versorgung

## Verknüpfungen zu anderen Ressourcen

Die Mamma-Profile sind eng mit den übergeordneten onkologischen Ressourcen verknüpft:

- **Primärtumor-Diagnose**: Alle Mamma-spezifischen Observations referenzieren die Primärtumordiagnose als `focus`
- **Patient**: Direkte Verknüpfung über `subject`-Referenz
- **Encounter**: Optionale Verknüpfung zum behandelnden Aufenthalt
- **Procedure**: Integration der Mamma-spezifischen Operationsverfahren

## oBDS-Kontext

Die Mamma-Profile implementieren folgende oBDS-Datenfelder:

- **M1 Menopausenstatus**: Prätherapeutische Bestimmung (prämenopausal, perimenopausal, postmenopausal)
- **M2 Rezeptorstatus**: Estrogen- und Progesteron-Rezeptorstatus nach oBDS-Definition und S3-Leitlinien
- **Mamma-spezifische Operationen**: Erweiterte Dokumentation der organspezifischen Eingriffe
- **Bildgebungsverfahren**: Spezielle Markierungs- und Imaging-Modalitäten

### Terminologie-Binding

Die Mamma-Profile verwenden eine Kombination verschiedener Terminologien:

- **SNOMED CT**: Primäre Kodierung für medizinische Konzepte (Menopausenstatus, Rezeptorstatus)
- **LOINC**: Laborwerte und Beobachtungen (z.B. Estrogen-Rezeptor-Antigen)
- **oBDS-spezifische ValueSets**: Für Rezeptorstatus-Definitionen nach oBDS
- **S3-Leitlinien ValueSets**: Alternative Definitionen nach aktuellen Leitlinien

## Enthaltene Profile

Das Mamma-Modul umfasst folgende FHIR-Profile:

### Beobachtungen (Observations)
- **Estrogen-Rezeptorstatus**: Detaillierte Dokumentation mit Anteil positiver Zellen und Färbeintensität
- **Progesteron-Rezeptorstatus**: Entsprechende Dokumentation für Progesteron-Rezeptoren
- **Menopausenstatus**: Prätherapeutische Hormonstatusbestimmung

### Verfahren (Procedures)
- **Mamma-Operationen**: Organspezifische chirurgische Eingriffe
- **Präoperative Markierung**: Modalitäten der präoperativen Markierung
- **Sozialdienst-Maßnahmen**: Integration sozialer Betreuungsaspekte

### Terminologien
- **ValueSets**: Organspezifische Wertelisten für Mamma-relevante Konzepte
- **CodeSystems**: Erweiterte Kodierungssysteme für spezielle Anwendungsfälle

## Implementierungshinweise

### Datenerfassung
- **Duale Kodierung**: Rezeptorstatus sowohl nach oBDS als auch nach S3-Leitlinien erfassbar
- **Komponentenstruktur**: Detaillierte Aufschlüsselung der Rezeptorstatus-Komponenten
- **Referenzintegrität**: Konsistente Verknüpfung zu Primärtumordiagnose erforderlich

### Qualitätssicherung
- **Vollständigkeitsprüfung**: Kritische Datenfelder als Must Support markiert
- **Wertebereichsvalidierung**: Einschränkung auf medizinisch sinnvolle Wertebereiche
- **Terminologie-Konsistenz**: Verwendung standardisierter Kodierungssysteme

Die Mamma-Profile ermöglichen eine vollständige und strukturierte Dokumentation der mammakarzinom-spezifischen Daten entsprechend den aktuellen medizinischen Standards und dem oBDS.