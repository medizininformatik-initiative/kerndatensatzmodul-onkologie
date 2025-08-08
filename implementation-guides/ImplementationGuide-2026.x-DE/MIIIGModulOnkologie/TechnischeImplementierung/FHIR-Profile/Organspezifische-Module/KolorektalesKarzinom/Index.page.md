---
parent: 
topic: KRKModule
subject: 
---

# {{page-title}}

## Inhalt

Das **Kolorektales Karzinom (KRK) Modul** implementiert die organspezifischen FHIR-Profile für die Dokumentation von kolorektalem Karzinom gemäß dem onkologischen Basisdatensatz (oBDS).

Das Modul umfasst spezialisierte Profile für die charakteristischen Aspekte der KRK-Behandlung:

- **Präoperative Beurteilung**: Abstand zur Anokutanlinie, MRT-basierte Mesorektale Faszie-Messung, ASA-Klassifikation
- **Chirurgische Eingriffe**: KRK-spezifische Operationsverfahren und Stoma-Markierung
- **Resektionsränder**: Abstand zum aboralen Rand und zur zirkumferentiellen Resektionsebene (CRM)
- **Postoperative Komplikationen**: Anastomoseninsuffizienz-Graduierung
- **Pathologie-Specimens**: Spezifische Specimen-Profile für KRK-Resektate

## Architekturübersicht

Die folgende Abbildung zeigt die Struktur des KRK-Moduls und die Beziehungen zwischen den verschiedenen FHIR-Ressourcen:

<plantuml>
@startuml MII_Onko_KRK_Module
title MII Onkologie - Kolorektales Karzinom Modul
skinparam defaultFontSize 16
skinparam objectFontSize 16
skinparam packageFontSize 18
skinparam noteFontSize 14

' Central Diagnosis
object MII_Diagnose_Primaertumor #FFFF66 {
    Primary_Tumor_Diagnosis
}

' Central Surgical Procedure
object KRK_Operation #9999FF {
    Base_Profile = MII_PR_Onko_Operation
    **Procedure.reasonReference** → Diagnosis
    Procedure.code = OPS or SNOMED CT
    Procedure.outcome = Residualstatus (R0/R1/R2)
}

' Pre-operative Planning (close to Operation)
object KRK_Stoma_Markierung #9999FF {
    oBDS_Code = "Pre-op stoma marking"
    **Procedure.reasonReference** → Diagnosis
    Procedure.partOf → Operation (optional)
}

' Pre-operative Assessments
package "Pre-operative Observations" as preop #E8F5E8 {
    object KRK_Abstand_Anokutan #22FF22 {
        oBDS_Code = KR1
        **Observation.focus** → Diagnosis
        valueQuantity = cm
        "Distance tumor to anal verge"
    }
    
    object KRK_MRT_Mesorektale_Faszie #22FF22 {
        oBDS_Code = KR5
        **Observation.focus** → Diagnosis
        valueQuantity = mm
        "Distance to mesorectal fascia"
    }
    
    object KRK_ASA_Klassifikation #22FF22 {
        oBDS_Code = KR4
        **Observation.focus** → Diagnosis
        code = LOINC 97816-3
        valueCodeableConcept = ASA I-VI
    }
}

' Post-operative Assessments  
package "Post-operative Observations" as postop #FFE8E8 {
    object KRK_Abstand_Aboral #22FF22 {
        oBDS_Code = KR2
        **Observation.focus** → Diagnosis
        valueQuantity = mm
        "Min distance to aboral margin"
    }
    
    object KRK_Abstand_Circumferelle_Resektionsebene #22FF22 {
        oBDS_Code = KR3
        **Observation.focus** → Diagnosis  
        valueQuantity = mm (≥1mm for R0)
        "Distance to CRM"
    }
    
    object KRK_Anastomoseninsuffizienz #22FF22 {
        oBDS_Code = KR6
        **Observation.focus** → Diagnosis
        valueCodeableConcept = Grade A/B/C
        "Anastomotic insufficiency"
    }
}

' Specimen from Operation
object KRK_Specimen #44FFFF {
    Base_Profile = MII_PR_Onko_Specimen
    collection.procedure = CodeableConcept
    "CRC pathology specimen"
}


' Primary relationships
MII_Diagnose_Primaertumor <--- KRK_Operation : reasonReference
MII_Diagnose_Primaertumor <--- KRK_Stoma_Markierung : reasonReference
KRK_Operation <-- KRK_Stoma_Markierung : partOf (optional)

' Pre-operative observations
MII_Diagnose_Primaertumor <--- preop : focus

