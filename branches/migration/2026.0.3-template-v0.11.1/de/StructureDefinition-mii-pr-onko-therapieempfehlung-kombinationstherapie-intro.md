Dieses Profil beschreibt strukturierte **Therapieempfehlungen für Kombinationstherapien** mittels RequestGroup. Es ermöglicht die detaillierte Abbildung von Multi-Agent-Protokollen und alternativen Therapieoptionen für molekulare Tumorboards.

### Inhalt

Das RequestGroup-Profil dient als "Protokoll-Koordinator" zwischen **CarePlan-Empfehlungen** und **spezifischen Therapieressourcen** (SystemischeTherapie, MedicationRequest, etc.).

Es ermöglicht die Abbildung komplexer Therapieempfehlungen für **molekulare Tumorboards** und andere Tumorkonferenzen, die über einfache Kategorisierungen hinausgehen und spezifische Medikamentenkombinationen oder Therapieoptionen erfordern.

### Abgrenzung zur oBDS-Standardempfehlung

| Aspekt | oBDS-Standardempfehlung | Erweiterte Empfehlung mit RequestGroup |
|--------|------------------------|-----------------------------------------|
| **Verwendung** | Traditionelle Tumorboards | Molekulare Tumorboards, komplexe Protokolle |
| **Therapieempfehlung** | `activity.detail.code` (19.1 oBDS) | `activity.reference` → RequestGroup |
| **Multi-Agent-Therapien** | Einzelne Kategorisierung | Detaillierte Protokolle mit spezifischen Agenten |
| **FHIR Invarianten** | `activity.detail` verwendet | `activity.detail` deaktiviert (0..0) |

**Grund**: Die FHIR-R4-Invariante `cpl-3` verhindert die gleichzeitige Verwendung von `activity.detail.code` und `activity.reference`. Beide Ansätze werden daher als getrennte Slices geführt.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-Detailed-Recommendations-CarePlan.page.md gate=B -->
> Beide Varianten sind inzwischen im Tumorkonferenz-Profil selbst als Slices `activity:obds` (mit `activity.detail.code`, `activity.reference` auf 0..0) und `activity:extended` (mit `activity.reference` 1..1, `activity.detail` auf 0..0) abgebildet; ein eigenes "Detailed Recommendations"-CarePlan-Profil existiert nicht mehr. Die Struktur ist in der Artefaktdarstellung beschrieben: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.html).
{: .ig-highlight .ig-highlight-grey}

### Anwendungsfälle

#### **Multi-Agent-Therapieprotokolle**
- **Anti-HER2-Kombination**: Trastuzumab + Pertuzumab
- **CDK4/6 + Hormontherapie**: Palbociclib + Letrozol
- **Triplet-Therapien**: Tucatinib + Trastuzumab + Capecitabine

#### **Alternative Therapieoptionen**
- **Linientherapie**: Erste-, zweite-, drittlinienoptionen basierend auf Resistenz
- **Biomarker-basiert**: Verschiedene Optionen je nach Mutationsstatus
- **Klassen-basiert**: "Beliebiger CDK4/6 Inhibitor" vs. spezifische Auswahl

### Technische Architektur

#### **RequestGroup als Protokoll-Koordinator**
```
CarePlan.activity.reference → RequestGroup
├── code: oBDS-Therapietyp (ZS, CZ, IM, etc.)
├── basedOn: Reference(CarePlan) [Rückverfolgbarkeit]
└── action[].resource: Reference(SystemischeTherapie)
```

#### **Therapietyp-Klassifikation**
Das **RequestGroup.code** Element enthält die **oBDS-Therapietyp-Klassifikation**:

- **ZS**: Zielgerichtete Substanzen
- **CZ**: Chemotherapie + zielgerichtete Substanzen
- **IM**: Immun-/Antikörpertherapie
- **CI**: Chemo- + Immun-/Antikörpertherapie
- **CIZ**: Chemo- + Immun-/Antikörpertherapie + zielgerichtete Substanzen

**Wichtig**: Diese Klassifikation war ursprünglich in `CarePlan.activity.detail.code` (oBDS 19.1), wird aber aufgrund von FHIR-Invarianten in das RequestGroup verlagert.

### Implementierungsoptionen

#### **Option 1: Pharmazeutische Klassen**
Für **Klassen-basierte Empfehlungen** (z.B. "beliebiger CDK4/6 Inhibitor"):

```
RequestGroup
├── code: "CZ" (Chemotherapie + zielgerichtete Substanzen)
└── action[0].resource: Reference(SystemischeTherapie)
    └── code.text: "CDK4/6 Inhibitor (Klasse L01XE) - Palbociclib, Ribociclib oder Abemaciclib"
```

