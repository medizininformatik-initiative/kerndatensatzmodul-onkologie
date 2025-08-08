---
parent: 
---

## {{page-title}}

Die Melanom-spezifischen Profile erweitern das MII KDS Onkologie Modul um spezielle Datenelemente für das maligne Melanom gemäß den Anforderungen der organspezifischen Module der ADT/GEKID-Basisdokumentation.

### Übersicht der Melanom-spezifischen Profile

<plantuml>
@startuml
!define OBSERVATION_COLOR #E8F4FD
!define BUNDLE_COLOR #FFF9E6
!define PATIENT_COLOR #F0F0F0
!define CONDITION_COLOR #FFE8E8

skinparam backgroundcolor white
skinparam component {
  BackgroundColor<<observation>> OBSERVATION_COLOR
  BackgroundColor<<bundle>> BUNDLE_COLOR
  BackgroundColor<<patient>> PATIENT_COLOR
  BackgroundColor<<condition>> CONDITION_COLOR
  BorderColor Black
  ArrowColor Black
}

title Melanom-spezifische Profile und ihre Beziehungen

package "Melanom-spezifische Profile" {
  component "Melanom\nBreslow-Tiefe\n(Observation)" as breslow <<observation>>
  component "Melanom\nUlzeration\n(Observation)" as ulzeration <<observation>>
  component "Melanom\nSicherheitsabstand\n(Observation)" as sicherheit <<observation>>
  component "Melanom\nLDH\n(Observation)" as ldh <<observation>>
}

package "Bundle" {
  component "Melanom Bundle\n(Bundle)" as bundle <<bundle>>
}

package "Core Resources" {
  component "Patient" as patient <<patient>>
  component "Melanom Diagnose\n(Condition)" as diagnose <<condition>>
}

' Relationships
breslow --> patient : subject
breslow --> diagnose : focus
ulzeration --> patient : subject
ulzeration --> diagnose : focus
sicherheit --> patient : subject
sicherheit --> diagnose : focus
ldh --> patient : subject
ldh --> diagnose : focus

bundle ..> breslow : contains
bundle ..> ulzeration : contains
bundle ..> sicherheit : contains
bundle ..> ldh : contains
bundle ..> patient : contains
bundle ..> diagnose : contains

@enduml
</plantuml>

### Melanom-spezifische Datenelemente

Die Melanom-Module umfassen folgende spezifische klinische Parameter:

#### **Breslow-Tiefe**
- Vertikale Tumordicke in Millimetern
- Wichtigster prognostischer Faktor beim Melanom
- LOINC: 39092-1 "Breslow depth"

#### **Ulzeration**
- Vorhandensein einer Ulzeration des Primärtumors
- Beeinflusst die TNM-Klassifikation
- SNOMED CT: 385324008 "Tumor ulceration present"

#### **Sicherheitsabstand**
- Chirurgischer Sicherheitsabstand bei der Exzision
- In Millimetern dokumentiert
- Qualitätsindikator für die operative Therapie

#### **LDH (Laktatdehydrogenase)**
- Serummarker für Tumorlast
- Wichtig für Stadiumseinteilung (M1c/M1d)
- LOINC: 14804-9 "Lactate dehydrogenase"

### Klinische Verwendung

Diese Profile werden typischerweise in folgenden Szenarien verwendet:

1. **Primärdiagnostik**: Dokumentation der initialen Tumorcharakteristika
2. **Staging**: Breslow-Tiefe und Ulzeration sind essentiell für die TNM-Klassifikation
3. **Therapieplanung**: Sicherheitsabstand basiert auf Breslow-Tiefe
4. **Verlaufskontrolle**: LDH als Verlaufsparameter bei metastasiertem Melanom

### Integration mit Basisprofilen

Alle Melanom-spezifischen Profile:
- Basieren auf der FHIR Observation-Ressource
- Referenzieren die Primärdiagnose über `focus`
- Sind in Transaction-Bundles integrierbar
- Unterstützen die oBDS-Dokumentationsanforderungen

### Beispiel-Bundle

Ein vollständiges Beispiel-Bundle für Melanom-Patienten ist verfügbar unter:
- [Melanom Bundle Example](Melanom-Bundle-Example.page.md)

Das Bundle demonstriert die Verwendung aller Melanom-spezifischen Profile in einem realistischen klinischen Kontext.