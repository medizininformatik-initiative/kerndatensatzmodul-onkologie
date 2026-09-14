Dieses Profil beschreibt eine **Medikations-Therapieempfehlung** im Rahmen der Tumorkonferenz. Es basiert auf dem FHIR MedicationRequest und wird typischerweise als Teil einer Kombinationstherapie (RequestGroup) oder als eigenständige Empfehlung verwendet.

### Inhalt

Das MedicationRequest-Profil ermöglicht die strukturierte Erfassung von Medikationsempfehlungen mit:
- **Medikamentenkodierung**: PZN (Arzneimittel) und/oder ATC-DE (Wirkstoffe)
- **Tumorerkrankungsbezug**: Pflicht-Referenz auf die Primärtumor-Diagnose
- **Zusätzliche Begründungen**: Optionale Referenzen auf weitere Conditions oder Observations

### Anwendungsfälle

#### **Eigenständige Medikationsempfehlung**
Für Einzelsubstanz-Empfehlungen ohne Kombinationsprotokoll:
```
MedicationRequest
├── intent: #proposal
├── medicationCodeableConcept: ATC L01XE27 (Ibrutinib)
├── authoredOn: 2024-01-15
└── reasonReference: Reference(Primärtumor)
```

#### **Teil einer Kombinationstherapie**
Als Komponente einer RequestGroup-basierten Kombinationstherapie:
```
RequestGroup (FOLFOX-Protokoll)
├── action[0].resource: MedicationRequest (5-FU)
├── action[1].resource: MedicationRequest (Oxaliplatin)
└── action[2].resource: MedicationRequest (Leucovorin)
```

### Technische Implementierung

#### **Intent-Semantik**
- **`#proposal`**: Eigenständige Therapieempfehlung der Tumorkonferenz
- **`#option`**: Teil einer RequestGroup (Kombinationstherapie)

#### **Medikamentenkodierung**
Das `medicationCodeableConcept` Element unterstützt:
- **ATC-DE**: Für Wirkstoff-basierte Empfehlungen
- **PZN**: Für spezifische Arzneimittel-Empfehlungen
- **Freitext**: Für experimentelle oder nicht-kodierbare Substanzen

#### **reasonReference Erweiterung**
Das Profil erlaubt neben der Pflicht-Referenz auf den Primärtumor auch:
- **Condition**: Weitere relevante Erkrankungen als Begründung
- **Observation**: Unterstützende Befunde (z.B. Biomarker, Staging)

```
reasonReference (Slicing: open, profile-based)
├── Primaertumor (1..1 MS): Reference(MII_PR_Onko_Diagnose_Primaertumor)
└── [weitere]: Reference(Condition or Observation)
```

### Verwendung mit Extended CarePlan

Dieses Profil ist primär für die Verwendung mit dem **[Tumorkonferenz: Detaillierte Therapieempfehlungen (CarePlan)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html)** und der **[Therapieempfehlung Kombinationstherapie (RequestGroup)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html)** konzipiert:

- **Standard-oBDS**: Krebsregister erfassen nur Therapietyp (z.B. "CH" für Chemotherapie) ohne Details zu spezifischen Medikamenten
- **Extended CarePlan**: Ermöglicht spezifische Medikationsempfehlungen mit ATC/PZN Kodierung

**Integration mit RequestGroup (Kombinationstherapie)**:
```
CarePlan (Detailed Recommendations)
└── activity.reference → RequestGroup
    ├── code: "CZ" (Chemo + zielgerichtete Substanzen)
    └── action.action.resource → MedicationRequest
        ├── medication: ATC L01XE (Trastuzumab)
        └── reasonReference: Reference(Primärtumor)
```

### oBDS-Kontext

Dieses Profil unterstützt die Erfassung von Therapieempfehlungen gemäß oBDS-Kapitel 19:
- **19.1 Therapieempfehlung Typ**: Über RequestGroup.code (bei Kombinationstherapien)
- **Medikamentendetails**: Strukturierte Erfassung über MedicationRequest

**Hinweis**: Die Standard-oBDS-Erfassung erfolgt über `CarePlan.activity.detail.code` (nur Therapietyp). Dieses MedicationRequest-Profil bietet erweiterte Strukturierung für molekulare Tumorboards, Kombinationstherapie-Protokolle und spezialisierte Anwendungsfälle.

### Terminologie-Binding

**medicationCodeableConcept.coding**:
- Mindestens eine Kodierung erforderlich (1..*)
- ATC-DE oder PZN empfohlen
- Freitext über `.text` möglich

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Medikation-MedicationRequest.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.html).
{: .ig-highlight .ig-highlight-grey}
