<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3-intro.md (de) -->
<!-- TODO:REVIEW The source page carried the heading "Extensions von Operation"; it does not match this extension (presumed copy-paste error) and was therefore not carried over. -->

- This extension replaces the former ICD-O-3 slice in the MII diagnosis.
- The original profiling built on the ICD-O-3 slice of the `Condition.code` element. At the same time, the `Condition.code` field also carries the ICD-10 coding of the oncological diagnosis. During the comment period it was noted, however, that an ICD-O-3 morphology describes a clinically different concept than an ICD-10-coded diagnosis. Representing both in the same CodeableConcept therefore conflicts with common FHIR modelling conventions. For this reason, modelling as an extension - comparable to mCode - was chosen. Representing the ICD-O-3 topography via `Condition.bodySite` is not affected by this. Further histologies recorded during follow-up are still to be represented via the follow-up histology profile (Observation.bodySite and Observation.valueCodeableConcept); the present extension is not used there.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Extension-ICD-O-3-Morphologie.page.md gate=B -->
> The follow-up histology profile is described in the artefact view: [MII PR Onkologie Histologie ICD-O-3](StructureDefinition-mii-pr-onko-histologie-icdo3.html).
{: .ig-highlight .ig-highlight-grey}
