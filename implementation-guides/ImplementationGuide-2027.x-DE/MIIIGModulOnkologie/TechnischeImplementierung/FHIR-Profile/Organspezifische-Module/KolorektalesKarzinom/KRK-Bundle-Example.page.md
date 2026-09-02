---
parent: 
topic: KRKBundle
subject: 
---

## {{page-title}}

---

### Inhalt

Das **KRK Bundle Beispiel** demonstriert die strukturierte Zusammenstellung aller Kolorektales-Karzinom-spezifischen FHIR-Ressourcen in einem einheitlichen Transaktions-Bundle. Dieses Bundle zeigt die praktische Anwendung der KRK-Profile und deren Verknüpfungen untereinander in einem realistischen klinischen Szenario eines Rektumkarzinoms.

Das Bundle implementiert das **Transaction-Pattern** und ist server-konsumierbar, wodurch alle enthaltenen Ressourcen als atomare Operation übertragen werden können.

---

### Bundle-Struktur

Das KRK-Bundle umfasst folgende Ressourcen:

#### Primäre Ressourcen
- **Patient**: KRK-Patient (Klaus KolorektalCa)
- **Condition**: Primärtumor-Diagnose (C18 - Bösartige Neubildung des Kolons)
- **Encounter**: Stationärer Behandlungsfall

#### KRK-spezifische Observations
- **Abstand zur Anokutanlinie**: Tumorsitz 6cm ab Anokutanlinie (KR1)
- **Circumferelle Resektionsebene**: Minimaler Abstand 2mm (KR3)
- **Aboraler Resektionsrand**: Minimaler Abstand 15mm (KR2)
- **MRT Mesorektale Faszie**: Bildgebende Bewertung des Abstands (KR2)
- **Anastomoseninsuffizienz**: Postoperative Komplikationsbewertung (KR8)
- **ASA-Klassifikation**: Präoperative Risikobewertung ASA II (KR9)

#### Therapeutische Ressourcen
- **Stoma-Markierung**: Präoperative Stomapositionsmarkierung (KR7)
- **KRK-Operation**: Operative Resektion mit TME-Qualitätsbewertung (KR4)
- **KRK-Specimen**: Operationspräparat mit pathologischer Aufarbeitung

---

### Klinisches Szenario

Das Bundle repräsentiert einen **Patienten mit Rektumkarzinom** mit kompletter präoperativer Diagnostik und operativer Therapie:

**Patientencharakteristika:**
- **Diagnose**: C18 Kolonkarzinom
- **ASA-Status**: ASA II (mäßiges Operationsrisiko)
- **Tumorlokalisation**: 6cm ab Anokutanlinie (tiefes Rektum)

**Präoperative Diagnostik:**
- **MRT-Staging**: Bewertung der mesorektalen Faszie
- **Präoperative Vorbereitung**: Stomamarkierung durchgeführt

**Operative Therapie:**
- **Rektumresektion**: Mit TME-Technik (Totale mesorektale Exzision)
- **Resektionsränder**: R0-Resektion mit ausreichenden Sicherheitsabständen
- **Postoperative Komplikationen**: Keine Anastomoseninsuffizienz

---

### Technische Implementation

#### Bundle-Typ und Struktur
```
* type = #transaction
```
- **Transaction Bundle**: Atomare Übertragung aller Ressourcen
- **Server-konsumierbar**: Alle Entries mit vollständigen Request-Informationen

#### Entry-Pattern
Jeder Bundle-Entry enthält:
- **fullUrl**: Eindeutige Referenz-URL
- **resource**: Die eigentliche FHIR-Ressource
- **request.method**: HTTP POST für Erstellung
- **request.url**: Ziel-Ressourcentyp

#### Referenz-Integrität
- **Condition**: Referenziert Patient über `subject`
- **Observations**: Referenzieren sowohl Patient (`subject`) als auch Condition (`focus`)
- **Procedures**: Referenzieren Patient (`subject`) und Condition (`reasonReference`)
- **Specimen**: Referenziert Patient (`subject`) und Collection-Procedure

