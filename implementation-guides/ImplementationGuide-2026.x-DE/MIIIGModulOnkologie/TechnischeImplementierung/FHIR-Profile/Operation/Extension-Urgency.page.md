---
parent: 
topic: ExtensionUrgencyOperation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency
---

## {{page-title}}

### Inhalt

Diese Extension erfasst die **Modalität der Eingriffsdurchführung** (Art des Eingriffs) und unterscheidet zwischen elektiven und Notfalleingriffen.

### Herkunft und Anwendungsbereich

Dieser Datenpunkt stammt ursprünglich aus dem organspezifischen Modul **Kolorektales Karzinom (KRK 6)** gemäß oBDS 2021. Da die Unterscheidung zwischen elektiven und Notfalleingriffen jedoch für alle chirurgischen Prozeduren klinisch relevant ist, wurde die Extension in das allgemeine Operation-Profil integriert und kann **universell auf alle onkologischen Operationen angewandt werden**.

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



### Beispiel im Kontext



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

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

Dieses Extension mappt auf das **KRK-Modul** Feld:
- **KR6**: Art des Eingriffs (Modalität der Eingriffsdurchführung)

@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency'
    for differential.element
    where mapping.identity='oBDS'
    select
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

### Verwandte Profile

- {{pagelink:OperationProcedure}}
- {{pagelink:OperationIntention}}