---
parent: 
topic: ProstataModule
subject: 
---

# {{page-title}}

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

<plantuml>
@startuml MII_Onko_Prostata_Module
title MII Onkologie - Prostatakarzinom Modul
skinparam defaultFontSize 16
skinparam objectFontSize 16
skinparam packageFontSize 18
skinparam noteFontSize 14

' Zentrale Diagnose
object MII_Diagnose_Primaertumor #FFFF66 {
    "Primärtumor Diagnose"
}

' PSA als zentraler Marker
object Prostata_PSA #22FF22 {
    oBDS_Code = P1
    LOINC = 33747-0
    **Observation.focus** → Diagnosis
    valueQuantity = ng/mL
    "PSA Messung"
}

' Zentrale Operation
object Prostata_Operation #9999FF {
    Base_Profile = MII_PR_Onko_Operation
    **Procedure.reasonReference** → Diagnosis
    code = OPS oder SNOMED CT
    "Prostatektomie/TURP"
}

' Biopsie und Pathologie-Befunde gruppieren
package "Biopsie & Pathologie-Befunde" as biopsy #E8F5E8 {
    object Prostata_Anzahl_Stanzen #22FF22 {
        oBDS_Code = P4
        **Observation.focus** → Diagnosis
        valueQuantity = Anzahl
        "Gesamtzahl Stanzen"
    }

    object Prostata_Anzahl_Positive_Stanzen #22FF22 {
        oBDS_Code = P5
        **Observation.focus** → Diagnosis
        valueQuantity = Anzahl
        "Positive Stanzen"
    }

    object Prostata_CA_Befall_Stanze #22FF22 {
        oBDS_Code = P6
        **Observation.focus** → Diagnosis
        valueQuantity = %
        "Tumorbefall pro Stanze"
    }
    
    object Prostata_Gleason_Pattern_Primary #22FF22 {
        oBDS_Code = P2a
        SNOMED_CT = 384994009
        **Observation.focus** → Diagnosis
        valueCodeableConcept = 1-5
        "Primäres Gleason-Muster"
    }

    object Prostata_Gleason_Pattern_Secondary #22FF22 {
        oBDS_Code = P2b  
        SNOMED_CT = 384995005
        **Observation.focus** → Diagnosis
        valueCodeableConcept = 1-5
        "Sekundäres Gleason-Muster"
    }

    object Prostata_Gleason_Grade_Group #22FF22 {
        oBDS_Code = P3
        SNOMED_CT = 1812491000004107
        **Observation.focus** → Diagnosis
        valueCodeableConcept = Grade 1-5
        "ISUP Grade Group"
    }
}

' Postoperative Komplikationen
object Prostata_Clavien_Dindo #22FF22 {
    oBDS_Code = P7
    **Observation.focus** → Operation
    valueCodeableConcept = Grade I-V
    "Clavien-Dindo Klassifikation"
}

' Specimen-Verweis
object "Specimen (multiple)" as specimens #44FFFF {
    "→ Siehe Pathologie-Modul"
    "- Biopsie-Stanzen (12+)"
    "- Prostatektomie-Präparat"
    "- Lymphknoten"
    "- TURP-Resektat"
}

' Beziehungen
MII_Diagnose_Primaertumor <--- Prostata_PSA : focus
MII_Diagnose_Primaertumor <--- biopsy : focus
MII_Diagnose_Primaertumor <--- Prostata_Operation : reasonReference
Prostata_Operation <--- Prostata_Clavien_Dindo : focus

' Klinische Logik
Prostata_Gleason_Pattern_Primary ..> Prostata_Gleason_Grade_Group : "kombiniert zu"
Prostata_Gleason_Pattern_Secondary ..> Prostata_Gleason_Grade_Group : "kombiniert zu"
Prostata_Anzahl_Stanzen ..> Prostata_Anzahl_Positive_Stanzen : "Gesamt vs. positiv"
biopsy --> specimens : specimen

legend right 
|Farbe|Typ|
|<#FFFF66>|Condition|
|<#CCCCFF>|CarePlan|
|<#9999FF>|Procedure|
|<#DDFFDD>|ServiceRequest|
|<#88FF88>|DiagnosticReport|
|<#22FF22>|Observation|
|<#FFCCFF>|Medication|
|<#FF9999>|AdverseEvent|
|<#44FFFF>|Specimen|
|<#EEEEEE>|Bundle|
endlegend

note right of Prostata_PSA
**LOINC Standardisierung:**
33747-0 für internationale
Labor-Interoperabilität
end note

note left of Prostata_Operation
**Zentrale Operation:**
- Radikale Prostatektomie
- Transurethrale Resektion
- Andere urologische Eingriffe

Verbindet Komplikationen mit
der onkologischen Diagnose
end note

note bottom of biopsy
**Biopsie & Pathologie-Dokumentation:**
- Gesamtzahl der Stanzen
- Anzahl positiver Stanzen  
- Prozentualer Tumorbefall
- Gleason-Muster (primär/sekundär)
- ISUP Grade Group (2014)
→ Komplette histopathologische Bewertung
end note

note right of Prostata_Clavien_Dindo
**Chirurgische Qualitätsmetrik:**
Standardisierte Komplikations-
klassifikation für internationales
Benchmarking

Fokus auf Operation, indirekt
zur onkologischen Diagnose
end note

note bottom of specimens
**Specimen-Verwaltung:**
Prostatakarzinom erfordert
multiple Specimen-Ressourcen.
Detaillierte Modellierung im
Pathologie-Modul.
end note

@enduml
</plantuml>

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