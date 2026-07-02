# Beispiel: Mamma-Bundle - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel: Mamma-Bundle

### Inhalt

Das **Mamma Bundle Beispiel** demonstriert die strukturierte Zusammenstellung aller Mamma-spezifischen FHIR-Ressourcen in einem einheitlichen Transaktions-Bundle. Dieses Bundle zeigt die praktische Anwendung der Mamma-Profile und deren Verknüpfungen untereinander in einem realistischen klinischen Szenario.

Das Bundle implementiert das **Transaction-Pattern** und ist server-konsumierbar, wodurch alle enthaltenen Ressourcen als atomare Operation übertragen werden können.

-------

### Bundle-Struktur

Das Mamma-Bundle umfasst folgende Ressourcen:

#### Primäre Ressourcen

* **Patient**: Mamma-Karzinom Patientin (Martha MammaCa)
* **Condition**: Primärtumor-Diagnose (C50.3 - Unterer innerer Quadrant der Brustdrüse)

#### Mamma-spezifische Observations

* **Menopause Status**: Prämenopausaler Status der Patientin
* **Estrogen-Rezeptorstatus**: Positiver Befund mit 5% positiven Zellen, schwache Färbeintensität
* **Progesteron-Rezeptorstatus**: Positiver Befund mit 25% positiven Zellen, schwache Färbeintensität

#### Zusätzliche Elemente

* **Tumorgrößenbestimmung**: Größte Dimension 25mm
* **Präoperative Markierung**: Beispiel für Markierungsverfahren

-------

### Klinisches Szenario

Das Bundle repräsentiert eine **prämenopausale Patientin** mit einem **hormonrezeptor-positiven Mammakarzinom** im unteren inneren Quadranten der Brustdrüse:

**Patientencharakteristika:**

* **Alter/Status**: Prämenopausal (wichtig für Therapieplanung)
* **Tumorlokalisation**: C50.3 (Unterer innerer Quadrant)
* **Tumorgröße**: 25mm (T2-Kategorie)

**Rezeptorstatus:**

* **Estrogen-Rezeptor**: Positiv (5% positive Zellen, schwache Intensität)
* **Progesteron-Rezeptor**: Positiv (25% positive Zellen, schwache Intensität)
* **Therapeutische Konsequenz**: Kandidatin für antihormonelle Therapie

-------

### Technische Implementation

#### Bundle-Typ und Struktur

```
* type = #transaction

```

* **Transaction Bundle**: Atomare Übertragung aller Ressourcen
* **Server-konsumierbar**: Alle Entries mit vollständigen Request-Informationen

#### Entry-Pattern

Jeder Bundle-Entry enthält:

* **fullUrl**: Eindeutige Referenz-URL
* **resource**: Die eigentliche FHIR-Ressource
* **request.method**: HTTP POST für Erstellung
* **request.url**: Ziel-Ressourcentyp

#### Referenz-Integrität

* **Condition**: Referenziert Patient über `subject`
* **Observations**: Referenzieren sowohl Patient (`subject`) als auch Condition (`focus`)
* **Procedures**: Referenzieren Patient (`subject`) und Condition (`reasonReference`)

-------

### Verknüpfungsmuster

Das Bundle demonstriert die **konsistente Referenzstruktur** zwischen Mamma-spezifischen Ressourcen:

```
Patient ← subject ← Condition (Primärtumor)
                        ↑ focus
                 Observations (Menopause, Rezeptorstatus)
                        ↑ reasonReference
                   Procedures (Markierung)

```

-------

### ValueSet-Verwendung

Das Bundle zeigt die praktische Anwendung verschiedener Terminologien:

#### SNOMED CT

* **Menopause Status**: `22636003` "Premenopausal state"
* **Anatomische Lokalisation**: `110494001` "Structure of upper inner quadrant of right breast"

#### LOINC

* **Estrogen-Rezeptor**: `40556-3` "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
* **Progesteron-Rezeptor**: `85339-0` "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* **Tumorgröße**: `21889-1` "Size Tumor"
* **Rezeptorstatus**: `LA6576-8` "Positive"

#### ICD-10-GM

* **Diagnose**: `C50.3` "Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse"

-------

### Bundle-Beispiel

[Beispiel: mii-exa-onko-mamma-example-bundle-1](Bundle-mii-exa-onko-mamma-example-bundle-1.md)

-------

### Einzelne Ressourcen-Beispiele

#### Patient

[Beispiel: mii-exa-onko-mamma-bundle-patient](Patient-mii-exa-onko-mamma-bundle-patient.md)

#### Primärtumor-Condition

[Beispiel: mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.md)

#### Menopause Status

[Beispiel: mii-exa-onko-mamma-menopause-status-1](Observation-mii-exa-onko-mamma-menopause-status-1.md)

#### Estrogen-Rezeptorstatus

[Beispiel: mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.md)

#### Progesteron-Rezeptorstatus

[Beispiel: mii-exa-onko-mamma-rezeptorstatus-progesteron-1](Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.md)

