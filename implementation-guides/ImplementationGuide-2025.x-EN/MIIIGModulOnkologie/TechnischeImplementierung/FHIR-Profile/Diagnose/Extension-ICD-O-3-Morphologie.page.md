---
parent: 
topic: HistologyMorphologyBehaviourExtension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3
---

## Extensions of Operation

- This extension replaces the previous ICD-O-3 slice in the MII diagnosis.
- In the original profiling, the ICD-O-3 slice of the `Condition.code` element was used. At the same time, the `Condition.code` field also contains the ICD-10 coding of the oncological diagnosis. However, during the commenting phase, it was noted that an ICD-O-3 morphology describes a different clinical concept than an ICD-10 coded diagnosis. Therefore, representing them in the same CodeableConcept contradicts common FHIR modeling conventions. Hence, it was decided to model it as an extension comparable to mCode. The mapping of the ICD-O-3 topography via `Condition.bodySite` is not affected by this. Further histologies performed as part of follow-up should continue to be mapped via the follow-up histology profile (Observation.bodySite and Observation.valueCodeableConcept); this extension is not used in that context.

### Content

<tabs>
  <tab title="Representation">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3' 
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
````
