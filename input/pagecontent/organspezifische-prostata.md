## Inhalt

Das **Prostata-Modul** implementiert die organspezifischen FHIR-Profile für die Dokumentation von Prostatakarzinom-relevanten Daten gemäß dem onkologischen Basisdatensatz (oBDS) für Prostatakarzinom.

Das Modul umfasst spezialisierte Profile für die charakteristischen Aspekte der Prostatakarzinom-Behandlung:

- **PSA-Werte**: Prostataspezifisches Antigen als zentraler Tumormarker für Diagnostik und Verlaufskontrolle
- **Gleason-Scoring**: Histopathologische Graduierung mit primären, sekundären und tertiären Patterns
- **Grade Groups**: Internationale Standard-Klassifikation nach Grade Groups (1-5)
- **Biopsie-Ergebnisse**: Detaillierte Dokumentation der Prostatabiopsie-Befunde
- **Postoperative Komplikationen**: Clavien-Dindo-Graduierung chirurgischer Komplikationen

## Architekturübersicht

Die folgende Abbildung zeigt die Struktur des Prostata-Moduls und die Beziehungen zwischen den verschiedenen FHIR-Ressourcen:

![MII Onkologie - Prostatakarzinom Modul Architektur](MII_Onko_Prostata_Module.png)

## Verknüpfungen zu anderen Ressourcen

Die Prostata-Profile sind eng mit den übergeordneten onkologischen Ressourcen verknüpft:

- **Primärtumor-Diagnose**: Alle Prostata-spezifischen Observations referenzieren die Primärtumordiagnose als `focus`
- **Patient**: Direkte Verknüpfung über `subject`-Referenz
- **Encounter**: Optionale Verknüpfung zum behandelnden Aufenthalt
- **Procedure**: Integration der Prostata-spezifischen Biopsie- und Operationsverfahren

## oBDS-Kontext

Die Prostata-Profile implementieren folgende oBDS-Datenfelder:

- **P1 PSA-Wert**: Tumormarker für Diagnostik und Verlaufskontrolle
- **P2 Gleason Pattern**: Primäres, sekundäres und tertiäres Gleason Pattern (1-5)
- **P3 Gleason Score**: Summe aus primärem und sekundärem Pattern mit Grade Group
- **P4 Biopsie-Ergebnisse**: Anzahl Stanzen, positive Stanzen und Karzinom-Befall
- **P5 Chirurgische Komplikationen**: Postoperative Komplikationen nach Clavien-Dindo

### Terminologie-Binding

Die Prostata-Profile verwenden eine Kombination verschiedener Terminologien:

- **LOINC**: Primäre Kodierung für PSA-Werte und Gleason-Scores
- **SNOMED CT**: Medizinische Konzepte und Methoden (z.B. Biopsie-Verfahren)
- **oBDS-spezifische ValueSets**: Für Gleason Pattern und Komplikations-Klassifikation
- **Clavien-Dindo ValueSets**: Standardisierte Graduierung postoperativer Komplikationen

## Enthaltene Profile

Das Prostata-Modul umfasst folgende FHIR-Profile:

### Beobachtungen (Observations)
- **PSA-Wert**: Prostataspezifisches Antigen-Bestimmung (frei/total)
- **Gleason Patterns**: Einzelne histopathologische Patterns (primär, sekundär, tertiär)
- **Gleason Score und Grade Group**: Kombinierte Scoring-Bewertung
- **Anzahl Stanzen**: Gesamtzahl der Biopsie-Stanzen
- **Anzahl positive Stanzen**: Anzahl tumorpositiver Stanzen
- **Karzinom-Befall Stanze**: Prozentuale Ausdehnung des Karzinoms pro Stanze
- **Clavien-Dindo Komplikationen**: Postoperative Komplikationsgraduierung

### Terminologien
- **ValueSets**: Organspezifische Wertelisten für Prostata-relevante Konzepte
- **CodeSystems**: Erweiterte Kodierungssysteme für Komplikations-Klassifikation

## Implementierungshinweise

### Datenerfassung
- **LOINC-Kodierung**: Standardisierte Laborwerte für PSA und Gleason-Scores
- **Komponentenstruktur**: Grade Group als Komponente des Gleason Score Profils
- **Referenzintegrität**: Konsistente Verknüpfung zu Primärtumordiagnose erforderlich

### Qualitätssicherung
- **Vollständigkeitsprüfung**: Kritische Datenfelder als Must Support markiert
- **Wertebereichsvalidierung**: Medizinisch sinnvolle Wertebereiche (z.B. Gleason 1-5)
- **Terminologie-Konsistenz**: Verwendung standardisierter Kodierungssysteme

**Entwicklungshinweis**: Die Clavien-Dindo Graduierung könnte möglicherweise ins allgemeine Surgery-Modul verschoben werden, da es sich um ein universelles chirurgisches Klassifikationssystem handelt (siehe Kommentierungsphase).

Die Prostata-Profile ermöglichen eine vollständige und strukturierte Dokumentation der prostatakarzinom-spezifischen Daten entsprechend den aktuellen medizinischen Standards und dem oBDS.
