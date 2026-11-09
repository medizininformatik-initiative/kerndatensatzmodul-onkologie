<!-- TODO:REVIEW machine translation of source page Bundle-mii-exa-onko-krk-bundle-intro.md (de) -->

### Content

The **KRK bundle example** demonstrates the structured assembly of all colorectal-cancer-specific FHIR resources in a single transaction bundle. This bundle shows the practical use of the KRK profiles and how they link to one another in a realistic clinical scenario of a rectal carcinoma.

The bundle implements the **transaction pattern** and is server-consumable, so that all contained resources can be transmitted as an atomic operation.

---

### Bundle structure

The KRK bundle comprises the following resources:

#### Primary resources

- **Patient**: KRK patient (Klaus KolorektalCa)
- **Condition**: primary tumour diagnosis (C18 - malignant neoplasm of the colon)
- **Encounter**: inpatient episode of care

#### KRK-specific Observations

- **Distance to the anal verge**: tumour located 6cm from the anal verge (KR1)
- **Circumferential resection margin**: minimum distance 2mm (KR3)
- **Aboral resection margin**: minimum distance 15mm (KR2)
- **MRI mesorectal fascia**: imaging-based assessment of the distance (KR2)
- **Anastomotic leak**: postoperative complication assessment (KR8)
- **ASA classification**: preoperative risk assessment ASA II (KR9)

#### Therapeutic resources

- **Stoma marking**: preoperative marking of the stoma position (KR7)
- **KRK operation**: surgical resection with TME quality assessment (KR4)
- **KRK specimen**: surgical specimen with pathological workup

---

### Clinical scenario

The bundle represents a **patient with rectal carcinoma** with complete preoperative diagnostics and surgical therapy:

**Patient characteristics:**

- **Diagnosis**: C18 colon carcinoma
- **ASA status**: ASA II (moderate operative risk)
- **Tumour location**: 6cm from the anal verge (low rectum)

**Preoperative diagnostics:**

- **MRI staging**: assessment of the mesorectal fascia
- **Preoperative preparation**: stoma marking carried out

**Surgical therapy:**

- **Rectal resection**: using the TME technique (total mesorectal excision)
- **Resection margins**: R0 resection with sufficient safety margins
- **Postoperative complications**: no anastomotic leak

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

### Linking pattern

The bundle demonstrates the **consistent reference structure** between KRK-specific resources:

```
Patient ← subject ← Condition (primary tumour)
                        ↑ focus
                 Observations (distances, ASA, anastomotic leak)
                        ↑ reasonReference
                   Procedures (stoma marking, operation)
                        ↑ collection.procedure
                    Specimen (surgical specimen)
```

---

### oBDS mapping

The bundle demonstrates the complete representation of the oBDS data fields for colorectal cancer:

#### Tumour location

- **KR1**: distance to the anal verge → [mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.html)

#### Pathological assessment

- **KR2**: aboral resection margin → [mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.html)
- **KR3**: circumferential resection margin → [mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.html)
- **KR4**: TME quality → [mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.html)

#### Imaging procedures

- **KR5**: MRI/CT mesorectal fascia → [mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.html)

#### Surgical data

- **KR7**: stoma marking → [mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.html)
- **KR8**: anastomotic leak → [mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.html)
- **KR9**: ASA classification → [mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.html) <!-- TODO:REVIEW The source page pointed at "Observation/mii-exa-onko-krk-asa-klassifikation"; the bundle contains the generic instance "mii-exa-onko-asa-klassifikation". -->

---

### Use of ValueSets

The bundle shows the practical use of various terminologies:

#### LOINC

- **Distance to the anal verge**: `33748-5` "Distance from anal verge"
- **ASA classification**: `97816-3` "American Society of Anesthesiologists physical status score"

#### SNOMED CT

- **Anastomotic leak**: `235919008` "Anastomotic leak"
- **Surgical procedures**: various SNOMED CT codes for colorectal operations

#### ICD-10-GM

- **Diagnosis**: `C18` "Bösartige Neubildung des Kolons"

#### oBDS CodeSystems

- **ASA classification**: `mii-cs-onko-krk-asa-obds#2` "ASA II"
- **Stoma marking**: `mii-cs-onko-krk-stoma-anzeichnung#durchgefuehrt` "Durchgeführt"
- **TME quality**: `mii-cs-onko-krk-tme-qualitaet#komplett` "Komplett"

<!-- TODO:REVIEW The codes carried over from the source page here diverge from the shipped instances: the anastomotic leak uses SNOMED CT 236091002 "Large intestine anastomotic leak (disorder)" rather than 235919008; the ASA CodeSystem is named mii-cs-onko-asa-obds (not mii-cs-onko-krk-asa-obds). Have this reviewed and aligned. -->

---

### Individual resource examples

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Bundle-Example.page.md gate=B -->
> The resources contained in the bundle are also shipped as standalone example instances:
{: .ig-highlight .ig-highlight-grey}

- Patient: [mii-exa-onko-krk-bundle-patient](Patient-mii-exa-onko-krk-bundle-patient.html)
- Primary tumour Condition: [mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.html)
- Episode of care: [mii-exa-onko-krk-bundle-encounter](Encounter-mii-exa-onko-krk-bundle-encounter.html)
- Distance to the anal verge: [mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.html)
- Circumferential resection margin: [mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.html)
- Aboral resection margin: [mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.html)
- MRI mesorectal fascia: [mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.html)
- ASA classification: [mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.html)
- Anastomotic leak: [mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.html)
- Stoma marking: [mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.html)
- KRK operation: [mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.html)
- KRK specimen: [mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.html)
