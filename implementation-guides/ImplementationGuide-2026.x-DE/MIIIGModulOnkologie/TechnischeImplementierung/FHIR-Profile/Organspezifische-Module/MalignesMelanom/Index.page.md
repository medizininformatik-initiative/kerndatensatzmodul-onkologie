---
parent: 
topic: MelanomModule
---

## {{page-title}}

Die Melanom-spezifischen Profile erweitern das MII KDS Onkologie Modul um spezielle Datenelemente für das maligne Melanom gemäß den Anforderungen der organspezifischen Module der ADT/GEKID-Basisdokumentation.

### Übersicht der Melanom-spezifischen Profile

<style>
    .responsive-img {
        max-width: 100%;
        height: auto;
        display: block;
        margin: 20px auto;
    }
</style>

<div class="diagram-container">
    <img class="responsive-img" 
         src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/release/v2026-draft/implementation-guides/ImplementationGuide-2026.x-DE/Images/MII_Onko_Melanom_Module/MII_Onko_Melanom_Module.svg" 
         alt="MII Onkologie - Malignes Melanom Modul Architektur" 
         title="MII Onkologie - Malignes Melanom Modul">
</div>

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