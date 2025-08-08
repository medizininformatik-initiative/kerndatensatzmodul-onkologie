---
parent: 
topic: MammaModule
subject: 
---

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

<plantuml>
@startuml MII_Onko_Mamma_Module
title MII Onkologie - Mammakarzinom Modul
skinparam defaultFontSize 16
skinparam objectFontSize 16
skinparam packageFontSize 18
skinparam noteFontSize 14

' Zentrale Diagnose
object MII_Diagnose_Primaertumor #FFFF66 {
    "Primärtumor Diagnose"
}

' Zentrale Operation
object Mamma_Operation #9999FF {
    Base_Profile = MII_PR_Onko_Operation
    oBDS_Code = M4
    **Procedure.reasonReference** → Diagnosis
    code = OPS oder SNOMED CT
    "Brust-Operation"
}

' Hormon-bezogene Observationen gruppieren (links positionieren)
package "Hormon & Rezeptor Status" as hormones #E8F5E8 {
    object Mamma_Menopausenstatus #22FF22 {
        oBDS_Code = M1
        SNOMED_CT = 161712005
        **Observation.focus** → Diagnosis
        valueCodeableConcept = Status
        "Menopausenstatus"
    }

    object Mamma_Rezeptorstatus_Estrogen #22FF22 {
        oBDS_Code = M2a-c
        LOINC = 40556-3
        **Observation.focus** → Diagnosis
        valueCodeableConcept = Status
        component[0] = % positive Zellen
        component[1] = Färbeintensität
        "Östrogenrezeptor Status"
    }

    object Mamma_Rezeptorstatus_Progesteron #22FF22 {
        oBDS_Code = M3a-c
        LOINC = 85339-0
        **Observation.focus** → Diagnosis
        valueCodeableConcept = Status
        component[0] = % positive Zellen
        component[1] = Färbeintensität
        "Progesteronrezeptor Status"
    }
    
    object "HER2/neu Status" as HER2 #22FF22 {
        oBDS_Code = M7a-c
        **Observation.focus** → Diagnosis
        "→ Molekulares Tumorboard"
        "Multimodale Bewertung:"
        "IHC + ISH"
    }
}

' Chirurgie-bezogene Prozeduren gruppieren
package "Perioperative Prozeduren" as surgery #E8E8FF {
    object Mamma_Praeoperative_Markierung #9999FF {
        oBDS_Code = M5
        **Procedure.reasonReference** → Diagnosis
        **Procedure.partOf** → Operation (optional)
        code = Markierungsmodalität
        "Präoperative Tumormarkierung"
    }

    object Mamma_Sozialdienst #9999FF {
        Base_Profile = MII_PR_Onko_Operation  
        oBDS_Code = M6
        **Procedure.reasonReference** → Diagnosis
        "Sozialdienst Konsultation"
    }
}

' Positionierung
hormones -left- MII_Diagnose_Primaertumor
MII_Diagnose_Primaertumor -right- Mamma_Operation

' Beziehungen
MII_Diagnose_Primaertumor <--- Mamma_Operation : reasonReference
MII_Diagnose_Primaertumor <--- hormones : focus
MII_Diagnose_Primaertumor <--- surgery : reasonReference

Mamma_Praeoperative_Markierung --> Mamma_Operation : partOf (optional)

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

note top of hormones
**Hormonelle Marker:**
Wichtig für Therapieentscheidung
- Menopausenstatus
- Östrogenrezeptor (quantitativ)
- Progesteronrezeptor (quantitativ)
- HER2/neu Status
end note

note top of HER2
**HER2/neu Bewertung:**
Aufgrund multimodaler Diagnostik
(Immunhistochemie + In-situ-Hybridisierung)
im Modul "Molekulares Tumorboard" abgebildet
end note

note top of Mamma_Operation
**ValueSet Strategie:**
Erweiterbare OPS + SNOMED CT Codes
Unterstützt deutsche und internationale Systeme
end note

note top of Mamma_Praeoperative_Markierung
**Integration aktueller klinischer Praxis:**
Traditionell Drahtmarkierung in Registern,
aber aktuelle klinische Praxis beinhaltet:
- Radioaktive Seed-Lokalisierung  
- Magnetische Seed-Lokalisierung
→ ValueSet erweitert für moderne Verfahren
end note

@enduml
</plantuml>

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