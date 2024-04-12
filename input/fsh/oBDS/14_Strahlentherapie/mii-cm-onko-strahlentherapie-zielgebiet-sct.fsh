Instance: MII-CM-Onko-Strahlentherapie-Zielstellung-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-zielgebiet-sct"
* name = "MII_CM_Onko_Strahlentherapie_Zielgebiet_SNOMED_Mapping"
* title = "MII CM Onko Strahlentherapie Zielgebiet SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Strahlentherapie Zielgebiet Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-strahlentherapie-zielgebiet
* group[=].target = "http://snomed.info/sct"

// Bereich: ZNS
* group[=].element[+].code = #1.1
* group[=].element[=].display = "Ganzhirn (Neurokranium, inklusive Meningen)"
* group[=].element[=].target.code = #258335003
* group[=].element[=].target.display = "Entire brain (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #1.2
* group[=].element[=].display = "Teilhirn (frontal/parietal/occipital/temporal/Kleinhirn)"
* group[=].element[=].target.code = #119235005
* group[=].element[=].target.display = "Brain part (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #1.3
* group[=].element[=].display = "Neuroachse/Rückenmark"
* group[=].element[=].target.code = #389079005
* group[=].element[=].target.display = "Brain and spinal cord structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #1.4
* group[=].element[=].display = "Hypophyse"
* group[=].element[=].target.code = #56329008
* group[=].element[=].target.display = "Pituitary structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #1.5
* group[=].element[=].display = "Hirn sonstiges"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = " Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "ggfs. über Postkoordination besser darstellbar"


//Bereich: Kopf-Hals
* group[=].element[+].code = #2.1
* group[=].element[=].display = "Auge (r, l)"
* group[=].element[=].target.code = #81745001
* group[=].element[=].target.display = "Structure of eye proper (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"



* group[=].element[+].code = #2.2
* group[=].element[=].display = "Nase/Nasennebenhöhle"
* group[=].element[=].target.code = #1286894002
* group[=].element[=].target.display = "Structure of nasal cavity and/or nasal sinus (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2.3
* group[=].element[=].display = "Mundhöhle inklusive Mundhöhlenvorhof"
* group[=].element[=].target.code = #74262004
* group[=].element[=].target.display = "Oral cavity structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2.4
* group[=].element[=].display = "Ohr (r, l)"
* group[=].element[=].target.code = #117590005
* group[=].element[=].target.display = "Ear structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #2.5
* group[=].element[=].display = "Speicheldrüse (r, l)"
* group[=].element[=].target.code = #385294005
* group[=].element[=].target.display = "Salivary gland structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #2.6
* group[=].element[=].display = "Pharynx"
* group[=].element[=].target.code = #54066008
* group[=].element[=].target.display = "Pharyngeal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2.7
* group[=].element[=].display = "Nasopharynx"
* group[=].element[=].target.code = #71836000
* group[=].element[=].target.display = "Nasopharyngeal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2.8
* group[=].element[=].display = "Oropharynx"
* group[=].element[=].target.code = #31389004
* group[=].element[=].target.display = "Oropharyngeal structure (body structure) "
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2.9
* group[=].element[=].display = "Hypopharynx"
* group[=].element[=].target.code = #81502006
* group[=].element[=].target.display = "Hypopharyngeal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2.10
* group[=].element[=].display = "Larynx"
* group[=].element[=].target.code = #4596009
* group[=].element[=].target.display = "Laryngeal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2.11
* group[=].element[=].display = "Schilddrüse"
* group[=].element[=].target.code = #69748006
* group[=].element[=].target.display = "Thyroid structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2.12
* group[=].element[=].display = "Kopf-Hals sonstige"
* group[=].element[=].target.code = #774007
* group[=].element[=].target.display = "Structure of head and/or neck (body structure)"
* group[=].element[=].target.equivalence = #equivalent

//Bereich: Thorax
* group[=].element[+].code = #3.1
* group[=].element[=].display = "Mamma als Ganzbrust (r, l)"
* group[=].element[=].target.code = #181131000
* group[=].element[=].target.display = "Entire breast (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #3.2
* group[=].element[=].display = "Mamma als Teilbrust (r, l)"
* group[=].element[=].target.code = #119184005
* group[=].element[=].target.display = "Breast part (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #3.3
* group[=].element[=].display = "Thoraxwand, gegebenenfalls r, l"
* group[=].element[=].target.code = #78904004
* group[=].element[=].target.display = "Chest wall structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #3.4
* group[=].element[=].display = "Lunge (r, l)"
* group[=].element[=].target.code = #39607008
* group[=].element[=].target.display = "Lung structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #3.5
* group[=].element[=].display = "Ösophagus"
* group[=].element[=].target.code = #32849002
* group[=].element[=].target.display = "Esophageal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #3.6
* group[=].element[=].display = "Mediastinum (mediastinaler Lymphabfluss ist in Nummer 9 zu kodieren)"
* group[=].element[=].target.code = #72410000
* group[=].element[=].target.display = "Mediastinal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #3.7
* group[=].element[=].display = "Thymus"
* group[=].element[=].target.code = #9875009
* group[=].element[=].target.display = "Thymus gland structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #3.8
* group[=].element[=].display = "Thorax sonstige"
* group[=].element[=].target.code = #51185008
* group[=].element[=].target.display = " Thoracic structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

