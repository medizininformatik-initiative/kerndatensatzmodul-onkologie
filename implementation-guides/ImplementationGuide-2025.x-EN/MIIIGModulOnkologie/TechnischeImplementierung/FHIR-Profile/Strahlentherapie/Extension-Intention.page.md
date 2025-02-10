---
parent: 
topic: StrahlentherapieIntention
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention
---

## Extensions of Radiotherapy: Intention

Extension for radiotherapy - intention.
See also Extension: Intention under Operation.

### Content

<tabs>
  <tab title="Representation">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention' 
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
