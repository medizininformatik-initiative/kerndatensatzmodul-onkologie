<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/Bundle-mii-exa-onko-mamma-example-bundle-1-intro.md) -->

### Content

The **Mamma bundle example** demonstrates the structured assembly of all breast-specific FHIR resources in a single transaction bundle. This bundle shows the practical use of the Mamma profiles and how they link to one another in a realistic clinical scenario.

The bundle implements the **transaction pattern** and is server-consumable, so that all contained resources can be transmitted as an atomic operation.

---

### Bundle structure

The Mamma bundle comprises the following resources:

#### Primary resources

- **Patient**: breast cancer patient (Martha MammaCa)
- **Condition**: primary tumour diagnosis (C50.3 - lower inner quadrant of the breast)

#### Breast-specific Observations

- **Menopause status**: premenopausal status of the patient
- **Estrogen receptor status**: positive finding with 5% positive cells, weak staining intensity
- **Progesterone receptor status**: positive finding with 25% positive cells, weak staining intensity

#### Additional elements

- **Tumour size determination**: largest dimension 25mm
- **Preoperative marking**: example of a marking procedure

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Bundle-Example.page.md gate=B -->
In addition, the bundle contains an **Encounter** representing the inpatient episode of care that the remaining resources refer to.

---

### Clinical scenario

The bundle represents a **premenopausal patient** with a **hormone-receptor-positive breast carcinoma** in the lower inner quadrant of the breast:

**Patient characteristics:**

- **Age/status**: premenopausal (relevant for therapy planning)
- **Tumour location**: C50.3 (lower inner quadrant)
- **Tumour size**: 25mm (T2 category)

**Receptor status:**

- **Estrogen receptor**: positive (5% positive cells, weak intensity)
- **Progesterone receptor**: positive (25% positive cells, weak intensity)
- **Therapeutic consequence**: candidate for antihormonal therapy

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

---

### Linking pattern

The bundle demonstrates the **consistent reference structure** between breast-specific resources:

```
Patient ← subject ← Condition (primary tumour)
                        ↑ focus
                 Observations (menopause, receptor status)
                        ↑ reasonReference
                   Procedures (marking)
```

---

### Use of ValueSets

The bundle shows the practical use of various terminologies:

#### SNOMED CT

- **Menopause status**: `22636003` "Premenopausal state"
- **Anatomical location**: `110494001` "Structure of upper inner quadrant of right breast"

#### LOINC

- **Estrogen receptor**: `40556-3` "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
- **Progesterone receptor**: `85339-0` "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
- **Tumour size**: `21889-1` "Size Tumor"
- **Receptor status**: `LA6576-8` "Positive"

#### ICD-10-GM

- **Diagnosis**: `C50.3` "Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse"

---

### Individual resource examples

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Bundle-Example.page.md gate=B -->
The resources contained in the bundle are also shipped as standalone example instances:

- Patient: [mii-exa-onko-mamma-bundle-patient](Patient-mii-exa-onko-mamma-bundle-patient.html)
- Primary tumour Condition: [mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.html)
- Episode of care: [mii-exa-onko-mamma-bundle-encounter](Encounter-mii-exa-onko-mamma-bundle-encounter.html)
- Menopause status: [mii-exa-onko-mamma-menopause-status-1](Observation-mii-exa-onko-mamma-menopause-status-1.html)
- Estrogen receptor status: [mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.html)
- Progesterone receptor status: [mii-exa-onko-mamma-rezeptorstatus-progesteron-1](Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.html)
- Tumour size determination: [mii-exa-onko-mamma-tumorgroesse-1](Observation-mii-exa-onko-mamma-tumorgroesse-1.html)
- Preoperative marking: [mii-exa-onko-mamma-praeoperative-markierung-1](Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.html)