//Bereich: "Abdomen"
* group[=].element[+].code = #4.1
* group[=].element[=].display = "Magen"
* group[=].element[=].target.code = #69695003
* group[=].element[=].target.display = "Stomach structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4.2
* group[=].element[=].display = "Pankreas"
* group[=].element[=].target.code = #15776009
* group[=].element[=].target.display = "Pancreatic structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4.3
* group[=].element[=].display = "Leber, auch bei Teilbestrahlung"
* group[=].element[=].target.code = #10200004
* group[=].element[=].target.display = " Liver structure (body structure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #4.4
* group[=].element[=].display = "Milz"
* group[=].element[=].target.code = #78961009
* group[=].element[=].target.display = "Splenic structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4.5
* group[=].element[=].display = "Niere (r, l)"
* group[=].element[=].target.code = #64033007
* group[=].element[=].target.display = "Kidney structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #4.6
* group[=].element[=].display = "Nebenniere (r, l"
* group[=].element[=].target.code = #23451007
* group[=].element[=].target.display = "Adrenal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #4.7
* group[=].element[=].display = "Retroperitoneum (z. B. Sarkome)"
* group[=].element[=].target.code = #82849001
* group[=].element[=].target.display = "Retroperitoneal compartment structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4.8
* group[=].element[=].display = "Ureter (r, l)"
* group[=].element[=].target.code = #87953007
* group[=].element[=].target.display = "Ureteric structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #4.9
* group[=].element[=].display = "Bauchwand (z. B. Sarkome)"
* group[=].element[=].target.code = #822992007
* group[=].element[=].target.display = "Structure of wall of abdominal proper segment of trunk (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4.10
* group[=].element[=].display = "Oberbauch"
* group[=].element[=].target.code = #80581009
* group[=].element[=].target.display = "Upper abdomen structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4.11
* group[=].element[=].display = "Gallengänge"
* group[=].element[=].target.code = #28273000
* group[=].element[=].target.display = "Bile duct structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4.12
* group[=].element[=].display = "Gallenblase"
* group[=].element[=].target.code = #28231008
* group[=].element[=].target.display = "Gallbladder structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4.13
* group[=].element[=].display = "Abdomen sonstige"
* group[=].element[=].target.code = #818983003
* group[=].element[=].target.display = "Structure of abdominopelvic cavity and/or content of abdominopelvic cavity and/or anterior abdominal wall (body structure)"
* group[=].element[=].target.equivalence = #equivalent

//Bereich: Becken (Organe)
* group[=].element[+].code = #5.1
* group[=].element[=].display = "Rektum"
* group[=].element[=].target.code = #34402009
* group[=].element[=].target.display = "Rectum structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.2
* group[=].element[=].display = "Analbereich"
* group[=].element[=].target.code = #53505006
* group[=].element[=].target.display = "Anal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.3
* group[=].element[=].display = "Harnblase"
* group[=].element[=].target.code = #89837001
* group[=].element[=].target.display = "Urinary bladder structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.4
* group[=].element[=].display = "Prostata"
* group[=].element[=].target.code = #41216001
* group[=].element[=].target.display = "Prostatic structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.5
* group[=].element[=].display = "Hoden"
* group[=].element[=].target.code = #40689003
* group[=].element[=].target.display = "Testis structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.6
* group[=].element[=].display = "Penis"
* group[=].element[=].target.code = #18911002
* group[=].element[=].target.display = "Penile structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.7
* group[=].element[=].display = "Uterus"
* group[=].element[=].target.code = #35039007
* group[=].element[=].target.display = "Uterine structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.8
* group[=].element[=].display = "Zervix"
* group[=].element[=].target.code = #71252005
* group[=].element[=].target.display = "Cervix uteri structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.9
* group[=].element[=].display = "Vulva"
* group[=].element[=].target.code = #45292006
* group[=].element[=].target.display = "Vulval structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.10
* group[=].element[=].display = "Vagina"
* group[=].element[=].target.code = #76784001
* group[=].element[=].target.display = "Vaginal structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.11
* group[=].element[=].display = "Beckenwand"
* group[=].element[=].target.code = #3665003
* group[=].element[=].target.display = "Pelvic wall structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5.12
* group[=].element[=].display = "Becken sonstige"
* group[=].element[=].target.code = #826984001
* group[=].element[=].target.display = "Structure of cavity and/or content of true pelvis (body structure)"
* group[=].element[=].target.equivalence = #equivalent

