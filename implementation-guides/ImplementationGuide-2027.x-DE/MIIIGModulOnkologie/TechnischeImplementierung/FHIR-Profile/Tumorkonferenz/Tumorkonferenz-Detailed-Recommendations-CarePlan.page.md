---
parent: 
topic: TumorkonferenzDetailedRecommendationsCarePlan
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz-detailed-recommendations
---

## {{page-title}}

Dieses Profil beschreibt strukturierte Therapieempfehlungen für **molekulare Tumorboards** und andere Tumorkonferenzen mit detaillierten, RequestGroup-basierten Protokollen für Multi-Agent-Therapien.

### Inhalt

Dieses CarePlan-Profil ermöglicht die Abbildung komplexer Therapieempfehlungen, die über einfache Kategorisierungen hinausgehen und spezifische Medikamentenkombinationen oder Therapieoptionen erfordern.

### Abgrenzung zum Standard-Tumorkonferenz-Profil

| Aspekt | Standard CarePlan | Detailed Recommendations CarePlan |
|--------|------------------|-----------------------------------|
| **Verwendung** | Traditionelle Tumorboards | Molekulare Tumorboards, komplexe Protokolle |
| **Therapieempfehlung** | `activity.detail.code` (19.1 oBDS) | `activity.reference` → RequestGroup |
| **Multi-Agent-Therapien** | Einzelne Kategorisierung | Detaillierte Protokolle mit spezifischen Agenten |
| **FHIR Invarianten** | `activity.detail` verwendet | `activity.detail` deaktiviert (0..0) |

### Anwendungsfälle

#### **Molekulare Tumorboards**
- **Pharmakogenomische Empfehlungen**: Basierend auf Mutationsprofilen
- **Resistenzmuster**: Spezifische Alternativen bei bekannten Resistenzen
- **Kombinationstherapien**: Multi-Agent-Protokolle mit präzisen Dosierungen

#### **Komplexe Therapieprotokolle**
- **Optionale Medikamente**: "CDK4/6 Inhibitor (beliebiger)" vs. spezifische Auswahl
- **Sequenzielle Therapien**: Erste-, Zweite-, Drittlinienoptionen
- **Personalisierte Medizin**: Biomarker-basierte Therapieauswahl

### Technische Implementierung

#### **FHIR Invarianten-Management**
```
* activity.detail 0..0  // Deaktiviert um FHIR Invariant cpl-3 zu vermeiden
* activity.reference 1..1  // Referenz auf RequestGroup mit Therapiedetails
```

**Grund**: FHIR R4 Invariant `cpl-3` verhindert die gleichzeitige Verwendung von `activity.detail.code` und `activity.reference`. Dieses Profil wählt `activity.reference` für maximale Strukturierung.

#### **RequestGroup Integration**
Das referenzierte RequestGroup enthält:
- **Therapietyp-Klassifikation** (`code` mit oBDS-Therapietypen)
- **Spezifische Medikamente** (`action.resource` → SystemischeTherapie)
- **Auswahllogik** (`selectionBehavior` für Optionen)

### Implementierungsoptionen

#### **Option 1: Pharmazeutische Klassen**
Für Empfehlungen wie "beliebiger CDK4/6 Inhibitor":

```
CarePlan.activity.reference → RequestGroup
├── code: "CZ" (Chemotherapie + zielgerichtete Substanzen)  
└── action.resource → SystemischeTherapie
    └── code.text: "CDK4/6 Inhibitor (Klasse) - Palbociclib, Ribociclib oder Abemaciclib"
```

#### **Option 2: Spezifische Medikamentenauswahl**
Für präzise Optionen basierend auf Resistenzmustern:

```
CarePlan.activity.reference → RequestGroup
├── code: "ZS" (Zielgerichtete Substanzen)
├── selectionBehavior: #any
├── action[0]: Trastuzumab (erste Wahl)
├── action[1]: T-DM1 (bei Progression)
└── action[2]: Tucatinib-Kombination (bei Hirnmetastasen)
```

### oBDS-Kontext

**Wichtig**: Das oBDS-Datenfeld **19.1 "Therapieempfehlung Typ"** wird in diesem Profil **nicht direkt** in `CarePlan.activity.detail.code` erfasst, sondern in der referenzierten **RequestGroup.code**.

**Vorteile**:
- **Bessere Strukturierung** komplexer Therapieempfehlungen
- **FHIR-konforme** Implementierung ohne Invarianten-Verletzungen  
- **Erweiterte Traceability** zwischen Empfehlung und spezifischen Medikamenten

### Terminologie-Binding

Die Therapietyp-Klassifikation erfolgt über:
- **RequestGroup.code** bound to `mii-vs-onko-therapieempfehlung-typ`
- **Enthält**: CH, HO, IM, ZS, CZ, CIZ, IZ, OP, ST, etc. (oBDS-Therapietypen)

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz-detailed-recommendations' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz-detailed-recommendations'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz-detailed-recommendations' 
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

Mapping Datensatz zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element where id.contains('Tumorkonferenz')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz-detailed-recommendations'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:
    ```GET [base]/CarePlan?_id=1234```

2. Der Suchparameter "_profile" MUSS unterstützt werden:
    ```GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz-detailed-recommendations```

3. Der Suchparameter "subject" MUSS unterstützt werden:
    ```GET [base]/CarePlan?subject=Patient/example```

4. Der Suchparameter "category" MUSS unterstützt werden:
    ```GET [base]/CarePlan?category=MOL```

**Beispiele**

{{json:mii-exa-onko-tumorkonferenz-class-recommendation}}

{{json:mii-exa-onko-tumorkonferenz-specific-choices}}

---