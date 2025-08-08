---
parent: 
topic: TherapieempfehlungKombinationstherapieRequestGroup
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie
---

## {{page-title}}

Dieses Profil beschreibt strukturierte **Therapieempfehlungen für Kombinationstherapien** mittels RequestGroup. Es ermöglicht die detaillierte Abbildung von Multi-Agent-Protokollen und alternativen Therapieoptionen für molekulare Tumorboards.

### Inhalt

Das RequestGroup-Profil dient als "Protokoll-Koordinator" zwischen **CarePlan-Empfehlungen** und **spezifischen Therapieressourcen** (SystemischeTherapie, MedicationRequest, etc.).

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

```fsh
RequestGroup
├── code: "CZ" (Chemotherapie + zielgerichtete Substanzen)
└── action[0].resource: Reference(SystemischeTherapie)
    └── code.text: "CDK4/6 Inhibitor (Klasse L01XE) - Palbociclib, Ribociclib oder Abemaciclib"
```

**Anwendung**: Wenn molekulares Tumorboard eine **Medikamentenklasse** empfiehlt und die finale Auswahl dem behandelnden Arzt überlässt.

#### **Option 2: Spezifische Medikamentenauswahl**
Für **spezifische Optionen** mit Auswahllogik:

```fsh
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

@```
from
    ValueSet
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapieempfehlung-typ'
select
    "Verfügbare Therapietypen"
```

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

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

{{json:mii-exa-onko-cdk46-class-recommendation}}

{{json:mii-exa-onko-her2-specific-choices}}

---