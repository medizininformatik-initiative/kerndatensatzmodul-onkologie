<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-tumorkonferenz-intro.md (de) -->

This profile describes the tumor board and the therapy recommendations for both traditional and molecular tumor board workflows.
The data fields have been part of the oBDS since version 2021 and are captured in two different modules. Since all the fields involved can be represented very well via the FHIR CarePlan resource, all the tumor board and therapy recommendation fields were combined in the tumor board profile.

### Unified Activity Slicing Architecture

The profile supports **two different implementation approaches** via activity slicing:

#### **obds slice**: Standard oBDS therapy categorization
For traditional tumor boards with oBDS 19.1 categorization:
- **Usage**: `activity[obds].detail.code` for therapy type (CH, HO, IM, ZS, etc.)
- **Status tracking**: `activity[obds].detail.status` and `activity[obds].detail.statusReason` for therapy deviations
- **oBDS conformance**: Complete representation of oBDS fields 19.1 and 19.2

#### **extended slice**: Molecular tumor board protocols
For detailed molecular tumor boards with structured therapy protocols:
- **Usage**: `activity[extended].reference` → RequestGroup/MedicationRequest/ServiceRequest
- **Use cases**: multi-agent protocols, pharmaceutical classes, specific medication selection
- **Extended functionality**: level of detail going beyond oBDS categorization

### Shared profile structure

Both slices share the common CarePlan elements:
* **Patient reference**: `subject`
* **Primary diagnosis reference**: `addresses`
* **Tumor board category**: `category` according to oBDS 18.2
* **Date**: `created` according to oBDS 18.1
* **Additional information**: `supportingInfo` for relevant follow-up stagings

### Status management

#### For the obds slice (traditional tumor boards):
The CarePlan resource requires a mandatory specification of the `status` element of an `activity`. The therapies actually carried out are captured in the cancer registry data and SHOULD reference the tumor board resource via `Procedure.basedOn(Reference(CarePlan))`.

**Recommended status codes** according to FHIR CarePlanActivityStatus:
- `completed`: completed therapy
- `on-hold`: therapy interruption for a therapy not yet started
- `stopped`: therapy interruption for a therapy already started
- `unknown`: unknown, no status information available

**Therapy deviations**: For `on-hold` and `stopped`, `statusReason` SHOULD be populated with the oBDS field "therapy deviation at the patient's request".

#### For the extended slice (molecular tumor boards):
Status tracking takes place in the referenced resources (RequestGroup, MedicationRequest, ServiceRequest). `activity.progress` can be used for narrative progress notes.

Every tumor board with a therapy recommendation SHOULD be stored as a separate resource and reference the primary diagnosis via `CarePlan.addresses(Reference(Condition))`.

### FHIR invariant management

**Problem**: FHIR R4 invariant cpl-3 prevents simultaneous use of `activity.detail.code` and `activity.reference`

**Solution**: slice-specific element deactivation:
- **obds slice**: `activity.detail` activated, `activity.reference` deactivated (0..0)
- **extended slice**: `activity.reference` activated, `activity.detail` deactivated (0..0)

### Implementation flexibility

- **Backward compatibility**: existing oBDS implementations work unchanged
- **Hybrid approaches**: individual CarePlans can use both slice types
- **Gradual adoption**: start with the obds slice, extend to the extended slice as needed

### Application examples

#### Traditional tumor board (obds slice):
```
* activity[obds].detail.code.coding = #OP "Operation"
* activity[obds].detail.status = #completed
```

#### Molecular tumor board (extended slice):
```
* activity[extended].reference = Reference(RequestGroup/molecular-protocol)
* activity[extended].progress.text = "HR+/HER2- mit PI3K-Aktivierung - CDK4/6 Inhibitor empfohlen"
```

#### Mixed approach:
```
* activity[obds].detail.code.coding = #OP "Operation"
* activity[extended].reference = Reference(RequestGroup/precision-medicine-protocol)
```

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-CarePlan.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-CarePlan.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

### Traditional oBDS tumor board (obds slice):

[mii-exa-onko-tumorkonferenz-01](CarePlan-mii-exa-onko-tumorkonferenz-01.html)

### Molecular tumor board (extended slice):

[mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.html)

### Mixed approach (both slices):

[mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.html)
