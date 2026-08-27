<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-ex-onko-operation-urgency-intro.md) -->

### Content

This extension captures the **modality of procedure performance** (type of procedure) and distinguishes between elective and emergency procedures.

### Origin and scope

This data point originates from the organ-specific module **colorectal cancer (KRK 6)** according to oBDS 2021. However, since the distinction between elective and emergency procedures is clinically relevant for all surgical procedures, the extension was integrated into the general Operation profile and can be **applied universally to all oncological operations**.

### Clinical relevance

Capturing the modality of the procedure is important for several reasons:

- **Quality assurance**: Emergency procedures often show different complication rates than planned procedures
- **Risk stratification**: Urgency influences perioperative morbidity and mortality
- **Statistical analyses**: Fair comparisons between centers require accounting for the proportion of emergencies
- **Resource planning**: Distinction between plannable and unplanned procedures

### Value range

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Urgency.page.md gate=B -->
The codes it contains are listed in the artefact view: [MII CS Onkologie Operation Urgency](CodeSystem-mii-cs-onko-operation-urgency.html).

### Mapping

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

This extension maps to the **KRK module** field:
- **KR6**: Type of procedure (modality of procedure performance)

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Urgency.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII EX Onko Operation Urgency](StructureDefinition-mii-ex-onko-operation-urgency.html).

### Related profiles

- [Operation: Procedure](StructureDefinition-mii-pr-onko-operation.html)
- [Extension Intention (Operation)](StructureDefinition-mii-ex-onko-operation-intention.html)
