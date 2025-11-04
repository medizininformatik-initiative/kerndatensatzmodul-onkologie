---
parent: 
topic: ExtensionUrgencyOperation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency
---

## {{page-title}}

### Inhalt

Diese Extension erfasst die **Modalität der Eingriffsdurchführung** (Art des Eingriffs) und unterscheidet zwischen elektiven und Notfalleingriffen.

### Herkunft und Anwendungsbereich

Dieser Datenpunkt stammt ursprünglich aus dem organspezifischen Modul **Kolorektales Karzinom (KRK 6)** gemäß oBDS 2021. Da die Unterscheidung zwischen elektiven und Notfalleingriffen jedoch für alle chirurgischen Prozeduren klinisch relevant ist, wurde die Extension in das allgemeine Operation-Profil integriert und ist **universell auf alle Procedures anwendbar**.

### Klinische Relevanz

Die Erfassung der Eingriffsmodalität ist aus mehreren Gründen wichtig:

- **Qualitätssicherung**: Notfalleingriffe weisen oft andere Komplikationsraten auf als geplante Eingriffe
- **Risikostratifizierung**: Die Dringlichkeit beeinflusst die perioperative Morbidität und Mortalität
- **Statistische Auswertungen**: Faire Vergleiche zwischen Zentren erfordern die Berücksichtigung des Notfallanteils
- **Ressourcenplanung**: Unterscheidung zwischen planbaren und ungeplanten Eingriffen

### Wertebereich

@```
from 
    CodeSystem 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-urgency'
for concept select
    Code: code,
    Display: display,
    Definition: definition
```

### Verwendung

Die Extension wird direkt am Procedure-Element hinzugefügt:

```
// Beispiel: Elektiveingriff
* extension[urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiveingriff"

// Beispiel: Notfalleingriff  
* extension[urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#N "Notfalleingriff"

// Beispiel: Unbekannt
* extension[urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#U "Unbekannt"
```

### Beispiel im Kontext

```json
{
  "resourceType": "Procedure",
  "extension": [
    {
      "url": "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-urgency",
            "code": "N",
            "display": "Notfalleingriff"
          }
        ]
      }
    }
  ],
  "status": "completed",
  "code": {
    "coding": [
      {
        "system": "http://fhir.de/CodeSystem/bfarm/ops",
        "code": "5-484.35",
        "display": "Rektumresektion mit Anastomose"
      }
    ]
  }
}
```

### Technische Details

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency'
        select
	        Beschreibung: description
        with
            no header
        ```
  </tab>
  <tab title="XML">{{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency}}</tab>
  <tab title="JSON">{{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency}}</tab>
  <tab title="Link">{{link:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency}}</tab>
</tabs>

### Mapping

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation'  
    for differential.element
    where path.contains('urgency')
    select 
        FHIR: path,
        oBDS: mapping[0].map,
        Definition: mapping[0].comment
```

### Verwandte Profile

- {{pagelink:OperationProcedure}}
- {{pagelink:OperationIntention}}