//Bereich: Knochen/Skelettsystem
* group[=].element[+].code = #6.1
* group[=].element[=].display = "Schädel"
* group[=].element[=].target.code = #89546000
* group[=].element[=].target.display = "Bone structure of cranium (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6.2
* group[=].element[=].display = "Schädelbasis"
* group[=].element[=].target.code = #31467002
* group[=].element[=].target.display = "Base of skull structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6.3
* group[=].element[=].display = "Orbita (r, l)"
* group[=].element[=].target.code = #363654007
* group[=].element[=].target.display = "Structure of orbit proper (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.4
* group[=].element[=].display = "Halswirbelsäule"
* group[=].element[=].target.code = #84667006
* group[=].element[=].target.display = "Bone structure of cervical vertebra (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6.5
* group[=].element[=].display = "Brustwirbelsäule"
* group[=].element[=].target.code = #35769007
* group[=].element[=].target.display = "Bone structure of thoracic vertebra (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6.6
* group[=].element[=].display = "Lendenwirbelsäule"
* group[=].element[=].target.code = #73903008
* group[=].element[=].target.display = "Bone structure of lumbar vertebra (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6.7
* group[=].element[=].display = "Sacrum /Coccygeum"
* group[=].element[=].target.code = #699698002
* group[=].element[=].target.display = "Structure of sacral vertebral column (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6.8
* group[=].element[=].display = "Rippen (r, l)"
* group[=].element[=].target.code = #113197003
* group[=].element[=].target.display = "Bone structure of rib (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.9
* group[=].element[=].display = "Sternum"
* group[=].element[=].target.code = #56873002
* group[=].element[=].target.display = "Bone structure of sternum (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6.10
* group[=].element[=].display = "Schulter (r, l)"
* group[=].element[=].target.code = #896747000
* group[=].element[=].target.display = "Bone structure of shoulder girdle and/or proximal humerus (body structure)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.11
* group[=].element[=].display = "Oberarm (r, l)"
* group[=].element[=].target.code = #85050009
* group[=].element[=].target.display = "Bone structure of humerus (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.12
* group[=].element[=].display = "Unterarm (r, l)"
* group[=].element[=].target.code = #299701004
* group[=].element[=].target.display = "Structure of bone of forearm (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.13
* group[=].element[=].display = "Hand (r, l)"
* group[=].element[=].target.code = #24097009
* group[=].element[=].target.display = "Bone structure of hand (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.14
* group[=].element[=].display = "Becken (r, l)"
* group[=].element[=].target.code = #12921003
* group[=].element[=].target.display = "Structure of pelvis (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.15
* group[=].element[=].display = "Hüfte (r, l)"
* group[=].element[=].target.code = #28254004
* group[=].element[=].target.display = "Innominate bone structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.16
* group[=].element[=].display = "Oberschenkel (r, l)"
* group[=].element[=].target.code = #71341001
* group[=].element[=].target.display = "Bone structure of femur (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.17
* group[=].element[=].display = "Unterschenkel"
* group[=].element[=].target.code = #702468001
* group[=].element[=].target.display = "Bone structure of lower leg (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6.18
* group[=].element[=].display = "Fuß (r, l)"
* group[=].element[=].target.code = #84167007
* group[=].element[=].target.display = "Bone structure of foot (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #6.19
* group[=].element[=].display = "Knochen sonstige"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #wider

//Bereich: Bindegewebe (Subkutangewebe, Fettgewebe, Muskeln, anderes Bindegewebe)
* group[=].element[+].code = #7.1
* group[=].element[=].display = "Kopf, Gesicht, Hals"
* group[=].element[=].target.code = #774007
* group[=].element[=].target.display = "Structure of head and/or neck (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #7.2
* group[=].element[=].display = "obere Extremität ink* #lusive Schulter (r, l)"
* group[=].element[=].target.code = #53120007
* group[=].element[=].target.display = "Upper limb structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #7.3
* group[=].element[=].display = "untere Extremität und Hüfte (r, l)"
* group[=].element[=].target.code = #61685007
* group[=].element[=].target.display = "Lower limb structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #7.4
* group[=].element[=].display = "Thorax"
* group[=].element[=].target.code = #51185008
* group[=].element[=].target.display = "Thoracic structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #7.5
* group[=].element[=].display = "Abdomen"
* group[=].element[=].target.code = #302553009
* group[=].element[=].target.display = "Entire abdomen (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #7.6
* group[=].element[=].display = "Becken"
* group[=].element[=].target.code = #12921003
* group[=].element[=].target.display = "Structure of pelvis (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #7.7
* group[=].element[=].display = "Stammes o. n. A."
* group[=].element[=].target.code = #1490004
* group[=].element[=].target.display = "Structure of soft tissue of trunk (body structure)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #7.8
* group[=].element[=].display = "mehrere Bereiche überlappend"
* group[=].element[=].target.code = #276825009
* group[=].element[=].target.display = "Overlapping sites (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #7.9
* group[=].element[=].display = "sonstige Weichteile o. n. A."
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #wider

