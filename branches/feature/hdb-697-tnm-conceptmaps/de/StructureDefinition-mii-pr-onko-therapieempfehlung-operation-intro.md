Dieses Profil beschreibt eine **Operations-Therapieempfehlung** im Rahmen der Tumorkonferenz. Es basiert auf dem FHIR ServiceRequest und ermöglicht die strukturierte Erfassung von chirurgischen Therapieempfehlungen.

### Inhalt

Das ServiceRequest-Profil ermöglicht die Erfassung von Operationsempfehlungen der Tumorkonferenz mit:
- **Kategorisierung**: Art der empfohlenen Operation
- **Tumorerkrankungsbezug**: Referenz auf die Primärtumor-Diagnose
- **Unterstützende Informationen**: Relevante Befunde und Staging-Ergebnisse

### Anwendungsfälle

#### **Primäre Tumorchirurgie**
Empfehlung zur operativen Entfernung des Primärtumors:
```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(TNM-Staging)
```

#### **Metastasen-Chirurgie**
Empfehlung zur Resektion von Metastasen:
```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(Fernmetastasen-Observation)
```

### Technische Implementierung

#### **Intent**
Das `intent` Element ist auf `#proposal` fixiert, da es sich um eine Therapieempfehlung handelt.

#### **Category**
Die `category` ermöglicht die Klassifikation der empfohlenen Operation (z.B. kurative vs. palliative Intention).

#### **reasonReference**
Referenz auf die zugrundeliegende Tumorerkrankung:
```
reasonReference: Reference(MII_PR_Onko_Diagnose_Primaertumor)
```

#### **supportingInfo**
Optionale Referenzen auf unterstützende klinische Informationen:
- **Staging-Ergebnisse**: TNM-Klassifikation
- **Bildgebung**: Relevante diagnostische Befunde
- **Laborwerte**: Tumormarker oder andere relevante Parameter

### Verwendung mit Extended CarePlan

Dieses Profil ist primär für die Verwendung mit dem **[Tumorkonferenz: Detaillierte Therapieempfehlungen (CarePlan)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html)** konzipiert:

- **Standard-oBDS**: Krebsregister erfassen nur "Operation geplant" (Therapieempfehlung Typ "OP") ohne Details zur Art der Operation
- **Extended CarePlan**: Ermöglicht spezifische Operationsempfehlungen mit SNOMED CT Kodierung

**Integration**:
```
CarePlan (Detailed Recommendations)
└── activity.reference → ServiceRequest
    ├── code: SNOMED CT (spezifische OP)
    └── reasonReference: Reference(Primärtumor)
```

### oBDS-Kontext

Dieses Profil unterstützt die Erfassung von Therapieempfehlungen gemäß oBDS-Kapitel 19:
- **19.1 Therapieempfehlung Typ**: "OP" (Operation)

**Hinweis**: Die Standard-oBDS-Erfassung erfolgt über `CarePlan.activity.detail.code`. Dieses ServiceRequest-Profil bietet erweiterte Strukturierung für molekulare Tumorboards und spezialisierte Anwendungsfälle.

Die detaillierte Planung und Durchführung der Operation wird im separaten [Operation: Procedure](StructureDefinition-mii-pr-onko-operation.html) erfasst.

### Abgrenzung

| Profil | Ressource | Verwendung |
|--------|-----------|------------|
| **Therapieempfehlung Operation** | ServiceRequest | Empfehlung der Tumorkonferenz |
| **Operation** | Procedure | Durchgeführte Operation |

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Operation-ServiceRequest.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Therapieempfehlung Operation](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.html).
{: .ig-highlight .ig-highlight-grey}
