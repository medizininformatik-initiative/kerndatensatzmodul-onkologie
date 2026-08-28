# MII CM Onko Nebenwirkung MedDRA zu SNOMED CT (CTCAE v4.03) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Nebenwirkung MedDRA zu SNOMED CT (CTCAE v4.03)**

## ConceptMap: MII CM Onko Nebenwirkung MedDRA zu SNOMED CT (CTCAE v4.03) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-nebenwirkung-meddra-sct | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CM_Onko_Nebenwirkung_MedDRA_SCT |

 
Kuratierte Zuordnung der MedDRA-Codes der CTCAE-v4.03-Nebenwirkungsterme zu SNOMED CT für die optionale SNOMED-Zweitkodierung in AdverseEvent.event (Profil mii-pr-onko-nebenwirkung-adverse-event). WICHTIGE HINWEISE: (1) Es existiert eine offizielle, lizenzpflichtige MedDRA-SNOMED-CT-Map (MedDRA MSSO / SNOMED International); diese ConceptMap ist eine davon unabhängige, projektseitig kuratierte Zuordnung und ersetzt die offizielle Map nicht. (2) Die Zuordnungen wurden automatisiert erstellt und stichproben- bzw. einzelfallkuratiert; für Vollständigkeit und Korrektheit wird KEINE GEWÄHR übernommen. Vor einer Nutzung in Produktivsystemen ist eine eigenverantwortliche fachliche Prüfung erforderlich. (3) Nicht jeder CTCAE-/MedDRA-Term hat ein SNOMED-CT-Äquivalent — solche Terme sind als unmatched gekennzeichnet und verbleiben MedDRA-only. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-nebenwirkung-meddra-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-nebenwirkung-meddra-sct",
  "version" : "2026.0.3",
  "name" : "MII_CM_Onko_Nebenwirkung_MedDRA_SCT",
  "title" : "MII CM Onko Nebenwirkung MedDRA zu SNOMED CT (CTCAE v4.03)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Kuratierte Zuordnung der MedDRA-Codes der CTCAE-v4.03-Nebenwirkungsterme zu SNOMED CT für die optionale SNOMED-Zweitkodierung in AdverseEvent.event (Profil mii-pr-onko-nebenwirkung-adverse-event). WICHTIGE HINWEISE: (1) Es existiert eine offizielle, lizenzpflichtige MedDRA-SNOMED-CT-Map (MedDRA MSSO / SNOMED International); diese ConceptMap ist eine davon unabhängige, projektseitig kuratierte Zuordnung und ersetzt die offizielle Map nicht. (2) Die Zuordnungen wurden automatisiert erstellt und stichproben- bzw. einzelfallkuratiert; für Vollständigkeit und Korrektheit wird KEINE GEWÄHR übernommen. Vor einer Nutzung in Produktivsystemen ist eine eigenverantwortliche fachliche Prüfung erforderlich. (3) Nicht jeder CTCAE-/MedDRA-Term hat ein SNOMED-CT-Äquivalent — solche Terme sind als unmatched gekennzeichnet und verbleiben MedDRA-only.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Ableitung der optionalen SNOMED-CT-Zweitkodierung (event.coding[snomed]) aus der MedDRA-Pflichtkodierung der Nebenwirkungsart (oBDS 15.2).",
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-art",
  "targetUri" : "http://snomed.info/sct/900000000000207008/version/20250701?fhir_vs",
  "group" : [{
    "source" : "https://www.meddra.org",
    "target" : "http://snomed.info/sct",
    "targetVersion" : "http://snomed.info/sct/900000000000207008/version/20250701",
    "element" : [{
      "code" : "10000060",
      "display" : "Abdominal distension",
      "target" : [{
        "code" : "41931001",
        "display" : "Distension of abdomen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10000081",
      "display" : "Abdominal pain",
      "target" : [{
        "code" : "21522001",
        "display" : "Abdominal pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10000486",
      "display" : "Acidosis",
      "target" : [{
        "code" : "51387008",
        "display" : "Acidosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10000521",
      "display" : "Acoustic nerve disorder NOS",
      "target" : [{
        "code" : "77949003",
        "display" : "Disorder of acoustic nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10000636",
      "display" : "Activated partial thromboplastin time prolonged",
      "target" : [{
        "code" : "409675001",
        "display" : "Partial thromboplastin time increased",
        "equivalence" : "wider",
        "comment" : "SNOMED unterscheidet nicht zwischen PTT und aktivierter PTT; das Konzept umfasst beide Assays."
      }]
    },
    {
      "code" : "10001367",
      "display" : "Adrenal insufficiency",
      "target" : [{
        "code" : "386584007",
        "display" : "Adrenal cortical hypofunction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001409",
      "display" : "Adult respiratory distress syndrome",
      "target" : [{
        "code" : "67782005",
        "display" : "Acute respiratory distress syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001497",
      "display" : "Agitation",
      "target" : [{
        "code" : "24199005",
        "display" : "Feeling agitated",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001540",
      "display" : "Akathisia",
      "target" : [{
        "code" : "285145004",
        "display" : "Akathisia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001551",
      "display" : "Alanine aminotransferase increased",
      "target" : [{
        "code" : "409673008",
        "display" : "Alanine aminotransferase above reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10001598",
      "display" : "Alcohol intolerance",
      "target" : [{
        "code" : "102612005",
        "display" : "Alcohol intolerance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001675",
      "display" : "Alkaline phosphatase increased",
      "target" : [{
        "code" : "274770006",
        "display" : "Alkaline phosphatase above reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10001680",
      "display" : "Alkalosis",
      "target" : [{
        "code" : "21420006",
        "display" : "Alkalosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001718",
      "display" : "Allergic reaction",
      "target" : [{
        "code" : "419076005",
        "display" : "Allergic reaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001723",
      "display" : "Allergic rhinitis",
      "target" : [{
        "code" : "61582004",
        "display" : "Allergic rhinitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001760",
      "display" : "Alopecia",
      "target" : [{
        "code" : "56317004",
        "display" : "Alopecia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10001949",
      "display" : "Amnesia",
      "target" : [{
        "code" : "48167000",
        "display" : "Amnesia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002156",
      "display" : "Anal fistula",
      "target" : [{
        "code" : "786878009",
        "display" : "Anal fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002167",
      "display" : "Anal pain",
      "target" : [{
        "code" : "68653001",
        "display" : "Anal pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002176",
      "display" : "Anal stenosis",
      "target" : [{
        "code" : "64153009",
        "display" : "Stenosis of anal canal",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: CTCAE-Definition nennt explizit den Analkanal"
      }]
    },
    {
      "code" : "10002180",
      "display" : "Anal ulcer",
      "target" : [{
        "code" : "20928004",
        "display" : "Ulcer of anus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002218",
      "display" : "Anaphylaxis",
      "target" : [{
        "code" : "39579001",
        "display" : "Anaphylaxis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002272",
      "display" : "Anemia",
      "target" : [{
        "code" : "271737000",
        "display" : "Anaemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002544",
      "display" : "Ankle fracture",
      "target" : [{
        "code" : "16114001",
        "display" : "Fracture of ankle",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002646",
      "display" : "Anorexia",
      "target" : [{
        "code" : "79890006",
        "display" : "Loss of appetite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002652",
      "display" : "Anorgasmia",
      "target" : [{
        "code" : "62607004",
        "display" : "Orgasm incapacity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002855",
      "display" : "Anxiety",
      "target" : [{
        "code" : "48694002",
        "display" : "Anxiety",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002899",
      "display" : "Aortic injury",
      "target" : [{
        "code" : "444036008",
        "display" : "Injury of aorta",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10002953",
      "display" : "Aphonia",
      "target" : [{
        "code" : "441913003",
        "display" : "Aphonia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10002972",
      "display" : "Apnea",
      "target" : [{
        "code" : "1023001",
        "display" : "Apnoea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003011",
      "display" : "Appendicitis",
      "target" : [{
        "code" : "74400008",
        "display" : "Appendicitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003012",
      "display" : "Appendicitis perforated",
      "target" : [{
        "code" : "286967008",
        "display" : "Acute perforated appendicitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003074",
      "display" : "Arachnoiditis",
      "target" : [{
        "code" : "8217007",
        "display" : "Arachnoiditis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003162",
      "display" : "Arterial injury",
      "target" : [{
        "code" : "63043004",
        "display" : "Injury of artery",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003239",
      "display" : "Arthralgia",
      "target" : [{
        "code" : "57676002",
        "display" : "Pain of joint",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003246",
      "display" : "Arthritis",
      "target" : [{
        "code" : "3723001",
        "display" : "Arthritis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003445",
      "display" : "Ascites",
      "target" : [{
        "code" : "389026000",
        "display" : "Ascites",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003481",
      "display" : "Aspartate aminotransferase increased",
      "target" : [{
        "code" : "166669000",
        "display" : "Aspartate aminotransferase serum level above reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10003504",
      "display" : "Aspiration",
      "target" : [{
        "code" : "68052005",
        "display" : "Pulmonary aspiration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003586",
      "display" : "Asystole",
      "target" : [{
        "code" : "397829000",
        "display" : "Asystole",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003591",
      "display" : "Ataxia",
      "target" : [{
        "code" : "20262006",
        "display" : "Ataxia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003598",
      "display" : "Atelectasis",
      "target" : [{
        "code" : "46621007",
        "display" : "Atelectasis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003658",
      "display" : "Atrial fibrillation",
      "target" : [{
        "code" : "49436004",
        "display" : "Atrial fibrillation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003662",
      "display" : "Atrial flutter",
      "target" : [{
        "code" : "5370000",
        "display" : "Atrial flutter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003673",
      "display" : "Atrioventricular block complete",
      "target" : [{
        "code" : "27885002",
        "display" : "Complete atrioventricular block",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003674",
      "display" : "Atrioventricular block first degree",
      "target" : [{
        "code" : "270492004",
        "display" : "First degree atrioventricular block",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003883",
      "display" : "Azoospermia",
      "target" : [{
        "code" : "48188009",
        "display" : "Azoospermia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10003988",
      "display" : "Back pain",
      "target" : [{
        "code" : "161891005",
        "display" : "Backache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10004665",
      "display" : "Biliary fistula",
      "target" : [{
        "code" : "53206008",
        "display" : "Fistula of bile duct",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10005047",
      "display" : "Bladder infection",
      "target" : [{
        "code" : "38822007",
        "display" : "Cystitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10005265",
      "display" : "Bloating",
      "target" : [{
        "code" : "116289008",
        "display" : "Abdominal bloating",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Swollen abdomen' ist ein anderer Befund"
      }]
    },
    {
      "code" : "10005329",
      "display" : "Blood and lymphatic system disorders - Other, specify",
      "target" : [{
        "code" : "414027002",
        "display" : "Disorder of hematopoietic structure",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; der lymphatische Anteil ist nur ueber die haematopoetischen Strukturen mitabgedeckt."
      }]
    },
    {
      "code" : "10005332",
      "display" : "Blood antidiuretic hormone abnormal",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat nur gerichtete ADH-Befunde (131028000 above, 131029008 below), aber kein Konzept fuer 'abnormal' im Sinne von 'ausserhalb des Referenzbereichs'."
      }]
    },
    {
      "code" : "10005364",
      "display" : "Blood bilirubin increased",
      "target" : [{
        "code" : "166612004",
        "display" : "Serum bilirubin above reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10005452",
      "display" : "Blood corticotrophin decreased",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat nur Konzepte fuer Corticotropin-Releasing-Faktor (CRF, 131002003/131003008), nicht fuer ACTH-Spiegel. Eine Zuordnung waere fachlich falsch (Hypothalamus- statt Hypophysenhormon)."
      }]
    },
    {
      "code" : "10005561",
      "display" : "Blood gonadotrophin abnormal",
      "target" : [{
        "code" : "131024003",
        "display" : "Abnormal pituitary gonadotropin",
        "equivalence" : "narrower",
        "comment" : "SNOMED deckt nur die hypophysaeren Gonadotropine (LH/FSH) ab; hCG (131100008) ist ein separates Konzept."
      }]
    },
    {
      "code" : "10005778",
      "display" : "Blood prolactin abnormal",
      "target" : [{
        "code" : "131007009",
        "display" : "Abnormal prolactin",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10005886",
      "display" : "Blurred vision",
      "target" : [{
        "code" : "111516008",
        "display" : "Blurring of visual image",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10005901",
      "display" : "Body odor",
      "target" : [{
        "code" : "81917002",
        "display" : "Body odour",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006002",
      "display" : "Bone pain",
      "target" : [{
        "code" : "12584003",
        "display" : "Bone pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006179",
      "display" : "Breast atrophy",
      "target" : [{
        "code" : "20897003",
        "display" : "Atrophy of breast",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006259",
      "display" : "Breast infection",
      "target" : [{
        "code" : "198108005",
        "display" : "Breast infection",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006298",
      "display" : "Breast pain",
      "target" : [{
        "code" : "53430007",
        "display" : "Pain of breast",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006437",
      "display" : "Bronchial fistula",
      "target" : [{
        "code" : "233791001",
        "display" : "Bronchial fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006440",
      "display" : "Bronchial obstruction",
      "target" : [{
        "code" : "36925002",
        "display" : "Obstruction of bronchus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006482",
      "display" : "Bronchospasm",
      "target" : [{
        "code" : "4386001",
        "display" : "Bronchospasm",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006504",
      "display" : "Bruising",
      "target" : [{
        "code" : "125667009",
        "display" : "Contusion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006556",
      "display" : "Bullous dermatitis",
      "target" : [{
        "code" : "7231009",
        "display" : "Bullous dermatosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10006634",
      "display" : "Burn",
      "target" : [{
        "code" : "125666000",
        "display" : "Burn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10007196",
      "display" : "Capillary leak syndrome",
      "target" : [{
        "code" : "87730004",
        "display" : "Capillary leak syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10007515",
      "display" : "Cardiac arrest",
      "target" : [{
        "code" : "410429000",
        "display" : "Cardiac arrest",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10007541",
      "display" : "Cardiac disorders - Other, specify",
      "target" : [{
        "code" : "56265001",
        "display" : "Heart disease",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; auf die SNOMED-Oberklasse des Organsystems abgebildet. Die 'Other, specify'-Semantik (Freitext) geht verloren."
      }]
    },
    {
      "code" : "10007612",
      "display" : "Cardiac troponin I increased",
      "target" : [{
        "code" : "444931001",
        "display" : "High troponin I level",
        "equivalence" : "equivalent",
        "comment" : "Isoform-spezifische Entsprechung (Troponin I)."
      }]
    },
    {
      "code" : "10007613",
      "display" : "Cardiac troponin T increased",
      "target" : [{
        "code" : "1363512008",
        "display" : "Troponin above reference range",
        "equivalence" : "wider",
        "comment" : "SNOMED hat kein Troponin-T-spezifisches Konzept (nur Troponin I, 444931001); das gewaehlte Konzept ist isoformunspezifisch."
      }]
    },
    {
      "code" : "10007739",
      "display" : "Cataract",
      "target" : [{
        "code" : "193570009",
        "display" : "Cataract",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10007810",
      "display" : "Catheter related infection",
      "target" : [{
        "code" : "440653007",
        "display" : "Infection associated with catheter",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Blutstrominfektion war zu spezifisch"
      }]
    },
    {
      "code" : "10007839",
      "display" : "CD4 lymphocytes decreased",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keinen Laborbefund 'CD4-Zellzahl vermindert'. 406565005 'CD4 T lymphocyte deficiency' ist eine Immundefekt-Diagnose, kein Messwertbefund."
      }]
    },
    {
      "code" : "10008164",
      "display" : "Cerebrospinal fluid leakage",
      "target" : [{
        "code" : "230744007",
        "display" : "Cerebrospinal fluid leak",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: postoperative nasale Variante ersetzt"
      }]
    },
    {
      "code" : "10008330",
      "display" : "Cervicitis infection",
      "target" : [{
        "code" : "1340188003",
        "display" : "Infective cervicitis",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10008417",
      "display" : "Cheilitis",
      "target" : [{
        "code" : "7847004",
        "display" : "Cheilitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10008481",
      "display" : "Chest pain - cardiac",
      "target" : [{
        "code" : "426396005",
        "display" : "Cardiac chest pain",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Top-Kandidat 'Non-cardiac chest pain' bezeichnet das Gegenteil"
      }]
    },
    {
      "code" : "10008496",
      "display" : "Chest wall pain",
      "target" : [{
        "code" : "102588006",
        "display" : "Chest wall pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10008531",
      "display" : "Chills",
      "target" : [{
        "code" : "43724002",
        "display" : "Chill",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10008612",
      "display" : "Cholecystitis",
      "target" : [{
        "code" : "76581006",
        "display" : "Cholecystitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10008661",
      "display" : "Cholesterol high",
      "target" : [{
        "code" : "13644009",
        "display" : "Hypercholesterolaemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10009845",
      "display" : "Cognitive disturbance",
      "target" : [{
        "code" : "386806002",
        "display" : "Impaired cognition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10009887",
      "display" : "Colitis",
      "target" : [{
        "code" : "64226004",
        "display" : "Colitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10009995",
      "display" : "Colonic fistula",
      "target" : [{
        "code" : "197250003",
        "display" : "Colonic fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10009998",
      "display" : "Colonic hemorrhage",
      "target" : [{
        "code" : "95540002",
        "display" : "Hemorrhage of colon",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10010000",
      "display" : "Colonic obstruction",
      "target" : [{
        "code" : "40650009",
        "display" : "Obstruction of colon",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat enthielt Aetiologie (entzuendliche Polypen)"
      }]
    },
    {
      "code" : "10010001",
      "display" : "Colonic perforation",
      "target" : [{
        "code" : "50257008",
        "display" : "Perforation of colon",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10010004",
      "display" : "Colonic stenosis",
      "target" : [{
        "code" : "19132000",
        "display" : "Stenosis of colon",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10010006",
      "display" : "Colonic ulcer",
      "target" : [{
        "code" : "46040000",
        "display" : "Ulcer of colon",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10010250",
      "display" : "Concentration impairment",
      "target" : [{
        "code" : "26329005",
        "display" : "Poor concentration",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Unable to concentrate' impliziert vollstaendige Unfaehigkeit"
      }]
    },
    {
      "code" : "10010276",
      "display" : "Conduction disorder",
      "target" : [{
        "code" : "44808001",
        "display" : "Conduction disorder of the heart",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10010300",
      "display" : "Confusion",
      "target" : [{
        "code" : "40917007",
        "display" : "Clouded consciousness",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10010331",
      "display" : "Congenital, familial and genetic disorders - Other, specify",
      "target" : [{
        "code" : "66091009",
        "display" : "Congenital disease",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; SNOMED-Oberklasse deckt den kongenitalen Anteil ab, familiaer/genetisch nur teilweise."
      }]
    },
    {
      "code" : "10010741",
      "display" : "Conjunctivitis",
      "target" : [{
        "code" : "9826008",
        "display" : "Conjunctivitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10010742",
      "display" : "Conjunctivitis infective",
      "target" : [{
        "code" : "299699004",
        "display" : "Infective conjunctivitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10010774",
      "display" : "Constipation",
      "target" : [{
        "code" : "14760008",
        "display" : "Constipation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10010783",
      "display" : "Constrictive pericarditis",
      "target" : [{
        "code" : "85598007",
        "display" : "Constrictive pericarditis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10011224",
      "display" : "Cough",
      "target" : [{
        "code" : "49727002",
        "display" : "Cough",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10011268",
      "display" : "CPK increased",
      "target" : [{
        "code" : "432352001",
        "display" : "Creatine kinase level above reference range",
        "equivalence" : "equivalent",
        "comment" : "CPK = Creatine (phospho)kinase; Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10011368",
      "display" : "Creatinine increased",
      "target" : [{
        "code" : "166717003",
        "display" : "Serum creatinine above reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10011655",
      "display" : "Cushingoid",
      "target" : [{
        "code" : "67967009",
        "display" : "Cushingoid facies",
        "equivalence" : "narrower",
        "comment" : "SNOMED erfasst nur den Gesichtsbefund; CTCAE meint das gesamte cushingoide Erscheinungsbild"
      }]
    },
    {
      "code" : "10011912",
      "display" : "Death neonatal",
      "target" : [{
        "code" : "276506001",
        "display" : "Neonatal death",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat betraf muetterlichen Tod"
      }]
    },
    {
      "code" : "10011914",
      "display" : "Death NOS",
      "target" : [{
        "code" : "419620001",
        "display" : "Death",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat war ein Outcome-Bewertungskonzept"
      }]
    },
    {
      "code" : "10012174",
      "display" : "Dehydration",
      "target" : [{
        "code" : "34095006",
        "display" : "Dehydration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10012205",
      "display" : "Delayed puberty",
      "target" : [{
        "code" : "400003000",
        "display" : "Delayed puberty",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10012218",
      "display" : "Delirium",
      "target" : [{
        "code" : "2776000",
        "display" : "Delirium",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10012260",
      "display" : "Delusions",
      "target" : [{
        "code" : "2073000",
        "display" : "Delusion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10012318",
      "display" : "Dental caries",
      "target" : [{
        "code" : "80967001",
        "display" : "Dental caries",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10012373",
      "display" : "Depressed level of consciousness",
      "target" : [{
        "code" : "443371007",
        "display" : "Decreased level of consciousness",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10012378",
      "display" : "Depression",
      "target" : [{
        "code" : "35489007",
        "display" : "Depressive disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10012727",
      "display" : "Diarrhea",
      "target" : [{
        "code" : "62315008",
        "display" : "Diarrhoea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013442",
      "display" : "Disseminated intravascular coagulation",
      "target" : [{
        "code" : "67406007",
        "display" : "Disseminated intravascular coagulation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013573",
      "display" : "Dizziness",
      "target" : [{
        "code" : "404640003",
        "display" : "Dizziness",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013774",
      "display" : "Dry eye",
      "target" : [{
        "code" : "162290004",
        "display" : "Dry eyes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013781",
      "display" : "Dry mouth",
      "target" : [{
        "code" : "87715008",
        "display" : "Xerostomia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013786",
      "display" : "Dry skin",
      "target" : [{
        "code" : "52475004",
        "display" : "Xeroderma",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013828",
      "display" : "Duodenal fistula",
      "target" : [{
        "code" : "7780000",
        "display" : "Duodenal fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013830",
      "display" : "Duodenal obstruction",
      "target" : [{
        "code" : "95532008",
        "display" : "Obstruction of duodenum",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: kongenitale Variante ersetzt"
      }]
    },
    {
      "code" : "10013832",
      "display" : "Duodenal perforation",
      "target" : [{
        "code" : "270909006",
        "display" : "Duodenal perforation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013836",
      "display" : "Duodenal ulcer",
      "target" : [{
        "code" : "51868009",
        "display" : "Ulcer of duodenum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013887",
      "display" : "Dysarthria",
      "target" : [{
        "code" : "8011004",
        "display" : "Dysarthria",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013911",
      "display" : "Dysgeusia",
      "target" : [{
        "code" : "271801002",
        "display" : "Taste sense altered",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013934",
      "display" : "Dysmenorrhea",
      "target" : [{
        "code" : "266599000",
        "display" : "Dysmenorrhea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013941",
      "display" : "Dyspareunia",
      "target" : [{
        "code" : "71315007",
        "display" : "Dyspareunia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013946",
      "display" : "Dyspepsia",
      "target" : [{
        "code" : "162031009",
        "display" : "Indigestion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013950",
      "display" : "Dysphagia",
      "target" : [{
        "code" : "40739000",
        "display" : "Dysphagia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013951",
      "display" : "Dysphasia",
      "target" : [{
        "code" : "20301004",
        "display" : "Dysphasia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013963",
      "display" : "Dyspnea",
      "target" : [{
        "code" : "267036007",
        "display" : "Dyspnea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10013993",
      "display" : "Ear and labyrinth disorders - Other, specify",
      "target" : [{
        "code" : "25906001",
        "display" : "Disorder of ear",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; Labyrinth ist als Innenohr mitumfasst."
      }]
    },
    {
      "code" : "10014020",
      "display" : "Ear pain",
      "target" : [{
        "code" : "301354004",
        "display" : "Pain of ear",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10014217",
      "display" : "Edema cerebral",
      "target" : [{
        "code" : "2032001",
        "display" : "Cerebral oedema",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10014222",
      "display" : "Edema face",
      "target" : [{
        "code" : "445088006",
        "display" : "Edema of face",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10014326",
      "display" : "Ejaculation disorder",
      "target" : [{
        "code" : "386790008",
        "display" : "Disorder of ejaculation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10014383",
      "display" : "Electrocardiogram QT corrected interval prolonged",
      "target" : [{
        "code" : "111975006",
        "display" : "Prolonged QT interval",
        "equivalence" : "wider",
        "comment" : "SNOMED unterscheidet nicht zwischen QT und frequenzkorrigiertem QTc."
      }]
    },
    {
      "code" : "10014594",
      "display" : "Encephalitis infection",
      "target" : [{
        "code" : "312215006",
        "display" : "Infective encephalitis",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: erregerspezifisches Konzept ersetzt"
      }]
    },
    {
      "code" : "10014621",
      "display" : "Encephalomyelitis infection",
      "target" : [{
        "code" : "721249007",
        "display" : "Infection causing encephalomyelitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10014625",
      "display" : "Encephalopathy",
      "target" : [{
        "code" : "81308009",
        "display" : "Disorder of brain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10014678",
      "display" : "Endocarditis infective",
      "target" : [{
        "code" : "233850007",
        "display" : "Infective endocarditis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10014698",
      "display" : "Endocrine disorders - Other, specify",
      "target" : [{
        "code" : "362969004",
        "display" : "Disorder of endocrine system",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10014801",
      "display" : "Endophthalmitis",
      "target" : [{
        "code" : "1847009",
        "display" : "Endophthalmitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10014893",
      "display" : "Enterocolitis",
      "target" : [{
        "code" : "43752006",
        "display" : "Enterocolitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015090",
      "display" : "Epistaxis",
      "target" : [{
        "code" : "249366005",
        "display" : "Bleeding from nose",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015218",
      "display" : "Erythema multiforme",
      "target" : [{
        "code" : "36715001",
        "display" : "Erythema multiforme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015277",
      "display" : "Erythroderma",
      "target" : [{
        "code" : "399992009",
        "display" : "Erythroderma",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015384",
      "display" : "Esophageal hemorrhage",
      "target" : [{
        "code" : "15238002",
        "display" : "Esophageal bleeding",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015387",
      "display" : "Esophageal obstruction",
      "target" : [{
        "code" : "405247003",
        "display" : "Obstruction of esophagus",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10015388",
      "display" : "Esophageal pain",
      "target" : [{
        "code" : "102619001",
        "display" : "Pain in oesophagus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015448",
      "display" : "Esophageal stenosis",
      "target" : [{
        "code" : "63305008",
        "display" : "Stricture of oesophagus",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: kongenitale Variante ersetzt"
      }]
    },
    {
      "code" : "10015451",
      "display" : "Esophageal ulcer",
      "target" : [{
        "code" : "30811009",
        "display" : "Ulcer of oesophagus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015453",
      "display" : "Esophageal varices hemorrhage",
      "target" : [{
        "code" : "17709002",
        "display" : "Bleeding esophageal varices",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015461",
      "display" : "Esophagitis",
      "target" : [{
        "code" : "16761005",
        "display" : "Oesophagitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015533",
      "display" : "Euphoria",
      "target" : [{
        "code" : "85949006",
        "display" : "Euphoria",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015688",
      "display" : "Exostosis",
      "target" : [{
        "code" : "416189003",
        "display" : "Exostosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015829",
      "display" : "Extraocular muscle paresis",
      "target" : [{
        "code" : "35158001",
        "display" : "Paresis of extraocular muscles",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015832",
      "display" : "Extrapyramidal disorder",
      "target" : [{
        "code" : "76349003",
        "display" : "Extrapyramidal disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015919",
      "display" : "Eye disorders - Other, specify",
      "target" : [{
        "code" : "371405004",
        "display" : "Disorder of eye",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10015929",
      "display" : "Eye infection",
      "target" : [{
        "code" : "128351009",
        "display" : "Eye infection",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10015958",
      "display" : "Eye pain",
      "target" : [{
        "code" : "41652007",
        "display" : "Pain in eye",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016059",
      "display" : "Facial pain",
      "target" : [{
        "code" : "95668009",
        "display" : "Pain in face",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016173",
      "display" : "Fall",
      "target" : [{
        "code" : "161898004",
        "display" : "Falls",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016241",
      "display" : "Fat atrophy",
      "target" : [{
        "code" : "248315005",
        "display" : "Lipoatrophy",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Atrophy of orbital fat' war zu eng"
      }]
    },
    {
      "code" : "10016256",
      "display" : "Fatigue",
      "target" : [{
        "code" : "84229001",
        "display" : "Fatigue",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016288",
      "display" : "Febrile neutropenia",
      "target" : [{
        "code" : "409089005",
        "display" : "Febrile neutropenia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016296",
      "display" : "Fecal incontinence",
      "target" : [{
        "code" : "72042002",
        "display" : "Incontinence of feces",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Complete fecal incontinence' war zu eng"
      }]
    },
    {
      "code" : "10016479",
      "display" : "Fetal death",
      "target" : [{
        "code" : "276507005",
        "display" : "Fetal death",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Undelivered in utero fetal death' war zu eng"
      }]
    },
    {
      "code" : "10016558",
      "display" : "Fever",
      "target" : [{
        "code" : "386661006",
        "display" : "Fever",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016596",
      "display" : "Fibrinogen decreased",
      "target" : [{
        "code" : "131177005",
        "display" : "Fibrinogen below reference range",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016750",
      "display" : "Flank pain",
      "target" : [{
        "code" : "247355005",
        "display" : "Flank pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016757",
      "display" : "Flashing lights",
      "target" : [{
        "code" : "162277006",
        "display" : "Sees flashes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016766",
      "display" : "Flatulence",
      "target" : [{
        "code" : "249504006",
        "display" : "Passing flatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016778",
      "display" : "Floaters",
      "target" : [{
        "code" : "162278001",
        "display" : "Floaters in visual field",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: CTCAE beschreibt das Symptom im Gesichtsfeld, nicht die Glaskoerperpathologie"
      }]
    },
    {
      "code" : "10016791",
      "display" : "Flu like symptoms",
      "target" : [{
        "code" : "95891005",
        "display" : "Influenza-like illness",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016825",
      "display" : "Flushing",
      "target" : [{
        "code" : "238810007",
        "display" : "Flushing",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10016987",
      "display" : "Forced expiratory volume decreased",
      "target" : [{
        "code" : "46154005",
        "display" : "Decreased forced expiratory volume",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017076",
      "display" : "Fracture",
      "target" : [{
        "code" : "125605004",
        "display" : "Fracture of bone",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017577",
      "display" : "Gait disturbance",
      "target" : [{
        "code" : "22325002",
        "display" : "Abnormal gait",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat war eine dissoziative Stoerung"
      }]
    },
    {
      "code" : "10017631",
      "display" : "Gallbladder fistula",
      "target" : [{
        "code" : "16957005",
        "display" : "Fistula of gallbladder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017636",
      "display" : "Gallbladder obstruction",
      "target" : [{
        "code" : "75726005",
        "display" : "Obstruction of gallbladder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017638",
      "display" : "Gallbladder pain",
      "target" : [{
        "code" : "102628000",
        "display" : "Gallbladder pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017639",
      "display" : "Gallbladder perforation",
      "target" : [{
        "code" : "25345001",
        "display" : "Perforation of gallbladder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017789",
      "display" : "Gastric hemorrhage",
      "target" : [{
        "code" : "61401005",
        "display" : "Gastric hemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017815",
      "display" : "Gastric perforation",
      "target" : [{
        "code" : "235674005",
        "display" : "Perforation of stomach",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: kongenitale Variante ersetzt"
      }]
    },
    {
      "code" : "10017822",
      "display" : "Gastric ulcer",
      "target" : [{
        "code" : "397825006",
        "display" : "Gastric ulcer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017853",
      "display" : "Gastritis",
      "target" : [{
        "code" : "4556007",
        "display" : "Gastritis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017877",
      "display" : "Gastrointestinal fistula",
      "target" : [{
        "code" : "37831005",
        "display" : "Gastrointestinal fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10017947",
      "display" : "Gastrointestinal disorders - Other, specify",
      "target" : [{
        "code" : "53619000",
        "display" : "Disorder of digestive system",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10017999",
      "display" : "Gastrointestinal pain",
      "target" : [{
        "code" : "301362007",
        "display" : "Pain of digestive structure",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat war eine hereditaere Neuropathie"
      }]
    },
    {
      "code" : "10018043",
      "display" : "Gastroparesis",
      "target" : [{
        "code" : "235675006",
        "display" : "Gastroparesis syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10018065",
      "display" : "General disorders and administration site conditions - Other, specify",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SOC-Restkategorie ohne kohaerente SNOMED-Oberklasse: 'General disorders and administration site conditions' mischt Allgemeinsymptome und Applikationsort-Befunde."
      }]
    },
    {
      "code" : "10018146",
      "display" : "Genital edema",
      "target" : [{
        "code" : "300891008",
        "display" : "Genital edema",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10018286",
      "display" : "Gingival pain",
      "target" : [{
        "code" : "11114002",
        "display" : "Sore gums",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10018304",
      "display" : "Glaucoma",
      "target" : [{
        "code" : "23986001",
        "display" : "Glaucoma",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10018746",
      "display" : "Growth accelerated",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein passendes SNOMED-Konzept fuer beschleunigtes Wachstum gefunden"
      }]
    },
    {
      "code" : "10018748",
      "display" : "Growth hormone abnormal",
      "target" : [{
        "code" : "131004002",
        "display" : "Abnormal human growth hormone",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10018761",
      "display" : "Growth suppression",
      "target" : [{
        "code" : "444896005",
        "display" : "Growth retardation",
        "equivalence" : "equivalent",
        "comment" : "Korrektur aus adversarialer Verifikation"
      }]
    },
    {
      "code" : "10018784",
      "display" : "Gum infection",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein SNOMED-Konzept fuer Zahnfleischinfektion; Gingivitis ist nicht zwingend infektioes"
      }]
    },
    {
      "code" : "10018801",
      "display" : "Gynecomastia",
      "target" : [{
        "code" : "4754008",
        "display" : "Gynecomastia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019077",
      "display" : "Hallucinations",
      "target" : [{
        "code" : "7011001",
        "display" : "Hallucinations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019150",
      "display" : "Haptoglobin decreased",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED fuehrt Haptoglobin nur als Substanz (85294008) und Messverfahren (166580005), aber keinen Befund 'vermindert'."
      }]
    },
    {
      "code" : "10019211",
      "display" : "Headache",
      "target" : [{
        "code" : "25064002",
        "display" : "Headache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019245",
      "display" : "Hearing impaired",
      "target" : [{
        "code" : "15188001",
        "display" : "Hearing loss",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019279",
      "display" : "Heart failure",
      "target" : [{
        "code" : "84114007",
        "display" : "Heart failure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019428",
      "display" : "Hematoma",
      "target" : [{
        "code" : "385494008",
        "display" : "Hematoma",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019450",
      "display" : "Hematuria",
      "target" : [{
        "code" : "34436003",
        "display" : "Blood in urine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019489",
      "display" : "Hemoglobinuria",
      "target" : [{
        "code" : "68600005",
        "display" : "Haemoglobinuria",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019491",
      "display" : "Hemolysis",
      "target" : [{
        "code" : "73320003",
        "display" : "Haemolysis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019515",
      "display" : "Hemolytic uremic syndrome",
      "target" : [{
        "code" : "111407006",
        "display" : "Haemolytic uraemic syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019611",
      "display" : "Hemorrhoids",
      "target" : [{
        "code" : "70153002",
        "display" : "Hemorrhoids",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019663",
      "display" : "Hepatic failure",
      "target" : [{
        "code" : "59927004",
        "display" : "Hepatic failure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019678",
      "display" : "Hepatic hemorrhage",
      "target" : [{
        "code" : "16763008",
        "display" : "Haemorrhage of liver",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019692",
      "display" : "Hepatic necrosis",
      "target" : [{
        "code" : "87248009",
        "display" : "Hepatic necrosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019705",
      "display" : "Hepatic pain",
      "target" : [{
        "code" : "102626001",
        "display" : "Liver pain",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung (hepatic -> liver)."
      }]
    },
    {
      "code" : "10019799",
      "display" : "Hepatitis viral",
      "target" : [{
        "code" : "3738000",
        "display" : "Viral hepatitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10019805",
      "display" : "Hepatobiliary disorders - Other, specify",
      "target" : [{
        "code" : "1290917001",
        "display" : "Disorder of liver and/or biliary tract",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; deckt hepatisch und biliaer ab."
      }]
    },
    {
      "code" : "10020039",
      "display" : "Hiccups",
      "target" : [{
        "code" : "65958008",
        "display" : "Hiccoughs",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020100",
      "display" : "Hip fracture",
      "target" : [{
        "code" : "263225007",
        "display" : "Fracture of proximal end of femur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020112",
      "display" : "Hirsutism",
      "target" : [{
        "code" : "399939002",
        "display" : "Hirsutism",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020201",
      "display" : "Hoarseness",
      "target" : [{
        "code" : "50219008",
        "display" : "Hoarse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020407",
      "display" : "Hot flashes",
      "target" : [{
        "code" : "238810007",
        "display" : "Flushing",
        "equivalence" : "wider",
        "comment" : "Kein generisches 'Hot flush'-Konzept in SNOMED; Ziel umfasst alle Flush-Formen. Kandidat 'Menopausal flushing' waere im onkologischen Kontext (u.a. Maenner unter ADT) falsch. Hinweis: 238810007 ist bereits Zielcode des CTCAE-Terms \"Flushing\"; ein ursachenneutrales Hot-flash-Konzept existiert in SNOMED nicht"
      }]
    },
    {
      "code" : "10020508",
      "display" : "Hydrocephalus",
      "target" : [{
        "code" : "230745008",
        "display" : "Hydrocephalus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020587",
      "display" : "Hypercalcemia",
      "target" : [{
        "code" : "66931009",
        "display" : "Hypercalcemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020639",
      "display" : "Hyperglycemia",
      "target" : [{
        "code" : "80394007",
        "display" : "Hyperglycemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020642",
      "display" : "Hyperhidrosis",
      "target" : [{
        "code" : "312230002",
        "display" : "Hyperhidrosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020647",
      "display" : "Hyperkalemia",
      "target" : [{
        "code" : "14140009",
        "display" : "Hyperkalaemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020670",
      "display" : "Hypermagnesemia",
      "target" : [{
        "code" : "66978005",
        "display" : "Hypermagnesaemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020680",
      "display" : "Hypernatremia",
      "target" : [{
        "code" : "771115008",
        "display" : "Hypernatremia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020705",
      "display" : "Hyperparathyroidism",
      "target" : [{
        "code" : "66999008",
        "display" : "Hyperparathyroidism",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020765",
      "display" : "Hypersomnia",
      "target" : [{
        "code" : "77692006",
        "display" : "Hypersomnia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020772",
      "display" : "Hypertension",
      "target" : [{
        "code" : "38341003",
        "display" : "Hypertensive disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020850",
      "display" : "Hyperthyroidism",
      "target" : [{
        "code" : "34486009",
        "display" : "Hyperthyroidism",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020864",
      "display" : "Hypertrichosis",
      "target" : [{
        "code" : "29966009",
        "display" : "Hypertrichosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020870",
      "display" : "Hypertriglyceridemia",
      "target" : [{
        "code" : "302870006",
        "display" : "Hypertriglyceridaemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020907",
      "display" : "Hyperuricemia",
      "target" : [{
        "code" : "35885006",
        "display" : "Hyperuricemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020943",
      "display" : "Hypoalbuminemia",
      "target" : [{
        "code" : "119247004",
        "display" : "Hypoalbuminemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10020949",
      "display" : "Hypocalcemia",
      "target" : [{
        "code" : "5291005",
        "display" : "Hypocalcemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021005",
      "display" : "Hypoglycemia",
      "target" : [{
        "code" : "302866003",
        "display" : "Hypoglycaemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021013",
      "display" : "Hypohidrosis",
      "target" : [{
        "code" : "45004005",
        "display" : "Hypohidrosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021018",
      "display" : "Hypokalemia",
      "target" : [{
        "code" : "43339004",
        "display" : "Hypokalemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021028",
      "display" : "Hypomagnesemia",
      "target" : [{
        "code" : "190855004",
        "display" : "Hypomagnesemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021038",
      "display" : "Hyponatremia",
      "target" : [{
        "code" : "89627008",
        "display" : "Hyponatremia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021041",
      "display" : "Hypoparathyroidism",
      "target" : [{
        "code" : "36976004",
        "display" : "Hypoparathyroidism",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021059",
      "display" : "Hypophosphatemia",
      "target" : [{
        "code" : "4996001",
        "display" : "Hypophosphatemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021097",
      "display" : "Hypotension",
      "target" : [{
        "code" : "45007003",
        "display" : "Low blood pressure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021113",
      "display" : "Hypothermia",
      "target" : [{
        "code" : "386689009",
        "display" : "Hypothermia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021114",
      "display" : "Hypothyroidism",
      "target" : [{
        "code" : "40930008",
        "display" : "Hypothyroidism",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021143",
      "display" : "Hypoxia",
      "target" : [{
        "code" : "389086002",
        "display" : "Hypoxia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021305",
      "display" : "Ileal perforation",
      "target" : [{
        "code" : "282068002",
        "display" : "Perforation of ileum",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: neonatale Variante ersetzt"
      }]
    },
    {
      "code" : "10021307",
      "display" : "Ileal stenosis",
      "target" : [{
        "code" : "355468491000132106",
        "display" : "Stenosis of ileum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021309",
      "display" : "Ileal ulcer",
      "target" : [{
        "code" : "50565005",
        "display" : "Ileal ulcer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021328",
      "display" : "Ileus",
      "target" : [{
        "code" : "710572000",
        "display" : "Functional intestinal obstruction due to decreased peristalsis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10021428",
      "display" : "Immune system disorders - Other, specify",
      "target" : [{
        "code" : "414029004",
        "display" : "Disorder of immune function",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10021881",
      "display" : "Infections and infestations - Other, specify",
      "target" : [{
        "code" : "40733004",
        "display" : "Infectious disease",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10021918",
      "display" : "Infective myositis",
      "target" : [{
        "code" : "29689003",
        "display" : "Infective myositis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10022095",
      "display" : "Injection site reaction",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat einzelne Injektionsort-Befunde (Schmerz 95388000, Oedem 95392007, Ulkus 95400005 ...), aber keine generische 'Injection site reaction'. 1155807002 meint die systemische Reaktion nach Injektion."
      }]
    },
    {
      "code" : "10022117",
      "display" : "Injury, poisoning and procedural complications - Other, specify",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SOC-Restkategorie ohne kohaerente SNOMED-Oberklasse: Verletzung, Vergiftung und Eingriffskomplikation sind in SNOMED getrennte Hierarchien."
      }]
    },
    {
      "code" : "10022161",
      "display" : "Injury to carotid artery",
      "target" : [{
        "code" : "6956001",
        "display" : "Injury of carotid artery",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10022213",
      "display" : "Injury to inferior vena cava",
      "target" : [{
        "code" : "56515006",
        "display" : "Injury of inferior vena cava",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10022356",
      "display" : "Injury to superior vena cava",
      "target" : [{
        "code" : "38261007",
        "display" : "Injury of superior vena cava",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10022402",
      "display" : "INR increased",
      "target" : [{
        "code" : "313341008",
        "display" : "International normalized ratio above reference range",
        "equivalence" : "equivalent",
        "comment" : "INR ausgeschrieben; Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10022437",
      "display" : "Insomnia",
      "target" : [{
        "code" : "193462001",
        "display" : "Insomnia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10022763",
      "display" : "Intracranial hemorrhage",
      "target" : [{
        "code" : "1386000",
        "display" : "Intracranial hemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10022891",
      "display" : "Investigations - Other, specify",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SOC-Restkategorie 'Investigations - Other, specify' ohne SNOMED-Oberklasse; Laborbefunde bilden in SNOMED keine gemeinsame Diagnose-Hierarchie."
      }]
    },
    {
      "code" : "10022992",
      "display" : "Irregular menstruation",
      "target" : [{
        "code" : "80182007",
        "display" : "Irregular periods",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10022998",
      "display" : "Irritability",
      "target" : [{
        "code" : "55929007",
        "display" : "Feeling irritable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023030",
      "display" : "Ischemia cerebrovascular",
      "target" : [{
        "code" : "287731003",
        "display" : "Cerebral ischemia",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat war ein Anamnesekonzept"
      }]
    },
    {
      "code" : "10023174",
      "display" : "Jejunal perforation",
      "target" : [{
        "code" : "282060009",
        "display" : "Perforation of jejunum",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10023176",
      "display" : "Jejunal stenosis",
      "target" : [{
        "code" : "903952141000132105",
        "display" : "Stenosis of jejunum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023177",
      "display" : "Jejunal ulcer",
      "target" : [{
        "code" : "54822007",
        "display" : "Jejunal ulcer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023215",
      "display" : "Joint effusion",
      "target" : [{
        "code" : "387637008",
        "display" : "Effusion of joint",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023216",
      "display" : "Joint infection",
      "target" : [{
        "code" : "363162000",
        "display" : "Infectious disorder of joint",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023332",
      "display" : "Keratitis",
      "target" : [{
        "code" : "5888003",
        "display" : "Keratitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023424",
      "display" : "Kidney infection",
      "target" : [{
        "code" : "129128006",
        "display" : "Infectious disorder of kidney",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023509",
      "display" : "Kyphosis",
      "target" : [{
        "code" : "414564002",
        "display" : "Kyphosis deformity of spine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023838",
      "display" : "Laryngeal edema",
      "target" : [{
        "code" : "51599000",
        "display" : "Edema of larynx",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023862",
      "display" : "Laryngeal stenosis",
      "target" : [{
        "code" : "75547007",
        "display" : "Stenosis of larynx",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: erworbene Variante durch generisches Konzept ersetzt"
      }]
    },
    {
      "code" : "10023874",
      "display" : "Laryngitis",
      "target" : [{
        "code" : "45913009",
        "display" : "Laryngitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10023891",
      "display" : "Laryngospasm",
      "target" : [{
        "code" : "406444002",
        "display" : "Laryngeal spasm",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10024264",
      "display" : "Lethargy",
      "target" : [{
        "code" : "214264003",
        "display" : "Lethargy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10024378",
      "display" : "Leukocytosis",
      "target" : [{
        "code" : "111583006",
        "display" : "Leukocytosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10024382",
      "display" : "Leukoencephalopathy",
      "target" : [{
        "code" : "22811006",
        "display" : "Leukoencephalopathy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10024419",
      "display" : "Libido decreased",
      "target" : [{
        "code" : "8357008",
        "display" : "Reduced libido",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10024421",
      "display" : "Libido increased",
      "target" : [{
        "code" : "58436003",
        "display" : "Increased libido",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10024561",
      "display" : "Lip pain",
      "target" : [{
        "code" : "36269003",
        "display" : "Cheilodynia",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Cheilodynie = Lippenschmerz (Syn. 'Painful lips')"
      }]
    },
    {
      "code" : "10024574",
      "display" : "Lipase increased",
      "target" : [{
        "code" : "432034007",
        "display" : "Pancreatic lipase above reference range",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10024842",
      "display" : "Lordosis",
      "target" : [{
        "code" : "61960001",
        "display" : "Lordosis deformity of spine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10025182",
      "display" : "Lymph node pain",
      "target" : [{
        "code" : "301360004",
        "display" : "Pain of lymph node",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10025233",
      "display" : "Lymphedema",
      "target" : [{
        "code" : "234097001",
        "display" : "Lymphoedema",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10025256",
      "display" : "Lymphocyte count decreased",
      "target" : [{
        "code" : "1156294003",
        "display" : "Lymphocyte count below reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'decreased' -> 'below reference range'."
      }]
    },
    {
      "code" : "10025258",
      "display" : "Lymphocyte count increased",
      "target" : [{
        "code" : "418010004",
        "display" : "Blood lymphocyte number above reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10025476",
      "display" : "Malabsorption",
      "target" : [{
        "code" : "32230006",
        "display" : "Malabsorption syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10025482",
      "display" : "Malaise",
      "target" : [{
        "code" : "367391008",
        "display" : "Malaise",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10026749",
      "display" : "Mania",
      "target" : [{
        "code" : "231494001",
        "display" : "Mania",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10027175",
      "display" : "Memory impairment",
      "target" : [{
        "code" : "386807006",
        "display" : "Memory impairment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10027198",
      "display" : "Meningismus",
      "target" : [{
        "code" : "70784009",
        "display" : "Meningeal irritation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10027199",
      "display" : "Meningitis",
      "target" : [{
        "code" : "7180009",
        "display" : "Meningitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10027308",
      "display" : "Menopause",
      "target" : [{
        "code" : "289903006",
        "display" : "Menopause present",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10027313",
      "display" : "Menorrhagia",
      "target" : [{
        "code" : "386692008",
        "display" : "Menorrhagia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10027433",
      "display" : "Metabolism and nutrition disorders - Other, specify",
      "target" : [{
        "code" : "75934005",
        "display" : "Metabolic disease",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; der Ernaehrungsanteil ('nutrition disorders', 2492009) ist nicht mitabgedeckt."
      }]
    },
    {
      "code" : "10027786",
      "display" : "Mobitz (type) II atrioventricular block",
      "target" : [{
        "code" : "28189009",
        "display" : "Mobitz type II atrioventricular block",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung. ACHTUNG: derselbe Code ist im REVIEW-Tier bereits dem CTCAE-Term 'Mobitz type I' (MedDRA 10027787) zugeordnet - das ist falsch; Mobitz I gehoert auf 54016002."
      }]
    },
    {
      "code" : "10027787",
      "display" : "Mobitz type I",
      "target" : [{
        "code" : "54016002",
        "display" : "Mobitz type I incomplete atrioventricular block",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Top-Kandidat war Mobitz Typ II"
      }]
    },
    {
      "code" : "10028041",
      "display" : "Movements involuntary",
      "target" : [{
        "code" : "267078001",
        "display" : "Involuntary movement",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Hemiballism' war zu spezifisch"
      }]
    },
    {
      "code" : "10028130",
      "display" : "Mucositis oral",
      "target" : [{
        "code" : "61170000",
        "display" : "Stomatitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028154",
      "display" : "Multi-organ failure",
      "target" : [{
        "code" : "57653000",
        "display" : "Multiple organ failure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028395",
      "display" : "Musculoskeletal and connective tissue disorder -  Other, specify",
      "target" : [{
        "code" : "928000",
        "display" : "Disorder of musculoskeletal system",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10028411",
      "display" : "Myalgia",
      "target" : [{
        "code" : "68962001",
        "display" : "Muscle pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028524",
      "display" : "Myelitis",
      "target" : [{
        "code" : "41370002",
        "display" : "Myelitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028533",
      "display" : "Myelodysplastic syndrome",
      "target" : [{
        "code" : "109995007",
        "display" : "Myelodysplastic syndrome (clinical)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028596",
      "display" : "Myocardial infarction",
      "target" : [{
        "code" : "22298006",
        "display" : "Myocardial infarction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028606",
      "display" : "Myocarditis",
      "target" : [{
        "code" : "50920009",
        "display" : "Myocarditis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028653",
      "display" : "Myositis",
      "target" : [{
        "code" : "26889001",
        "display" : "Myositis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028691",
      "display" : "Nail discoloration",
      "target" : [{
        "code" : "89077005",
        "display" : "Nail discolouration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028735",
      "display" : "Nasal congestion",
      "target" : [{
        "code" : "68235000",
        "display" : "Nasal congestion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028813",
      "display" : "Nausea",
      "target" : [{
        "code" : "422587007",
        "display" : "Nausea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10028836",
      "display" : "Neck pain",
      "target" : [{
        "code" : "81680005",
        "display" : "Neck pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10029104",
      "display" : "Neoplasms benign, malignant and unspecified (incl cysts and polyps) - Other, specify",
      "target" : [{
        "code" : "55342001",
        "display" : "Neoplastic disease",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10029205",
      "display" : "Nervous system disorders - Other, specify",
      "target" : [{
        "code" : "118940003",
        "display" : "Disorder of nervous system",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10029223",
      "display" : "Neuralgia",
      "target" : [{
        "code" : "16269008",
        "display" : "Neuralgia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10029366",
      "display" : "Neutrophil count decreased",
      "target" : [{
        "code" : "165517008",
        "display" : "Neutropenia",
        "equivalence" : "equivalent",
        "comment" : "SNOMED fuehrt 'Neutrophil count below reference range' als Synonym dieses Konzepts."
      }]
    },
    {
      "code" : "10029404",
      "display" : "Night blindness",
      "target" : [{
        "code" : "65194006",
        "display" : "Night blindness",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10029864",
      "display" : "Nystagmus",
      "target" : [{
        "code" : "563001",
        "display" : "Nystagmus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10029883",
      "display" : "Obesity",
      "target" : [{
        "code" : "414916001",
        "display" : "Obesity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10029957",
      "display" : "Obstruction gastric",
      "target" : [{
        "code" : "244815007",
        "display" : "Pyloric obstruction",
        "equivalence" : "narrower",
        "comment" : "Kein generisches Konzept fuer Magenobstruktion; Ziel ist auf den Pylorus bezogen (Syn. 'Gastric outflow obstruction')"
      }]
    },
    {
      "code" : "10030300",
      "display" : "Oligospermia",
      "target" : [{
        "code" : "88311004",
        "display" : "Oligozoospermia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10030980",
      "display" : "Oral hemorrhage",
      "target" : [{
        "code" : "22490002",
        "display" : "Bleeding of mouth",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10031009",
      "display" : "Oral pain",
      "target" : [{
        "code" : "102616008",
        "display" : "Painful mouth",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10031282",
      "display" : "Osteoporosis",
      "target" : [{
        "code" : "64859006",
        "display" : "Osteoporosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033072",
      "display" : "Otitis externa",
      "target" : [{
        "code" : "3135009",
        "display" : "Otitis externa",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033078",
      "display" : "Otitis media",
      "target" : [{
        "code" : "65363002",
        "display" : "Otitis media",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033279",
      "display" : "Ovarian rupture",
      "target" : [{
        "code" : "88294009",
        "display" : "Rupture of ovary",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Ruptured cyst of ovary' war zu eng"
      }]
    },
    {
      "code" : "10033314",
      "display" : "Ovulation pain",
      "target" : [{
        "code" : "43548008",
        "display" : "Mittelschmerz",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033371",
      "display" : "Pain",
      "target" : [{
        "code" : "22253000",
        "display" : "Pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033425",
      "display" : "Pain in extremity",
      "target" : [{
        "code" : "90834002",
        "display" : "Pain in limb",
        "equivalence" : "equivalent",
        "comment" : "Extremitaet = Limb; deckungsgleich."
      }]
    },
    {
      "code" : "10033474",
      "display" : "Pain of skin",
      "target" : [{
        "code" : "301364008",
        "display" : "Pain of skin",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033557",
      "display" : "Palpitations",
      "target" : [{
        "code" : "80313002",
        "display" : "Palpitations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033626",
      "display" : "Pancreatic hemorrhage",
      "target" : [{
        "code" : "95562002",
        "display" : "Haemorrhage of pancreas",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Blutung des Ductus pancreaticus ersetzt"
      }]
    },
    {
      "code" : "10033645",
      "display" : "Pancreatitis",
      "target" : [{
        "code" : "75694006",
        "display" : "Pancreatitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033703",
      "display" : "Papilledema",
      "target" : [{
        "code" : "423488006",
        "display" : "Papilloedema - optic disc oedema due to raised intracranial pressure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10033987",
      "display" : "Paresthesia",
      "target" : [{
        "code" : "91019004",
        "display" : "Paresthesia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034016",
      "display" : "Paronychia",
      "target" : [{
        "code" : "71906005",
        "display" : "Paronychia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034040",
      "display" : "Paroxysmal atrial tachycardia",
      "target" : [{
        "code" : "195069001",
        "display" : "Atrial paroxysmal tachycardia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034263",
      "display" : "Pelvic pain",
      "target" : [{
        "code" : "30473006",
        "display" : "Pain in pelvis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034310",
      "display" : "Penile pain",
      "target" : [{
        "code" : "285375003",
        "display" : "Pain in penis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034405",
      "display" : "Perforation bile duct",
      "target" : [{
        "code" : "37439003",
        "display" : "Perforation of bile duct",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034474",
      "display" : "Pericardial effusion",
      "target" : [{
        "code" : "373945007",
        "display" : "Pericardial effusion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034484",
      "display" : "Pericarditis",
      "target" : [{
        "code" : "3238004",
        "display" : "Pericarditis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034536",
      "display" : "Periodontal disease",
      "target" : [{
        "code" : "2556008",
        "display" : "Periodontal disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034578",
      "display" : "Peripheral ischemia",
      "target" : [{
        "code" : "233958001",
        "display" : "Peripheral ischemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034580",
      "display" : "Peripheral motor neuropathy",
      "target" : [{
        "code" : "95663000",
        "display" : "Peripheral motor neuropathy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034620",
      "display" : "Peripheral sensory neuropathy",
      "target" : [{
        "code" : "789588003",
        "display" : "Peripheral sensory neuropathy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034719",
      "display" : "Personality change",
      "target" : [{
        "code" : "102943000",
        "display" : "Personality change",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034825",
      "display" : "Pharyngeal fistula",
      "target" : [{
        "code" : "232413009",
        "display" : "Pharyngocutaneous fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034835",
      "display" : "Pharyngitis",
      "target" : [{
        "code" : "405737000",
        "display" : "Pharyngitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034844",
      "display" : "Pharyngolaryngeal pain",
      "target" : [{
        "code" : "162397003",
        "display" : "Pain in throat",
        "equivalence" : "equivalent",
        "comment" : "Pharyngolaryngealer Schmerz = Halsschmerz."
      }]
    },
    {
      "code" : "10034879",
      "display" : "Phlebitis",
      "target" : [{
        "code" : "61599003",
        "display" : "Phlebitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034960",
      "display" : "Photophobia",
      "target" : [{
        "code" : "409668002",
        "display" : "Photophobia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10034966",
      "display" : "Photosensitivity",
      "target" : [{
        "code" : "90128006",
        "display" : "Photosensitivity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10035528",
      "display" : "Platelet count decreased",
      "target" : [{
        "code" : "415116008",
        "display" : "Platelet count below reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'decreased' -> 'below reference range'."
      }]
    },
    {
      "code" : "10035598",
      "display" : "Pleural effusion",
      "target" : [{
        "code" : "60046008",
        "display" : "Pleural effusion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10035623",
      "display" : "Pleuritic pain",
      "target" : [{
        "code" : "2237002",
        "display" : "Pleuritic pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10035742",
      "display" : "Pneumonitis",
      "target" : [{
        "code" : "205237003",
        "display" : "Pneumonitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10035759",
      "display" : "Pneumothorax",
      "target" : [{
        "code" : "36118008",
        "display" : "Pneumothorax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036200",
      "display" : "Portal hypertension",
      "target" : [{
        "code" : "34742003",
        "display" : "Portal hypertension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036206",
      "display" : "Portal vein thrombosis",
      "target" : [{
        "code" : "17920008",
        "display" : "Portal vein thrombosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036402",
      "display" : "Postnasal drip",
      "target" : [{
        "code" : "75803007",
        "display" : "Posterior rhinorrhea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036585",
      "display" : "Pregnancy, puerperium and perinatal conditions - Other, specify",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SOC-Restkategorie ohne kohaerente SNOMED-Oberklasse: Schwangerschaft, Wochenbett und Perinatalperiode sind in SNOMED getrennte Hierarchien."
      }]
    },
    {
      "code" : "10036595",
      "display" : "Premature delivery",
      "target" : [{
        "code" : "282020008",
        "display" : "Premature delivery",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036601",
      "display" : "Premature menopause",
      "target" : [{
        "code" : "373717006",
        "display" : "Premature menopause",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036653",
      "display" : "Presyncope",
      "target" : [{
        "code" : "427461000",
        "display" : "Near syncope",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036774",
      "display" : "Proctitis",
      "target" : [{
        "code" : "3951002",
        "display" : "Proctitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036790",
      "display" : "Productive cough",
      "target" : [{
        "code" : "28743005",
        "display" : "Productive cough",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10036968",
      "display" : "Prostatic pain",
      "target" : [{
        "code" : "36729000",
        "display" : "Pain of prostate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10037032",
      "display" : "Proteinuria",
      "target" : [{
        "code" : "29738008",
        "display" : "Proteinuria",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10037087",
      "display" : "Pruritus",
      "target" : [{
        "code" : "418363000",
        "display" : "Itching of skin",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10037175",
      "display" : "Psychiatric disorders - Other, specify",
      "target" : [{
        "code" : "74732009",
        "display" : "Mental disorder",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10037234",
      "display" : "Psychosis",
      "target" : [{
        "code" : "69322001",
        "display" : "Psychotic disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10037375",
      "display" : "Pulmonary edema",
      "target" : [{
        "code" : "19242006",
        "display" : "Pulmonary oedema",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10037383",
      "display" : "Pulmonary fibrosis",
      "target" : [{
        "code" : "51615001",
        "display" : "Fibrosis of lung",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10037400",
      "display" : "Pulmonary hypertension",
      "target" : [{
        "code" : "70995007",
        "display" : "Pulmonary hypertension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10037549",
      "display" : "Purpura",
      "target" : [{
        "code" : "387778001",
        "display" : "Purpuric disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10037767",
      "display" : "Radiation recall reaction (dermatologic)",
      "target" : [{
        "code" : "403644004",
        "display" : "Radiation recall reaction due to cytotoxic therapy",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung des Radiation-Recall-Phaenomens."
      }]
    },
    {
      "code" : "10037847",
      "display" : "Rash acneiform",
      "target" : [{
        "code" : "402644006",
        "display" : "Acneiform eruption",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10037868",
      "display" : "Rash maculo-papular",
      "target" : [{
        "code" : "247471006",
        "display" : "Maculopapular eruption",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10037888",
      "display" : "Rash pustular",
      "target" : [{
        "code" : "1251376007",
        "display" : "Acute pustular skin eruption",
        "equivalence" : "narrower",
        "comment" : "SNOMED-Konzept ist auf die akute Auspraegung eingeschraenkt"
      }]
    },
    {
      "code" : "10038062",
      "display" : "Rectal fistula",
      "target" : [{
        "code" : "80736008",
        "display" : "Rectal fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038064",
      "display" : "Rectal hemorrhage",
      "target" : [{
        "code" : "12063002",
        "display" : "Rectal haemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038072",
      "display" : "Rectal pain",
      "target" : [{
        "code" : "77880009",
        "display" : "Rectal pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038073",
      "display" : "Rectal perforation",
      "target" : [{
        "code" : "10825001",
        "display" : "Perforation of rectum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038079",
      "display" : "Rectal stenosis",
      "target" : [{
        "code" : "25730006",
        "display" : "Stricture of rectum",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: kongenitale Variante ersetzt"
      }]
    },
    {
      "code" : "10038080",
      "display" : "Rectal ulcer",
      "target" : [{
        "code" : "54609002",
        "display" : "Ulcer of rectum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038130",
      "display" : "Recurrent laryngeal nerve palsy",
      "target" : [{
        "code" : "42998008",
        "display" : "Vagus nerve laryngeal paralysis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038359",
      "display" : "Renal and urinary disorders - Other, specify",
      "target" : [{
        "code" : "128606002",
        "display" : "Disorder of urinary system",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; der renale Anteil ist als Teil des Harnsystems mitumfasst."
      }]
    },
    {
      "code" : "10038385",
      "display" : "Renal calculi",
      "target" : [{
        "code" : "95570007",
        "display" : "Kidney stone",
        "equivalence" : "equivalent",
        "comment" : "Renale Konkremente = Nierensteine."
      }]
    },
    {
      "code" : "10038419",
      "display" : "Renal colic",
      "target" : [{
        "code" : "7093002",
        "display" : "Renal colic",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038463",
      "display" : "Renal hemorrhage",
      "target" : [{
        "code" : "95571006",
        "display" : "Hemorrhage of kidney",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038604",
      "display" : "Reproductive system and breast disorders - Other, specify",
      "target" : [{
        "code" : "362968007",
        "display" : "Disorder of reproductive system",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; Brusterkrankungen sind nicht mitabgedeckt."
      }]
    },
    {
      "code" : "10038695",
      "display" : "Respiratory failure",
      "target" : [{
        "code" : "409622000",
        "display" : "Respiratory failure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038738",
      "display" : "Respiratory, thoracic and mediastinal disorders - Other, specify",
      "target" : [{
        "code" : "50043002",
        "display" : "Disorder of respiratory system",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; der mediastinale Anteil ist nicht mitabgedeckt."
      }]
    },
    {
      "code" : "10038743",
      "display" : "Restlessness",
      "target" : [{
        "code" : "162221009",
        "display" : "Restlessness",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038748",
      "display" : "Restrictive cardiomyopathy",
      "target" : [{
        "code" : "415295002",
        "display" : "Restrictive cardiomyopathy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038848",
      "display" : "Retinal detachment",
      "target" : [{
        "code" : "42059000",
        "display" : "Retinal detachment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038897",
      "display" : "Retinal tear",
      "target" : [{
        "code" : "95690009",
        "display" : "Retinal tear",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038901",
      "display" : "Retinal vascular disorder",
      "target" : [{
        "code" : "57534004",
        "display" : "Retinal vascular disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038921",
      "display" : "Retinoic acid syndrome",
      "target" : [{
        "code" : "773537001",
        "display" : "Differentiation syndrome due to and following chemotherapy co-occurrent with acute promyelocytic leukemia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038923",
      "display" : "Retinopathy",
      "target" : [{
        "code" : "29555009",
        "display" : "Retinal disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10038981",
      "display" : "Retroperitoneal hemorrhage",
      "target" : [{
        "code" : "95549001",
        "display" : "Retroperitoneal hemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10039411",
      "display" : "Salivary gland fistula",
      "target" : [{
        "code" : "75260002",
        "display" : "Fistula of salivary gland",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10039413",
      "display" : "Salivary gland infection",
      "target" : [{
        "code" : "42982001",
        "display" : "Sialoadenitis",
        "equivalence" : "wider",
        "comment" : "Sialadenitis umfasst auch nicht-infektioese Speicheldruesenentzuendungen; ein Infektionskonzept fehlt."
      }]
    },
    {
      "code" : "10039722",
      "display" : "Scoliosis",
      "target" : [{
        "code" : "298382003",
        "display" : "Scoliosis deformity of spine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10039757",
      "display" : "Scrotal pain",
      "target" : [{
        "code" : "20502007",
        "display" : "Pain in scrotum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10039906",
      "display" : "Seizure",
      "target" : [{
        "code" : "91175000",
        "display" : "Seizure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040047",
      "display" : "Sepsis",
      "target" : [{
        "code" : "91302008",
        "display" : "Sepsis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040102",
      "display" : "Seroma",
      "target" : [{
        "code" : "715068009",
        "display" : "Seroma",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040139",
      "display" : "Serum amylase increased",
      "target" : [{
        "code" : "275739007",
        "display" : "Serum amylase above reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10040400",
      "display" : "Serum sickness",
      "target" : [{
        "code" : "403608009",
        "display" : "Serum sickness caused by drug",
        "equivalence" : "narrower",
        "comment" : "Kein generisches 'Serum sickness' in SNOMED; im CTCAE-Kontext ist die Reaktion arzneimittelbedingt"
      }]
    },
    {
      "code" : "10040639",
      "display" : "Sick sinus syndrome",
      "target" : [{
        "code" : "36083008",
        "display" : "Sick sinus syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040741",
      "display" : "Sinus bradycardia",
      "target" : [{
        "code" : "49710005",
        "display" : "Sinus bradycardia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040747",
      "display" : "Sinus pain",
      "target" : [{
        "code" : "4969004",
        "display" : "Sinus headache",
        "equivalence" : "equivalent",
        "comment" : "SNOMED-FSN lautet 'Sinus headache', Oberbegriff von Stirn- und Kieferhoehlenschmerz"
      }]
    },
    {
      "code" : "10040752",
      "display" : "Sinus tachycardia",
      "target" : [{
        "code" : "11092001",
        "display" : "Sinus tachycardia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040753",
      "display" : "Sinusitis",
      "target" : [{
        "code" : "36971009",
        "display" : "Sinusitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040785",
      "display" : "Skin and subcutaneous tissue disorders - Other, specify",
      "target" : [{
        "code" : "95320005",
        "display" : "Disorder of skin",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie; der subkutane Anteil ist nicht explizit mitabgedeckt."
      }]
    },
    {
      "code" : "10040799",
      "display" : "Skin atrophy",
      "target" : [{
        "code" : "400190005",
        "display" : "Atrophic condition of skin",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040865",
      "display" : "Skin hyperpigmentation",
      "target" : [{
        "code" : "49765009",
        "display" : "Hyperpigmentation of skin",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040868",
      "display" : "Skin hypopigmentation",
      "target" : [{
        "code" : "23006000",
        "display" : "Skin hypopigmented",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040872",
      "display" : "Skin infection",
      "target" : [{
        "code" : "19824006",
        "display" : "Infection of skin and/or subcutaneous tissue",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10040947",
      "display" : "Skin ulceration",
      "target" : [{
        "code" : "46742003",
        "display" : "Skin ulcer",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Amebic ulcer of skin' war fachlich falsch"
      }]
    },
    {
      "code" : "10040975",
      "display" : "Sleep apnea",
      "target" : [{
        "code" : "73430006",
        "display" : "Sleep apnea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10041101",
      "display" : "Small intestinal obstruction",
      "target" : [{
        "code" : "281255004",
        "display" : "Small bowel obstruction",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat enthielt Aetiologie (Adhaesionen)"
      }]
    },
    {
      "code" : "10041103",
      "display" : "Small intestinal perforation",
      "target" : [{
        "code" : "235741002",
        "display" : "Perforation of small intestine",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10041133",
      "display" : "Small intestine ulcer",
      "target" : [{
        "code" : "235710003",
        "display" : "Ulcer of small intestine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10041232",
      "display" : "Sneezing",
      "target" : [{
        "code" : "76067001",
        "display" : "Sneezing",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10041244",
      "display" : "Social circumstances - Other, specify",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "'Social circumstances' sind in SNOMED keine Clinical Findings, sondern Social-Context-Konzepte; eine Restkategorie dazu existiert nicht."
      }]
    },
    {
      "code" : "10041349",
      "display" : "Somnolence",
      "target" : [{
        "code" : "271782001",
        "display" : "Drowsy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10041367",
      "display" : "Sore throat",
      "target" : [{
        "code" : "267102003",
        "display" : "Sore throat",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10041416",
      "display" : "Spasticity",
      "target" : [{
        "code" : "221360009",
        "display" : "Spasticity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10041569",
      "display" : "Spinal fracture",
      "target" : [{
        "code" : "50448004",
        "display" : "Fracture of vertebral column",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10041633",
      "display" : "Spleen disorder",
      "target" : [{
        "code" : "51244008",
        "display" : "Disorder of spleen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042033",
      "display" : "Stevens-Johnson syndrome",
      "target" : [{
        "code" : "73442001",
        "display" : "Stevens-Johnson syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042112",
      "display" : "Stomach pain",
      "target" : [{
        "code" : "271681002",
        "display" : "Stomach ache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042127",
      "display" : "Stomal ulcer",
      "target" : [{
        "code" : "16121001",
        "display" : "Gastrojejunal ulcer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042241",
      "display" : "Stridor",
      "target" : [{
        "code" : "70407001",
        "display" : "Stridor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042244",
      "display" : "Stroke",
      "target" : [{
        "code" : "230690007",
        "display" : "Cerebrovascular accident",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042435",
      "display" : "Sudden death NOS",
      "target" : [{
        "code" : "26636000",
        "display" : "Sudden death",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042458",
      "display" : "Suicidal ideation",
      "target" : [{
        "code" : "6471006",
        "display" : "Suicidal thoughts",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042464",
      "display" : "Suicide attempt",
      "target" : [{
        "code" : "82313006",
        "display" : "Suicide attempt",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Injury due to suicide attempt' setzt eine Verletzung voraus"
      }]
    },
    {
      "code" : "10042554",
      "display" : "Superficial thrombophlebitis",
      "target" : [{
        "code" : "2477008",
        "display" : "Superficial thrombophlebitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042569",
      "display" : "Superior vena cava syndrome",
      "target" : [{
        "code" : "63363004",
        "display" : "Superior vena cava syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042604",
      "display" : "Supraventricular tachycardia",
      "target" : [{
        "code" : "6456007",
        "display" : "Supraventricular tachycardia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10042613",
      "display" : "Surgical and medical procedures - Other, specify",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "'Surgical and medical procedures' verweist auf die Procedure-Hierarchie; als Adverse-Event-Restkategorie gibt es kein SNOMED-Gegenstueck."
      }]
    },
    {
      "code" : "10042772",
      "display" : "Syncope",
      "target" : [{
        "code" : "271594007",
        "display" : "Syncope",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10043189",
      "display" : "Telangiectasia",
      "target" : [{
        "code" : "247479008",
        "display" : "Telangiectasia disorder",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Solar telangiectasia' war zu eng"
      }]
    },
    {
      "code" : "10043306",
      "display" : "Testicular disorder",
      "target" : [{
        "code" : "64910008",
        "display" : "Disorder of testis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10043345",
      "display" : "Testicular pain",
      "target" : [{
        "code" : "63901009",
        "display" : "Pain in testicle",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10043565",
      "display" : "Thromboembolic event",
      "target" : [{
        "code" : "371039008",
        "display" : "Thromboembolic disorder",
        "equivalence" : "equivalent",
        "comment" : "Thromboembolisches Ereignis; deckungsgleich."
      }]
    },
    {
      "code" : "10043648",
      "display" : "Thrombotic thrombocytopenic purpura",
      "target" : [{
        "code" : "78129009",
        "display" : "Thrombotic thrombocytopenic purpura",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10043882",
      "display" : "Tinnitus",
      "target" : [{
        "code" : "60862001",
        "display" : "Tinnitus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10044030",
      "display" : "Tooth development disorder",
      "target" : [{
        "code" : "371136004",
        "display" : "Disorder of tooth development",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10044031",
      "display" : "Tooth discoloration",
      "target" : [{
        "code" : "278679009",
        "display" : "Tooth discolored",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Staining of tooth' ist Unterbegriff von 'Tooth discolored'"
      }]
    },
    {
      "code" : "10044055",
      "display" : "Toothache",
      "target" : [{
        "code" : "27355003",
        "display" : "Toothache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10044223",
      "display" : "Toxic epidermal necrolysis",
      "target" : [{
        "code" : "768962006",
        "display" : "Lyell syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10044291",
      "display" : "Tracheal obstruction",
      "target" : [{
        "code" : "73342002",
        "display" : "Obstruction of trachea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10044302",
      "display" : "Tracheitis",
      "target" : [{
        "code" : "62994001",
        "display" : "Tracheitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10044391",
      "display" : "Transient ischemic attacks",
      "target" : [{
        "code" : "266257000",
        "display" : "Transient cerebral ischemia",
        "equivalence" : "equivalent",
        "comment" : "TIA; deckungsgleich."
      }]
    },
    {
      "code" : "10044565",
      "display" : "Tremor",
      "target" : [{
        "code" : "26079004",
        "display" : "Tremor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10044684",
      "display" : "Trismus",
      "target" : [{
        "code" : "87866006",
        "display" : "Trismus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10045152",
      "display" : "Tumor lysis syndrome",
      "target" : [{
        "code" : "277605001",
        "display" : "Tumor lysis syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10045158",
      "display" : "Tumor pain",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keinen generischen Tumorschmerz. 735935009 'Chronic pain due to malignant neoplastic disease' fuehrt mit 'chronisch' ein Merkmal ein, das der CTCAE-Term nicht enthaelt."
      }]
    },
    {
      "code" : "10045271",
      "display" : "Typhlitis",
      "target" : [{
        "code" : "61564002",
        "display" : "Typhlitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10045542",
      "display" : "Unintended pregnancy",
      "target" : [{
        "code" : "83074005",
        "display" : "Unplanned pregnancy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046300",
      "display" : "Upper respiratory infection",
      "target" : [{
        "code" : "54150009",
        "display" : "Upper respiratory infection",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046539",
      "display" : "Urinary frequency",
      "target" : [{
        "code" : "162116003",
        "display" : "Increased frequency of urination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046543",
      "display" : "Urinary incontinence",
      "target" : [{
        "code" : "165232002",
        "display" : "Urinary incontinence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046555",
      "display" : "Urinary retention",
      "target" : [{
        "code" : "267064002",
        "display" : "Retention of urine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046571",
      "display" : "Urinary tract infection",
      "target" : [{
        "code" : "68566005",
        "display" : "Urinary tract infectious disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046593",
      "display" : "Urinary urgency",
      "target" : [{
        "code" : "75088002",
        "display" : "Urgent desire to urinate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046628",
      "display" : "Urine discoloration",
      "target" : [{
        "code" : "167239007",
        "display" : "Urine color abnormal",
        "equivalence" : "equivalent",
        "comment" : "Verfaerbung des Urins; deckungsgleich."
      }]
    },
    {
      "code" : "10046735",
      "display" : "Urticaria",
      "target" : [{
        "code" : "126485001",
        "display" : "Urticaria",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046789",
      "display" : "Uterine hemorrhage",
      "target" : [{
        "code" : "44991000119100",
        "display" : "Abnormal uterine bleeding",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Syn. 'Abnormal uterine haemorrhage'; Kandidat 'Hematometra' war fachlich falsch"
      }]
    },
    {
      "code" : "10046809",
      "display" : "Uterine pain",
      "target" : [{
        "code" : "289669005",
        "display" : "Pain of uterus",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Painful uterine contractions' war geburtsbezogen"
      }]
    },
    {
      "code" : "10046810",
      "display" : "Uterine perforation",
      "target" : [{
        "code" : "7395000",
        "display" : "Perforation of uterus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046851",
      "display" : "Uveitis",
      "target" : [{
        "code" : "128473001",
        "display" : "Uveitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046901",
      "display" : "Vaginal discharge",
      "target" : [{
        "code" : "271939006",
        "display" : "Vaginal discharge",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046904",
      "display" : "Vaginal dryness",
      "target" : [{
        "code" : "31908003",
        "display" : "Vaginal dryness",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046912",
      "display" : "Vaginal hemorrhage",
      "target" : [{
        "code" : "289530006",
        "display" : "Vaginal bleeding",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: neonatale Variante ersetzt"
      }]
    },
    {
      "code" : "10046914",
      "display" : "Vaginal infection",
      "target" : [{
        "code" : "237091009",
        "display" : "Infective vaginitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046916",
      "display" : "Vaginal inflammation",
      "target" : [{
        "code" : "30800001",
        "display" : "Vaginitis",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Inflammation of vaginal wall' war zu eng"
      }]
    },
    {
      "code" : "10046937",
      "display" : "Vaginal pain",
      "target" : [{
        "code" : "38343000",
        "display" : "Vaginal pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10046947",
      "display" : "Vaginismus",
      "target" : [{
        "code" : "79012001",
        "display" : "Vaginospasm",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047065",
      "display" : "Vascular disorders - Other, specify",
      "target" : [{
        "code" : "27550009",
        "display" : "Vascular disorder",
        "equivalence" : "wider",
        "comment" : "SOC-Restkategorie."
      }]
    },
    {
      "code" : "10047115",
      "display" : "Vasculitis",
      "target" : [{
        "code" : "31996006",
        "display" : "Vasculitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047166",
      "display" : "Vasovagal reaction",
      "target" : [{
        "code" : "398665005",
        "display" : "Vasovagal syncope",
        "equivalence" : "narrower",
        "comment" : "SNOMED hat keine vasovagale Reaktion ohne Synkope; CTCAE schliesst Praesynkopen ein. 248229009 'Vasovagal symptom' waere ein Symptom-, kein Ereigniskonzept."
      }]
    },
    {
      "code" : "10047228",
      "display" : "Venous injury",
      "target" : [{
        "code" : "64583005",
        "display" : "Injury of vein",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047281",
      "display" : "Ventricular arrhythmia",
      "target" : [{
        "code" : "44103008",
        "display" : "Ventricular arrhythmia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047290",
      "display" : "Ventricular fibrillation",
      "target" : [{
        "code" : "71908006",
        "display" : "Ventricular fibrillation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047302",
      "display" : "Ventricular tachycardia",
      "target" : [{
        "code" : "25569003",
        "display" : "Ventricular tachycardia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047340",
      "display" : "Vertigo",
      "target" : [{
        "code" : "399153001",
        "display" : "Vertigo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047386",
      "display" : "Vestibular disorder",
      "target" : [{
        "code" : "20425006",
        "display" : "Labyrinthine disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047488",
      "display" : "Virilization",
      "target" : [{
        "code" : "15160007",
        "display" : "Virilization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047580",
      "display" : "Vital capacity abnormal",
      "target" : [{
        "code" : "165040003",
        "display" : "FVC - forced vital capacity abnormal",
        "equivalence" : "narrower",
        "comment" : "SNOMED bezieht sich auf die forcierte Vitalkapazitaet, CTCAE allgemein auf die Vitalkapazitaet"
      }]
    },
    {
      "code" : "10047656",
      "display" : "Vitreous hemorrhage",
      "target" : [{
        "code" : "31341008",
        "display" : "Vitreous haemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047681",
      "display" : "Voice alteration",
      "target" : [{
        "code" : "16617009",
        "display" : "Dysphonia",
        "equivalence" : "equivalent",
        "comment" : "Dysphonie = Stimmstoerung/Stimmveraenderung."
      }]
    },
    {
      "code" : "10047700",
      "display" : "Vomiting",
      "target" : [{
        "code" : "422400008",
        "display" : "Vomiting",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047848",
      "display" : "Watering eyes",
      "target" : [{
        "code" : "193982009",
        "display" : "Epiphora",
        "equivalence" : "equivalent",
        "comment" : "Epiphora = uebermaessiger Traenenfluss, deckungsgleich mit CTCAE 'Watering eyes'."
      }]
    },
    {
      "code" : "10047896",
      "display" : "Weight gain",
      "target" : [{
        "code" : "262286000",
        "display" : "Weight increased",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047900",
      "display" : "Weight loss",
      "target" : [{
        "code" : "262285001",
        "display" : "Weight decreased",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10047924",
      "display" : "Wheezing",
      "target" : [{
        "code" : "56018004",
        "display" : "Wheezing",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048015",
      "display" : "Wolff-Parkinson-White syndrome",
      "target" : [{
        "code" : "74390002",
        "display" : "Wolff-Parkinson-White pattern",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048031",
      "display" : "Wound dehiscence",
      "target" : [{
        "code" : "225553008",
        "display" : "Wound dehiscence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048038",
      "display" : "Wound infection",
      "target" : [{
        "code" : "76844004",
        "display" : "Local infection of wound",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048049",
      "display" : "Wrist fracture",
      "target" : [{
        "code" : "1303397005",
        "display" : "Fracture of bone of wrist region",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Fracture of carpal bone' deckt die Handgelenkregion nicht vollstaendig ab"
      }]
    },
    {
      "code" : "10048293",
      "display" : "Leukemia secondary to oncology chemotherapy",
      "target" : [{
        "code" : "762315004",
        "display" : "Therapy related acute myeloid leukemia due to and following administration of antineoplastic agent",
        "equivalence" : "narrower",
        "comment" : "SNOMED kennt nur die therapieassoziierte AML; CTCAE umfasst jede chemotherapieinduzierte Leukaemie."
      }]
    },
    {
      "code" : "10048492",
      "display" : "Corneal ulcer",
      "target" : [{
        "code" : "91514001",
        "display" : "Corneal ulcer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048580",
      "display" : "Bone marrow hypocellular",
      "target" : [{
        "code" : "416995001",
        "display" : "Hypocellular bone marrow",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048642",
      "display" : "Lymphocele",
      "target" : [{
        "code" : "234109007",
        "display" : "Lymphocele",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048677",
      "display" : "Buttock pain",
      "target" : [{
        "code" : "279043006",
        "display" : "Pain in buttock",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048706",
      "display" : "Joint range of motion decreased",
      "target" : [{
        "code" : "70733008",
        "display" : "Limitation of joint movement",
        "equivalence" : "equivalent",
        "comment" : "Bewegungseinschraenkung des Gelenks; deckungsgleich."
      }]
    },
    {
      "code" : "10048762",
      "display" : "Tooth infection",
      "target" : [{
        "code" : "427898007",
        "display" : "Infection of tooth",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10048994",
      "display" : "Bladder spasm",
      "target" : [{
        "code" : "249297006",
        "display" : "Spasm of urinary bladder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10049120",
      "display" : "Scalp pain",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein Kopfhautschmerz in SNOMED; die vorhandenen Skalp-Konzepte betreffen Juckreiz, Schuppung, Verletzung und Laesionen."
      }]
    },
    {
      "code" : "10049182",
      "display" : "White blood cell decreased",
      "target" : [{
        "code" : "419188005",
        "display" : "Blood leukocyte number below reference range",
        "equivalence" : "equivalent",
        "comment" : "Laborwert-Muster 'decreased' -> 'below reference range'."
      }]
    },
    {
      "code" : "10049192",
      "display" : "Pancreatic fistula",
      "target" : [{
        "code" : "25803005",
        "display" : "Pancreatic fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10049281",
      "display" : "Nail loss",
      "target" : [{
        "code" : "247492006",
        "display" : "Nail shedding",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Onychomadesis' meint vollstaendigen Nagelverlust, CTCAE auch teilweisen"
      }]
    },
    {
      "code" : "10049468",
      "display" : "Intestinal stoma site bleeding",
      "target" : [{
        "code" : "805616441000119104",
        "display" : "Hemorrhage of ileostomy stoma",
        "equivalence" : "narrower",
        "comment" : "SNOMED hat nur stomatypspezifische Blutungskonzepte; die Ileostomie ist das haeufigste Darmstoma."
      }]
    },
    {
      "code" : "10049737",
      "display" : "Treatment related secondary malignancy",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat kein generisches Konzept 'therapieassoziierte Zweitmalignom'; nur einzelne Auspraegungen (z.B. 762315004 t-AML, 403711001 PUVA-assoziierte Hautmalignitaet)."
      }]
    },
    {
      "code" : "10050028",
      "display" : "Pharyngeal stenosis",
      "target" : [{
        "code" : "232408005",
        "display" : "Pharyngeal stenosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10050068",
      "display" : "Edema limbs",
      "target" : [{
        "code" : "424372002",
        "display" : "Edema of extremity",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: seitenbezogenes Konzept durch generisches ersetzt"
      }]
    },
    {
      "code" : "10050094",
      "display" : "Duodenal stenosis",
      "target" : [{
        "code" : "73120006",
        "display" : "Stenosis of duodenum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10050457",
      "display" : "Pancreatic anastomotic leak",
      "target" : [{
        "code" : "235980000",
        "display" : "Pancreatic anastomotic leak",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10050458",
      "display" : "Biliary anastomotic leak",
      "target" : [{
        "code" : "235940009",
        "display" : "Biliary anastomotic leak",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10050528",
      "display" : "Ejection fraction decreased",
      "target" : [{
        "code" : "863932003",
        "display" : "Left ventricular ejection fraction decreased",
        "equivalence" : "narrower",
        "comment" : "SNOMED nur linksventrikulaer; CTCAE-Term ist ventrikelunspezifisch"
      }]
    },
    {
      "code" : "10050662",
      "display" : "Prostate infection",
      "target" : [{
        "code" : "9713002",
        "display" : "Prostatitis",
        "equivalence" : "wider",
        "comment" : "Im Pin 20250701 kein spezifisches Konzept Infection of prostate; Prostatitis ist das nächstliegende Konzept, umfasst aber auch nicht-infektiöse Formen."
      }]
    },
    {
      "code" : "10050816",
      "display" : "Tracheal stenosis",
      "target" : [{
        "code" : "11296007",
        "display" : "Stenosis of trachea",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10050823",
      "display" : "Lymph gland infection",
      "target" : [{
        "code" : "19471005",
        "display" : "Lymphadenitis",
        "equivalence" : "wider",
        "comment" : "Lymphadenitis umfasst auch nicht-infektioese Lymphknotenentzuendungen; ein spezifisches Infektionskonzept fehlt in SNOMED."
      }]
    },
    {
      "code" : "10051228",
      "display" : "Chylothorax",
      "target" : [{
        "code" : "83035003",
        "display" : "Chylothorax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10051272",
      "display" : "Facial muscle weakness",
      "target" : [{
        "code" : "95666008",
        "display" : "Weakness of face muscles",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: seitenbezogenes Konzept ersetzt"
      }]
    },
    {
      "code" : "10051341",
      "display" : "Bile duct stenosis",
      "target" : [{
        "code" : "43030007",
        "display" : "Stenosis of bile duct",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10051472",
      "display" : "Periorbital infection",
      "target" : [{
        "code" : "109245003",
        "display" : "Cellulitis of periorbital region",
        "equivalence" : "narrower",
        "comment" : "SNOMED kennt nur die periorbitale Zellulitis als konkrete Manifestation; CTCAE meint jeden periorbitalen Infektionsprozess."
      }]
    },
    {
      "code" : "10051592",
      "display" : "Acute coronary syndrome",
      "target" : [{
        "code" : "394659003",
        "display" : "Acute coronary syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10051741",
      "display" : "Pancreas infection",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Pankreasinfektion in SNOMED; vorhanden sind nur 235960001 'Infected pancreatic necrosis' und 405563007 'Infected pancreatic pseudocyst' (jeweils andere Entitaet)."
      }]
    },
    {
      "code" : "10051746",
      "display" : "Lower gastrointestinal hemorrhage",
      "target" : [{
        "code" : "87763006",
        "display" : "Lower gastrointestinal hemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10051792",
      "display" : "Infusion related reaction",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keine generische Infusionsreaktion; vorhanden sind nur substanzspezifische Konzepte (z.B. 442108004 Rituximab, 441858005 Trastuzumab)."
      }]
    },
    {
      "code" : "10051837",
      "display" : "Skin induration",
      "target" : [{
        "code" : "34319007",
        "display" : "Induration of skin",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10051886",
      "display" : "Gastric necrosis",
      "target" : [{
        "code" : "235683000",
        "display" : "Gastric necrosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10052015",
      "display" : "Cytokine release syndrome",
      "target" : [{
        "code" : "710027002",
        "display" : "Cytokine release syndrome",
        "equivalence" : "equivalent",
        "comment" : "Pin-Version 20250701: 710027002 ist hier aktiv (Inaktivierung erst in einem späteren Release; das Nachfolgekonzept Cytokine storm syndrome existiert im Pin noch nicht)."
      }]
    },
    {
      "code" : "10052298",
      "display" : "Urethral infection",
      "target" : [{
        "code" : "236681009",
        "display" : "Infective urethritis",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat war eine infektbedingte Striktur"
      }]
    },
    {
      "code" : "10052426",
      "display" : "Glucose intolerance",
      "target" : [{
        "code" : "9414007",
        "display" : "Impaired glucose tolerance",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Malabsorption of glucose' war fachlich falsch"
      }]
    },
    {
      "code" : "10053481",
      "display" : "Bronchopleural fistula",
      "target" : [{
        "code" : "233793003",
        "display" : "Bronchopleural fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10053496",
      "display" : "Vaginal stricture",
      "target" : [{
        "code" : "37914004",
        "display" : "Stricture of vagina",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Tunica vaginalis stricture' war fachlich falsch (Hodenhuelle)"
      }]
    },
    {
      "code" : "10053565",
      "display" : "Pericardial tamponade",
      "target" : [{
        "code" : "35304003",
        "display" : "Cardiac tamponade",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10053661",
      "display" : "Oculomotor nerve disorder",
      "target" : [{
        "code" : "60750009",
        "display" : "Third cranial nerve disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10053662",
      "display" : "Abducens nerve disorder",
      "target" : [{
        "code" : "398925009",
        "display" : "Abducens nerve disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10053692",
      "display" : "Wound complication",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Nur 'Complication of obstetrical surgical wound' vorhanden; kein generisches Wundkomplikations-Konzept"
      }]
    },
    {
      "code" : "10054382",
      "display" : "Feminization acquired",
      "target" : [{
        "code" : "473004000",
        "display" : "Feminization",
        "equivalence" : "wider",
        "comment" : "SNOMED unterscheidet nicht zwischen erworbener und angeborener Feminisierung."
      }]
    },
    {
      "code" : "10054482",
      "display" : "Neck edema",
      "target" : [{
        "code" : "301777002",
        "display" : "Neck swelling",
        "equivalence" : "wider",
        "comment" : "SNOMED unterscheidet nicht zwischen Fluessigkeitseinlagerung und sonstiger Halsschwellung; 'Neck swelling' umfasst auch Raumforderungen."
      }]
    },
    {
      "code" : "10054520",
      "display" : "Oral dysesthesia",
      "target" : [{
        "code" : "1202021001",
        "display" : "Burning sensation of mouth",
        "equivalence" : "narrower",
        "comment" : "SNOMED hat keine orale Dysaesthesie; der Brennschmerz ist die haeufigste, aber nicht die einzige Auspraegung (Kribbeln/Taubheit fehlen). 399165002 'Burning mouth syndrome' waere ein eigenstaendiges Krankheitsbild und daher unpassend."
      }]
    },
    {
      "code" : "10054524",
      "display" : "Palmar-plantar erythrodysesthesia syndrome",
      "target" : [{
        "code" : "403638003",
        "display" : "Acral erythema due to cytotoxic therapy",
        "equivalence" : "equivalent",
        "comment" : "Akrales Erythem unter Zytostatika = Hand-Fuss-Syndrom / PPE."
      }]
    },
    {
      "code" : "10054541",
      "display" : "Periorbital edema",
      "target" : [{
        "code" : "49563000",
        "display" : "Periorbital edema",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10054692",
      "display" : "Visceral arterial ischemia",
      "target" : [{
        "code" : "153821000119103",
        "display" : "Visceral ischemia",
        "equivalence" : "wider",
        "comment" : "SNOMED unterscheidet nicht zwischen arterieller und venoeser viszeraler Ischaemie."
      }]
    },
    {
      "code" : "10054746",
      "display" : "Fetal growth retardation",
      "target" : [{
        "code" : "22033007",
        "display" : "Fetal growth restriction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055005",
      "display" : "Ovarian infection",
      "target" : [{
        "code" : "280516007",
        "display" : "Infection of ovary",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10055026",
      "display" : "Prostatic obstruction",
      "target" : [{
        "code" : "4127004",
        "display" : "Prostatic obstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055078",
      "display" : "Bronchial infection",
      "target" : [{
        "code" : "233795005",
        "display" : "Infectious disorder of bronchus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055226",
      "display" : "Anal hemorrhage",
      "target" : [{
        "code" : "6072007",
        "display" : "Bleeding from anus",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung; SNOMED-Term nennt die Blutung aus dem Anus."
      }]
    },
    {
      "code" : "10055242",
      "display" : "Duodenal hemorrhage",
      "target" : [{
        "code" : "95533003",
        "display" : "Duodenal haemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055287",
      "display" : "Ileal hemorrhage",
      "target" : [{
        "code" : "95535005",
        "display" : "Ileal haemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055291",
      "display" : "Intra-abdominal hemorrhage",
      "target" : [{
        "code" : "443826006",
        "display" : "Hemorrhage into peritoneal cavity",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Synonym 'Intraabdominal hemorrhage'; Kandidat war postprozedural"
      }]
    },
    {
      "code" : "10055298",
      "display" : "Intraoperative hemorrhage",
      "target" : [{
        "code" : "213261000",
        "display" : "Intraoperative hemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055300",
      "display" : "Jejunal hemorrhage",
      "target" : [{
        "code" : "712509002",
        "display" : "Hemorrhage of jejunum",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: anastomotische Variante ersetzt"
      }]
    },
    {
      "code" : "10055315",
      "display" : "Pharyngeal hemorrhage",
      "target" : [{
        "code" : "324618004",
        "display" : "Pharyngeal hemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055319",
      "display" : "Pleural hemorrhage",
      "target" : [{
        "code" : "31892009",
        "display" : "Haemothorax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055322",
      "display" : "Postoperative hemorrhage",
      "target" : [{
        "code" : "110265006",
        "display" : "Postoperative haemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055325",
      "display" : "Prostatic hemorrhage",
      "target" : [{
        "code" : "44843000",
        "display" : "Hemorrhage of prostate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055347",
      "display" : "Testicular hemorrhage",
      "target" : [{
        "code" : "77708008",
        "display" : "Hemorrhage of testis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055356",
      "display" : "Upper gastrointestinal hemorrhage",
      "target" : [{
        "code" : "37372002",
        "display" : "Upper gastrointestinal bleeding",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10055472",
      "display" : "Esophageal perforation",
      "target" : [{
        "code" : "23387001",
        "display" : "Perforation of oesophagus",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Spontaneous rupture' ersetzt"
      }]
    },
    {
      "code" : "10055599",
      "display" : "Hemoglobin increased",
      "target" : [{
        "code" : "131141003",
        "display" : "Hemoglobin above reference range",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10056238",
      "display" : "Phantom pain",
      "target" : [{
        "code" : "710110008",
        "display" : "Phantom pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10056356",
      "display" : "Mediastinal hemorrhage",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Mediastinalblutung in SNOMED (409497009 'Hemorrhagic mediastinitis' ist eine Entzuendung, keine Blutung)."
      }]
    },
    {
      "code" : "10056388",
      "display" : "Olfactory nerve disorder",
      "target" : [{
        "code" : "68982002",
        "display" : "Disorder of olfactory nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10056519",
      "display" : "Abdominal infection",
      "target" : [{
        "code" : "128070006",
        "display" : "Infectious disease of abdomen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10056522",
      "display" : "Hepatic infection",
      "target" : [{
        "code" : "235859005",
        "display" : "Liver disorder due to infection",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Syn. 'Infectious disease of liver'; Kandidat war eine Leberegelinfektion"
      }]
    },
    {
      "code" : "10056627",
      "display" : "Phlebitis infective",
      "target" : [{
        "code" : "77910001",
        "display" : "Suppurative phlebitis",
        "equivalence" : "narrower",
        "comment" : "In SNOMED unter 'Infectious disease of cardiovascular system' eingeordnet, also die infektioese Phlebitis - allerdings mit dem zusaetzlichen Merkmal 'eitrig'. 61599003 'Phlebitis' ist bereits dem CTCAE-Term 'Phlebitis' zugeordnet."
      }]
    },
    {
      "code" : "10056681",
      "display" : "Salivary duct inflammation",
      "target" : [{
        "code" : "41569004",
        "display" : "Sialodochitis",
        "equivalence" : "equivalent",
        "comment" : "Sialodochitis = Entzuendung des Speichelgangs (im Unterschied zur Sialadenitis der Druese)."
      }]
    },
    {
      "code" : "10056745",
      "display" : "Postoperative thoracic procedure complication",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Komplikation nach thoraxchirurgischem Eingriff in SNOMED; nur generische Konzepte wie 738778005 'Intraoperative complication' ohne Bezug zum Thorax."
      }]
    },
    {
      "code" : "10056910",
      "display" : "GGT increased",
      "target" : [{
        "code" : "274782002",
        "display" : "Gamma-glutamyl transferase above reference range",
        "equivalence" : "equivalent",
        "comment" : "GGT ausgeschrieben; Laborwert-Muster 'increased' -> 'above reference range'."
      }]
    },
    {
      "code" : "10057066",
      "display" : "Delayed orgasm",
      "target" : [{
        "code" : "40915004",
        "display" : "Orgasm impairment",
        "equivalence" : "wider",
        "comment" : "SNOMED hat keinen verzoegerten Orgasmus; 'Orgasm impairment' umfasst auch Anorgasmie und abgeschwaechten Orgasmus. 735633000 ff. (delayed ejaculation) waeren maennerspezifisch."
      }]
    },
    {
      "code" : "10057262",
      "display" : "Peritoneal infection",
      "target" : [{
        "code" : "129129003",
        "display" : "Infectious peritonitis",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Peritonealdialyse-Katheterinfektion ersetzt"
      }]
    },
    {
      "code" : "10057483",
      "display" : "Mediastinal infection",
      "target" : [{
        "code" : "312157006",
        "display" : "Infectious mediastinitis",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10058084",
      "display" : "Precocious puberty",
      "target" : [{
        "code" : "400179000",
        "display" : "Precocious puberty",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10058096",
      "display" : "Pancreatic necrosis",
      "target" : [{
        "code" : "1835003",
        "display" : "Necrosis of pancreas",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10058597",
      "display" : "Right ventricular dysfunction",
      "target" : [{
        "code" : "473365008",
        "display" : "Dysfunction of right cardiac ventricle",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: fetale Variante ersetzt"
      }]
    },
    {
      "code" : "10058674",
      "display" : "Pelvic infection",
      "target" : [{
        "code" : "203230004",
        "display" : "Infection of pelvis",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: gonokokkenbedingte Variante ersetzt"
      }]
    },
    {
      "code" : "10058720",
      "display" : "Edema trunk",
      "target" : [{
        "code" : "301867009",
        "display" : "Edema of trunk",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10058804",
      "display" : "Esophageal infection",
      "target" : [{
        "code" : "235600000",
        "display" : "Infective oesophagitis",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Herpes-spezifisches Konzept ersetzt"
      }]
    },
    {
      "code" : "10058838",
      "display" : "Enterocolitis infectious",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keine infektioese Enterokolitis; 43752006 'Enterocolitis' ist generisch und bereits dem CTCAE-Term 'Enterocolitis' zugeordnet."
      }]
    },
    {
      "code" : "10059094",
      "display" : "Intestinal stoma obstruction",
      "target" : [{
        "code" : "236131001",
        "display" : "Stomal obstruction",
        "equivalence" : "wider",
        "comment" : "SNOMED-Konzept ist nicht auf Darmstomata eingeschraenkt."
      }]
    },
    {
      "code" : "10059095",
      "display" : "Intestinal stoma leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein Leck eines Darmstomas in SNOMED; 1162771004 betrifft die Gastrostomie."
      }]
    },
    {
      "code" : "10059446",
      "display" : "Gallbladder necrosis",
      "target" : [{
        "code" : "111372003",
        "display" : "Gangrene of gallbladder",
        "equivalence" : "equivalent",
        "comment" : "Gangraen = Nekrose der Gallenblase."
      }]
    },
    {
      "code" : "10059639",
      "display" : "Laryngeal obstruction",
      "target" : [{
        "code" : "61169001",
        "display" : "Obstruction of larynx",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Inducible laryngeal obstruction' war zu eng"
      }]
    },
    {
      "code" : "10059827",
      "display" : "Rhinitis infective",
      "target" : [{
        "code" : "275496003",
        "display" : "Nasal infection",
        "equivalence" : "equivalent",
        "comment" : "Korrektur aus adversarialer Verifikation"
      }]
    },
    {
      "code" : "10059895",
      "display" : "Urine output decreased",
      "target" : [{
        "code" : "718403007",
        "display" : "Decreased urine output",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10060602",
      "display" : "Hematosalpinx",
      "target" : [{
        "code" : "78095005",
        "display" : "Hematosalpinx",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10060640",
      "display" : "Hemorrhoidal hemorrhage",
      "target" : [{
        "code" : "51551000",
        "display" : "Bleeding hemorrhoids",
        "equivalence" : "equivalent",
        "comment" : "SNOMED formuliert als 'blutende Haemorrhoiden'; inhaltlich identisch."
      }]
    },
    {
      "code" : "10060890",
      "display" : "Trigeminal nerve disorder",
      "target" : [{
        "code" : "64309007",
        "display" : "Trigeminal nerve disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10060929",
      "display" : "Accessory nerve disorder",
      "target" : [{
        "code" : "84759007",
        "display" : "Disorder of accessory nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061017",
      "display" : "Bone infection",
      "target" : [{
        "code" : "111253001",
        "display" : "Infection of bone",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061103",
      "display" : "Dermatitis radiation",
      "target" : [{
        "code" : "49084001",
        "display" : "Dermatitis caused by radiation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061145",
      "display" : "Eyelid function disorder",
      "target" : [{
        "code" : "60113004",
        "display" : "Disorder of eyelid",
        "equivalence" : "wider",
        "comment" : "SNOMED unterscheidet keine reine Funktionsstoerung des Lids; 'Disorder of eyelid' umfasst auch strukturelle Lidveraenderungen."
      }]
    },
    {
      "code" : "10061149",
      "display" : "Female genital tract fistula",
      "target" : [{
        "code" : "85059005",
        "display" : "Fistula of the female genital organs",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Female genital tract-skin fistula' war zu eng"
      }]
    },
    {
      "code" : "10061185",
      "display" : "Glossopharyngeal nerve disorder",
      "target" : [{
        "code" : "80962007",
        "display" : "Disorder of glossopharyngeal nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061212",
      "display" : "Hypoglossal nerve disorder",
      "target" : [{
        "code" : "24777009",
        "display" : "Disorder of hypoglossal nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061229",
      "display" : "Lung infection",
      "target" : [{
        "code" : "128601007",
        "display" : "Infectious disease of lung",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061261",
      "display" : "Lactation disorder",
      "target" : [{
        "code" : "35046003",
        "display" : "Disorder of lactation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061304",
      "display" : "Nail infection",
      "target" : [{
        "code" : "238408000",
        "display" : "Infection of nail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061322",
      "display" : "Optic nerve disorder",
      "target" : [{
        "code" : "77157004",
        "display" : "Disorder of optic nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061339",
      "display" : "Perineal pain",
      "target" : [{
        "code" : "225565007",
        "display" : "Perineal pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061351",
      "display" : "Pleural infection",
      "target" : [{
        "code" : "58554001",
        "display" : "Empyema of pleura",
        "equivalence" : "narrower",
        "comment" : "Kein generisches Konzept fuer Pleurainfektion; Empyem ist die eitrige Auspraegung"
      }]
    },
    {
      "code" : "10061389",
      "display" : "Tricuspid valve disease",
      "target" : [{
        "code" : "20721001",
        "display" : "Tricuspid valve disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061403",
      "display" : "Vagus nerve disorder",
      "target" : [{
        "code" : "73765005",
        "display" : "Disorder of vagus nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061457",
      "display" : "Facial nerve disorder",
      "target" : [{
        "code" : "422426003",
        "display" : "Facial nerve disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061461",
      "display" : "Erectile dysfunction",
      "target" : [{
        "code" : "860914002",
        "display" : "Erectile dysfunction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061510",
      "display" : "Scleral disorder",
      "target" : [{
        "code" : "33064008",
        "display" : "Disorder of sclera",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Scleral melt' war zu spezifisch"
      }]
    },
    {
      "code" : "10061532",
      "display" : "Mitral valve disease",
      "target" : [{
        "code" : "11851006",
        "display" : "Mitral valve disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061541",
      "display" : "Pulmonary valve disease",
      "target" : [{
        "code" : "76267008",
        "display" : "Pulmonary valve disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061574",
      "display" : "Urinary tract obstruction",
      "target" : [{
        "code" : "7163005",
        "display" : "Urinary tract obstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061589",
      "display" : "Aortic valve disease",
      "target" : [{
        "code" : "8722008",
        "display" : "Aortic valve disorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061640",
      "display" : "Anorectal infection",
      "target" : [{
        "code" : "371568002",
        "display" : "Anal infection",
        "equivalence" : "narrower",
        "comment" : "SNOMED hat kein anorektales Infektionskonzept; 'Anal infection' deckt nur den analen Anteil ab."
      }]
    },
    {
      "code" : "10061664",
      "display" : "Autoimmune disorder",
      "target" : [{
        "code" : "85828009",
        "display" : "Autoimmune disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061695",
      "display" : "Biliary tract infection",
      "target" : [{
        "code" : "846685008",
        "display" : "Infection of biliary tract",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061788",
      "display" : "Corneal infection",
      "target" : [{
        "code" : "312428002",
        "display" : "Corneal infection",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061912",
      "display" : "Penile infection",
      "target" : [{
        "code" : "309090002",
        "display" : "Infection of penis",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Protheseninfektion ersetzt"
      }]
    },
    {
      "code" : "10061928",
      "display" : "Radiculitis",
      "target" : [{
        "code" : "82473003",
        "display" : "Radiculitis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10061970",
      "display" : "Gastric stenosis",
      "target" : [{
        "code" : "55860008",
        "display" : "Stenosis of stomach",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: erworbene Pylorusstenose ersetzt"
      }]
    },
    {
      "code" : "10062112",
      "display" : "Splenic infection",
      "target" : [{
        "code" : "721239009",
        "display" : "Infection of spleen",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10062156",
      "display" : "Scrotal infection",
      "target" : [{
        "code" : "371413003",
        "display" : "Infection of scrotum",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10062169",
      "display" : "Vascular access complication",
      "target" : [{
        "code" : "398158001",
        "display" : "Complication of intravascular line",
        "equivalence" : "narrower",
        "comment" : "SNOMED-Konzept beschraenkt sich auf intravasale Katheter/Verweilkanuelen; CTCAE 'Vascular access complication' schliesst auch andere Zugangsformen (z.B. Shunt) ein."
      }]
    },
    {
      "code" : "10062225",
      "display" : "Urinary tract pain",
      "target" : [{
        "code" : "247382002",
        "display" : "Urinary tract pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10062233",
      "display" : "Uterine infection",
      "target" : [{
        "code" : "301775005",
        "display" : "Infection of uterus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10062244",
      "display" : "Sinus disorder",
      "target" : [{
        "code" : "7393007",
        "display" : "Disorder of nasal sinus",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Sinusitis' war zu eng"
      }]
    },
    {
      "code" : "10062255",
      "display" : "Soft tissue infection",
      "target" : [{
        "code" : "95880003",
        "display" : "Soft tissue infection",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10062263",
      "display" : "Small intestinal stenosis",
      "target" : [{
        "code" : "1162577003",
        "display" : "Stricture of small intestine",
        "equivalence" : "equivalent",
        "comment" : "Striktur = Stenose; die uebrigen Treffer (204691002, 14430002) sind kongenital und daher unpassend."
      }]
    },
    {
      "code" : "10062283",
      "display" : "Nail ridging",
      "target" : [{
        "code" : "271768001",
        "display" : "Ridged nails",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: 'Beaded ridging of nails' war zu eng"
      }]
    },
    {
      "code" : "10062315",
      "display" : "Lipohypertrophy",
      "target" : [{
        "code" : "238893005",
        "display" : "Fat hypertrophy",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: insulinbedingte Variante ersetzt"
      }]
    },
    {
      "code" : "10062466",
      "display" : "Localized edema",
      "target" : [{
        "code" : "274724004",
        "display" : "Localized edema",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10062501",
      "display" : "Non-cardiac chest pain",
      "target" : [{
        "code" : "274668005",
        "display" : "Non-cardiac chest pain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10062548",
      "display" : "Tracheal hemorrhage",
      "target" : [{
        "code" : "233783005",
        "display" : "Tracheal haemorrhage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10062570",
      "display" : "Enterovesical fistula",
      "target" : [{
        "code" : "40046003",
        "display" : "Intestinovesical fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10062572",
      "display" : "Generalized muscle weakness",
      "target" : [{
        "code" : "1137501002",
        "display" : "Generalized muscle weakness",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10062632",
      "display" : "Gallbladder infection",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keine Gallenblaseninfektion; 76581006 'Cholecystitis' ist generisch und bereits dem CTCAE-Term 'Cholecystitis' zugeordnet."
      }]
    },
    {
      "code" : "10062646",
      "display" : "Pancreatic enzymes decreased",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat nur 443828007 'Pancreatic enzyme level above reference range', kein Gegenstueck fuer erniedrigte Werte. 47367009 'Exocrine pancreatic insufficiency' ist eine Funktionsdiagnose, kein Laborbefund."
      }]
    },
    {
      "code" : "10062667",
      "display" : "Laryngopharyngeal dysesthesia",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine laryngopharyngeale Dysaesthesie in SNOMED."
      }]
    },
    {
      "code" : "10062872",
      "display" : "Dysesthesia",
      "target" : [{
        "code" : "279079003",
        "display" : "Dysaesthesia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10063057",
      "display" : "Cystitis noninfective",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keine nicht-infektioese Zystitis als Klasse; 236630004 'Chemical cystitis' wuerde eine Aetiologie unterstellen, 38822007 'Cystitis' ist generisch und bereits dem CTCAE-Term 'Bladder infection' zugeordnet."
      }]
    },
    {
      "code" : "10063190",
      "display" : "Rectal mucositis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine rektale Mukositis in SNOMED. 3951002 'Proctitis' ist bereits dem CTCAE-Term 'Proctitis' zugeordnet und meint zudem jede Rektumentzuendung, nicht speziell die mukosale."
      }]
    },
    {
      "code" : "10063524",
      "display" : "Bronchial stricture",
      "target" : [{
        "code" : "79877004",
        "display" : "Stenosis of bronchus",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: anastomotische Variante ersetzt"
      }]
    },
    {
      "code" : "10063575",
      "display" : "Bladder perforation",
      "target" : [{
        "code" : "262909002",
        "display" : "Perforation of urinary bladder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10063636",
      "display" : "Pyramidal tract syndrome",
      "target" : [{
        "code" : "46251005",
        "display" : "Corticospinal motor disease",
        "equivalence" : "equivalent",
        "comment" : "Pyramidenbahn = Tractus corticospinalis; SNOMED fuehrt das Konzept unter 'Upper motor neuron disease'."
      }]
    },
    {
      "code" : "10063761",
      "display" : "Reversible posterior leukoencephalopathy syndrome",
      "target" : [{
        "code" : "450886002",
        "display" : "Posterior reversible encephalopathy syndrome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10064026",
      "display" : "Pelvic floor muscle weakness",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keine Schwaeche der Beckenbodenmuskulatur; vorhandene Konzepte beschreiben Dysfunktion (711263002), Relaxation (444599008) oder Instabilitaet (444735002) - alle mit abweichender Bedeutung."
      }]
    },
    {
      "code" : "10064505",
      "display" : "Stoma site infection",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat nur 442222009 'Infection of tracheostomy stoma', kein generisches Stoma-Infektionskonzept."
      }]
    },
    {
      "code" : "10064658",
      "display" : "Osteonecrosis of jaw",
      "target" : [{
        "code" : "1231151009",
        "display" : "Osteonecrosis of jaw",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10064687",
      "display" : "Device related infection",
      "target" : [{
        "code" : "473047000",
        "display" : "Infection associated with device",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10064774",
      "display" : "Infusion site extravasation",
      "target" : [{
        "code" : "95384003",
        "display" : "Injection site extravasation",
        "equivalence" : "equivalent",
        "comment" : "SNOMED fuehrt nur 'Injection site'-Konzepte; Injektions- und Infusionsort werden dort nicht unterschieden. Inhaltlich das Paravasat an der Applikationsstelle."
      }]
    },
    {
      "code" : "10064848",
      "display" : "Chronic kidney disease",
      "target" : [{
        "code" : "709044004",
        "display" : "Chronic kidney disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065368",
      "display" : "Urinary fistula",
      "target" : [{
        "code" : "57243009",
        "display" : "Urinary fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065417",
      "display" : "Brachial plexopathy",
      "target" : [{
        "code" : "3548001",
        "display" : "Brachial plexus disorder",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: seitenbezogenes Konzept ersetzt; Syn. 'Brachial plexus neuropathy'"
      }]
    },
    {
      "code" : "10065703",
      "display" : "Pancreatic duct stenosis",
      "target" : [{
        "code" : "235972007",
        "display" : "Pancreatic duct stricture",
        "equivalence" : "equivalent",
        "comment" : "Striktur = Stenose des Ductus pancreaticus."
      }]
    },
    {
      "code" : "10065704",
      "display" : "Peritoneal necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Nur 'Fat necrosis of peritoneum' vorhanden - eine eigenstaendige Pathologie, nicht die generische Peritonealnekrose"
      }]
    },
    {
      "code" : "10065705",
      "display" : "Pharyngeal anastomotic leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine pharyngeale Anastomoseninsuffizienz in SNOMED."
      }]
    },
    {
      "code" : "10065706",
      "display" : "Pharyngeal necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Nekrose des Pharynx in SNOMED."
      }]
    },
    {
      "code" : "10065707",
      "display" : "Rectal obstruction",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED kennt nur 25730006 'Stricture of rectum', keine Obstruktion des Rektums."
      }]
    },
    {
      "code" : "10065709",
      "display" : "Rectal necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Nekrose des Rektums in SNOMED (nur 236115009 'Anastomotic necrosis of large intestine', anderer Kontext)."
      }]
    },
    {
      "code" : "10065710",
      "display" : "Small intestinal mucositis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Mukositis des Duenndarms in SNOMED."
      }]
    },
    {
      "code" : "10065712",
      "display" : "Gastrointestinal stoma necrosis",
      "target" : [{
        "code" : "236121008",
        "display" : "Necrosis of stoma",
        "equivalence" : "wider",
        "comment" : "SNOMED-Konzept ist nicht auf gastrointestinale Stomata eingeschraenkt."
      }]
    },
    {
      "code" : "10065713",
      "display" : "Gastric fistula",
      "target" : [{
        "code" : "235671002",
        "display" : "Gastric fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065719",
      "display" : "Jejunal fistula",
      "target" : [{
        "code" : "304371002",
        "display" : "Jejunal fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065720",
      "display" : "Oral cavity fistula",
      "target" : [{
        "code" : "20674003",
        "display" : "Oral fistula",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: orokutane Variante ersetzt"
      }]
    },
    {
      "code" : "10065721",
      "display" : "Anal mucositis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keine anale Mukositis. 3951002 'Proctitis' liegt anatomisch daneben und ist bereits dem CTCAE-Term 'Proctitis' zugeordnet."
      }]
    },
    {
      "code" : "10065722",
      "display" : "Anal necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein SNOMED-Konzept fuer Analnekrose; Kandidat betraf Nierenpapillennekrose"
      }]
    },
    {
      "code" : "10065727",
      "display" : "Esophageal necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Nur 'Esophageal anastomotic necrosis' vorhanden; unterstellt faelschlich eine Anastomose"
      }]
    },
    {
      "code" : "10065728",
      "display" : "Ileal fistula",
      "target" : [{
        "code" : "235734008",
        "display" : "Small bowel fistula",
        "equivalence" : "wider",
        "comment" : "Kein ileumspezifisches Fistelkonzept in SNOMED; Ziel umfasst den gesamten Duenndarm"
      }]
    },
    {
      "code" : "10065730",
      "display" : "Ileal obstruction",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED kennt nur 'Stenosis of ileum' (355468491000132106) bzw. 'Stricture of ileum' (95539004), keine Obstruktion des Ileums. Stenose ist keine Obstruktion; generisches 81060008 'Intestinal obstruction' wuerde die Lokalisation verlieren, die den CTCAE-Term erst ausmacht."
      }]
    },
    {
      "code" : "10065732",
      "display" : "Jejunal obstruction",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Analog zu 'Ileal obstruction': keine Obstruktion des Jejunums in SNOMED."
      }]
    },
    {
      "code" : "10065735",
      "display" : "Laryngeal inflammation",
      "target" : [{
        "code" : "45913009",
        "display" : "Laryngitis",
        "equivalence" : "equivalent",
        "comment" : "Laryngitis = Kehlkopfentzuendung. ACHTUNG: derselbe Code ist im HIGH-Tier bereits dem CTCAE-Term 'Laryngitis' (MedDRA 10023874, SOC Infections) zugeordnet; jener Term sollte auf 312423006 'Infective laryngitis' umgehaengt werden, da er die infektioese Form meint."
      }]
    },
    {
      "code" : "10065738",
      "display" : "Unequal limb length",
      "target" : [{
        "code" : "300261000119100",
        "display" : "Acquired unequal limb length",
        "equivalence" : "narrower",
        "comment" : "SNOMED erfasst nur die erworbene Form"
      }]
    },
    {
      "code" : "10065744",
      "display" : "Arteritis infective",
      "target" : [{
        "code" : "52089001",
        "display" : "Arteritis",
        "equivalence" : "wider",
        "comment" : "SNOMED hat keine infektioese Arteriitis; 'Arteritis' umfasst auch die (haeufigeren) nicht-infektioesen Formen."
      }]
    },
    {
      "code" : "10065745",
      "display" : "Prolapse of intestinal stoma",
      "target" : [{
        "code" : "45168341000119100",
        "display" : "Enterostomy prolapse",
        "equivalence" : "equivalent",
        "comment" : "Enterostoma = Darmstoma; woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065746",
      "display" : "Bronchopulmonary hemorrhage",
      "target" : [{
        "code" : "78144005",
        "display" : "Pulmonary hemorrhage",
        "equivalence" : "narrower",
        "comment" : "SNOMED deckt nur die Blutung aus dem Lungenparenchym ab; CTCAE schliesst die Bronchialwand ein. 95431003 'Respiratory tract hemorrhage' waere umgekehrt zu weit."
      }]
    },
    {
      "code" : "10065747",
      "display" : "Cecal hemorrhage",
      "target" : [{
        "code" : "711441008",
        "display" : "Hemorrhage of cecum",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung (cecal -> caecum)."
      }]
    },
    {
      "code" : "10065748",
      "display" : "Urostomy site bleeding",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein Konzept im Pin 20250701 (nur Ileostomie-Blutung, andere Lokalisation) — Term verbleibt MedDRA-only."
      }]
    },
    {
      "code" : "10065749",
      "display" : "Tracheostomy site bleeding",
      "target" : [{
        "code" : "82872004",
        "display" : "Tracheostomy hemorrhage",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065752",
      "display" : "Duodenal infection",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Nur erregerspezifische Konzepte (Giardia, Anisakis) vorhanden"
      }]
    },
    {
      "code" : "10065755",
      "display" : "Lip infection",
      "target" : [{
        "code" : "737187008",
        "display" : "Infection of lip",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065759",
      "display" : "Laryngeal hemorrhage",
      "target" : [{
        "code" : "249467000",
        "display" : "Bleeding from larynx",
        "equivalence" : "equivalent",
        "comment" : "Wortumstellung."
      }]
    },
    {
      "code" : "10065761",
      "display" : "Cecal infection",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Infektion des Zoekums in SNOMED. 61564002 'Typhlitis' ist ein eigener CTCAE-Term und meint die neutropene Enterokolitis, nicht jede Zoekuminfektion."
      }]
    },
    {
      "code" : "10065762",
      "display" : "Spermatic cord hemorrhage",
      "target" : [{
        "code" : "33878005",
        "display" : "Haemorrhage of spermatic cord",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065763",
      "display" : "Ovarian hemorrhage",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Nur 'Hemorrhagic cyst of ovary' vorhanden; keine generische Ovarialblutung in SNOMED"
      }]
    },
    {
      "code" : "10065764",
      "display" : "Mucosal infection",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine generische Schleimhautinfektion in SNOMED; nur erreger- oder lokalisationsspezifische Konzepte."
      }]
    },
    {
      "code" : "10065765",
      "display" : "Cranial nerve infection",
      "target" : [{
        "code" : "721254003",
        "display" : "Infection of cranial nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065766",
      "display" : "Peripheral nerve infection",
      "target" : [{
        "code" : "1177010008",
        "display" : "Infection of peripheral nerve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065771",
      "display" : "Small intestine infection",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Nur parasitenspezifische Konzepte vorhanden"
      }]
    },
    {
      "code" : "10065772",
      "display" : "Vulval infection",
      "target" : [{
        "code" : "63144007",
        "display" : "Vulvitis",
        "equivalence" : "wider",
        "comment" : "SNOMED subsumiert die infektioesen Vulvitiden unter 'Vulvitis'; ein eigenes Infektionskonzept fehlt."
      }]
    },
    {
      "code" : "10065773",
      "display" : "Lymph leakage",
      "target" : [{
        "code" : "234104002",
        "display" : "Escape of lymph",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065775",
      "display" : "Abdominal soft tissue necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat kein Konzept 'Weichteilnekrose'; nur ursachengebundene Konzepte (z.B. Erfrierung)."
      }]
    },
    {
      "code" : "10065776",
      "display" : "Muscle weakness lower limb",
      "target" : [{
        "code" : "1137412000",
        "display" : "Weakness of muscle of lower limb",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065777",
      "display" : "Soft tissue necrosis lower limb",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Weichteilnekrose der unteren Extremitaet in SNOMED."
      }]
    },
    {
      "code" : "10065778",
      "display" : "Soft tissue necrosis upper limb",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Weichteilnekrose der oberen Extremitaet in SNOMED."
      }]
    },
    {
      "code" : "10065779",
      "display" : "Head soft tissue necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Weichteilnekrose des Kopfes in SNOMED."
      }]
    },
    {
      "code" : "10065780",
      "display" : "Muscle weakness left-sided",
      "target" : [{
        "code" : "278287000",
        "display" : "Left hemiparesis",
        "equivalence" : "equivalent",
        "comment" : "Hemiparese = linksseitige Muskelschwaeche."
      }]
    },
    {
      "code" : "10065781",
      "display" : "Neck soft tissue necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Weichteilnekrose des Halses in SNOMED."
      }]
    },
    {
      "code" : "10065783",
      "display" : "Musculoskeletal deformity",
      "target" : [{
        "code" : "40668007",
        "display" : "Acquired musculoskeletal deformity",
        "equivalence" : "narrower",
        "comment" : "SNOMED erfasst nur erworbene Deformitaeten"
      }]
    },
    {
      "code" : "10065784",
      "display" : "Central nervous system necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Nur 'Necrosis of central nervous system caused by ionizing radiation' vorhanden; unterstellt faelschlich Strahlengenese"
      }]
    },
    {
      "code" : "10065785",
      "display" : "External ear pain",
      "target" : [{
        "code" : "792886009",
        "display" : "Pain in pinna",
        "equivalence" : "narrower",
        "comment" : "SNOMED kennt nur Schmerz der Ohrmuschel; CTCAE 'External ear pain' umfasst zusaetzlich den aeusseren Gehoergang. 301354004 'Pain of ear' ist bereits dem CTCAE-Term 'Ear pain' zugeordnet."
      }]
    },
    {
      "code" : "10065786",
      "display" : "Laryngeal fistula",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein SNOMED-Konzept fuer Larynxfistel; Kandidat war eine Prozedur"
      }]
    },
    {
      "code" : "10065787",
      "display" : "Tracheal fistula",
      "target" : [{
        "code" : "233778002",
        "display" : "Tracheal fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065788",
      "display" : "Fallopian tube anastomotic leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Anastomoseninsuffizienz der Tube in SNOMED; SNOMED fuehrt Anastomosenlecks nur fuer GI-Trakt, Gallenwege, Pankreas, Bronchus und Urologie."
      }]
    },
    {
      "code" : "10065789",
      "display" : "Fallopian tube obstruction",
      "target" : [{
        "code" : "237143006",
        "display" : "Blocked fallopian tube",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: seitenbezogenes Konzept ersetzt"
      }]
    },
    {
      "code" : "10065790",
      "display" : "Fallopian tube perforation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Perforation der Tuba uterina in SNOMED."
      }]
    },
    {
      "code" : "10065791",
      "display" : "Fallopian tube stenosis",
      "target" : [{
        "code" : "280504001",
        "display" : "Fallopian tube stenosis",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065793",
      "display" : "Pelvic soft tissue necrosis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Weichteilnekrose des Beckens in SNOMED."
      }]
    },
    {
      "code" : "10065794",
      "display" : "Muscle weakness right-sided",
      "target" : [{
        "code" : "278286009",
        "display" : "Right hemiparesis",
        "equivalence" : "equivalent",
        "comment" : "Hemiparese = rechtsseitige Muskelschwaeche."
      }]
    },
    {
      "code" : "10065795",
      "display" : "Muscle weakness trunk",
      "target" : [{
        "code" : "249937002",
        "display" : "Truncal muscle weakness",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065796",
      "display" : "Joint range of motion decreased cervical spine",
      "target" : [{
        "code" : "304344002",
        "display" : "Decreased range of cervical spine movement",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065798",
      "display" : "Superficial soft tissue fibrosis",
      "target" : [{
        "code" : "445156001",
        "display" : "Fibrosis of subcutaneous tissue",
        "equivalence" : "equivalent",
        "comment" : "Oberflaechliches Weichgewebe = Subkutangewebe."
      }]
    },
    {
      "code" : "10065799",
      "display" : "Fibrosis deep connective tissue",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat keine Fibrose des tiefen Bindegewebes; nur 445156001 'Fibrosis of subcutaneous tissue' (oberflaechlich, siehe MedDRA 10065798)."
      }]
    },
    {
      "code" : "10065800",
      "display" : "Joint range of motion decreased lumbar spine",
      "target" : [{
        "code" : "304352004",
        "display" : "Decreased range of lumbar spine movement",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065802",
      "display" : "Bladder anastomotic leak",
      "target" : [{
        "code" : "276869002",
        "display" : "Leakage of urological anastomosis",
        "equivalence" : "wider",
        "comment" : "SNOMED hat kein blasenspezifisches Anastomoseninsuffizienz-Konzept; das urologische Sammelkonzept ist die naechstliegende Oberklasse."
      }]
    },
    {
      "code" : "10065803",
      "display" : "Kidney anastomotic leak",
      "target" : [{
        "code" : "276869002",
        "display" : "Leakage of urological anastomosis",
        "equivalence" : "wider",
        "comment" : "Kein nierenspezifisches Anastomosenleck in SNOMED; urologisches Sammelkonzept."
      }]
    },
    {
      "code" : "10065805",
      "display" : "Spermatic cord obstruction",
      "target" : [{
        "code" : "198065008",
        "display" : "Spermatic cord stricture",
        "equivalence" : "narrower",
        "comment" : "SNOMED kennt nur die Striktur des Samenstrangs; CTCAE meint jede Obstruktion."
      }]
    },
    {
      "code" : "10065811",
      "display" : "Uterine fistula",
      "target" : [{
        "code" : "77408009",
        "display" : "Fistula of uterus",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Kandidat war eine Prozedur (Fistelverschluss)"
      }]
    },
    {
      "code" : "10065813",
      "display" : "Vaginal fistula",
      "target" : [{
        "code" : "45135002",
        "display" : "Fistulous opening in vagina",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Beobachtungskonzept durch Disorder-Konzept ersetzt"
      }]
    },
    {
      "code" : "10065814",
      "display" : "Ureteric anastomotic leak",
      "target" : [{
        "code" : "276869002",
        "display" : "Leakage of urological anastomosis",
        "equivalence" : "wider",
        "comment" : "Kein ureterspezifisches Anastomosenleck in SNOMED; urologisches Sammelkonzept."
      }]
    },
    {
      "code" : "10065815",
      "display" : "Urethral anastomotic leak",
      "target" : [{
        "code" : "276869002",
        "display" : "Leakage of urological anastomosis",
        "equivalence" : "wider",
        "comment" : "Kein urethraspezifisches Anastomosenleck in SNOMED; urologisches Sammelkonzept."
      }]
    },
    {
      "code" : "10065817",
      "display" : "Vaginal obstruction",
      "target" : [{
        "code" : "737178004",
        "display" : "Gynatresia of vagina",
        "equivalence" : "narrower",
        "comment" : "Gynatresie = Verschluss der Vagina, in SNOMED unter 'Disorder of vagina'; enger als die CTCAE-Obstruktion, die auch partielle Blockaden umfasst."
      }]
    },
    {
      "code" : "10065818",
      "display" : "Vaginal perforation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED fuehrt vaginale Perforationen nur im Kontext von Schwangerschaftsabbruch/Abort (87967003, 64181003, 609478003)."
      }]
    },
    {
      "code" : "10065822",
      "display" : "Prolapse of urostomy",
      "target" : [{
        "code" : "298135000",
        "display" : "Urostomy stomal prolapse",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065823",
      "display" : "Nipple deformity",
      "target" : [{
        "code" : "237469008",
        "display" : "Nipple deformity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065825",
      "display" : "Intraoperative gastrointestinal injury",
      "target" : [{
        "code" : "1290696007",
        "display" : "Injury to intestine during surgery",
        "equivalence" : "narrower",
        "comment" : "SNOMED deckt nur den Darm ab; CTCAE meint den gesamten Gastrointestinaltrakt (Oesophagus bis Anus)."
      }]
    },
    {
      "code" : "10065826",
      "display" : "Intraoperative arterial injury",
      "target" : [{
        "code" : "63043004",
        "display" : "Injury of artery",
        "equivalence" : "wider",
        "comment" : "Im Pin 20250701 kein Konzept für die intraoperative Genese; Oberkonzept Arterienverletzung, der operative Kontext ergibt sich aus AdverseEvent.suspectEntity."
      }]
    },
    {
      "code" : "10065827",
      "display" : "Intraoperative hepatobiliary injury",
      "target" : [{
        "code" : "713203006",
        "display" : "Injury to liver during surgery",
        "equivalence" : "narrower",
        "comment" : "SNOMED trennt Leber (713203006) und Gallenblase (715212005); ein hepatobiliaeres Sammelkonzept fehlt. Die Leberverletzung ist der dominante Anteil."
      }]
    },
    {
      "code" : "10065828",
      "display" : "Intraoperative urinary injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED bietet nur die Teilkonzepte 10661000087107 'Injury of urinary bladder during surgery' und 10581000087102 'Injury of ureter during surgery'; ein Sammelkonzept fuer den Harntrakt fehlt."
      }]
    },
    {
      "code" : "10065829",
      "display" : "Intraoperative musculoskeletal injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine intraoperative muskuloskelettale Verletzung in SNOMED."
      }]
    },
    {
      "code" : "10065830",
      "display" : "Intraoperative neurological injury",
      "target" : [{
        "code" : "213267001",
        "display" : "Injury to nerve during surgery",
        "equivalence" : "narrower",
        "comment" : "SNOMED deckt nur die Nervenverletzung ab; CTCAE schliesst ZNS-Schaeden ein."
      }]
    },
    {
      "code" : "10065831",
      "display" : "Intraoperative breast injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED fuehrt intraoperative Verletzungen nur fuer eine begrenzte Organliste (Lunge, Nerv, Leber, Eingeweide, Rektum, Milz, Ureter, Atemweg, Blase, Oesophagus, Zwerchfell, Darm, Gallenblase, Gefaess, Niere, Vene, Magen, Arterie, Pankreas). Mamma fehlt."
      }]
    },
    {
      "code" : "10065832",
      "display" : "Intraoperative respiratory injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED bietet zwei gleichrangige Teilkonzepte - 11051000087106 'Injury of airway during surgery' und 1290694005 'Injury to lung during surgery'; keines deckt den respiratorischen Trakt als Ganzes ab, eine Auswahl waere willkuerlich."
      }]
    },
    {
      "code" : "10065834",
      "display" : "Intraoperative endocrine injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine intraoperative Verletzung endokriner Organe in SNOMED."
      }]
    },
    {
      "code" : "10065836",
      "display" : "IVth nerve disorder",
      "target" : [{
        "code" : "20610004",
        "display" : "Fourth nerve palsy",
        "equivalence" : "narrower",
        "comment" : "SNOMED hat kein 'Disorder of trochlear nerve'; die Trochlearisparese ist die klinische Manifestation, engt aber gegenueber 'Stoerung' ein. 106154007 'Fourth cranial nerve finding' waere zu weit (schliesst Normalbefunde ein)."
      }]
    },
    {
      "code" : "10065837",
      "display" : "External ear inflammation",
      "target" : [{
        "code" : "3135009",
        "display" : "Otitis externa",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Otitis externa ist die Entzuendung des aeusseren Ohres; Kandidat beschrieb eine Stenose. Hinweis: 3135009 ist in SNOMED ursachenneutral, wird aber bereits vom CTCAE-Term \"Otitis externa\" (SOC Infektionen) belegt"
      }]
    },
    {
      "code" : "10065838",
      "display" : "Middle ear inflammation",
      "target" : [{
        "code" : "65363002",
        "display" : "Otitis media",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: generisches Konzept statt bilateraler akuter Sonderform. Hinweis: 65363002 ist in SNOMED ursachenneutral, wird aber bereits vom CTCAE-Term \"Otitis media\" (SOC Infektionen) belegt"
      }]
    },
    {
      "code" : "10065840",
      "display" : "Intraoperative reproductive tract injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine intraoperative Verletzung des Reproduktionstrakts in SNOMED."
      }]
    },
    {
      "code" : "10065841",
      "display" : "Intraoperative ocular injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine intraoperative Augenverletzung in SNOMED."
      }]
    },
    {
      "code" : "10065842",
      "display" : "Intraoperative head and neck injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine intraoperative Kopf-Hals-Verletzung in SNOMED."
      }]
    },
    {
      "code" : "10065843",
      "display" : "Intraoperative cardiac injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine intraoperative Herzverletzung in SNOMED (siehe Organliste bei 'Intraoperative breast injury')."
      }]
    },
    {
      "code" : "10065844",
      "display" : "Intraoperative ear injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine intraoperative Ohrverletzung in SNOMED."
      }]
    },
    {
      "code" : "10065845",
      "display" : "Intraoperative renal injury",
      "target" : [{
        "code" : "40095003",
        "display" : "Injury of kidney",
        "equivalence" : "wider",
        "comment" : "Im Pin 20250701 kein Konzept für die intraoperative Genese; Oberkonzept Nierenverletzung, der operative Kontext ergibt sich aus AdverseEvent.suspectEntity."
      }]
    },
    {
      "code" : "10065846",
      "display" : "Intraoperative skin injury",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine intraoperative Hautverletzung in SNOMED."
      }]
    },
    {
      "code" : "10065847",
      "display" : "Intraoperative splenic injury",
      "target" : [{
        "code" : "711366008",
        "display" : "Injury of spleen during surgery",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065848",
      "display" : "Intraoperative venous injury",
      "target" : [{
        "code" : "64583005",
        "display" : "Injury of vein",
        "equivalence" : "wider",
        "comment" : "Im Pin 20250701 kein Konzept für die intraoperative Genese; Oberkonzept Venenverletzung, der operative Kontext ergibt sich aus AdverseEvent.suspectEntity."
      }]
    },
    {
      "code" : "10065849",
      "display" : "Injury to jugular vein",
      "target" : [{
        "code" : "76019006",
        "display" : "Injury of internal jugular vein",
        "equivalence" : "narrower",
        "comment" : "SNOMED hat kein Konzept fuer die Vena jugularis allgemein, nur getrennt fuer V. jugularis interna (76019006) und externa (5166001). Gewaehlt wurde die interne als klinisch relevante (Katheteranlage)."
      }]
    },
    {
      "code" : "10065851",
      "display" : "Esophageal fistula",
      "target" : [{
        "code" : "30873000",
        "display" : "Esophageal fistula",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065873",
      "display" : "Pulmonary fistula",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein generisches Lungenfistel-Konzept; \"Bronchopleural fistula\" ist bereits exakte Zielcodierung des eigenen CTCAE-Terms Bronchopleural fistula"
      }]
    },
    {
      "code" : "10065879",
      "display" : "Gastrointestinal anastomotic leak",
      "target" : [{
        "code" : "236085004",
        "display" : "Gastrointestinal anastomotic leak",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065880",
      "display" : "Laryngeal mucositis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Mukositis des Larynx in SNOMED; 45913009 'Laryngitis' ist bereits vergeben und bezeichnet zudem jede Kehlkopfentzuendung."
      }]
    },
    {
      "code" : "10065881",
      "display" : "Pharyngeal mucositis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Mukositis des Pharynx in SNOMED; 405737000 'Pharyngitis' ist bereits dem CTCAE-Term 'Pharyngitis' zugeordnet."
      }]
    },
    {
      "code" : "10065882",
      "display" : "Urostomy leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein Leck eines Urostomas in SNOMED (276869002 betrifft die urologische Anastomose, nicht das Stoma)."
      }]
    },
    {
      "code" : "10065883",
      "display" : "Urostomy obstruction",
      "target" : [{
        "code" : "236131001",
        "display" : "Stomal obstruction",
        "equivalence" : "wider",
        "comment" : "SNOMED-Konzept ist nicht auf urologische Stomata eingeschraenkt."
      }]
    },
    {
      "code" : "10065885",
      "display" : "Urostomy stenosis",
      "target" : [{
        "code" : "236119003",
        "display" : "Stenosis of stoma",
        "equivalence" : "wider",
        "comment" : "SNOMED-Konzept ist nicht auf urologische Stomata eingeschraenkt; 1086781000119103 waere GI-spezifisch und daher falsch."
      }]
    },
    {
      "code" : "10065886",
      "display" : "Uterine anastomotic leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine uterine Anastomoseninsuffizienz in SNOMED."
      }]
    },
    {
      "code" : "10065887",
      "display" : "Vaginal anastomotic leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine vaginale Anastomoseninsuffizienz in SNOMED."
      }]
    },
    {
      "code" : "10065888",
      "display" : "Vas deferens anastomotic leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Anastomoseninsuffizienz des Ductus deferens in SNOMED."
      }]
    },
    {
      "code" : "10065891",
      "display" : "Large intestinal anastomotic leak",
      "target" : [{
        "code" : "236091002",
        "display" : "Large intestine anastomotic leak",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065892",
      "display" : "Small intestinal anastomotic leak",
      "target" : [{
        "code" : "236090001",
        "display" : "Small intestine anastomotic leak",
        "equivalence" : "equivalent",
        "comment" : "Woertliche Entsprechung."
      }]
    },
    {
      "code" : "10065893",
      "display" : "Gastric anastomotic leak",
      "target" : [{
        "code" : "236087007",
        "display" : "Gastric anastomotic leak",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065894",
      "display" : "Rectal anastomotic leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein rektumspezifisches Anastomosenleck in SNOMED. 236091002 'Large intestine anastomotic leak' waere die Oberklasse, ist aber bereits dem CTCAE-Term 'Large intestinal anastomotic leak' als equivalent zugeordnet."
      }]
    },
    {
      "code" : "10065895",
      "display" : "Muscle weakness upper limb",
      "target" : [{
        "code" : "713512009",
        "display" : "Muscle weakness of upper limb",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065897",
      "display" : "Spermatic cord anastomotic leak",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Anastomoseninsuffizienz des Samenstrangs in SNOMED."
      }]
    },
    {
      "code" : "10065898",
      "display" : "Stenosis of gastrointestinal stoma",
      "target" : [{
        "code" : "1086781000119103",
        "display" : "Stenosis of enterostomy stoma",
        "equivalence" : "equivalent",
        "comment" : "Enterostoma = gastrointestinales Stoma."
      }]
    },
    {
      "code" : "10065900",
      "display" : "Tracheal mucositis",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Mukositis der Trachea in SNOMED; 62994001 'Tracheitis' ist bereits dem CTCAE-Term 'Tracheitis' zugeordnet."
      }]
    },
    {
      "code" : "10065906",
      "display" : "Carbon monoxide diffusing capacity decreased",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED fuehrt zur CO-Diffusionskapazitaet nur Messverfahren (36421003, 1366665001) bzw. den unspezifischen Elternbefund 37985006 'Finding of diffusion capacity of lung', aber keinen Befund 'vermindert'."
      }]
    },
    {
      "code" : "10065928",
      "display" : "Uterine obstruction",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Keine Obstruktion des Uterus in SNOMED."
      }]
    },
    {
      "code" : "10065961",
      "display" : "Esophageal anastomotic leak",
      "target" : [{
        "code" : "236086003",
        "display" : "Oesophageal anastomotic leak",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10065973",
      "display" : "Iron overload",
      "target" : [{
        "code" : "60737008",
        "display" : "Iron overload",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10066480",
      "display" : "Avascular necrosis",
      "target" : [{
        "code" : "397758007",
        "display" : "Osteonecrosis",
        "equivalence" : "equivalent",
        "comment" : "Kandidatenwechsel: Syn. 'Avascular necrosis of bone'; Kandidat war hueftspezifisch"
      }]
    },
    {
      "code" : "10066874",
      "display" : "Gastroesophageal reflux disease",
      "target" : [{
        "code" : "235595009",
        "display" : "Gastroesophageal reflux disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10069138",
      "display" : "Papulopustular rash",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "SNOMED hat kein papulopustuloeses Exanthem. 402644006 'Acneiform eruption' ist dem CTCAE-Term 'Rash acneiform' vorbehalten, 271757001 'Papular eruption' verliert die pustuloese Komponente."
      }]
    },
    {
      "code" : "10069339",
      "display" : "Acute kidney injury",
      "target" : [{
        "code" : "14669001",
        "display" : "Acute kidney injury",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10069501",
      "display" : "Left ventricular systolic dysfunction",
      "target" : [{
        "code" : "134401001",
        "display" : "Left ventricular systolic dysfunction",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