**Anwendung**: Wenn molekulares Tumorboard eine **Medikamentenklasse** empfiehlt und die finale Auswahl dem behandelnden Arzt überlässt.

#### **Option 2: Spezifische Medikamentenauswahl**
Für **spezifische Optionen** mit Auswahllogik:

```
RequestGroup
├── code: "ZS" (Zielgerichtete Substanzen)
├── action[0].selectionBehavior: #any
├── action[0].requiredBehavior: #must
├── action[0].action[0]: Reference(Trastuzumab) [priority: routine]
├── action[0].action[1]: Reference(T-DM1) [priority: asap]
└── action[0].action[2]: Reference(Tucatinib) [priority: stat]
```

**Anwendung**: Wenn molekulares Tumorboard **spezifische Alternativen** mit klaren Präferenzen basierend auf Resistenzmustern oder klinischer Situation empfiehlt.

### FHIR-Invarianten-Konformität

**Problem**: FHIR R4 Invariant verhindert gleichzeitige Nutzung von `code` und `action.resource`
**Lösung**: Dieses Profil **akzeptiert beide Ansätze** je nach Anwendungsfall:

- **Option 1**: Verwendet `code` für Therapietyp, `action.resource` für Klassen-Level-Therapie
- **Option 2**: Verwendet `code` für Therapietyp, verschachtelte `action.action.resource` für spezifische Optionen mit `selectionBehavior`

### oBDS-Kontext

#### **Mapping zu oBDS 19.1**
```
RequestGroup.code → "19.1" "Tumorkonferenz Therapieempfehlung Typ"
```

**Datenfelder**:
- **CH**: Chemotherapie
- **HO**: Hormontherapie
- **IM**: Immun-/Antikörpertherapie
- **ZS**: Zielgerichtete Substanzen
- **SZ**: Stammzelltransplantation
- **Kombinationen**: CI, CZ, CIZ, IZ
- **Andere**: OP, ST, WW, AS, SO

#### **Erweiterte Strukturierung**
Während oBDS nur den **Therapietyp** erfasst, ermöglicht RequestGroup zusätzlich:
- **Spezifische Medikamente** pro Empfehlung
- **Alternative Optionen** mit Prioritäten
- **Kombinationslogik** für Multi-Agent-Protokolle

### Terminologie-Binding

**RequestGroup.code**:
- **ValueSet**: `mii-vs-onko-therapieempfehlung-typ`
- **Binding**: Preferred
- **Quelle**: oBDS-Therapietypen aus `mii-cs-onko-therapie-typ`

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Kombinationstherapie-RequestGroup.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Therapieempfehlung Typ](ValueSet-mii-vs-onko-therapieempfehlung-typ.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Kombinationstherapie-RequestGroup.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html).
{: .ig-highlight .ig-highlight-grey}

---

**Suchparameter**

1. Der Suchparameter ```_id``` MUSS unterstützt werden:
    ```GET [base]/RequestGroup?_id=1234```

2. Der Suchparameter "_profile" MUSS unterstützt werden:
    ```GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie```

3. Der Suchparameter "subject" MUSS unterstützt werden:
    ```GET [base]/RequestGroup?subject=Patient/example```

4. Der Suchparameter "code" SOLLTE unterstützt werden:
    ```GET [base]/RequestGroup?code=ZS```

5. Der Suchparameter "based-on" SOLLTE unterstützt werden:
    ```GET [base]/RequestGroup?based-on=CarePlan/tumorkonferenz-example```

**Beispiele**

<!-- TODO:REVIEW Zuordnung der Beispielinstanzen ueber den Inhalt hergestellt: "class recommendation" -> CDK4/6-Klassenprotokoll, "specific choices" -> HER2-Alternativen. Fachlich bestaetigen. -->

- Klassen-basierte Empfehlung (CDK4/6-Inhibitor): [mii-exa-onko-molecular-cdk46-protocol](RequestGroup-mii-exa-onko-molecular-cdk46-protocol.html), eingebunden über [mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.html)
- Spezifische Medikamentenauswahl (HER2-Alternativen): [mii-exa-onko-molecular-her2-alternatives](RequestGroup-mii-exa-onko-molecular-her2-alternatives.html), eingebunden über [mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.html)
- Protokollbasierte Empfehlung (FOLFOX): [mii-exa-onko-folfox-requestgroup](RequestGroup-mii-exa-onko-folfox-requestgroup.html) und [mii-exa-onko-folfox-requestgroup-modification](RequestGroup-mii-exa-onko-folfox-requestgroup-modification.html)