---

### Verknüpfungsmuster

Das Bundle demonstriert die **konsistente Referenzstruktur** zwischen KRK-spezifischen Ressourcen:

```
Patient ← subject ← Condition (Primärtumor)
                        ↑ focus
                 Observations (Abstände, ASA, Anastomoseninsuffizienz)
                        ↑ reasonReference
                   Procedures (Stoma-Markierung, Operation)
                        ↑ collection.procedure
                    Specimen (Operationspräparat)
```

---

### oBDS-Zuordnung

Das Bundle demonstriert die vollständige Abbildung der oBDS-Datenfelder für Kolorektales Karzinom:

#### Tumor-Lokalisation
- **KR1**: Abstand Anokutanlinie → `Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie`


#### Pathologische Bewertung
- **KR2**: Abstand Resektionsrand aboral → `Observation/mii-exa-onko-krk-abstand-resektionsrand-aboral`
- **KR3**: Abstand circumferelle Resektionsebene → `Observation/mii-exa-onko-krk-abstand-circumferelle-resektionsebene`
- **KR4**: TME-Qualität → `Specimen/mii-exa-onko-krk-specimen`

#### Bildgebende Verfahren  
- **KR5**: MRT/CT Mesorektale Faszie → `Observation/mii-exa-onko-krk-abstand-mesorektale-fascie`

#### Operative Daten
- **KR7**: Stomamarkierung → `Procedure/mii-exa-onko-krk-stoma-markierung`
- **KR8**: Anastomoseninsuffizienz → `Observation/mii-exa-onko-krk-anastomoseninsuffizienz`
- **KR9**: ASA-Klassifikation → `Observation/mii-exa-onko-krk-asa-klassifikation`

---

### ValueSet-Verwendung

Das Bundle zeigt die praktische Anwendung verschiedener Terminologien:

#### LOINC
- **Abstand Anokutanlinie**: `33748-5` "Distance from anal verge"
- **ASA-Klassifikation**: `97816-3` "American Society of Anesthesiologists physical status score"

#### SNOMED CT
- **Anastomoseninsuffizienz**: `235919008` "Anastomotic leak"
- **Operative Eingriffe**: Verschiedene SNOMED CT Codes für kolorektale Operationen

#### ICD-10-GM
- **Diagnose**: `C18` "Bösartige Neubildung des Kolons"

#### oBDS CodeSystems
- **ASA-Klassifikation**: `mii-cs-onko-krk-asa-obds#2` "ASA II"
- **Stomamarkierung**: `mii-cs-onko-krk-stoma-anzeichnung#durchgefuehrt` "Durchgeführt"
- **TME-Qualität**: `mii-cs-onko-krk-tme-qualitaet#komplett` "Komplett"

---

### Bundle-Beispiel

{{json:mii-exa-onko-krk-bundle}}

---

### Einzelne Ressourcen-Beispiele

#### Patient
{{json:mii-exa-onko-krk-bundle-patient}}

#### Primärtumor-Condition
{{json:mii-exa-onko-krk-diagnose}}

#### Abstand Anokutanlinie
{{json:mii-exa-onko-krk-abstand-tumor-anokutanlinie}}

#### Circumferelle Resektionsebene
{{json:mii-exa-onko-krk-abstand-circumferelle-resektionsebene}}

#### Aboraler Resektionsrand
{{json:mii-exa-onko-krk-abstand-resektionsrand-aboral}}

#### MRT Mesorektale Faszie
{{json:mii-exa-onko-krk-abstand-mesorektale-fascie}}

#### ASA-Klassifikation
{{json:mii-exa-onko-krk-asa-klassifikation}}

#### Anastomoseninsuffizienz
{{json:mii-exa-onko-krk-anastomoseninsuffizienz}}

#### Stoma-Markierung
{{json:mii-exa-onko-krk-stoma-markierung}}

#### KRK-Operation
{{json:mii-exa-onko-krk-operation}}

#### KRK-Specimen
{{json:mii-exa-onko-krk-specimen}}

---