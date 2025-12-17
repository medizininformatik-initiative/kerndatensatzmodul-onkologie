# FSH Profiling Patterns for MII Onkologie

This skill provides reusable FHIR Shorthand (FSH) patterns for the MII Onkologie Implementation Guide.

## When to Use This Skill

Use these patterns when:
- Creating new profiles based on oBDS data elements
- Adding extensions to existing profiles
- Defining ValueSets and CodeSystems
- Creating example instances

---

## Pattern 1: oBDS-based Observations

Use for any oBDS data element that maps to an Observation resource.

```fsh
Profile: MII_PR_Onko_{Concept}
Parent: Observation
Id: mii-pr-onko-{concept}
Title: "MII PR Onkologie {Concept}"
Description: "{Concept} nach oBDS {chapter}"
* insert PR_CS_VS_Version
* insert Publisher

* status = #final
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..1 MS and
    snomed 0..1 MS
* code.coding[loinc] = $LOINC#{code}
* code.coding[snomed] from {valueset} (preferred)

* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from mii-vs-onko-{concept} (required)
```

### Variants

**Quantity-based Observation** (e.g., ECOG score):
```fsh
* value[x] only Quantity
* valueQuantity.value MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{unit}
```

**Boolean Observation**:
```fsh
* value[x] only boolean
```

---

## Pattern 2: oBDS-based Procedures

Use for surgical operations, radiotherapy sessions, etc.

```fsh
Profile: MII_PR_Onko_{Procedure}
Parent: $mii-procedure
Id: mii-pr-onko-{procedure}
Title: "MII PR Onkologie {Procedure}"
Description: "{Procedure} nach oBDS {chapter}"
* insert PR_CS_VS_Version
* insert Publisher

* extension contains
    intention named Intention 1..1 MS
* status MS
* code.coding[ops] MS
* subject 1..1 MS
* subject only Reference(Patient)
* performed[x] MS
* performed[x] only dateTime
* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)
```

### With Additional Extensions

```fsh
* extension contains
    mii-ex-onko-{concept}-intention named Intention 1..1 MS and
    mii-ex-onko-{concept}-stellung-zur-op named StellungZurOP 0..1 MS
```

---

## Pattern 3: Therapy-related MedicationStatements

Use for systemic therapy, hormone therapy, immunotherapy.

```fsh
Profile: MII_PR_Onko_{Therapy}
Parent: MedicationStatement
Id: mii-pr-onko-{therapy}
Title: "MII PR Onkologie {Therapy}"
Description: "{Therapy} nach oBDS {chapter}"
* insert PR_CS_VS_Version
* insert Publisher

* extension contains
    intention named Intention 1..1 MS and
    stellungZurOP named StellungZurOP 0..1 MS
* medication[x] MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only Period
* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)
```

---

## Pattern 4: Complex CodeableConcept with Multiple Systems

Use when an element needs codes from multiple terminologies (oBDS, SNOMED, ICD-10).

```fsh
* code MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    obds 1..1 MS and
    snomed 0..1 MS and
    icd10 0..1 MS
* code.coding[obds] from mii-vs-onko-{concept}-obds (required)
* code.coding[obds].system = $mii-cs-onko-{concept}
* code.coding[obds].system 1.. MS
* code.coding[obds].code 1.. MS
* code.coding[snomed] from {snomed-vs} (preferred)
* code.coding[snomed].system = $sct
* code.coding[icd10] from http://fhir.de/ValueSet/bfarm/icd-10-gm (preferred)
* code.coding[icd10].system = $ICD10GM
```

---

## Pattern 5: TNM Components as Observations

Use for TNM category observations (T, N, M, staging).

```fsh
Profile: MII_PR_Onko_TNM_{Category}
Parent: Observation
Id: mii-pr-onko-tnm-{category}
Title: "MII PR Onkologie TNM {Category}"
Description: "TNM {Category}-Kategorie nach oBDS 8"
* insert PR_CS_VS_Version
* insert Publisher

* status = #final
* code = $LOINC#{loinc-code}
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from mii-vs-onko-tnm-{category} (required)
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.code 1.. MS

// Extensions for prefixes/suffixes
* extension contains
    {prefix-extension} named prefix 0..1 MS
```