' Post-operative observations  
KRK_Operation <--- postop : focus
postop --> KRK_Specimen : specimen

' Clinical workflow
preop .down.> KRK_Operation : "informs planning"
KRK_Operation .down.> postop : "enables assessment"


legend right 
|Color|Type|
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

note right of KRK_Operation
**Central Surgical Procedure**
- Must have OPS or SNOMED CT code
- Documents residual status (R0/R1/R2)
- Links to pre/post observations
end note

note bottom of preop
**Pre-operative Planning**
Informs surgical approach:
- Tumor location (KR1)
- MRI staging (KR5)
- Anesthesia risk (KR4)
end note

note bottom of postop
**Post-operative Quality**
Surgical outcome metrics:
- Resection margins (KR2, KR3)
- Complications (KR6)

Fokus auf Operation, indirekt
zur onkologischen Diagnose
end note

note bottom of KRK_Specimen
**FHIR R4 Limitation**
Specimen.collection.procedure
is CodeableConcept (not Reference).
No direct link to Operation instance.
→ Consider R5 backport extension
end note

@enduml
</plantuml>

## Verknüpfungen zu anderen Ressourcen

Die KRK-Profile sind eng mit den übergeordneten onkologischen Ressourcen verknüpft:

- **Primärtumor-Diagnose**: Alle KRK-spezifischen Observations referenzieren die Primärtumordiagnose als `focus`
- **Patient**: Direkte Verknüpfung über `subject`-Referenz
- **Encounter**: Optionale Verknüpfung zum behandelnden Aufenthalt
- **Procedure**: Integration der KRK-spezifischen Operationsverfahren
- **Specimen**: Pathologie-Specimens mit spezifischen KRK-Resektatdetails

## oBDS-Kontext

Die KRK-Profile implementieren folgende oBDS-Datenfelder:

- **KR1 Abstand Anokutanlinie**: Präoperative Lokalisation des Tumors
- **KR2 Abstand aboral**: Minimaler Abstand zum aboralen Resektionsrand
- **KR3 Abstand CRM**: Abstand zur zirkumferentiellen Resektionsebene
- **KR4 ASA-Klassifikation**: Anästhesierisiko-Bewertung
- **KR5 MRT Mesorektale Faszie**: Abstand zur mesorektalen Faszie im MRT
- **KR6 Anastomoseninsuffizienz**: Postoperative Komplikation (Grade A/B/C)

### Terminologie-Binding

Die KRK-Profile verwenden eine Kombination verschiedener Terminologien:

- **LOINC**: ASA-Klassifikation (97816-3)
- **SNOMED CT**: Medizinische Konzepte und Prozeduren
- **OPS**: Deutsche Operationscodes
- **oBDS-spezifische ValueSets**: Für Anastomoseninsuffizienz-Graduierung

## Enthaltene Profile

Das KRK-Modul umfasst folgende FHIR-Profile:

### Beobachtungen (Observations)
- **ASA-Klassifikation**: Präoperative Anästhesierisiko-Bewertung
- **Abstand Anokutanlinie**: Tumorlokalisation relativ zur Anokutanlinie
- **Abstand Circumferentielle Resektionsebene**: CRM-Messung
- **Abstand Resektionsrand Aboral**: Aboraler Sicherheitsabstand
- **MRT Mesorektale Faszie**: Präoperative MRT-Bewertung
- **Anastomoseninsuffizienz**: Postoperative Komplikation

### Verfahren (Procedures)
- **KRK-Operation**: Organspezifische chirurgische Eingriffe
- **Stoma-Markierung**: Präoperative Markierung für Stomaanlage

### Specimen
- **KRK-Specimen**: Pathologie-Specimen mit KRK-spezifischen Details

## Implementierungshinweise

### Datenerfassung
- **Zeitliche Zuordnung**: Präoperative vs. postoperative Beobachtungen
- **Referenzintegrität**: Konsistente Verknüpfung zu Primärtumordiagnose und Operation
- **Resektionsstatus**: R0/R1/R2-Klassifikation basierend auf Resektionsrändern

### Qualitätssicherung
- **Vollständigkeitsprüfung**: Kritische Datenfelder als Must Support markiert
- **Wertebereichsvalidierung**: Einschränkung auf medizinisch sinnvolle Wertebereiche
- **Terminologie-Konsistenz**: Verwendung standardisierter Kodierungssysteme

Die KRK-Profile ermöglichen eine vollständige und strukturierte Dokumentation der kolorektal-karzinom-spezifischen Daten entsprechend den aktuellen medizinischen Standards und dem oBDS.