//Bereich: Haut
* group[=].element[+].code = #8.1
* group[=].element[=].display = "Ganzhaut"
* group[=].element[=].target.code = #181469002
* group[=].element[=].target.display = "Entire skin (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #8.2
* group[=].element[=].display = "Teilbereiche"
* group[=].element[=].target.code = #119181002
* group[=].element[=].target.display = "Skin part (body structure)"
* group[=].element[=].target.equivalence = #equivalent

// Bereich: Lymphabflussregionen und Lymphknoten

* group[=].element[+].code = #9.1
* group[=].element[=].display = "Cervikale Lymphknoten (r, l)"
* group[=].element[=].target.code = #81105003
* group[=].element[=].target.display = "Cervical lymph node structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #9.2
* group[=].element[=].display = "Supra-/infraclavikuläre Lymphknoten (r, l)"
* group[=].element[=].target.code = #9659009
* group[=].element[=].target.display = "Structure of infraclavicular lymph node (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #9.3
* group[=].element[=].display = "Axilläre Lymphknoten (r, l)"
* group[=].element[=].target.code = #245269009
* group[=].element[=].target.display = "Axillary lymph node group (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #9.4
* group[=].element[=].display = "Retrosternale/sternale/Mammaria interna Lymphknoten"
* group[=].element[=].target.code = #245282001
* group[=].element[=].target.display = "Internal mammary lymph node group (body structure)"
* group[=].element[=].target.equivalence = #narrower

* group[=].element[+].code = #9.5
* group[=].element[=].display = "Mediastinale Lymphknoten"
* group[=].element[=].target.code = #62683002
* group[=].element[=].target.display = "Mediastinal lymph node structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #9.6
* group[=].element[=].display = "Hiläre Lymphknoten"
* group[=].element[=].target.code = #264016003
* group[=].element[=].target.display = "Hilar lymph node group (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #9.7
* group[=].element[=].display = "Intraabdominale Lymphknoten (z. B. subphrenisch, perigastrisch, peripankreatisch, Leber-, Milzhilus)"
* group[=].element[=].target.code = #818991007
* group[=].element[=].target.display = "Structure of abdominal lymph node (body structure)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #9.8
* group[=].element[=].display = "Paraaortale/paracavale Lymphknoten"
* group[=].element[=].target.code = #245285004
* group[=].element[=].target.display = "Para-aortic lymph node group (body structure)"
* group[=].element[=].target.equivalence = #narrower 

* group[=].element[+].code = #9.9
* group[=].element[=].display = "Retroperitoneale Lymphknoten"
* group[=].element[=].target.code = #91394001
* group[=].element[=].target.display = "Structure of retroperitoneal lymph node (body structure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #9.10
* group[=].element[=].display = "Beckenlymphabfluss (r, l) (Iliakal commun, extern, intern, obturatorisch, präsakral)"
* group[=].element[=].target.code = #54268001
* group[=].element[=].target.display = "Pelvic lymph node structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"


* group[=].element[+].code = #9.11
* group[=].element[=].display = "Inguinale Lymphknoten (r, l)"
* group[=].element[=].target.code = #8928004
* group[=].element[=].target.display = "Inguinal lymph node structure (body structure)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Lateralität über Postkoordination darstellbar"

* group[=].element[+].code = #9.12
* group[=].element[=].display = "Involved Node"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #9.13
* group[=].element[=].display = "Involved Site"
* group[=].element[=].target.code = #397440000
* group[=].element[=].target.display = "Anatomic location of excised lymph node containing metastatic neoplasm (observable entity)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #9.14
* group[=].element[=].display = "Involved Field"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #9.15
* group[=].element[=].display = "Sonstige Lymphknoten"
* group[=].element[=].target.code = #59441001
* group[=].element[=].target.display = "Structure of lymph node (body structure)"
* group[=].element[=].target.equivalence = #wider

// Bereich: Spezielle Zielgebiete
* group[=].element[+].code = #10.1
* group[=].element[=].display = "Ganzkörperbestrahlung bei allogener Stammzelltransplantation"
* group[=].element[=].target.code = #38266002
* group[=].element[=].target.display = "Entire body as a whole (body structure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #10.2
* group[=].element[=].display = "operative Zugangswege"
* group[=].element[=].target.code = #309795001
* group[=].element[=].target.display = "Surgical access values (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #10.3
* group[=].element[=].display = "Sonstige, nicht genannte Zielgebiete"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent