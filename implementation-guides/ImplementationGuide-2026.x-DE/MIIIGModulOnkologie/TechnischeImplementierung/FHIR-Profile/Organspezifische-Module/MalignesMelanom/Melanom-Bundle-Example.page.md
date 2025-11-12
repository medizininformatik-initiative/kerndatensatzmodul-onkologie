---
parent: 
topic: MelanomBundle
subject: 
---

## {{page-title}}

---

### Inhalt

Das **Melanom Bundle Beispiel** demonstriert die strukturierte Zusammenstellung aller Melanom-spezifischen FHIR-Ressourcen in einem einheitlichen Transaktions-Bundle. Dieses Bundle zeigt die praktische Anwendung der Melanom-Profile und deren Verknüpfungen untereinander in einem realistischen klinischen Szenario eines Malignen Melanoms der Haut.

Das Bundle implementiert das **Transaction-Pattern** und ist server-konsumierbar, wodurch alle enthaltenen Ressourcen als atomare Operation übertragen werden können.

---

### Bundle-Struktur

Das Melanom-Bundle umfasst folgende Ressourcen:

#### Primäre Ressourcen
- **Patient**: Melanom-Patient (Maria Melanom)
- **Condition**: Primärtumor-Diagnose (C43.9 - Bösartige Neubildung: Haut, nicht näher bezeichnet)
- **Encounter**: Stationärer Behandlungsfall

#### Melanom-spezifische Observations
- **Breslow-Tiefe**: Tumordicke 2.1mm von Granularschicht bis tiefste Invasion (Breslow)
- **Sicherheitsabstand**: Minimaler Abstand zum Resektionsrand 5mm (MM1)
- **Ulzeration**: Nachweis einer Ulzeration der Epidermis (MM4)
- **LDH**: Laktatdehydrogenase-Wert 280 U/L als prognostischer Marker (LDH)

#### Bundle-spezifische Merkmale
- **Transaction Bundle**: Server-konsumierbare atomare Operation
- **Referenz-Konsistenz**: Alle Einzelressourcen referenzieren Bundle-Kernressourcen
- **Vollständige Abdeckung**: Alle 4 Melanom-Profile sind enthalten

---

### Klinisches Szenario

Das Bundle repräsentiert eine **Patientin mit Malignem Melanom** mit kompletter histopathologischer Diagnostik und operativer Therapie:

**Patientencharakteristika:**
- **Diagnose**: C43.9 Malignes Melanom der Haut
- **Breslow-Tiefe**: 2.1mm (prognostisch wichtig)
- **Tumorlokalisation**: Haut, nicht näher bezeichnet

**Histopathologische Diagnostik:**
- **Ulzeration**: Nachweis einer Ulzeration der Epidermis
- **LDH**: Erhöhter Wert (280 U/L) als prognostischer Marker

**Operative Therapie:**
- **Exzision**: Mit ausreichendem Sicherheitsabstand
- **Sicherheitsabstand**: Minimaler Abstand 5mm zum Resektionsrand
- **Resektionsstatus**: R0-Resektion erreicht

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


---

### oBDS-Zuordnung

Das Bundle demonstriert die vollständige Abbildung der oBDS-Datenfelder für Malignes Melanom:

#### Histopathologische Bewertung
- **MM2**: Breslow-Tiefe → `Observation/mii-exa-onko-melanom-breslow-tiefe`
- **MM4**: Ulzeration → `Observation/mii-exa-onko-melanom-ulzeration`

#### Chirurgische Bewertung
- **MM1**: Sicherheitsabstand → `Observation/mii-exa-onko-melanom-sicherheitsabstand`

#### Laborparameter
- **MM3**: Laktatdehydrogenase → `Observation/mii-exa-onko-melanom-ldh`

---

### ValueSet-Verwendung

Das Bundle zeigt die praktische Anwendung verschiedener Terminologien:

#### LOINC
- **LDH**: `14805-6` "Lactate dehydrogenase activity in Serum or Plasma"

#### SNOMED CT
- **Breslow-Tiefe**: `106243009` "Breslow depth staging for melanoma of skin"
- **Sicherheitsabstand**: `396511007` "Distance of in situ melanoma from closest lateral surgical margin"
- **Ulzeration**: `97816-3` "Ulceration present in melanoma of skin"

#### ICD-10-GM
- **Diagnose**: `C43.9` "Bösartige Neubildung: Haut, nicht näher bezeichnet"

#### oBDS CodeSystems
- **Ulzeration**: `mii-cs-onko-melanom-ulzeration#J` "Ja"
- **LDH-Bewertung**: `mii-cs-onko-melanom-ldh-bewertung#erhoeht" "Erhöht"

---

### Bundle-Beispiel

{{json:mii-exa-onko-melanom-bundle}}

---

### Einzelne Ressourcen-Beispiele

#### Patient
{{json:mii-exa-onko-melanom-bundle-patient}}

#### Primärtumor-Condition
{{json:mii-exa-onko-melanom-diagnose}}

#### Breslow-Tiefe
{{json:mii-exa-onko-melanom-breslow-tiefe}}

#### Sicherheitsabstand
{{json:mii-exa-onko-melanom-sicherheitsabstand}}

#### Ulzeration
{{json:mii-exa-onko-melanom-ulzeration}}

#### LDH
{{json:mii-exa-onko-melanom-ldh}}

---