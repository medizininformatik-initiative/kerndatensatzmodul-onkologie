---
parent: 
topic: MammaModule
subject: 
---

<style>
  img {
    max-width: 100%;
    height: auto;
  }
</style>

# {{page-title}}

## Inhalt

Das **Mamma-Modul** implementiert die organspezifischen FHIR-Profile für die Dokumentation von Mammakarzinom-relevanten Daten gemäß dem [onkologischen Basisdatensatz (oBDS) - Mammakarzinom](https://www.basisdatensatz.de/module/5/mammakarzinom). 

Das Modul umfasst spezialisierte Profile für die charakteristischen Aspekte der Mammakarzinom-Behandlung:

- **Rezeptorstatus-Bestimmungen**: Estrogen- und Progesteron-Rezeptorstatus mit detaillierter Dokumentation von Färbeintensität und Anteil positiver Zellen
- **Her2Neu-Status**: Als multimodaler Biomarker mit IHC- und ISH-Nachweismethoden ist dieser derzeit im Molecular Tumorboard-Profil abgebildet
- **Tumorgröße**: Wurde in das Histologie-Modul verschoben, da sie auf multiple Entitäten anwendbar ist
- **Menopausenstatus**: Prätherapeutische Bestimmung des Menopausenstatus als wichtiger prognostischer Faktor
- **Studienteilnahme**: Bereits durch den aktuellen oBDS 2021 abgedeckt und im entsprechenden Studienteilnahme-Profil implementiert
- **Operationsverfahren**: Mamma-spezifische chirurgische Eingriffe und deren Dokumentation
- **Bildgebungsverfahren**: Präoperative Markierungsmodalitäten und intraoperatives Imaging

## Architekturübersicht

Die folgende Abbildung zeigt die Struktur des Mamma-Moduls und die Beziehungen zwischen den verschiedenen FHIR-Ressourcen:

<img src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/dev/implementation-guides/ImplementationGuide-2026.x-DE/Images/MII_Onko_Mamma_Module/MII_Onko_Mamma_Module.png" alt="MII Onkologie - Mammakarzinom Modul Architektur">

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
- **Tumorgröße**: Referenz zum Histologie-Modul (MII_PR_Onko_Tumorgroesse)
- **Studienteilnahme**: Referenz zum allgemeinen Studienteilnahme-Profil (MII_PR_Onko_Studienteilnahme)

### Verfahren (Procedures)
- **Mamma-Operationen**: Organspezifische chirurgische Eingriffe
- **Präoperative Markierung**: Modalitäten der präoperativen Markierung

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

**Entwicklungshinweis**: Eine weitere, detailliertere Spezifikation der Mamma-Profile ist derzeit in Zusammenarbeit zwischen dem BIH und der Deutschen Gesellschaft für Senologie in Entwicklung.

Die Mamma-Profile ermöglichen eine vollständige und strukturierte Dokumentation der mammakarzinom-spezifischen Daten entsprechend den aktuellen medizinischen Standards und dem oBDS.