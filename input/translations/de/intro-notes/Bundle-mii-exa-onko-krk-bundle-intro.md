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

- **KR1**: Abstand Anokutanlinie → [mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.html)

#### Pathologische Bewertung

- **KR2**: Abstand Resektionsrand aboral → [mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.html)
- **KR3**: Abstand circumferelle Resektionsebene → [mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.html)
- **KR4**: TME-Qualität → [mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.html)

#### Bildgebende Verfahren

- **KR5**: MRT/CT Mesorektale Faszie → [mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.html)

#### Operative Daten

- **KR7**: Stomamarkierung → [mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.html)
- **KR8**: Anastomoseninsuffizienz → [mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.html)
- **KR9**: ASA-Klassifikation → [mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.html) <!-- TODO:REVIEW Quellseite verwies auf "Observation/mii-exa-onko-krk-asa-klassifikation"; im Bundle liegt die generische Instanz "mii-exa-onko-asa-klassifikation". -->

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

<!-- TODO:REVIEW Die hier aus der Quellseite uebernommenen Codes weichen von den ausgelieferten Instanzen ab: Anastomoseninsuffizienz nutzt SNOMED CT 236091002 "Large intestine anastomotic leak (disorder)" statt 235919008; das ASA-CodeSystem heisst mii-cs-onko-asa-obds (nicht mii-cs-onko-krk-asa-obds). Fachlich pruefen und angleichen. -->

---

### Einzelne Ressourcen-Beispiele

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Bundle-Example.page.md gate=B -->
Die im Bundle enthaltenen Ressourcen sind zusätzlich als eigenständige Beispielinstanzen ausgeliefert:

- Patient: [mii-exa-onko-krk-bundle-patient](Patient-mii-exa-onko-krk-bundle-patient.html)
- Primärtumor-Condition: [mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.html)
- Behandlungsfall: [mii-exa-onko-krk-bundle-encounter](Encounter-mii-exa-onko-krk-bundle-encounter.html)
- Abstand Anokutanlinie: [mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.html)
- Circumferelle Resektionsebene: [mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.html)
- Aboraler Resektionsrand: [mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.html)
- MRT Mesorektale Faszie: [mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.html)
- ASA-Klassifikation: [mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.html)
- Anastomoseninsuffizienz: [mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.html)
- Stoma-Markierung: [mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.html)
- KRK-Operation: [mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.html)
- KRK-Specimen: [mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.html)
