---
parent: 
topic: OperationIntention
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention
---

## Extensions of Operation

The extension of the operation was necessary because otherwise the oBDS-specific codes could not be represented, as the binding of the extension [Implementation Intention](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) introduced by the MII for the same purpose is too strong.

### Content

<tabs>
  <tab title="Representation">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Field Name: id, Short Description: short, Notes: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---
