<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/Bundle-mii-exa-onko-melanom-bundle-intro.md) -->

### Content

The **Melanom bundle example** demonstrates the structured assembly of all melanoma-specific FHIR resources in a single transaction bundle. This bundle shows the practical use of the melanoma profiles and how they link to one another in a realistic clinical scenario of a malignant melanoma of the skin.

The bundle implements the **transaction pattern** and is server-consumable, so that all contained resources can be transmitted as an atomic operation.

---

### Bundle structure

The melanoma bundle comprises the following resources:

#### Primary resources

- **Patient**: melanoma patient (Maria Melanom)
- **Condition**: primary tumour diagnosis (C43.9 - malignant neoplasm: skin, unspecified)
- **Encounter**: inpatient episode of care

#### Melanoma-specific Observations

- **Breslow depth**: tumour thickness 2.1mm from the granular layer to the deepest invasion (Breslow)
- **Safety margin**: minimum distance to the resection margin 5mm (MM1)
- **Ulceration**: evidence of ulceration of the epidermis (MM4)
- **LDH**: lactate dehydrogenase value 280 U/L as a prognostic marker (LDH)

#### Bundle-specific characteristics

- **Transaction bundle**: server-consumable atomic operation
- **Reference consistency**: all individual resources reference the bundle's core resources
- **Complete coverage**: all 4 melanoma profiles are included

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Bundle-Example.page.md gate=B -->
As a therapeutic resource, the bundle additionally contains the **excision on the upper arm** as a Procedure.

---

### Clinical scenario

The bundle represents a **patient with malignant melanoma** with complete histopathological diagnostics and surgical therapy:

**Patient characteristics:**

- **Diagnosis**: C43.9 malignant melanoma of the skin
- **Breslow depth**: 2.1mm (prognostically important)
- **Tumour location**: skin, unspecified

**Histopathological diagnostics:**

- **Ulceration**: evidence of ulceration of the epidermis
- **LDH**: elevated value (280 U/L) as a prognostic marker

**Surgical therapy:**

- **Excision**: with a sufficient safety margin
- **Safety margin**: minimum distance 5mm to the resection margin
- **Resection status**: R0 resection achieved

---

### Technical implementation

#### Bundle type and structure

```
* type = #transaction
```

- **Transaction bundle**: atomic transmission of all resources
- **Server-consumable**: all entries carry complete request information

#### Entry pattern

Each bundle entry contains:

- **fullUrl**: unique reference URL
- **resource**: the actual FHIR resource
- **request.method**: HTTP POST for creation
- **request.url**: target resource type

#### Reference integrity

- **Condition**: references the patient via `subject`
- **Observations**: reference both the patient (`subject`) and the Condition (`focus`)
- **Procedures**: reference the patient (`subject`) and the Condition (`reasonReference`)
- **Specimen**: references the patient (`subject`) and the collection procedure

---

### oBDS mapping

The bundle demonstrates the complete representation of the oBDS data fields for malignant melanoma:

#### Histopathological assessment

- **MM2**: Breslow depth → [mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.html)
- **MM4**: ulceration → [mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.html)

#### Surgical assessment

- **MM1**: safety margin → [mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.html)

#### Laboratory parameters

- **MM3**: lactate dehydrogenase → [mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.html)

---

### Use of ValueSets

The bundle shows the practical use of various terminologies:

#### LOINC

- **LDH**: `14805-6` "Lactate dehydrogenase activity in Serum or Plasma"

#### SNOMED CT

- **Breslow depth**: `106243009` "Breslow depth staging for melanoma of skin"
- **Safety margin**: `396511007` "Distance of in situ melanoma from closest lateral surgical margin"
- **Ulceration**: `97816-3` "Ulceration present in melanoma of skin"

#### ICD-10-GM

- **Diagnosis**: `C43.9` "Bösartige Neubildung: Haut, nicht näher bezeichnet"

#### oBDS CodeSystems

- **Ulceration**: `mii-cs-onko-melanom-ulzeration#J` "Ja"
- **LDH assessment**: `mii-cs-onko-melanom-ldh-bewertung#erhoeht` "Erhöht"

<!-- TODO:REVIEW The codes carried over from the source page here diverge from the shipped instances: LDH uses LOINC 14804-9 (not 14805-6); ulceration uses SNOMED CT 6270001000004106 "Presence of ulcer in primary malignant melanoma of skin (observable entity)" - the code 97816-3 named in the source is a LOINC code for the ASA classification; a CodeSystem mii-cs-onko-melanom-ldh-bewertung does not exist, the assessment is carried in Observation.interpretation (v3-ObservationInterpretation#H "High"). Have this reviewed and aligned. -->

---

### Individual resource examples

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Bundle-Example.page.md gate=B -->
The resources contained in the bundle are also shipped as standalone example instances:

- Patient: [mii-exa-onko-melanom-bundle-patient](Patient-mii-exa-onko-melanom-bundle-patient.html)
- Primary tumour Condition: [mii-exa-onko-melanom-diagnose](Condition-mii-exa-onko-melanom-diagnose.html)
- Episode of care: [mii-exa-onko-melanom-bundle-encounter](Encounter-mii-exa-onko-melanom-bundle-encounter.html)
- Breslow depth: [mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.html)
- Safety margin: [mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.html)
- Ulceration: [mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.html)
- LDH: [mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.html)
- Excision on the upper arm: [mii-exa-onko-melanom-exzision-oberarm](Procedure-mii-exa-onko-melanom-exzision-oberarm.html)