---

## Pattern 6: Simple Extension

Use for extending resources with additional oBDS data elements.

```fsh
Extension: MII_EX_Onko_{ConceptName}
Id: mii-ex-onko-{concept-name}
Title: "MII EX Onkologie {Human Name}"
Description: "{Description in German}"
Context: {ResourceType}
* insert PR_CS_VS_Version
* insert Publisher

* value[x] only CodeableConcept
* valueCodeableConcept from mii-vs-onko-{concept} (required)
```

### Complex Extension with Multiple Values

```fsh
Extension: MII_EX_Onko_{ConceptName}
Id: mii-ex-onko-{concept-name}
Title: "MII EX Onkologie {Human Name}"
Description: "{Description}"
Context: {ResourceType}
* insert PR_CS_VS_Version
* insert Publisher

* extension contains
    value1 1..1 MS and
    value2 0..1 MS
* extension[value1].value[x] only CodeableConcept
* extension[value1].valueCodeableConcept from mii-vs-onko-{concept1} (required)
* extension[value2].value[x] only string
```

---

## Pattern 7: ValueSet Definition

```fsh
ValueSet: mii-vs-onko-{concept-name}
Id: mii-vs-onko-{concept-name}
Title: "MII VS Onkologie {Human Name}"
Description: "{Description in German}"
* insert PR_CS_VS_Version
* insert Publisher

* include codes from system mii-cs-onko-{concept-name}
// Or for external codes:
* $sct#{code} "{display}"
* $LOINC#{code} "{display}"
```

---

## Pattern 8: CodeSystem Definition

```fsh
CodeSystem: mii-cs-onko-{concept-name}
Id: mii-cs-onko-{concept-name}
Title: "MII CS Onkologie {Human Name}"
Description: "{Description with oBDS reference}"
* insert PR_CS_VS_Version
* insert Publisher

* ^caseSensitive = true
* ^content = #complete
* #{code1} "{Display 1}"
* #{code2} "{Display 2}"
```

---

## Pattern 9: Example Instance

```fsh
Instance: mii-exa-onko-{concept}-{variant}
InstanceOf: MII_PR_Onko_{Concept}
Usage: #example
Title: "MII EXA Onkologie {Concept} {Variant}"
Description: "Example for {Concept}"

* status = #final
* code = $LOINC#{code}
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-15"
* valueCodeableConcept = mii-cs-onko-{concept}#{code} "{display}"
```

---

## Best Practices Summary

1. **Always reference oBDS chapter**: Every profile description must reference the oBDS specification chapter (e.g., "nach 13.1 oBDS 2021")

2. **Use MS consistently**: Mark elements as MS if they are required by oBDS or critical for interoperability

3. **Provide German translations**: Use `insert Translation` for all short/definition fields

4. **Document with examples**: Every profile should have at least one example instance

5. **Validate early, validate often**: Run validation locally before committing

6. **Maintain logical model alignment**: Keep PlantUML diagrams synchronized with profiles

7. **Use rulesets for consistency**: Leverage existing rulesets (Publisher, PR_CS_VS_Version, Label, Translation)

8. **Follow naming conventions strictly**: Inconsistent naming causes validation errors

9. **Document breaking changes**: Clearly mark and explain breaking changes in release notes

10. **Test cross-references**: Ensure all `Reference()` constraints point to existing profiles

---

## Rulesets Reference

Located in `input/fsh/rulesets/`:

```fsh
* insert PR_CS_VS_Version       // Version metadata
* insert Publisher               // MII publisher info
* insert Label(element, short, definition)  // Short and definition
* insert Translation(element ^short, de-DE, text)  // German translation
```

---

## Parent Profile Reference

| Content Type | Parent Profile |
|--------------|----------------|
| Diagnosis | `https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose` |
| Procedure (OP) | `$mii-procedure` |
| Observation | `Observation` or specific MII observation profile |
| Medication | `MedicationStatement` or `MedicationRequest` |
| Specimen | `Specimen` |
| CarePlan | `CarePlan` |
