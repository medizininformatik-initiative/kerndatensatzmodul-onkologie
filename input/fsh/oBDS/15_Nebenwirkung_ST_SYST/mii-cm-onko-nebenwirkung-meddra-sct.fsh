// AUTO-GENERIERT + KURATIERT (beads qg7, 2026-08-28) — Pipeline:
// 790 CTCAE-v4.03-Terme (offizielle NCI-Liste, examples-source/ctcae/) gegen
// SNOMED CT (lokaler Snowstorm/MII-Ontoserver) gematcht: 441 automatisch
// (adversarial stichproben-verifiziert, 3 Korrekturen, Aktiv-Check aller Codes),
// 267 agentenkuratiert (equivalent/narrower/wider konservativ), 83 unmatched.
// ALLE Zielcodes gegen den Projekt-Pin SNOMED International 20250701 geprüft
// (Expansions-Manifest) — 6 Codes aus neueren Releases wurden auf pin-gültige
// Konzepte zurückgeführt bzw. als unmatched geführt.
Instance: mii-cm-onko-nebenwirkung-meddra-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-nebenwirkung-meddra-sct"
* name = "MII_CM_Onko_Nebenwirkung_MedDRA_SCT"
* title = "MII CM Onko Nebenwirkung MedDRA zu SNOMED CT (CTCAE v4.03)"
* status = #active
* experimental = false
* date = "2026-08-28"
* insert Version
* insert SP_Publisher
* description = "Kuratierte Zuordnung der MedDRA-Codes der CTCAE-v4.03-Nebenwirkungsterme zu SNOMED CT für die optionale SNOMED-Zweitkodierung in AdverseEvent.event (Profil mii-pr-onko-nebenwirkung-adverse-event). WICHTIGE HINWEISE: (1) Es existiert eine offizielle, lizenzpflichtige MedDRA-SNOMED-CT-Map (MedDRA MSSO / SNOMED International); diese ConceptMap ist eine davon unabhängige, projektseitig kuratierte Zuordnung und ersetzt die offizielle Map nicht. (2) Die Zuordnungen wurden automatisiert erstellt und stichproben- bzw. einzelfallkuratiert; für Vollständigkeit und Korrektheit wird KEINE GEWÄHR übernommen. Vor einer Nutzung in Produktivsystemen ist eine eigenverantwortliche fachliche Prüfung erforderlich. (3) Nicht jeder CTCAE-/MedDRA-Term hat ein SNOMED-CT-Äquivalent — solche Terme sind als unmatched gekennzeichnet und verbleiben MedDRA-only."
* purpose = "Ableitung der optionalen SNOMED-CT-Zweitkodierung (event.coding[snomed]) aus der MedDRA-Pflichtkodierung der Nebenwirkungsart (oBDS 15.2)."
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-art"
// ConceptMap.target MUSS ein ValueSet sein — hier das implizite SNOMED-CT-VS der
// im Expansions-Manifest gepinnten Edition/Version (International 20250701).
// Alle Zielcodes sind gegen genau diese Version verifiziert.
* targetUri = "http://snomed.info/sct/900000000000207008/version/20250701?fhir_vs"

* group[+].source = "https://www.meddra.org"
* group[=].target = "http://snomed.info/sct"
* group[=].targetVersion = "http://snomed.info/sct/900000000000207008/version/20250701"

* group[=].element[+].code = #10000060
* group[=].element[=].display = "Abdominal distension"
* group[=].element[=].target[+].code = #41931001
* group[=].element[=].target[=].display = "Distension of abdomen"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10000081
* group[=].element[=].display = "Abdominal pain"
* group[=].element[=].target[+].code = #21522001
* group[=].element[=].target[=].display = "Abdominal pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10000486
* group[=].element[=].display = "Acidosis"
* group[=].element[=].target[+].code = #51387008
* group[=].element[=].target[=].display = "Acidosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10000521
* group[=].element[=].display = "Acoustic nerve disorder NOS"
* group[=].element[=].target[+].code = #77949003
* group[=].element[=].target[=].display = "Disorder of acoustic nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10000636
* group[=].element[=].display = "Activated partial thromboplastin time prolonged"
* group[=].element[=].target[+].code = #409675001
* group[=].element[=].target[=].display = "Partial thromboplastin time increased"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED unterscheidet nicht zwischen PTT und aktivierter PTT; das Konzept umfasst beide Assays."

* group[=].element[+].code = #10001367
* group[=].element[=].display = "Adrenal insufficiency"
* group[=].element[=].target[+].code = #386584007
* group[=].element[=].target[=].display = "Adrenal cortical hypofunction"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001409
* group[=].element[=].display = "Adult respiratory distress syndrome"
* group[=].element[=].target[+].code = #67782005
* group[=].element[=].target[=].display = "Acute respiratory distress syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001497
* group[=].element[=].display = "Agitation"
* group[=].element[=].target[+].code = #24199005
* group[=].element[=].target[=].display = "Feeling agitated"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001540
* group[=].element[=].display = "Akathisia"
* group[=].element[=].target[+].code = #285145004
* group[=].element[=].target[=].display = "Akathisia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001551
* group[=].element[=].display = "Alanine aminotransferase increased"
* group[=].element[=].target[+].code = #409673008
* group[=].element[=].target[=].display = "Alanine aminotransferase above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10001598
* group[=].element[=].display = "Alcohol intolerance"
* group[=].element[=].target[+].code = #102612005
* group[=].element[=].target[=].display = "Alcohol intolerance"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001675
* group[=].element[=].display = "Alkaline phosphatase increased"
* group[=].element[=].target[+].code = #274770006
* group[=].element[=].target[=].display = "Alkaline phosphatase above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10001680
* group[=].element[=].display = "Alkalosis"
* group[=].element[=].target[+].code = #21420006
* group[=].element[=].target[=].display = "Alkalosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001718
* group[=].element[=].display = "Allergic reaction"
* group[=].element[=].target[+].code = #419076005
* group[=].element[=].target[=].display = "Allergic reaction"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001723
* group[=].element[=].display = "Allergic rhinitis"
* group[=].element[=].target[+].code = #61582004
* group[=].element[=].target[=].display = "Allergic rhinitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001760
* group[=].element[=].display = "Alopecia"
* group[=].element[=].target[+].code = #56317004
* group[=].element[=].target[=].display = "Alopecia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10001949
* group[=].element[=].display = "Amnesia"
* group[=].element[=].target[+].code = #48167000
* group[=].element[=].target[=].display = "Amnesia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002156
* group[=].element[=].display = "Anal fistula"
* group[=].element[=].target[+].code = #786878009
* group[=].element[=].target[=].display = "Anal fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002167
* group[=].element[=].display = "Anal pain"
* group[=].element[=].target[+].code = #68653001
* group[=].element[=].target[=].display = "Anal pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002176
* group[=].element[=].display = "Anal stenosis"
* group[=].element[=].target[+].code = #64153009
* group[=].element[=].target[=].display = "Stenosis of anal canal"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: CTCAE-Definition nennt explizit den Analkanal"

* group[=].element[+].code = #10002180
* group[=].element[=].display = "Anal ulcer"
* group[=].element[=].target[+].code = #20928004
* group[=].element[=].target[=].display = "Ulcer of anus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002218
* group[=].element[=].display = "Anaphylaxis"
* group[=].element[=].target[+].code = #39579001
* group[=].element[=].target[=].display = "Anaphylaxis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002272
* group[=].element[=].display = "Anemia"
* group[=].element[=].target[+].code = #271737000
* group[=].element[=].target[=].display = "Anaemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002544
* group[=].element[=].display = "Ankle fracture"
* group[=].element[=].target[+].code = #16114001
* group[=].element[=].target[=].display = "Fracture of ankle"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002646
* group[=].element[=].display = "Anorexia"
* group[=].element[=].target[+].code = #79890006
* group[=].element[=].target[=].display = "Loss of appetite"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002652
* group[=].element[=].display = "Anorgasmia"
* group[=].element[=].target[+].code = #62607004
* group[=].element[=].target[=].display = "Orgasm incapacity"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002855
* group[=].element[=].display = "Anxiety"
* group[=].element[=].target[+].code = #48694002
* group[=].element[=].target[=].display = "Anxiety"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002899
* group[=].element[=].display = "Aortic injury"
* group[=].element[=].target[+].code = #444036008
* group[=].element[=].target[=].display = "Injury of aorta"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10002953
* group[=].element[=].display = "Aphonia"
* group[=].element[=].target[+].code = #441913003
* group[=].element[=].target[=].display = "Aphonia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10002972
* group[=].element[=].display = "Apnea"
* group[=].element[=].target[+].code = #1023001
* group[=].element[=].target[=].display = "Apnoea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003011
* group[=].element[=].display = "Appendicitis"
* group[=].element[=].target[+].code = #74400008
* group[=].element[=].target[=].display = "Appendicitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003012
* group[=].element[=].display = "Appendicitis perforated"
* group[=].element[=].target[+].code = #286967008
* group[=].element[=].target[=].display = "Acute perforated appendicitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003074
* group[=].element[=].display = "Arachnoiditis"
* group[=].element[=].target[+].code = #8217007
* group[=].element[=].target[=].display = "Arachnoiditis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003162
* group[=].element[=].display = "Arterial injury"
* group[=].element[=].target[+].code = #63043004
* group[=].element[=].target[=].display = "Injury of artery"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003239
* group[=].element[=].display = "Arthralgia"
* group[=].element[=].target[+].code = #57676002
* group[=].element[=].target[=].display = "Pain of joint"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003246
* group[=].element[=].display = "Arthritis"
* group[=].element[=].target[+].code = #3723001
* group[=].element[=].target[=].display = "Arthritis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003445
* group[=].element[=].display = "Ascites"
* group[=].element[=].target[+].code = #389026000
* group[=].element[=].target[=].display = "Ascites"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003481
* group[=].element[=].display = "Aspartate aminotransferase increased"
* group[=].element[=].target[+].code = #166669000
* group[=].element[=].target[=].display = "Aspartate aminotransferase serum level above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10003504
* group[=].element[=].display = "Aspiration"
* group[=].element[=].target[+].code = #68052005
* group[=].element[=].target[=].display = "Pulmonary aspiration"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003586
* group[=].element[=].display = "Asystole"
* group[=].element[=].target[+].code = #397829000
* group[=].element[=].target[=].display = "Asystole"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003591
* group[=].element[=].display = "Ataxia"
* group[=].element[=].target[+].code = #20262006
* group[=].element[=].target[=].display = "Ataxia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003598
* group[=].element[=].display = "Atelectasis"
* group[=].element[=].target[+].code = #46621007
* group[=].element[=].target[=].display = "Atelectasis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003658
* group[=].element[=].display = "Atrial fibrillation"
* group[=].element[=].target[+].code = #49436004
* group[=].element[=].target[=].display = "Atrial fibrillation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003662
* group[=].element[=].display = "Atrial flutter"
* group[=].element[=].target[+].code = #5370000
* group[=].element[=].target[=].display = "Atrial flutter"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003673
* group[=].element[=].display = "Atrioventricular block complete"
* group[=].element[=].target[+].code = #27885002
* group[=].element[=].target[=].display = "Complete atrioventricular block"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003674
* group[=].element[=].display = "Atrioventricular block first degree"
* group[=].element[=].target[+].code = #270492004
* group[=].element[=].target[=].display = "First degree atrioventricular block"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003883
* group[=].element[=].display = "Azoospermia"
* group[=].element[=].target[+].code = #48188009
* group[=].element[=].target[=].display = "Azoospermia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10003988
* group[=].element[=].display = "Back pain"
* group[=].element[=].target[+].code = #161891005
* group[=].element[=].target[=].display = "Backache"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10004665
* group[=].element[=].display = "Biliary fistula"
* group[=].element[=].target[+].code = #53206008
* group[=].element[=].target[=].display = "Fistula of bile duct"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10005047
* group[=].element[=].display = "Bladder infection"
* group[=].element[=].target[+].code = #38822007
* group[=].element[=].target[=].display = "Cystitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10005265
* group[=].element[=].display = "Bloating"
* group[=].element[=].target[+].code = #116289008
* group[=].element[=].target[=].display = "Abdominal bloating"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Swollen abdomen' ist ein anderer Befund"

* group[=].element[+].code = #10005329
* group[=].element[=].display = "Blood and lymphatic system disorders - Other, specify"
* group[=].element[=].target[+].code = #414027002
* group[=].element[=].target[=].display = "Disorder of hematopoietic structure"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; der lymphatische Anteil ist nur ueber die haematopoetischen Strukturen mitabgedeckt."

* group[=].element[+].code = #10005332
* group[=].element[=].display = "Blood antidiuretic hormone abnormal"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat nur gerichtete ADH-Befunde (131028000 above, 131029008 below), aber kein Konzept fuer 'abnormal' im Sinne von 'ausserhalb des Referenzbereichs'."

* group[=].element[+].code = #10005364
* group[=].element[=].display = "Blood bilirubin increased"
* group[=].element[=].target[+].code = #166612004
* group[=].element[=].target[=].display = "Serum bilirubin above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10005452
* group[=].element[=].display = "Blood corticotrophin decreased"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat nur Konzepte fuer Corticotropin-Releasing-Faktor (CRF, 131002003/131003008), nicht fuer ACTH-Spiegel. Eine Zuordnung waere fachlich falsch (Hypothalamus- statt Hypophysenhormon)."

* group[=].element[+].code = #10005561
* group[=].element[=].display = "Blood gonadotrophin abnormal"
* group[=].element[=].target[+].code = #131024003
* group[=].element[=].target[=].display = "Abnormal pituitary gonadotropin"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED deckt nur die hypophysaeren Gonadotropine (LH/FSH) ab; hCG (131100008) ist ein separates Konzept."

* group[=].element[+].code = #10005778
* group[=].element[=].display = "Blood prolactin abnormal"
* group[=].element[=].target[+].code = #131007009
* group[=].element[=].target[=].display = "Abnormal prolactin"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10005886
* group[=].element[=].display = "Blurred vision"
* group[=].element[=].target[+].code = #111516008
* group[=].element[=].target[=].display = "Blurring of visual image"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10005901
* group[=].element[=].display = "Body odor"
* group[=].element[=].target[+].code = #81917002
* group[=].element[=].target[=].display = "Body odour"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006002
* group[=].element[=].display = "Bone pain"
* group[=].element[=].target[+].code = #12584003
* group[=].element[=].target[=].display = "Bone pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006179
* group[=].element[=].display = "Breast atrophy"
* group[=].element[=].target[+].code = #20897003
* group[=].element[=].target[=].display = "Atrophy of breast"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006259
* group[=].element[=].display = "Breast infection"
* group[=].element[=].target[+].code = #198108005
* group[=].element[=].target[=].display = "Breast infection"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006298
* group[=].element[=].display = "Breast pain"
* group[=].element[=].target[+].code = #53430007
* group[=].element[=].target[=].display = "Pain of breast"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006437
* group[=].element[=].display = "Bronchial fistula"
* group[=].element[=].target[+].code = #233791001
* group[=].element[=].target[=].display = "Bronchial fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006440
* group[=].element[=].display = "Bronchial obstruction"
* group[=].element[=].target[+].code = #36925002
* group[=].element[=].target[=].display = "Obstruction of bronchus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006482
* group[=].element[=].display = "Bronchospasm"
* group[=].element[=].target[+].code = #4386001
* group[=].element[=].target[=].display = "Bronchospasm"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006504
* group[=].element[=].display = "Bruising"
* group[=].element[=].target[+].code = #125667009
* group[=].element[=].target[=].display = "Contusion"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006556
* group[=].element[=].display = "Bullous dermatitis"
* group[=].element[=].target[+].code = #7231009
* group[=].element[=].target[=].display = "Bullous dermatosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10006634
* group[=].element[=].display = "Burn"
* group[=].element[=].target[+].code = #125666000
* group[=].element[=].target[=].display = "Burn"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10007196
* group[=].element[=].display = "Capillary leak syndrome"
* group[=].element[=].target[+].code = #87730004
* group[=].element[=].target[=].display = "Capillary leak syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10007515
* group[=].element[=].display = "Cardiac arrest"
* group[=].element[=].target[+].code = #410429000
* group[=].element[=].target[=].display = "Cardiac arrest"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10007541
* group[=].element[=].display = "Cardiac disorders - Other, specify"
* group[=].element[=].target[+].code = #56265001
* group[=].element[=].target[=].display = "Heart disease"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; auf die SNOMED-Oberklasse des Organsystems abgebildet. Die 'Other, specify'-Semantik (Freitext) geht verloren."

* group[=].element[+].code = #10007612
* group[=].element[=].display = "Cardiac troponin I increased"
* group[=].element[=].target[+].code = #444931001
* group[=].element[=].target[=].display = "High troponin I level"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Isoform-spezifische Entsprechung (Troponin I)."

* group[=].element[+].code = #10007613
* group[=].element[=].display = "Cardiac troponin T increased"
* group[=].element[=].target[+].code = #1363512008
* group[=].element[=].target[=].display = "Troponin above reference range"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED hat kein Troponin-T-spezifisches Konzept (nur Troponin I, 444931001); das gewaehlte Konzept ist isoformunspezifisch."

* group[=].element[+].code = #10007739
* group[=].element[=].display = "Cataract"
* group[=].element[=].target[+].code = #193570009
* group[=].element[=].target[=].display = "Cataract"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10007810
* group[=].element[=].display = "Catheter related infection"
* group[=].element[=].target[+].code = #440653007
* group[=].element[=].target[=].display = "Infection associated with catheter"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Blutstrominfektion war zu spezifisch"

* group[=].element[+].code = #10007839
* group[=].element[=].display = "CD4 lymphocytes decreased"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keinen Laborbefund 'CD4-Zellzahl vermindert'. 406565005 'CD4 T lymphocyte deficiency' ist eine Immundefekt-Diagnose, kein Messwertbefund."

* group[=].element[+].code = #10008164
* group[=].element[=].display = "Cerebrospinal fluid leakage"
* group[=].element[=].target[+].code = #230744007
* group[=].element[=].target[=].display = "Cerebrospinal fluid leak"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: postoperative nasale Variante ersetzt"

* group[=].element[+].code = #10008330
* group[=].element[=].display = "Cervicitis infection"
* group[=].element[=].target[+].code = #1340188003
* group[=].element[=].target[=].display = "Infective cervicitis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10008417
* group[=].element[=].display = "Cheilitis"
* group[=].element[=].target[+].code = #7847004
* group[=].element[=].target[=].display = "Cheilitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10008481
* group[=].element[=].display = "Chest pain - cardiac"
* group[=].element[=].target[+].code = #426396005
* group[=].element[=].target[=].display = "Cardiac chest pain"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Top-Kandidat 'Non-cardiac chest pain' bezeichnet das Gegenteil"

* group[=].element[+].code = #10008496
* group[=].element[=].display = "Chest wall pain"
* group[=].element[=].target[+].code = #102588006
* group[=].element[=].target[=].display = "Chest wall pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10008531
* group[=].element[=].display = "Chills"
* group[=].element[=].target[+].code = #43724002
* group[=].element[=].target[=].display = "Chill"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10008612
* group[=].element[=].display = "Cholecystitis"
* group[=].element[=].target[+].code = #76581006
* group[=].element[=].target[=].display = "Cholecystitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10008661
* group[=].element[=].display = "Cholesterol high"
* group[=].element[=].target[+].code = #13644009
* group[=].element[=].target[=].display = "Hypercholesterolaemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10009845
* group[=].element[=].display = "Cognitive disturbance"
* group[=].element[=].target[+].code = #386806002
* group[=].element[=].target[=].display = "Impaired cognition"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10009887
* group[=].element[=].display = "Colitis"
* group[=].element[=].target[+].code = #64226004
* group[=].element[=].target[=].display = "Colitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10009995
* group[=].element[=].display = "Colonic fistula"
* group[=].element[=].target[+].code = #197250003
* group[=].element[=].target[=].display = "Colonic fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10009998
* group[=].element[=].display = "Colonic hemorrhage"
* group[=].element[=].target[+].code = #95540002
* group[=].element[=].target[=].display = "Hemorrhage of colon"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10010000
* group[=].element[=].display = "Colonic obstruction"
* group[=].element[=].target[+].code = #40650009
* group[=].element[=].target[=].display = "Obstruction of colon"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat enthielt Aetiologie (entzuendliche Polypen)"

* group[=].element[+].code = #10010001
* group[=].element[=].display = "Colonic perforation"
* group[=].element[=].target[+].code = #50257008
* group[=].element[=].target[=].display = "Perforation of colon"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10010004
* group[=].element[=].display = "Colonic stenosis"
* group[=].element[=].target[+].code = #19132000
* group[=].element[=].target[=].display = "Stenosis of colon"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10010006
* group[=].element[=].display = "Colonic ulcer"
* group[=].element[=].target[+].code = #46040000
* group[=].element[=].target[=].display = "Ulcer of colon"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10010250
* group[=].element[=].display = "Concentration impairment"
* group[=].element[=].target[+].code = #26329005
* group[=].element[=].target[=].display = "Poor concentration"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Unable to concentrate' impliziert vollstaendige Unfaehigkeit"

* group[=].element[+].code = #10010276
* group[=].element[=].display = "Conduction disorder"
* group[=].element[=].target[+].code = #44808001
* group[=].element[=].target[=].display = "Conduction disorder of the heart"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10010300
* group[=].element[=].display = "Confusion"
* group[=].element[=].target[+].code = #40917007
* group[=].element[=].target[=].display = "Clouded consciousness"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10010331
* group[=].element[=].display = "Congenital, familial and genetic disorders - Other, specify"
* group[=].element[=].target[+].code = #66091009
* group[=].element[=].target[=].display = "Congenital disease"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; SNOMED-Oberklasse deckt den kongenitalen Anteil ab, familiaer/genetisch nur teilweise."

* group[=].element[+].code = #10010741
* group[=].element[=].display = "Conjunctivitis"
* group[=].element[=].target[+].code = #9826008
* group[=].element[=].target[=].display = "Conjunctivitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10010742
* group[=].element[=].display = "Conjunctivitis infective"
* group[=].element[=].target[+].code = #299699004
* group[=].element[=].target[=].display = "Infective conjunctivitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10010774
* group[=].element[=].display = "Constipation"
* group[=].element[=].target[+].code = #14760008
* group[=].element[=].target[=].display = "Constipation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10010783
* group[=].element[=].display = "Constrictive pericarditis"
* group[=].element[=].target[+].code = #85598007
* group[=].element[=].target[=].display = "Constrictive pericarditis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10011224
* group[=].element[=].display = "Cough"
* group[=].element[=].target[+].code = #49727002
* group[=].element[=].target[=].display = "Cough"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10011268
* group[=].element[=].display = "CPK increased"
* group[=].element[=].target[+].code = #432352001
* group[=].element[=].target[=].display = "Creatine kinase level above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "CPK = Creatine (phospho)kinase; Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10011368
* group[=].element[=].display = "Creatinine increased"
* group[=].element[=].target[+].code = #166717003
* group[=].element[=].target[=].display = "Serum creatinine above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10011655
* group[=].element[=].display = "Cushingoid"
* group[=].element[=].target[+].code = #67967009
* group[=].element[=].target[=].display = "Cushingoid facies"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED erfasst nur den Gesichtsbefund; CTCAE meint das gesamte cushingoide Erscheinungsbild"

* group[=].element[+].code = #10011912
* group[=].element[=].display = "Death neonatal"
* group[=].element[=].target[+].code = #276506001
* group[=].element[=].target[=].display = "Neonatal death"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat betraf muetterlichen Tod"

* group[=].element[+].code = #10011914
* group[=].element[=].display = "Death NOS"
* group[=].element[=].target[+].code = #419620001
* group[=].element[=].target[=].display = "Death"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat war ein Outcome-Bewertungskonzept"

* group[=].element[+].code = #10012174
* group[=].element[=].display = "Dehydration"
* group[=].element[=].target[+].code = #34095006
* group[=].element[=].target[=].display = "Dehydration"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10012205
* group[=].element[=].display = "Delayed puberty"
* group[=].element[=].target[+].code = #400003000
* group[=].element[=].target[=].display = "Delayed puberty"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10012218
* group[=].element[=].display = "Delirium"
* group[=].element[=].target[+].code = #2776000
* group[=].element[=].target[=].display = "Delirium"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10012260
* group[=].element[=].display = "Delusions"
* group[=].element[=].target[+].code = #2073000
* group[=].element[=].target[=].display = "Delusion"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10012318
* group[=].element[=].display = "Dental caries"
* group[=].element[=].target[+].code = #80967001
* group[=].element[=].target[=].display = "Dental caries"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10012373
* group[=].element[=].display = "Depressed level of consciousness"
* group[=].element[=].target[+].code = #443371007
* group[=].element[=].target[=].display = "Decreased level of consciousness"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10012378
* group[=].element[=].display = "Depression"
* group[=].element[=].target[+].code = #35489007
* group[=].element[=].target[=].display = "Depressive disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10012727
* group[=].element[=].display = "Diarrhea"
* group[=].element[=].target[+].code = #62315008
* group[=].element[=].target[=].display = "Diarrhoea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013442
* group[=].element[=].display = "Disseminated intravascular coagulation"
* group[=].element[=].target[+].code = #67406007
* group[=].element[=].target[=].display = "Disseminated intravascular coagulation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013573
* group[=].element[=].display = "Dizziness"
* group[=].element[=].target[+].code = #404640003
* group[=].element[=].target[=].display = "Dizziness"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013774
* group[=].element[=].display = "Dry eye"
* group[=].element[=].target[+].code = #162290004
* group[=].element[=].target[=].display = "Dry eyes"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013781
* group[=].element[=].display = "Dry mouth"
* group[=].element[=].target[+].code = #87715008
* group[=].element[=].target[=].display = "Xerostomia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013786
* group[=].element[=].display = "Dry skin"
* group[=].element[=].target[+].code = #52475004
* group[=].element[=].target[=].display = "Xeroderma"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013828
* group[=].element[=].display = "Duodenal fistula"
* group[=].element[=].target[+].code = #7780000
* group[=].element[=].target[=].display = "Duodenal fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013830
* group[=].element[=].display = "Duodenal obstruction"
* group[=].element[=].target[+].code = #95532008
* group[=].element[=].target[=].display = "Obstruction of duodenum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: kongenitale Variante ersetzt"

* group[=].element[+].code = #10013832
* group[=].element[=].display = "Duodenal perforation"
* group[=].element[=].target[+].code = #270909006
* group[=].element[=].target[=].display = "Duodenal perforation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013836
* group[=].element[=].display = "Duodenal ulcer"
* group[=].element[=].target[+].code = #51868009
* group[=].element[=].target[=].display = "Ulcer of duodenum"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013887
* group[=].element[=].display = "Dysarthria"
* group[=].element[=].target[+].code = #8011004
* group[=].element[=].target[=].display = "Dysarthria"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013911
* group[=].element[=].display = "Dysgeusia"
* group[=].element[=].target[+].code = #271801002
* group[=].element[=].target[=].display = "Taste sense altered"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013934
* group[=].element[=].display = "Dysmenorrhea"
* group[=].element[=].target[+].code = #266599000
* group[=].element[=].target[=].display = "Dysmenorrhea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013941
* group[=].element[=].display = "Dyspareunia"
* group[=].element[=].target[+].code = #71315007
* group[=].element[=].target[=].display = "Dyspareunia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013946
* group[=].element[=].display = "Dyspepsia"
* group[=].element[=].target[+].code = #162031009
* group[=].element[=].target[=].display = "Indigestion"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013950
* group[=].element[=].display = "Dysphagia"
* group[=].element[=].target[+].code = #40739000
* group[=].element[=].target[=].display = "Dysphagia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013951
* group[=].element[=].display = "Dysphasia"
* group[=].element[=].target[+].code = #20301004
* group[=].element[=].target[=].display = "Dysphasia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013963
* group[=].element[=].display = "Dyspnea"
* group[=].element[=].target[+].code = #267036007
* group[=].element[=].target[=].display = "Dyspnea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10013993
* group[=].element[=].display = "Ear and labyrinth disorders - Other, specify"
* group[=].element[=].target[+].code = #25906001
* group[=].element[=].target[=].display = "Disorder of ear"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; Labyrinth ist als Innenohr mitumfasst."

* group[=].element[+].code = #10014020
* group[=].element[=].display = "Ear pain"
* group[=].element[=].target[+].code = #301354004
* group[=].element[=].target[=].display = "Pain of ear"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10014217
* group[=].element[=].display = "Edema cerebral"
* group[=].element[=].target[+].code = #2032001
* group[=].element[=].target[=].display = "Cerebral oedema"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10014222
* group[=].element[=].display = "Edema face"
* group[=].element[=].target[+].code = #445088006
* group[=].element[=].target[=].display = "Edema of face"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10014326
* group[=].element[=].display = "Ejaculation disorder"
* group[=].element[=].target[+].code = #386790008
* group[=].element[=].target[=].display = "Disorder of ejaculation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10014383
* group[=].element[=].display = "Electrocardiogram QT corrected interval prolonged"
* group[=].element[=].target[+].code = #111975006
* group[=].element[=].target[=].display = "Prolonged QT interval"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED unterscheidet nicht zwischen QT und frequenzkorrigiertem QTc."

* group[=].element[+].code = #10014594
* group[=].element[=].display = "Encephalitis infection"
* group[=].element[=].target[+].code = #312215006
* group[=].element[=].target[=].display = "Infective encephalitis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: erregerspezifisches Konzept ersetzt"

* group[=].element[+].code = #10014621
* group[=].element[=].display = "Encephalomyelitis infection"
* group[=].element[=].target[+].code = #721249007
* group[=].element[=].target[=].display = "Infection causing encephalomyelitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10014625
* group[=].element[=].display = "Encephalopathy"
* group[=].element[=].target[+].code = #81308009
* group[=].element[=].target[=].display = "Disorder of brain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10014678
* group[=].element[=].display = "Endocarditis infective"
* group[=].element[=].target[+].code = #233850007
* group[=].element[=].target[=].display = "Infective endocarditis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10014698
* group[=].element[=].display = "Endocrine disorders - Other, specify"
* group[=].element[=].target[+].code = #362969004
* group[=].element[=].target[=].display = "Disorder of endocrine system"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10014801
* group[=].element[=].display = "Endophthalmitis"
* group[=].element[=].target[+].code = #1847009
* group[=].element[=].target[=].display = "Endophthalmitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10014893
* group[=].element[=].display = "Enterocolitis"
* group[=].element[=].target[+].code = #43752006
* group[=].element[=].target[=].display = "Enterocolitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015090
* group[=].element[=].display = "Epistaxis"
* group[=].element[=].target[+].code = #249366005
* group[=].element[=].target[=].display = "Bleeding from nose"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015218
* group[=].element[=].display = "Erythema multiforme"
* group[=].element[=].target[+].code = #36715001
* group[=].element[=].target[=].display = "Erythema multiforme"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015277
* group[=].element[=].display = "Erythroderma"
* group[=].element[=].target[+].code = #399992009
* group[=].element[=].target[=].display = "Erythroderma"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015384
* group[=].element[=].display = "Esophageal hemorrhage"
* group[=].element[=].target[+].code = #15238002
* group[=].element[=].target[=].display = "Esophageal bleeding"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015387
* group[=].element[=].display = "Esophageal obstruction"
* group[=].element[=].target[+].code = #405247003
* group[=].element[=].target[=].display = "Obstruction of esophagus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10015388
* group[=].element[=].display = "Esophageal pain"
* group[=].element[=].target[+].code = #102619001
* group[=].element[=].target[=].display = "Pain in oesophagus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015448
* group[=].element[=].display = "Esophageal stenosis"
* group[=].element[=].target[+].code = #63305008
* group[=].element[=].target[=].display = "Stricture of oesophagus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: kongenitale Variante ersetzt"

* group[=].element[+].code = #10015451
* group[=].element[=].display = "Esophageal ulcer"
* group[=].element[=].target[+].code = #30811009
* group[=].element[=].target[=].display = "Ulcer of oesophagus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015453
* group[=].element[=].display = "Esophageal varices hemorrhage"
* group[=].element[=].target[+].code = #17709002
* group[=].element[=].target[=].display = "Bleeding esophageal varices"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015461
* group[=].element[=].display = "Esophagitis"
* group[=].element[=].target[+].code = #16761005
* group[=].element[=].target[=].display = "Oesophagitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015533
* group[=].element[=].display = "Euphoria"
* group[=].element[=].target[+].code = #85949006
* group[=].element[=].target[=].display = "Euphoria"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015688
* group[=].element[=].display = "Exostosis"
* group[=].element[=].target[+].code = #416189003
* group[=].element[=].target[=].display = "Exostosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015829
* group[=].element[=].display = "Extraocular muscle paresis"
* group[=].element[=].target[+].code = #35158001
* group[=].element[=].target[=].display = "Paresis of extraocular muscles"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015832
* group[=].element[=].display = "Extrapyramidal disorder"
* group[=].element[=].target[+].code = #76349003
* group[=].element[=].target[=].display = "Extrapyramidal disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015919
* group[=].element[=].display = "Eye disorders - Other, specify"
* group[=].element[=].target[+].code = #371405004
* group[=].element[=].target[=].display = "Disorder of eye"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10015929
* group[=].element[=].display = "Eye infection"
* group[=].element[=].target[+].code = #128351009
* group[=].element[=].target[=].display = "Eye infection"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10015958
* group[=].element[=].display = "Eye pain"
* group[=].element[=].target[+].code = #41652007
* group[=].element[=].target[=].display = "Pain in eye"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016059
* group[=].element[=].display = "Facial pain"
* group[=].element[=].target[+].code = #95668009
* group[=].element[=].target[=].display = "Pain in face"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016173
* group[=].element[=].display = "Fall"
* group[=].element[=].target[+].code = #161898004
* group[=].element[=].target[=].display = "Falls"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016241
* group[=].element[=].display = "Fat atrophy"
* group[=].element[=].target[+].code = #248315005
* group[=].element[=].target[=].display = "Lipoatrophy"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Atrophy of orbital fat' war zu eng"

* group[=].element[+].code = #10016256
* group[=].element[=].display = "Fatigue"
* group[=].element[=].target[+].code = #84229001
* group[=].element[=].target[=].display = "Fatigue"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016288
* group[=].element[=].display = "Febrile neutropenia"
* group[=].element[=].target[+].code = #409089005
* group[=].element[=].target[=].display = "Febrile neutropenia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016296
* group[=].element[=].display = "Fecal incontinence"
* group[=].element[=].target[+].code = #72042002
* group[=].element[=].target[=].display = "Incontinence of feces"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Complete fecal incontinence' war zu eng"

* group[=].element[+].code = #10016479
* group[=].element[=].display = "Fetal death"
* group[=].element[=].target[+].code = #276507005
* group[=].element[=].target[=].display = "Fetal death"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Undelivered in utero fetal death' war zu eng"

* group[=].element[+].code = #10016558
* group[=].element[=].display = "Fever"
* group[=].element[=].target[+].code = #386661006
* group[=].element[=].target[=].display = "Fever"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016596
* group[=].element[=].display = "Fibrinogen decreased"
* group[=].element[=].target[+].code = #131177005
* group[=].element[=].target[=].display = "Fibrinogen below reference range"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016750
* group[=].element[=].display = "Flank pain"
* group[=].element[=].target[+].code = #247355005
* group[=].element[=].target[=].display = "Flank pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016757
* group[=].element[=].display = "Flashing lights"
* group[=].element[=].target[+].code = #162277006
* group[=].element[=].target[=].display = "Sees flashes"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016766
* group[=].element[=].display = "Flatulence"
* group[=].element[=].target[+].code = #249504006
* group[=].element[=].target[=].display = "Passing flatus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016778
* group[=].element[=].display = "Floaters"
* group[=].element[=].target[+].code = #162278001
* group[=].element[=].target[=].display = "Floaters in visual field"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: CTCAE beschreibt das Symptom im Gesichtsfeld, nicht die Glaskoerperpathologie"

* group[=].element[+].code = #10016791
* group[=].element[=].display = "Flu like symptoms"
* group[=].element[=].target[+].code = #95891005
* group[=].element[=].target[=].display = "Influenza-like illness"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016825
* group[=].element[=].display = "Flushing"
* group[=].element[=].target[+].code = #238810007
* group[=].element[=].target[=].display = "Flushing"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10016987
* group[=].element[=].display = "Forced expiratory volume decreased"
* group[=].element[=].target[+].code = #46154005
* group[=].element[=].target[=].display = "Decreased forced expiratory volume"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017076
* group[=].element[=].display = "Fracture"
* group[=].element[=].target[+].code = #125605004
* group[=].element[=].target[=].display = "Fracture of bone"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017577
* group[=].element[=].display = "Gait disturbance"
* group[=].element[=].target[+].code = #22325002
* group[=].element[=].target[=].display = "Abnormal gait"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat war eine dissoziative Stoerung"

* group[=].element[+].code = #10017631
* group[=].element[=].display = "Gallbladder fistula"
* group[=].element[=].target[+].code = #16957005
* group[=].element[=].target[=].display = "Fistula of gallbladder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017636
* group[=].element[=].display = "Gallbladder obstruction"
* group[=].element[=].target[+].code = #75726005
* group[=].element[=].target[=].display = "Obstruction of gallbladder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017638
* group[=].element[=].display = "Gallbladder pain"
* group[=].element[=].target[+].code = #102628000
* group[=].element[=].target[=].display = "Gallbladder pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017639
* group[=].element[=].display = "Gallbladder perforation"
* group[=].element[=].target[+].code = #25345001
* group[=].element[=].target[=].display = "Perforation of gallbladder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017789
* group[=].element[=].display = "Gastric hemorrhage"
* group[=].element[=].target[+].code = #61401005
* group[=].element[=].target[=].display = "Gastric hemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017815
* group[=].element[=].display = "Gastric perforation"
* group[=].element[=].target[+].code = #235674005
* group[=].element[=].target[=].display = "Perforation of stomach"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: kongenitale Variante ersetzt"

* group[=].element[+].code = #10017822
* group[=].element[=].display = "Gastric ulcer"
* group[=].element[=].target[+].code = #397825006
* group[=].element[=].target[=].display = "Gastric ulcer"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017853
* group[=].element[=].display = "Gastritis"
* group[=].element[=].target[+].code = #4556007
* group[=].element[=].target[=].display = "Gastritis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017877
* group[=].element[=].display = "Gastrointestinal fistula"
* group[=].element[=].target[+].code = #37831005
* group[=].element[=].target[=].display = "Gastrointestinal fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10017947
* group[=].element[=].display = "Gastrointestinal disorders - Other, specify"
* group[=].element[=].target[+].code = #53619000
* group[=].element[=].target[=].display = "Disorder of digestive system"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10017999
* group[=].element[=].display = "Gastrointestinal pain"
* group[=].element[=].target[+].code = #301362007
* group[=].element[=].target[=].display = "Pain of digestive structure"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat war eine hereditaere Neuropathie"

* group[=].element[+].code = #10018043
* group[=].element[=].display = "Gastroparesis"
* group[=].element[=].target[+].code = #235675006
* group[=].element[=].target[=].display = "Gastroparesis syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10018065
* group[=].element[=].display = "General disorders and administration site conditions - Other, specify"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SOC-Restkategorie ohne kohaerente SNOMED-Oberklasse: 'General disorders and administration site conditions' mischt Allgemeinsymptome und Applikationsort-Befunde."

* group[=].element[+].code = #10018146
* group[=].element[=].display = "Genital edema"
* group[=].element[=].target[+].code = #300891008
* group[=].element[=].target[=].display = "Genital edema"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10018286
* group[=].element[=].display = "Gingival pain"
* group[=].element[=].target[+].code = #11114002
* group[=].element[=].target[=].display = "Sore gums"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10018304
* group[=].element[=].display = "Glaucoma"
* group[=].element[=].target[+].code = #23986001
* group[=].element[=].target[=].display = "Glaucoma"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10018746
* group[=].element[=].display = "Growth accelerated"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein passendes SNOMED-Konzept fuer beschleunigtes Wachstum gefunden"

* group[=].element[+].code = #10018748
* group[=].element[=].display = "Growth hormone abnormal"
* group[=].element[=].target[+].code = #131004002
* group[=].element[=].target[=].display = "Abnormal human growth hormone"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10018761
* group[=].element[=].display = "Growth suppression"
* group[=].element[=].target[+].code = #444896005
* group[=].element[=].target[=].display = "Growth retardation"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Korrektur aus adversarialer Verifikation"

* group[=].element[+].code = #10018784
* group[=].element[=].display = "Gum infection"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein SNOMED-Konzept fuer Zahnfleischinfektion; Gingivitis ist nicht zwingend infektioes"

* group[=].element[+].code = #10018801
* group[=].element[=].display = "Gynecomastia"
* group[=].element[=].target[+].code = #4754008
* group[=].element[=].target[=].display = "Gynecomastia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019077
* group[=].element[=].display = "Hallucinations"
* group[=].element[=].target[+].code = #7011001
* group[=].element[=].target[=].display = "Hallucinations"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019150
* group[=].element[=].display = "Haptoglobin decreased"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED fuehrt Haptoglobin nur als Substanz (85294008) und Messverfahren (166580005), aber keinen Befund 'vermindert'."

* group[=].element[+].code = #10019211
* group[=].element[=].display = "Headache"
* group[=].element[=].target[+].code = #25064002
* group[=].element[=].target[=].display = "Headache"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019245
* group[=].element[=].display = "Hearing impaired"
* group[=].element[=].target[+].code = #15188001
* group[=].element[=].target[=].display = "Hearing loss"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019279
* group[=].element[=].display = "Heart failure"
* group[=].element[=].target[+].code = #84114007
* group[=].element[=].target[=].display = "Heart failure"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019428
* group[=].element[=].display = "Hematoma"
* group[=].element[=].target[+].code = #385494008
* group[=].element[=].target[=].display = "Hematoma"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019450
* group[=].element[=].display = "Hematuria"
* group[=].element[=].target[+].code = #34436003
* group[=].element[=].target[=].display = "Blood in urine"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019489
* group[=].element[=].display = "Hemoglobinuria"
* group[=].element[=].target[+].code = #68600005
* group[=].element[=].target[=].display = "Haemoglobinuria"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019491
* group[=].element[=].display = "Hemolysis"
* group[=].element[=].target[+].code = #73320003
* group[=].element[=].target[=].display = "Haemolysis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019515
* group[=].element[=].display = "Hemolytic uremic syndrome"
* group[=].element[=].target[+].code = #111407006
* group[=].element[=].target[=].display = "Haemolytic uraemic syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019611
* group[=].element[=].display = "Hemorrhoids"
* group[=].element[=].target[+].code = #70153002
* group[=].element[=].target[=].display = "Hemorrhoids"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019663
* group[=].element[=].display = "Hepatic failure"
* group[=].element[=].target[+].code = #59927004
* group[=].element[=].target[=].display = "Hepatic failure"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019678
* group[=].element[=].display = "Hepatic hemorrhage"
* group[=].element[=].target[+].code = #16763008
* group[=].element[=].target[=].display = "Haemorrhage of liver"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019692
* group[=].element[=].display = "Hepatic necrosis"
* group[=].element[=].target[+].code = #87248009
* group[=].element[=].target[=].display = "Hepatic necrosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019705
* group[=].element[=].display = "Hepatic pain"
* group[=].element[=].target[+].code = #102626001
* group[=].element[=].target[=].display = "Liver pain"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung (hepatic -> liver)."

* group[=].element[+].code = #10019799
* group[=].element[=].display = "Hepatitis viral"
* group[=].element[=].target[+].code = #3738000
* group[=].element[=].target[=].display = "Viral hepatitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10019805
* group[=].element[=].display = "Hepatobiliary disorders - Other, specify"
* group[=].element[=].target[+].code = #1290917001
* group[=].element[=].target[=].display = "Disorder of liver and/or biliary tract"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; deckt hepatisch und biliaer ab."

* group[=].element[+].code = #10020039
* group[=].element[=].display = "Hiccups"
* group[=].element[=].target[+].code = #65958008
* group[=].element[=].target[=].display = "Hiccoughs"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020100
* group[=].element[=].display = "Hip fracture"
* group[=].element[=].target[+].code = #263225007
* group[=].element[=].target[=].display = "Fracture of proximal end of femur"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020112
* group[=].element[=].display = "Hirsutism"
* group[=].element[=].target[+].code = #399939002
* group[=].element[=].target[=].display = "Hirsutism"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020201
* group[=].element[=].display = "Hoarseness"
* group[=].element[=].target[+].code = #50219008
* group[=].element[=].target[=].display = "Hoarse"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020407
* group[=].element[=].display = "Hot flashes"
* group[=].element[=].target[+].code = #238810007
* group[=].element[=].target[=].display = "Flushing"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Kein generisches 'Hot flush'-Konzept in SNOMED; Ziel umfasst alle Flush-Formen. Kandidat 'Menopausal flushing' waere im onkologischen Kontext (u.a. Maenner unter ADT) falsch. Hinweis: 238810007 ist bereits Zielcode des CTCAE-Terms \"Flushing\"; ein ursachenneutrales Hot-flash-Konzept existiert in SNOMED nicht"

* group[=].element[+].code = #10020508
* group[=].element[=].display = "Hydrocephalus"
* group[=].element[=].target[+].code = #230745008
* group[=].element[=].target[=].display = "Hydrocephalus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020587
* group[=].element[=].display = "Hypercalcemia"
* group[=].element[=].target[+].code = #66931009
* group[=].element[=].target[=].display = "Hypercalcemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020639
* group[=].element[=].display = "Hyperglycemia"
* group[=].element[=].target[+].code = #80394007
* group[=].element[=].target[=].display = "Hyperglycemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020642
* group[=].element[=].display = "Hyperhidrosis"
* group[=].element[=].target[+].code = #312230002
* group[=].element[=].target[=].display = "Hyperhidrosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020647
* group[=].element[=].display = "Hyperkalemia"
* group[=].element[=].target[+].code = #14140009
* group[=].element[=].target[=].display = "Hyperkalaemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020670
* group[=].element[=].display = "Hypermagnesemia"
* group[=].element[=].target[+].code = #66978005
* group[=].element[=].target[=].display = "Hypermagnesaemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020680
* group[=].element[=].display = "Hypernatremia"
* group[=].element[=].target[+].code = #771115008
* group[=].element[=].target[=].display = "Hypernatremia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020705
* group[=].element[=].display = "Hyperparathyroidism"
* group[=].element[=].target[+].code = #66999008
* group[=].element[=].target[=].display = "Hyperparathyroidism"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020765
* group[=].element[=].display = "Hypersomnia"
* group[=].element[=].target[+].code = #77692006
* group[=].element[=].target[=].display = "Hypersomnia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020772
* group[=].element[=].display = "Hypertension"
* group[=].element[=].target[+].code = #38341003
* group[=].element[=].target[=].display = "Hypertensive disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020850
* group[=].element[=].display = "Hyperthyroidism"
* group[=].element[=].target[+].code = #34486009
* group[=].element[=].target[=].display = "Hyperthyroidism"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020864
* group[=].element[=].display = "Hypertrichosis"
* group[=].element[=].target[+].code = #29966009
* group[=].element[=].target[=].display = "Hypertrichosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020870
* group[=].element[=].display = "Hypertriglyceridemia"
* group[=].element[=].target[+].code = #302870006
* group[=].element[=].target[=].display = "Hypertriglyceridaemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020907
* group[=].element[=].display = "Hyperuricemia"
* group[=].element[=].target[+].code = #35885006
* group[=].element[=].target[=].display = "Hyperuricemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020943
* group[=].element[=].display = "Hypoalbuminemia"
* group[=].element[=].target[+].code = #119247004
* group[=].element[=].target[=].display = "Hypoalbuminemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10020949
* group[=].element[=].display = "Hypocalcemia"
* group[=].element[=].target[+].code = #5291005
* group[=].element[=].target[=].display = "Hypocalcemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021005
* group[=].element[=].display = "Hypoglycemia"
* group[=].element[=].target[+].code = #302866003
* group[=].element[=].target[=].display = "Hypoglycaemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021013
* group[=].element[=].display = "Hypohidrosis"
* group[=].element[=].target[+].code = #45004005
* group[=].element[=].target[=].display = "Hypohidrosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021018
* group[=].element[=].display = "Hypokalemia"
* group[=].element[=].target[+].code = #43339004
* group[=].element[=].target[=].display = "Hypokalemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021028
* group[=].element[=].display = "Hypomagnesemia"
* group[=].element[=].target[+].code = #190855004
* group[=].element[=].target[=].display = "Hypomagnesemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021038
* group[=].element[=].display = "Hyponatremia"
* group[=].element[=].target[+].code = #89627008
* group[=].element[=].target[=].display = "Hyponatremia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021041
* group[=].element[=].display = "Hypoparathyroidism"
* group[=].element[=].target[+].code = #36976004
* group[=].element[=].target[=].display = "Hypoparathyroidism"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021059
* group[=].element[=].display = "Hypophosphatemia"
* group[=].element[=].target[+].code = #4996001
* group[=].element[=].target[=].display = "Hypophosphatemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021097
* group[=].element[=].display = "Hypotension"
* group[=].element[=].target[+].code = #45007003
* group[=].element[=].target[=].display = "Low blood pressure"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021113
* group[=].element[=].display = "Hypothermia"
* group[=].element[=].target[+].code = #386689009
* group[=].element[=].target[=].display = "Hypothermia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021114
* group[=].element[=].display = "Hypothyroidism"
* group[=].element[=].target[+].code = #40930008
* group[=].element[=].target[=].display = "Hypothyroidism"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021143
* group[=].element[=].display = "Hypoxia"
* group[=].element[=].target[+].code = #389086002
* group[=].element[=].target[=].display = "Hypoxia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021305
* group[=].element[=].display = "Ileal perforation"
* group[=].element[=].target[+].code = #282068002
* group[=].element[=].target[=].display = "Perforation of ileum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: neonatale Variante ersetzt"

* group[=].element[+].code = #10021307
* group[=].element[=].display = "Ileal stenosis"
* group[=].element[=].target[+].code = #355468491000132106
* group[=].element[=].target[=].display = "Stenosis of ileum"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021309
* group[=].element[=].display = "Ileal ulcer"
* group[=].element[=].target[+].code = #50565005
* group[=].element[=].target[=].display = "Ileal ulcer"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021328
* group[=].element[=].display = "Ileus"
* group[=].element[=].target[+].code = #710572000
* group[=].element[=].target[=].display = "Functional intestinal obstruction due to decreased peristalsis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10021428
* group[=].element[=].display = "Immune system disorders - Other, specify"
* group[=].element[=].target[+].code = #414029004
* group[=].element[=].target[=].display = "Disorder of immune function"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10021881
* group[=].element[=].display = "Infections and infestations - Other, specify"
* group[=].element[=].target[+].code = #40733004
* group[=].element[=].target[=].display = "Infectious disease"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10021918
* group[=].element[=].display = "Infective myositis"
* group[=].element[=].target[+].code = #29689003
* group[=].element[=].target[=].display = "Infective myositis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10022095
* group[=].element[=].display = "Injection site reaction"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat einzelne Injektionsort-Befunde (Schmerz 95388000, Oedem 95392007, Ulkus 95400005 ...), aber keine generische 'Injection site reaction'. 1155807002 meint die systemische Reaktion nach Injektion."

* group[=].element[+].code = #10022117
* group[=].element[=].display = "Injury, poisoning and procedural complications - Other, specify"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SOC-Restkategorie ohne kohaerente SNOMED-Oberklasse: Verletzung, Vergiftung und Eingriffskomplikation sind in SNOMED getrennte Hierarchien."

* group[=].element[+].code = #10022161
* group[=].element[=].display = "Injury to carotid artery"
* group[=].element[=].target[+].code = #6956001
* group[=].element[=].target[=].display = "Injury of carotid artery"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10022213
* group[=].element[=].display = "Injury to inferior vena cava"
* group[=].element[=].target[+].code = #56515006
* group[=].element[=].target[=].display = "Injury of inferior vena cava"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10022356
* group[=].element[=].display = "Injury to superior vena cava"
* group[=].element[=].target[+].code = #38261007
* group[=].element[=].target[=].display = "Injury of superior vena cava"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10022402
* group[=].element[=].display = "INR increased"
* group[=].element[=].target[+].code = #313341008
* group[=].element[=].target[=].display = "International normalized ratio above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "INR ausgeschrieben; Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10022437
* group[=].element[=].display = "Insomnia"
* group[=].element[=].target[+].code = #193462001
* group[=].element[=].target[=].display = "Insomnia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10022763
* group[=].element[=].display = "Intracranial hemorrhage"
* group[=].element[=].target[+].code = #1386000
* group[=].element[=].target[=].display = "Intracranial hemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10022891
* group[=].element[=].display = "Investigations - Other, specify"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SOC-Restkategorie 'Investigations - Other, specify' ohne SNOMED-Oberklasse; Laborbefunde bilden in SNOMED keine gemeinsame Diagnose-Hierarchie."

* group[=].element[+].code = #10022992
* group[=].element[=].display = "Irregular menstruation"
* group[=].element[=].target[+].code = #80182007
* group[=].element[=].target[=].display = "Irregular periods"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10022998
* group[=].element[=].display = "Irritability"
* group[=].element[=].target[+].code = #55929007
* group[=].element[=].target[=].display = "Feeling irritable"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023030
* group[=].element[=].display = "Ischemia cerebrovascular"
* group[=].element[=].target[+].code = #287731003
* group[=].element[=].target[=].display = "Cerebral ischemia"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat war ein Anamnesekonzept"

* group[=].element[+].code = #10023174
* group[=].element[=].display = "Jejunal perforation"
* group[=].element[=].target[+].code = #282060009
* group[=].element[=].target[=].display = "Perforation of jejunum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10023176
* group[=].element[=].display = "Jejunal stenosis"
* group[=].element[=].target[+].code = #903952141000132105
* group[=].element[=].target[=].display = "Stenosis of jejunum"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023177
* group[=].element[=].display = "Jejunal ulcer"
* group[=].element[=].target[+].code = #54822007
* group[=].element[=].target[=].display = "Jejunal ulcer"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023215
* group[=].element[=].display = "Joint effusion"
* group[=].element[=].target[+].code = #387637008
* group[=].element[=].target[=].display = "Effusion of joint"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023216
* group[=].element[=].display = "Joint infection"
* group[=].element[=].target[+].code = #363162000
* group[=].element[=].target[=].display = "Infectious disorder of joint"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023332
* group[=].element[=].display = "Keratitis"
* group[=].element[=].target[+].code = #5888003
* group[=].element[=].target[=].display = "Keratitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023424
* group[=].element[=].display = "Kidney infection"
* group[=].element[=].target[+].code = #129128006
* group[=].element[=].target[=].display = "Infectious disorder of kidney"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023509
* group[=].element[=].display = "Kyphosis"
* group[=].element[=].target[+].code = #414564002
* group[=].element[=].target[=].display = "Kyphosis deformity of spine"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023838
* group[=].element[=].display = "Laryngeal edema"
* group[=].element[=].target[+].code = #51599000
* group[=].element[=].target[=].display = "Edema of larynx"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023862
* group[=].element[=].display = "Laryngeal stenosis"
* group[=].element[=].target[+].code = #75547007
* group[=].element[=].target[=].display = "Stenosis of larynx"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: erworbene Variante durch generisches Konzept ersetzt"

* group[=].element[+].code = #10023874
* group[=].element[=].display = "Laryngitis"
* group[=].element[=].target[+].code = #45913009
* group[=].element[=].target[=].display = "Laryngitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10023891
* group[=].element[=].display = "Laryngospasm"
* group[=].element[=].target[+].code = #406444002
* group[=].element[=].target[=].display = "Laryngeal spasm"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10024264
* group[=].element[=].display = "Lethargy"
* group[=].element[=].target[+].code = #214264003
* group[=].element[=].target[=].display = "Lethargy"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10024378
* group[=].element[=].display = "Leukocytosis"
* group[=].element[=].target[+].code = #111583006
* group[=].element[=].target[=].display = "Leukocytosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10024382
* group[=].element[=].display = "Leukoencephalopathy"
* group[=].element[=].target[+].code = #22811006
* group[=].element[=].target[=].display = "Leukoencephalopathy"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10024419
* group[=].element[=].display = "Libido decreased"
* group[=].element[=].target[+].code = #8357008
* group[=].element[=].target[=].display = "Reduced libido"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10024421
* group[=].element[=].display = "Libido increased"
* group[=].element[=].target[+].code = #58436003
* group[=].element[=].target[=].display = "Increased libido"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10024561
* group[=].element[=].display = "Lip pain"
* group[=].element[=].target[+].code = #36269003
* group[=].element[=].target[=].display = "Cheilodynia"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Cheilodynie = Lippenschmerz (Syn. 'Painful lips')"

* group[=].element[+].code = #10024574
* group[=].element[=].display = "Lipase increased"
* group[=].element[=].target[+].code = #432034007
* group[=].element[=].target[=].display = "Pancreatic lipase above reference range"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10024842
* group[=].element[=].display = "Lordosis"
* group[=].element[=].target[+].code = #61960001
* group[=].element[=].target[=].display = "Lordosis deformity of spine"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10025182
* group[=].element[=].display = "Lymph node pain"
* group[=].element[=].target[+].code = #301360004
* group[=].element[=].target[=].display = "Pain of lymph node"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10025233
* group[=].element[=].display = "Lymphedema"
* group[=].element[=].target[+].code = #234097001
* group[=].element[=].target[=].display = "Lymphoedema"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10025256
* group[=].element[=].display = "Lymphocyte count decreased"
* group[=].element[=].target[+].code = #1156294003
* group[=].element[=].target[=].display = "Lymphocyte count below reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'decreased' -> 'below reference range'."

* group[=].element[+].code = #10025258
* group[=].element[=].display = "Lymphocyte count increased"
* group[=].element[=].target[+].code = #418010004
* group[=].element[=].target[=].display = "Blood lymphocyte number above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10025476
* group[=].element[=].display = "Malabsorption"
* group[=].element[=].target[+].code = #32230006
* group[=].element[=].target[=].display = "Malabsorption syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10025482
* group[=].element[=].display = "Malaise"
* group[=].element[=].target[+].code = #367391008
* group[=].element[=].target[=].display = "Malaise"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10026749
* group[=].element[=].display = "Mania"
* group[=].element[=].target[+].code = #231494001
* group[=].element[=].target[=].display = "Mania"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10027175
* group[=].element[=].display = "Memory impairment"
* group[=].element[=].target[+].code = #386807006
* group[=].element[=].target[=].display = "Memory impairment"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10027198
* group[=].element[=].display = "Meningismus"
* group[=].element[=].target[+].code = #70784009
* group[=].element[=].target[=].display = "Meningeal irritation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10027199
* group[=].element[=].display = "Meningitis"
* group[=].element[=].target[+].code = #7180009
* group[=].element[=].target[=].display = "Meningitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10027308
* group[=].element[=].display = "Menopause"
* group[=].element[=].target[+].code = #289903006
* group[=].element[=].target[=].display = "Menopause present"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10027313
* group[=].element[=].display = "Menorrhagia"
* group[=].element[=].target[+].code = #386692008
* group[=].element[=].target[=].display = "Menorrhagia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10027433
* group[=].element[=].display = "Metabolism and nutrition disorders - Other, specify"
* group[=].element[=].target[+].code = #75934005
* group[=].element[=].target[=].display = "Metabolic disease"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; der Ernaehrungsanteil ('nutrition disorders', 2492009) ist nicht mitabgedeckt."

* group[=].element[+].code = #10027786
* group[=].element[=].display = "Mobitz (type) II atrioventricular block"
* group[=].element[=].target[+].code = #28189009
* group[=].element[=].target[=].display = "Mobitz type II atrioventricular block"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung. ACHTUNG: derselbe Code ist im REVIEW-Tier bereits dem CTCAE-Term 'Mobitz type I' (MedDRA 10027787) zugeordnet - das ist falsch; Mobitz I gehoert auf 54016002."

* group[=].element[+].code = #10027787
* group[=].element[=].display = "Mobitz type I"
* group[=].element[=].target[+].code = #54016002
* group[=].element[=].target[=].display = "Mobitz type I incomplete atrioventricular block"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Top-Kandidat war Mobitz Typ II"

* group[=].element[+].code = #10028041
* group[=].element[=].display = "Movements involuntary"
* group[=].element[=].target[+].code = #267078001
* group[=].element[=].target[=].display = "Involuntary movement"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Hemiballism' war zu spezifisch"

* group[=].element[+].code = #10028130
* group[=].element[=].display = "Mucositis oral"
* group[=].element[=].target[+].code = #61170000
* group[=].element[=].target[=].display = "Stomatitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028154
* group[=].element[=].display = "Multi-organ failure"
* group[=].element[=].target[+].code = #57653000
* group[=].element[=].target[=].display = "Multiple organ failure"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028395
* group[=].element[=].display = "Musculoskeletal and connective tissue disorder -  Other, specify"
* group[=].element[=].target[+].code = #928000
* group[=].element[=].target[=].display = "Disorder of musculoskeletal system"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10028411
* group[=].element[=].display = "Myalgia"
* group[=].element[=].target[+].code = #68962001
* group[=].element[=].target[=].display = "Muscle pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028524
* group[=].element[=].display = "Myelitis"
* group[=].element[=].target[+].code = #41370002
* group[=].element[=].target[=].display = "Myelitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028533
* group[=].element[=].display = "Myelodysplastic syndrome"
* group[=].element[=].target[+].code = #109995007
* group[=].element[=].target[=].display = "Myelodysplastic syndrome (clinical)"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028596
* group[=].element[=].display = "Myocardial infarction"
* group[=].element[=].target[+].code = #22298006
* group[=].element[=].target[=].display = "Myocardial infarction"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028606
* group[=].element[=].display = "Myocarditis"
* group[=].element[=].target[+].code = #50920009
* group[=].element[=].target[=].display = "Myocarditis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028653
* group[=].element[=].display = "Myositis"
* group[=].element[=].target[+].code = #26889001
* group[=].element[=].target[=].display = "Myositis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028691
* group[=].element[=].display = "Nail discoloration"
* group[=].element[=].target[+].code = #89077005
* group[=].element[=].target[=].display = "Nail discolouration"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028735
* group[=].element[=].display = "Nasal congestion"
* group[=].element[=].target[+].code = #68235000
* group[=].element[=].target[=].display = "Nasal congestion"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028813
* group[=].element[=].display = "Nausea"
* group[=].element[=].target[+].code = #422587007
* group[=].element[=].target[=].display = "Nausea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10028836
* group[=].element[=].display = "Neck pain"
* group[=].element[=].target[+].code = #81680005
* group[=].element[=].target[=].display = "Neck pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10029104
* group[=].element[=].display = "Neoplasms benign, malignant and unspecified (incl cysts and polyps) - Other, specify"
* group[=].element[=].target[+].code = #55342001
* group[=].element[=].target[=].display = "Neoplastic disease"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10029205
* group[=].element[=].display = "Nervous system disorders - Other, specify"
* group[=].element[=].target[+].code = #118940003
* group[=].element[=].target[=].display = "Disorder of nervous system"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10029223
* group[=].element[=].display = "Neuralgia"
* group[=].element[=].target[+].code = #16269008
* group[=].element[=].target[=].display = "Neuralgia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10029366
* group[=].element[=].display = "Neutrophil count decreased"
* group[=].element[=].target[+].code = #165517008
* group[=].element[=].target[=].display = "Neutropenia"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "SNOMED fuehrt 'Neutrophil count below reference range' als Synonym dieses Konzepts."

* group[=].element[+].code = #10029404
* group[=].element[=].display = "Night blindness"
* group[=].element[=].target[+].code = #65194006
* group[=].element[=].target[=].display = "Night blindness"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10029864
* group[=].element[=].display = "Nystagmus"
* group[=].element[=].target[+].code = #563001
* group[=].element[=].target[=].display = "Nystagmus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10029883
* group[=].element[=].display = "Obesity"
* group[=].element[=].target[+].code = #414916001
* group[=].element[=].target[=].display = "Obesity"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10029957
* group[=].element[=].display = "Obstruction gastric"
* group[=].element[=].target[+].code = #244815007
* group[=].element[=].target[=].display = "Pyloric obstruction"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Kein generisches Konzept fuer Magenobstruktion; Ziel ist auf den Pylorus bezogen (Syn. 'Gastric outflow obstruction')"

* group[=].element[+].code = #10030300
* group[=].element[=].display = "Oligospermia"
* group[=].element[=].target[+].code = #88311004
* group[=].element[=].target[=].display = "Oligozoospermia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10030980
* group[=].element[=].display = "Oral hemorrhage"
* group[=].element[=].target[+].code = #22490002
* group[=].element[=].target[=].display = "Bleeding of mouth"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10031009
* group[=].element[=].display = "Oral pain"
* group[=].element[=].target[+].code = #102616008
* group[=].element[=].target[=].display = "Painful mouth"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10031282
* group[=].element[=].display = "Osteoporosis"
* group[=].element[=].target[+].code = #64859006
* group[=].element[=].target[=].display = "Osteoporosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033072
* group[=].element[=].display = "Otitis externa"
* group[=].element[=].target[+].code = #3135009
* group[=].element[=].target[=].display = "Otitis externa"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033078
* group[=].element[=].display = "Otitis media"
* group[=].element[=].target[+].code = #65363002
* group[=].element[=].target[=].display = "Otitis media"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033279
* group[=].element[=].display = "Ovarian rupture"
* group[=].element[=].target[+].code = #88294009
* group[=].element[=].target[=].display = "Rupture of ovary"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Ruptured cyst of ovary' war zu eng"

* group[=].element[+].code = #10033314
* group[=].element[=].display = "Ovulation pain"
* group[=].element[=].target[+].code = #43548008
* group[=].element[=].target[=].display = "Mittelschmerz"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033371
* group[=].element[=].display = "Pain"
* group[=].element[=].target[+].code = #22253000
* group[=].element[=].target[=].display = "Pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033425
* group[=].element[=].display = "Pain in extremity"
* group[=].element[=].target[+].code = #90834002
* group[=].element[=].target[=].display = "Pain in limb"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Extremitaet = Limb; deckungsgleich."

* group[=].element[+].code = #10033474
* group[=].element[=].display = "Pain of skin"
* group[=].element[=].target[+].code = #301364008
* group[=].element[=].target[=].display = "Pain of skin"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033557
* group[=].element[=].display = "Palpitations"
* group[=].element[=].target[+].code = #80313002
* group[=].element[=].target[=].display = "Palpitations"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033626
* group[=].element[=].display = "Pancreatic hemorrhage"
* group[=].element[=].target[+].code = #95562002
* group[=].element[=].target[=].display = "Haemorrhage of pancreas"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Blutung des Ductus pancreaticus ersetzt"

* group[=].element[+].code = #10033645
* group[=].element[=].display = "Pancreatitis"
* group[=].element[=].target[+].code = #75694006
* group[=].element[=].target[=].display = "Pancreatitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033703
* group[=].element[=].display = "Papilledema"
* group[=].element[=].target[+].code = #423488006
* group[=].element[=].target[=].display = "Papilloedema - optic disc oedema due to raised intracranial pressure"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10033987
* group[=].element[=].display = "Paresthesia"
* group[=].element[=].target[+].code = #91019004
* group[=].element[=].target[=].display = "Paresthesia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034016
* group[=].element[=].display = "Paronychia"
* group[=].element[=].target[+].code = #71906005
* group[=].element[=].target[=].display = "Paronychia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034040
* group[=].element[=].display = "Paroxysmal atrial tachycardia"
* group[=].element[=].target[+].code = #195069001
* group[=].element[=].target[=].display = "Atrial paroxysmal tachycardia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034263
* group[=].element[=].display = "Pelvic pain"
* group[=].element[=].target[+].code = #30473006
* group[=].element[=].target[=].display = "Pain in pelvis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034310
* group[=].element[=].display = "Penile pain"
* group[=].element[=].target[+].code = #285375003
* group[=].element[=].target[=].display = "Pain in penis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034405
* group[=].element[=].display = "Perforation bile duct"
* group[=].element[=].target[+].code = #37439003
* group[=].element[=].target[=].display = "Perforation of bile duct"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034474
* group[=].element[=].display = "Pericardial effusion"
* group[=].element[=].target[+].code = #373945007
* group[=].element[=].target[=].display = "Pericardial effusion"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034484
* group[=].element[=].display = "Pericarditis"
* group[=].element[=].target[+].code = #3238004
* group[=].element[=].target[=].display = "Pericarditis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034536
* group[=].element[=].display = "Periodontal disease"
* group[=].element[=].target[+].code = #2556008
* group[=].element[=].target[=].display = "Periodontal disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034578
* group[=].element[=].display = "Peripheral ischemia"
* group[=].element[=].target[+].code = #233958001
* group[=].element[=].target[=].display = "Peripheral ischemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034580
* group[=].element[=].display = "Peripheral motor neuropathy"
* group[=].element[=].target[+].code = #95663000
* group[=].element[=].target[=].display = "Peripheral motor neuropathy"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034620
* group[=].element[=].display = "Peripheral sensory neuropathy"
* group[=].element[=].target[+].code = #789588003
* group[=].element[=].target[=].display = "Peripheral sensory neuropathy"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034719
* group[=].element[=].display = "Personality change"
* group[=].element[=].target[+].code = #102943000
* group[=].element[=].target[=].display = "Personality change"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034825
* group[=].element[=].display = "Pharyngeal fistula"
* group[=].element[=].target[+].code = #232413009
* group[=].element[=].target[=].display = "Pharyngocutaneous fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034835
* group[=].element[=].display = "Pharyngitis"
* group[=].element[=].target[+].code = #405737000
* group[=].element[=].target[=].display = "Pharyngitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034844
* group[=].element[=].display = "Pharyngolaryngeal pain"
* group[=].element[=].target[+].code = #162397003
* group[=].element[=].target[=].display = "Pain in throat"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Pharyngolaryngealer Schmerz = Halsschmerz."

* group[=].element[+].code = #10034879
* group[=].element[=].display = "Phlebitis"
* group[=].element[=].target[+].code = #61599003
* group[=].element[=].target[=].display = "Phlebitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034960
* group[=].element[=].display = "Photophobia"
* group[=].element[=].target[+].code = #409668002
* group[=].element[=].target[=].display = "Photophobia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10034966
* group[=].element[=].display = "Photosensitivity"
* group[=].element[=].target[+].code = #90128006
* group[=].element[=].target[=].display = "Photosensitivity"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10035528
* group[=].element[=].display = "Platelet count decreased"
* group[=].element[=].target[+].code = #415116008
* group[=].element[=].target[=].display = "Platelet count below reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'decreased' -> 'below reference range'."

* group[=].element[+].code = #10035598
* group[=].element[=].display = "Pleural effusion"
* group[=].element[=].target[+].code = #60046008
* group[=].element[=].target[=].display = "Pleural effusion"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10035623
* group[=].element[=].display = "Pleuritic pain"
* group[=].element[=].target[+].code = #2237002
* group[=].element[=].target[=].display = "Pleuritic pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10035742
* group[=].element[=].display = "Pneumonitis"
* group[=].element[=].target[+].code = #205237003
* group[=].element[=].target[=].display = "Pneumonitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10035759
* group[=].element[=].display = "Pneumothorax"
* group[=].element[=].target[+].code = #36118008
* group[=].element[=].target[=].display = "Pneumothorax"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036200
* group[=].element[=].display = "Portal hypertension"
* group[=].element[=].target[+].code = #34742003
* group[=].element[=].target[=].display = "Portal hypertension"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036206
* group[=].element[=].display = "Portal vein thrombosis"
* group[=].element[=].target[+].code = #17920008
* group[=].element[=].target[=].display = "Portal vein thrombosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036402
* group[=].element[=].display = "Postnasal drip"
* group[=].element[=].target[+].code = #75803007
* group[=].element[=].target[=].display = "Posterior rhinorrhea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036585
* group[=].element[=].display = "Pregnancy, puerperium and perinatal conditions - Other, specify"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SOC-Restkategorie ohne kohaerente SNOMED-Oberklasse: Schwangerschaft, Wochenbett und Perinatalperiode sind in SNOMED getrennte Hierarchien."

* group[=].element[+].code = #10036595
* group[=].element[=].display = "Premature delivery"
* group[=].element[=].target[+].code = #282020008
* group[=].element[=].target[=].display = "Premature delivery"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036601
* group[=].element[=].display = "Premature menopause"
* group[=].element[=].target[+].code = #373717006
* group[=].element[=].target[=].display = "Premature menopause"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036653
* group[=].element[=].display = "Presyncope"
* group[=].element[=].target[+].code = #427461000
* group[=].element[=].target[=].display = "Near syncope"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036774
* group[=].element[=].display = "Proctitis"
* group[=].element[=].target[+].code = #3951002
* group[=].element[=].target[=].display = "Proctitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036790
* group[=].element[=].display = "Productive cough"
* group[=].element[=].target[+].code = #28743005
* group[=].element[=].target[=].display = "Productive cough"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10036968
* group[=].element[=].display = "Prostatic pain"
* group[=].element[=].target[+].code = #36729000
* group[=].element[=].target[=].display = "Pain of prostate"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10037032
* group[=].element[=].display = "Proteinuria"
* group[=].element[=].target[+].code = #29738008
* group[=].element[=].target[=].display = "Proteinuria"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10037087
* group[=].element[=].display = "Pruritus"
* group[=].element[=].target[+].code = #418363000
* group[=].element[=].target[=].display = "Itching of skin"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10037175
* group[=].element[=].display = "Psychiatric disorders - Other, specify"
* group[=].element[=].target[+].code = #74732009
* group[=].element[=].target[=].display = "Mental disorder"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10037234
* group[=].element[=].display = "Psychosis"
* group[=].element[=].target[+].code = #69322001
* group[=].element[=].target[=].display = "Psychotic disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10037375
* group[=].element[=].display = "Pulmonary edema"
* group[=].element[=].target[+].code = #19242006
* group[=].element[=].target[=].display = "Pulmonary oedema"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10037383
* group[=].element[=].display = "Pulmonary fibrosis"
* group[=].element[=].target[+].code = #51615001
* group[=].element[=].target[=].display = "Fibrosis of lung"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10037400
* group[=].element[=].display = "Pulmonary hypertension"
* group[=].element[=].target[+].code = #70995007
* group[=].element[=].target[=].display = "Pulmonary hypertension"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10037549
* group[=].element[=].display = "Purpura"
* group[=].element[=].target[+].code = #387778001
* group[=].element[=].target[=].display = "Purpuric disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10037767
* group[=].element[=].display = "Radiation recall reaction (dermatologic)"
* group[=].element[=].target[+].code = #403644004
* group[=].element[=].target[=].display = "Radiation recall reaction due to cytotoxic therapy"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung des Radiation-Recall-Phaenomens."

* group[=].element[+].code = #10037847
* group[=].element[=].display = "Rash acneiform"
* group[=].element[=].target[+].code = #402644006
* group[=].element[=].target[=].display = "Acneiform eruption"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10037868
* group[=].element[=].display = "Rash maculo-papular"
* group[=].element[=].target[+].code = #247471006
* group[=].element[=].target[=].display = "Maculopapular eruption"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10037888
* group[=].element[=].display = "Rash pustular"
* group[=].element[=].target[+].code = #1251376007
* group[=].element[=].target[=].display = "Acute pustular skin eruption"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED-Konzept ist auf die akute Auspraegung eingeschraenkt"

* group[=].element[+].code = #10038062
* group[=].element[=].display = "Rectal fistula"
* group[=].element[=].target[+].code = #80736008
* group[=].element[=].target[=].display = "Rectal fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038064
* group[=].element[=].display = "Rectal hemorrhage"
* group[=].element[=].target[+].code = #12063002
* group[=].element[=].target[=].display = "Rectal haemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038072
* group[=].element[=].display = "Rectal pain"
* group[=].element[=].target[+].code = #77880009
* group[=].element[=].target[=].display = "Rectal pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038073
* group[=].element[=].display = "Rectal perforation"
* group[=].element[=].target[+].code = #10825001
* group[=].element[=].target[=].display = "Perforation of rectum"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038079
* group[=].element[=].display = "Rectal stenosis"
* group[=].element[=].target[+].code = #25730006
* group[=].element[=].target[=].display = "Stricture of rectum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: kongenitale Variante ersetzt"

* group[=].element[+].code = #10038080
* group[=].element[=].display = "Rectal ulcer"
* group[=].element[=].target[+].code = #54609002
* group[=].element[=].target[=].display = "Ulcer of rectum"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038130
* group[=].element[=].display = "Recurrent laryngeal nerve palsy"
* group[=].element[=].target[+].code = #42998008
* group[=].element[=].target[=].display = "Vagus nerve laryngeal paralysis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038359
* group[=].element[=].display = "Renal and urinary disorders - Other, specify"
* group[=].element[=].target[+].code = #128606002
* group[=].element[=].target[=].display = "Disorder of urinary system"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; der renale Anteil ist als Teil des Harnsystems mitumfasst."

* group[=].element[+].code = #10038385
* group[=].element[=].display = "Renal calculi"
* group[=].element[=].target[+].code = #95570007
* group[=].element[=].target[=].display = "Kidney stone"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Renale Konkremente = Nierensteine."

* group[=].element[+].code = #10038419
* group[=].element[=].display = "Renal colic"
* group[=].element[=].target[+].code = #7093002
* group[=].element[=].target[=].display = "Renal colic"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038463
* group[=].element[=].display = "Renal hemorrhage"
* group[=].element[=].target[+].code = #95571006
* group[=].element[=].target[=].display = "Hemorrhage of kidney"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038604
* group[=].element[=].display = "Reproductive system and breast disorders - Other, specify"
* group[=].element[=].target[+].code = #362968007
* group[=].element[=].target[=].display = "Disorder of reproductive system"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; Brusterkrankungen sind nicht mitabgedeckt."

* group[=].element[+].code = #10038695
* group[=].element[=].display = "Respiratory failure"
* group[=].element[=].target[+].code = #409622000
* group[=].element[=].target[=].display = "Respiratory failure"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038738
* group[=].element[=].display = "Respiratory, thoracic and mediastinal disorders - Other, specify"
* group[=].element[=].target[+].code = #50043002
* group[=].element[=].target[=].display = "Disorder of respiratory system"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; der mediastinale Anteil ist nicht mitabgedeckt."

* group[=].element[+].code = #10038743
* group[=].element[=].display = "Restlessness"
* group[=].element[=].target[+].code = #162221009
* group[=].element[=].target[=].display = "Restlessness"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038748
* group[=].element[=].display = "Restrictive cardiomyopathy"
* group[=].element[=].target[+].code = #415295002
* group[=].element[=].target[=].display = "Restrictive cardiomyopathy"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038848
* group[=].element[=].display = "Retinal detachment"
* group[=].element[=].target[+].code = #42059000
* group[=].element[=].target[=].display = "Retinal detachment"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038897
* group[=].element[=].display = "Retinal tear"
* group[=].element[=].target[+].code = #95690009
* group[=].element[=].target[=].display = "Retinal tear"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038901
* group[=].element[=].display = "Retinal vascular disorder"
* group[=].element[=].target[+].code = #57534004
* group[=].element[=].target[=].display = "Retinal vascular disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038921
* group[=].element[=].display = "Retinoic acid syndrome"
* group[=].element[=].target[+].code = #773537001
* group[=].element[=].target[=].display = "Differentiation syndrome due to and following chemotherapy co-occurrent with acute promyelocytic leukemia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038923
* group[=].element[=].display = "Retinopathy"
* group[=].element[=].target[+].code = #29555009
* group[=].element[=].target[=].display = "Retinal disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10038981
* group[=].element[=].display = "Retroperitoneal hemorrhage"
* group[=].element[=].target[+].code = #95549001
* group[=].element[=].target[=].display = "Retroperitoneal hemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10039411
* group[=].element[=].display = "Salivary gland fistula"
* group[=].element[=].target[+].code = #75260002
* group[=].element[=].target[=].display = "Fistula of salivary gland"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10039413
* group[=].element[=].display = "Salivary gland infection"
* group[=].element[=].target[+].code = #42982001
* group[=].element[=].target[=].display = "Sialoadenitis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Sialadenitis umfasst auch nicht-infektioese Speicheldruesenentzuendungen; ein Infektionskonzept fehlt."

* group[=].element[+].code = #10039722
* group[=].element[=].display = "Scoliosis"
* group[=].element[=].target[+].code = #298382003
* group[=].element[=].target[=].display = "Scoliosis deformity of spine"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10039757
* group[=].element[=].display = "Scrotal pain"
* group[=].element[=].target[+].code = #20502007
* group[=].element[=].target[=].display = "Pain in scrotum"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10039906
* group[=].element[=].display = "Seizure"
* group[=].element[=].target[+].code = #91175000
* group[=].element[=].target[=].display = "Seizure"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040047
* group[=].element[=].display = "Sepsis"
* group[=].element[=].target[+].code = #91302008
* group[=].element[=].target[=].display = "Sepsis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040102
* group[=].element[=].display = "Seroma"
* group[=].element[=].target[+].code = #715068009
* group[=].element[=].target[=].display = "Seroma"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040139
* group[=].element[=].display = "Serum amylase increased"
* group[=].element[=].target[+].code = #275739007
* group[=].element[=].target[=].display = "Serum amylase above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10040400
* group[=].element[=].display = "Serum sickness"
* group[=].element[=].target[+].code = #403608009
* group[=].element[=].target[=].display = "Serum sickness caused by drug"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Kein generisches 'Serum sickness' in SNOMED; im CTCAE-Kontext ist die Reaktion arzneimittelbedingt"

* group[=].element[+].code = #10040639
* group[=].element[=].display = "Sick sinus syndrome"
* group[=].element[=].target[+].code = #36083008
* group[=].element[=].target[=].display = "Sick sinus syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040741
* group[=].element[=].display = "Sinus bradycardia"
* group[=].element[=].target[+].code = #49710005
* group[=].element[=].target[=].display = "Sinus bradycardia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040747
* group[=].element[=].display = "Sinus pain"
* group[=].element[=].target[+].code = #4969004
* group[=].element[=].target[=].display = "Sinus headache"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "SNOMED-FSN lautet 'Sinus headache', Oberbegriff von Stirn- und Kieferhoehlenschmerz"

* group[=].element[+].code = #10040752
* group[=].element[=].display = "Sinus tachycardia"
* group[=].element[=].target[+].code = #11092001
* group[=].element[=].target[=].display = "Sinus tachycardia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040753
* group[=].element[=].display = "Sinusitis"
* group[=].element[=].target[+].code = #36971009
* group[=].element[=].target[=].display = "Sinusitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040785
* group[=].element[=].display = "Skin and subcutaneous tissue disorders - Other, specify"
* group[=].element[=].target[+].code = #95320005
* group[=].element[=].target[=].display = "Disorder of skin"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie; der subkutane Anteil ist nicht explizit mitabgedeckt."

* group[=].element[+].code = #10040799
* group[=].element[=].display = "Skin atrophy"
* group[=].element[=].target[+].code = #400190005
* group[=].element[=].target[=].display = "Atrophic condition of skin"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040865
* group[=].element[=].display = "Skin hyperpigmentation"
* group[=].element[=].target[+].code = #49765009
* group[=].element[=].target[=].display = "Hyperpigmentation of skin"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040868
* group[=].element[=].display = "Skin hypopigmentation"
* group[=].element[=].target[+].code = #23006000
* group[=].element[=].target[=].display = "Skin hypopigmented"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040872
* group[=].element[=].display = "Skin infection"
* group[=].element[=].target[+].code = #19824006
* group[=].element[=].target[=].display = "Infection of skin and/or subcutaneous tissue"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10040947
* group[=].element[=].display = "Skin ulceration"
* group[=].element[=].target[+].code = #46742003
* group[=].element[=].target[=].display = "Skin ulcer"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Amebic ulcer of skin' war fachlich falsch"

* group[=].element[+].code = #10040975
* group[=].element[=].display = "Sleep apnea"
* group[=].element[=].target[+].code = #73430006
* group[=].element[=].target[=].display = "Sleep apnea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10041101
* group[=].element[=].display = "Small intestinal obstruction"
* group[=].element[=].target[+].code = #281255004
* group[=].element[=].target[=].display = "Small bowel obstruction"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat enthielt Aetiologie (Adhaesionen)"

* group[=].element[+].code = #10041103
* group[=].element[=].display = "Small intestinal perforation"
* group[=].element[=].target[+].code = #235741002
* group[=].element[=].target[=].display = "Perforation of small intestine"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10041133
* group[=].element[=].display = "Small intestine ulcer"
* group[=].element[=].target[+].code = #235710003
* group[=].element[=].target[=].display = "Ulcer of small intestine"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10041232
* group[=].element[=].display = "Sneezing"
* group[=].element[=].target[+].code = #76067001
* group[=].element[=].target[=].display = "Sneezing"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10041244
* group[=].element[=].display = "Social circumstances - Other, specify"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "'Social circumstances' sind in SNOMED keine Clinical Findings, sondern Social-Context-Konzepte; eine Restkategorie dazu existiert nicht."

* group[=].element[+].code = #10041349
* group[=].element[=].display = "Somnolence"
* group[=].element[=].target[+].code = #271782001
* group[=].element[=].target[=].display = "Drowsy"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10041367
* group[=].element[=].display = "Sore throat"
* group[=].element[=].target[+].code = #267102003
* group[=].element[=].target[=].display = "Sore throat"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10041416
* group[=].element[=].display = "Spasticity"
* group[=].element[=].target[+].code = #221360009
* group[=].element[=].target[=].display = "Spasticity"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10041569
* group[=].element[=].display = "Spinal fracture"
* group[=].element[=].target[+].code = #50448004
* group[=].element[=].target[=].display = "Fracture of vertebral column"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10041633
* group[=].element[=].display = "Spleen disorder"
* group[=].element[=].target[+].code = #51244008
* group[=].element[=].target[=].display = "Disorder of spleen"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042033
* group[=].element[=].display = "Stevens-Johnson syndrome"
* group[=].element[=].target[+].code = #73442001
* group[=].element[=].target[=].display = "Stevens-Johnson syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042112
* group[=].element[=].display = "Stomach pain"
* group[=].element[=].target[+].code = #271681002
* group[=].element[=].target[=].display = "Stomach ache"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042127
* group[=].element[=].display = "Stomal ulcer"
* group[=].element[=].target[+].code = #16121001
* group[=].element[=].target[=].display = "Gastrojejunal ulcer"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042241
* group[=].element[=].display = "Stridor"
* group[=].element[=].target[+].code = #70407001
* group[=].element[=].target[=].display = "Stridor"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042244
* group[=].element[=].display = "Stroke"
* group[=].element[=].target[+].code = #230690007
* group[=].element[=].target[=].display = "Cerebrovascular accident"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042435
* group[=].element[=].display = "Sudden death NOS"
* group[=].element[=].target[+].code = #26636000
* group[=].element[=].target[=].display = "Sudden death"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042458
* group[=].element[=].display = "Suicidal ideation"
* group[=].element[=].target[+].code = #6471006
* group[=].element[=].target[=].display = "Suicidal thoughts"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042464
* group[=].element[=].display = "Suicide attempt"
* group[=].element[=].target[+].code = #82313006
* group[=].element[=].target[=].display = "Suicide attempt"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Injury due to suicide attempt' setzt eine Verletzung voraus"

* group[=].element[+].code = #10042554
* group[=].element[=].display = "Superficial thrombophlebitis"
* group[=].element[=].target[+].code = #2477008
* group[=].element[=].target[=].display = "Superficial thrombophlebitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042569
* group[=].element[=].display = "Superior vena cava syndrome"
* group[=].element[=].target[+].code = #63363004
* group[=].element[=].target[=].display = "Superior vena cava syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042604
* group[=].element[=].display = "Supraventricular tachycardia"
* group[=].element[=].target[+].code = #6456007
* group[=].element[=].target[=].display = "Supraventricular tachycardia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10042613
* group[=].element[=].display = "Surgical and medical procedures - Other, specify"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "'Surgical and medical procedures' verweist auf die Procedure-Hierarchie; als Adverse-Event-Restkategorie gibt es kein SNOMED-Gegenstueck."

* group[=].element[+].code = #10042772
* group[=].element[=].display = "Syncope"
* group[=].element[=].target[+].code = #271594007
* group[=].element[=].target[=].display = "Syncope"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10043189
* group[=].element[=].display = "Telangiectasia"
* group[=].element[=].target[+].code = #247479008
* group[=].element[=].target[=].display = "Telangiectasia disorder"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Solar telangiectasia' war zu eng"

* group[=].element[+].code = #10043306
* group[=].element[=].display = "Testicular disorder"
* group[=].element[=].target[+].code = #64910008
* group[=].element[=].target[=].display = "Disorder of testis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10043345
* group[=].element[=].display = "Testicular pain"
* group[=].element[=].target[+].code = #63901009
* group[=].element[=].target[=].display = "Pain in testicle"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10043565
* group[=].element[=].display = "Thromboembolic event"
* group[=].element[=].target[+].code = #371039008
* group[=].element[=].target[=].display = "Thromboembolic disorder"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Thromboembolisches Ereignis; deckungsgleich."

* group[=].element[+].code = #10043648
* group[=].element[=].display = "Thrombotic thrombocytopenic purpura"
* group[=].element[=].target[+].code = #78129009
* group[=].element[=].target[=].display = "Thrombotic thrombocytopenic purpura"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10043882
* group[=].element[=].display = "Tinnitus"
* group[=].element[=].target[+].code = #60862001
* group[=].element[=].target[=].display = "Tinnitus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10044030
* group[=].element[=].display = "Tooth development disorder"
* group[=].element[=].target[+].code = #371136004
* group[=].element[=].target[=].display = "Disorder of tooth development"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10044031
* group[=].element[=].display = "Tooth discoloration"
* group[=].element[=].target[+].code = #278679009
* group[=].element[=].target[=].display = "Tooth discolored"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Staining of tooth' ist Unterbegriff von 'Tooth discolored'"

* group[=].element[+].code = #10044055
* group[=].element[=].display = "Toothache"
* group[=].element[=].target[+].code = #27355003
* group[=].element[=].target[=].display = "Toothache"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10044223
* group[=].element[=].display = "Toxic epidermal necrolysis"
* group[=].element[=].target[+].code = #768962006
* group[=].element[=].target[=].display = "Lyell syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10044291
* group[=].element[=].display = "Tracheal obstruction"
* group[=].element[=].target[+].code = #73342002
* group[=].element[=].target[=].display = "Obstruction of trachea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10044302
* group[=].element[=].display = "Tracheitis"
* group[=].element[=].target[+].code = #62994001
* group[=].element[=].target[=].display = "Tracheitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10044391
* group[=].element[=].display = "Transient ischemic attacks"
* group[=].element[=].target[+].code = #266257000
* group[=].element[=].target[=].display = "Transient cerebral ischemia"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "TIA; deckungsgleich."

* group[=].element[+].code = #10044565
* group[=].element[=].display = "Tremor"
* group[=].element[=].target[+].code = #26079004
* group[=].element[=].target[=].display = "Tremor"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10044684
* group[=].element[=].display = "Trismus"
* group[=].element[=].target[+].code = #87866006
* group[=].element[=].target[=].display = "Trismus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10045152
* group[=].element[=].display = "Tumor lysis syndrome"
* group[=].element[=].target[+].code = #277605001
* group[=].element[=].target[=].display = "Tumor lysis syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10045158
* group[=].element[=].display = "Tumor pain"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keinen generischen Tumorschmerz. 735935009 'Chronic pain due to malignant neoplastic disease' fuehrt mit 'chronisch' ein Merkmal ein, das der CTCAE-Term nicht enthaelt."

* group[=].element[+].code = #10045271
* group[=].element[=].display = "Typhlitis"
* group[=].element[=].target[+].code = #61564002
* group[=].element[=].target[=].display = "Typhlitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10045542
* group[=].element[=].display = "Unintended pregnancy"
* group[=].element[=].target[+].code = #83074005
* group[=].element[=].target[=].display = "Unplanned pregnancy"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046300
* group[=].element[=].display = "Upper respiratory infection"
* group[=].element[=].target[+].code = #54150009
* group[=].element[=].target[=].display = "Upper respiratory infection"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046539
* group[=].element[=].display = "Urinary frequency"
* group[=].element[=].target[+].code = #162116003
* group[=].element[=].target[=].display = "Increased frequency of urination"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046543
* group[=].element[=].display = "Urinary incontinence"
* group[=].element[=].target[+].code = #165232002
* group[=].element[=].target[=].display = "Urinary incontinence"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046555
* group[=].element[=].display = "Urinary retention"
* group[=].element[=].target[+].code = #267064002
* group[=].element[=].target[=].display = "Retention of urine"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046571
* group[=].element[=].display = "Urinary tract infection"
* group[=].element[=].target[+].code = #68566005
* group[=].element[=].target[=].display = "Urinary tract infectious disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046593
* group[=].element[=].display = "Urinary urgency"
* group[=].element[=].target[+].code = #75088002
* group[=].element[=].target[=].display = "Urgent desire to urinate"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046628
* group[=].element[=].display = "Urine discoloration"
* group[=].element[=].target[+].code = #167239007
* group[=].element[=].target[=].display = "Urine color abnormal"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Verfaerbung des Urins; deckungsgleich."

* group[=].element[+].code = #10046735
* group[=].element[=].display = "Urticaria"
* group[=].element[=].target[+].code = #126485001
* group[=].element[=].target[=].display = "Urticaria"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046789
* group[=].element[=].display = "Uterine hemorrhage"
* group[=].element[=].target[+].code = #44991000119100
* group[=].element[=].target[=].display = "Abnormal uterine bleeding"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Syn. 'Abnormal uterine haemorrhage'; Kandidat 'Hematometra' war fachlich falsch"

* group[=].element[+].code = #10046809
* group[=].element[=].display = "Uterine pain"
* group[=].element[=].target[+].code = #289669005
* group[=].element[=].target[=].display = "Pain of uterus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Painful uterine contractions' war geburtsbezogen"

* group[=].element[+].code = #10046810
* group[=].element[=].display = "Uterine perforation"
* group[=].element[=].target[+].code = #7395000
* group[=].element[=].target[=].display = "Perforation of uterus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046851
* group[=].element[=].display = "Uveitis"
* group[=].element[=].target[+].code = #128473001
* group[=].element[=].target[=].display = "Uveitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046901
* group[=].element[=].display = "Vaginal discharge"
* group[=].element[=].target[+].code = #271939006
* group[=].element[=].target[=].display = "Vaginal discharge"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046904
* group[=].element[=].display = "Vaginal dryness"
* group[=].element[=].target[+].code = #31908003
* group[=].element[=].target[=].display = "Vaginal dryness"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046912
* group[=].element[=].display = "Vaginal hemorrhage"
* group[=].element[=].target[+].code = #289530006
* group[=].element[=].target[=].display = "Vaginal bleeding"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: neonatale Variante ersetzt"

* group[=].element[+].code = #10046914
* group[=].element[=].display = "Vaginal infection"
* group[=].element[=].target[+].code = #237091009
* group[=].element[=].target[=].display = "Infective vaginitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046916
* group[=].element[=].display = "Vaginal inflammation"
* group[=].element[=].target[+].code = #30800001
* group[=].element[=].target[=].display = "Vaginitis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Inflammation of vaginal wall' war zu eng"

* group[=].element[+].code = #10046937
* group[=].element[=].display = "Vaginal pain"
* group[=].element[=].target[+].code = #38343000
* group[=].element[=].target[=].display = "Vaginal pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10046947
* group[=].element[=].display = "Vaginismus"
* group[=].element[=].target[+].code = #79012001
* group[=].element[=].target[=].display = "Vaginospasm"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047065
* group[=].element[=].display = "Vascular disorders - Other, specify"
* group[=].element[=].target[+].code = #27550009
* group[=].element[=].target[=].display = "Vascular disorder"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SOC-Restkategorie."

* group[=].element[+].code = #10047115
* group[=].element[=].display = "Vasculitis"
* group[=].element[=].target[+].code = #31996006
* group[=].element[=].target[=].display = "Vasculitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047166
* group[=].element[=].display = "Vasovagal reaction"
* group[=].element[=].target[+].code = #398665005
* group[=].element[=].target[=].display = "Vasovagal syncope"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED hat keine vasovagale Reaktion ohne Synkope; CTCAE schliesst Praesynkopen ein. 248229009 'Vasovagal symptom' waere ein Symptom-, kein Ereigniskonzept."

* group[=].element[+].code = #10047228
* group[=].element[=].display = "Venous injury"
* group[=].element[=].target[+].code = #64583005
* group[=].element[=].target[=].display = "Injury of vein"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047281
* group[=].element[=].display = "Ventricular arrhythmia"
* group[=].element[=].target[+].code = #44103008
* group[=].element[=].target[=].display = "Ventricular arrhythmia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047290
* group[=].element[=].display = "Ventricular fibrillation"
* group[=].element[=].target[+].code = #71908006
* group[=].element[=].target[=].display = "Ventricular fibrillation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047302
* group[=].element[=].display = "Ventricular tachycardia"
* group[=].element[=].target[+].code = #25569003
* group[=].element[=].target[=].display = "Ventricular tachycardia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047340
* group[=].element[=].display = "Vertigo"
* group[=].element[=].target[+].code = #399153001
* group[=].element[=].target[=].display = "Vertigo"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047386
* group[=].element[=].display = "Vestibular disorder"
* group[=].element[=].target[+].code = #20425006
* group[=].element[=].target[=].display = "Labyrinthine disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047488
* group[=].element[=].display = "Virilization"
* group[=].element[=].target[+].code = #15160007
* group[=].element[=].target[=].display = "Virilization"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047580
* group[=].element[=].display = "Vital capacity abnormal"
* group[=].element[=].target[+].code = #165040003
* group[=].element[=].target[=].display = "FVC - forced vital capacity abnormal"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED bezieht sich auf die forcierte Vitalkapazitaet, CTCAE allgemein auf die Vitalkapazitaet"

* group[=].element[+].code = #10047656
* group[=].element[=].display = "Vitreous hemorrhage"
* group[=].element[=].target[+].code = #31341008
* group[=].element[=].target[=].display = "Vitreous haemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047681
* group[=].element[=].display = "Voice alteration"
* group[=].element[=].target[+].code = #16617009
* group[=].element[=].target[=].display = "Dysphonia"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Dysphonie = Stimmstoerung/Stimmveraenderung."

* group[=].element[+].code = #10047700
* group[=].element[=].display = "Vomiting"
* group[=].element[=].target[+].code = #422400008
* group[=].element[=].target[=].display = "Vomiting"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047848
* group[=].element[=].display = "Watering eyes"
* group[=].element[=].target[+].code = #193982009
* group[=].element[=].target[=].display = "Epiphora"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Epiphora = uebermaessiger Traenenfluss, deckungsgleich mit CTCAE 'Watering eyes'."

* group[=].element[+].code = #10047896
* group[=].element[=].display = "Weight gain"
* group[=].element[=].target[+].code = #262286000
* group[=].element[=].target[=].display = "Weight increased"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047900
* group[=].element[=].display = "Weight loss"
* group[=].element[=].target[+].code = #262285001
* group[=].element[=].target[=].display = "Weight decreased"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10047924
* group[=].element[=].display = "Wheezing"
* group[=].element[=].target[+].code = #56018004
* group[=].element[=].target[=].display = "Wheezing"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048015
* group[=].element[=].display = "Wolff-Parkinson-White syndrome"
* group[=].element[=].target[+].code = #74390002
* group[=].element[=].target[=].display = "Wolff-Parkinson-White pattern"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048031
* group[=].element[=].display = "Wound dehiscence"
* group[=].element[=].target[+].code = #225553008
* group[=].element[=].target[=].display = "Wound dehiscence"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048038
* group[=].element[=].display = "Wound infection"
* group[=].element[=].target[+].code = #76844004
* group[=].element[=].target[=].display = "Local infection of wound"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048049
* group[=].element[=].display = "Wrist fracture"
* group[=].element[=].target[+].code = #1303397005
* group[=].element[=].target[=].display = "Fracture of bone of wrist region"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Fracture of carpal bone' deckt die Handgelenkregion nicht vollstaendig ab"

* group[=].element[+].code = #10048293
* group[=].element[=].display = "Leukemia secondary to oncology chemotherapy"
* group[=].element[=].target[+].code = #762315004
* group[=].element[=].target[=].display = "Therapy related acute myeloid leukemia due to and following administration of antineoplastic agent"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED kennt nur die therapieassoziierte AML; CTCAE umfasst jede chemotherapieinduzierte Leukaemie."

* group[=].element[+].code = #10048492
* group[=].element[=].display = "Corneal ulcer"
* group[=].element[=].target[+].code = #91514001
* group[=].element[=].target[=].display = "Corneal ulcer"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048580
* group[=].element[=].display = "Bone marrow hypocellular"
* group[=].element[=].target[+].code = #416995001
* group[=].element[=].target[=].display = "Hypocellular bone marrow"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048642
* group[=].element[=].display = "Lymphocele"
* group[=].element[=].target[+].code = #234109007
* group[=].element[=].target[=].display = "Lymphocele"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048677
* group[=].element[=].display = "Buttock pain"
* group[=].element[=].target[+].code = #279043006
* group[=].element[=].target[=].display = "Pain in buttock"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048706
* group[=].element[=].display = "Joint range of motion decreased"
* group[=].element[=].target[+].code = #70733008
* group[=].element[=].target[=].display = "Limitation of joint movement"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Bewegungseinschraenkung des Gelenks; deckungsgleich."

* group[=].element[+].code = #10048762
* group[=].element[=].display = "Tooth infection"
* group[=].element[=].target[+].code = #427898007
* group[=].element[=].target[=].display = "Infection of tooth"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10048994
* group[=].element[=].display = "Bladder spasm"
* group[=].element[=].target[+].code = #249297006
* group[=].element[=].target[=].display = "Spasm of urinary bladder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10049120
* group[=].element[=].display = "Scalp pain"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein Kopfhautschmerz in SNOMED; die vorhandenen Skalp-Konzepte betreffen Juckreiz, Schuppung, Verletzung und Laesionen."

* group[=].element[+].code = #10049182
* group[=].element[=].display = "White blood cell decreased"
* group[=].element[=].target[+].code = #419188005
* group[=].element[=].target[=].display = "Blood leukocyte number below reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laborwert-Muster 'decreased' -> 'below reference range'."

* group[=].element[+].code = #10049192
* group[=].element[=].display = "Pancreatic fistula"
* group[=].element[=].target[+].code = #25803005
* group[=].element[=].target[=].display = "Pancreatic fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10049281
* group[=].element[=].display = "Nail loss"
* group[=].element[=].target[+].code = #247492006
* group[=].element[=].target[=].display = "Nail shedding"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Onychomadesis' meint vollstaendigen Nagelverlust, CTCAE auch teilweisen"

* group[=].element[+].code = #10049468
* group[=].element[=].display = "Intestinal stoma site bleeding"
* group[=].element[=].target[+].code = #805616441000119104
* group[=].element[=].target[=].display = "Hemorrhage of ileostomy stoma"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED hat nur stomatypspezifische Blutungskonzepte; die Ileostomie ist das haeufigste Darmstoma."

* group[=].element[+].code = #10049737
* group[=].element[=].display = "Treatment related secondary malignancy"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat kein generisches Konzept 'therapieassoziierte Zweitmalignom'; nur einzelne Auspraegungen (z.B. 762315004 t-AML, 403711001 PUVA-assoziierte Hautmalignitaet)."

* group[=].element[+].code = #10050028
* group[=].element[=].display = "Pharyngeal stenosis"
* group[=].element[=].target[+].code = #232408005
* group[=].element[=].target[=].display = "Pharyngeal stenosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10050068
* group[=].element[=].display = "Edema limbs"
* group[=].element[=].target[+].code = #424372002
* group[=].element[=].target[=].display = "Edema of extremity"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: seitenbezogenes Konzept durch generisches ersetzt"

* group[=].element[+].code = #10050094
* group[=].element[=].display = "Duodenal stenosis"
* group[=].element[=].target[+].code = #73120006
* group[=].element[=].target[=].display = "Stenosis of duodenum"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10050457
* group[=].element[=].display = "Pancreatic anastomotic leak"
* group[=].element[=].target[+].code = #235980000
* group[=].element[=].target[=].display = "Pancreatic anastomotic leak"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10050458
* group[=].element[=].display = "Biliary anastomotic leak"
* group[=].element[=].target[+].code = #235940009
* group[=].element[=].target[=].display = "Biliary anastomotic leak"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10050528
* group[=].element[=].display = "Ejection fraction decreased"
* group[=].element[=].target[+].code = #863932003
* group[=].element[=].target[=].display = "Left ventricular ejection fraction decreased"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED nur linksventrikulaer; CTCAE-Term ist ventrikelunspezifisch"

* group[=].element[+].code = #10050662
* group[=].element[=].display = "Prostate infection"
* group[=].element[=].target[+].code = #9713002
* group[=].element[=].target[=].display = "Prostatitis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Im Pin 20250701 kein spezifisches Konzept Infection of prostate; Prostatitis ist das nächstliegende Konzept, umfasst aber auch nicht-infektiöse Formen."

* group[=].element[+].code = #10050816
* group[=].element[=].display = "Tracheal stenosis"
* group[=].element[=].target[+].code = #11296007
* group[=].element[=].target[=].display = "Stenosis of trachea"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10050823
* group[=].element[=].display = "Lymph gland infection"
* group[=].element[=].target[+].code = #19471005
* group[=].element[=].target[=].display = "Lymphadenitis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Lymphadenitis umfasst auch nicht-infektioese Lymphknotenentzuendungen; ein spezifisches Infektionskonzept fehlt in SNOMED."

* group[=].element[+].code = #10051228
* group[=].element[=].display = "Chylothorax"
* group[=].element[=].target[+].code = #83035003
* group[=].element[=].target[=].display = "Chylothorax"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10051272
* group[=].element[=].display = "Facial muscle weakness"
* group[=].element[=].target[+].code = #95666008
* group[=].element[=].target[=].display = "Weakness of face muscles"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: seitenbezogenes Konzept ersetzt"

* group[=].element[+].code = #10051341
* group[=].element[=].display = "Bile duct stenosis"
* group[=].element[=].target[+].code = #43030007
* group[=].element[=].target[=].display = "Stenosis of bile duct"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10051472
* group[=].element[=].display = "Periorbital infection"
* group[=].element[=].target[+].code = #109245003
* group[=].element[=].target[=].display = "Cellulitis of periorbital region"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED kennt nur die periorbitale Zellulitis als konkrete Manifestation; CTCAE meint jeden periorbitalen Infektionsprozess."

* group[=].element[+].code = #10051592
* group[=].element[=].display = "Acute coronary syndrome"
* group[=].element[=].target[+].code = #394659003
* group[=].element[=].target[=].display = "Acute coronary syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10051741
* group[=].element[=].display = "Pancreas infection"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Pankreasinfektion in SNOMED; vorhanden sind nur 235960001 'Infected pancreatic necrosis' und 405563007 'Infected pancreatic pseudocyst' (jeweils andere Entitaet)."

* group[=].element[+].code = #10051746
* group[=].element[=].display = "Lower gastrointestinal hemorrhage"
* group[=].element[=].target[+].code = #87763006
* group[=].element[=].target[=].display = "Lower gastrointestinal hemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10051792
* group[=].element[=].display = "Infusion related reaction"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keine generische Infusionsreaktion; vorhanden sind nur substanzspezifische Konzepte (z.B. 442108004 Rituximab, 441858005 Trastuzumab)."

* group[=].element[+].code = #10051837
* group[=].element[=].display = "Skin induration"
* group[=].element[=].target[+].code = #34319007
* group[=].element[=].target[=].display = "Induration of skin"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10051886
* group[=].element[=].display = "Gastric necrosis"
* group[=].element[=].target[+].code = #235683000
* group[=].element[=].target[=].display = "Gastric necrosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10052015
* group[=].element[=].display = "Cytokine release syndrome"
* group[=].element[=].target[+].code = #710027002
* group[=].element[=].target[=].display = "Cytokine release syndrome"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Pin-Version 20250701: 710027002 ist hier aktiv (Inaktivierung erst in einem späteren Release; das Nachfolgekonzept Cytokine storm syndrome existiert im Pin noch nicht)."

* group[=].element[+].code = #10052298
* group[=].element[=].display = "Urethral infection"
* group[=].element[=].target[+].code = #236681009
* group[=].element[=].target[=].display = "Infective urethritis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat war eine infektbedingte Striktur"

* group[=].element[+].code = #10052426
* group[=].element[=].display = "Glucose intolerance"
* group[=].element[=].target[+].code = #9414007
* group[=].element[=].target[=].display = "Impaired glucose tolerance"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Malabsorption of glucose' war fachlich falsch"

* group[=].element[+].code = #10053481
* group[=].element[=].display = "Bronchopleural fistula"
* group[=].element[=].target[+].code = #233793003
* group[=].element[=].target[=].display = "Bronchopleural fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10053496
* group[=].element[=].display = "Vaginal stricture"
* group[=].element[=].target[+].code = #37914004
* group[=].element[=].target[=].display = "Stricture of vagina"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Tunica vaginalis stricture' war fachlich falsch (Hodenhuelle)"

* group[=].element[+].code = #10053565
* group[=].element[=].display = "Pericardial tamponade"
* group[=].element[=].target[+].code = #35304003
* group[=].element[=].target[=].display = "Cardiac tamponade"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10053661
* group[=].element[=].display = "Oculomotor nerve disorder"
* group[=].element[=].target[+].code = #60750009
* group[=].element[=].target[=].display = "Third cranial nerve disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10053662
* group[=].element[=].display = "Abducens nerve disorder"
* group[=].element[=].target[+].code = #398925009
* group[=].element[=].target[=].display = "Abducens nerve disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10053692
* group[=].element[=].display = "Wound complication"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Nur 'Complication of obstetrical surgical wound' vorhanden; kein generisches Wundkomplikations-Konzept"

* group[=].element[+].code = #10054382
* group[=].element[=].display = "Feminization acquired"
* group[=].element[=].target[+].code = #473004000
* group[=].element[=].target[=].display = "Feminization"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED unterscheidet nicht zwischen erworbener und angeborener Feminisierung."

* group[=].element[+].code = #10054482
* group[=].element[=].display = "Neck edema"
* group[=].element[=].target[+].code = #301777002
* group[=].element[=].target[=].display = "Neck swelling"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED unterscheidet nicht zwischen Fluessigkeitseinlagerung und sonstiger Halsschwellung; 'Neck swelling' umfasst auch Raumforderungen."

* group[=].element[+].code = #10054520
* group[=].element[=].display = "Oral dysesthesia"
* group[=].element[=].target[+].code = #1202021001
* group[=].element[=].target[=].display = "Burning sensation of mouth"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED hat keine orale Dysaesthesie; der Brennschmerz ist die haeufigste, aber nicht die einzige Auspraegung (Kribbeln/Taubheit fehlen). 399165002 'Burning mouth syndrome' waere ein eigenstaendiges Krankheitsbild und daher unpassend."

* group[=].element[+].code = #10054524
* group[=].element[=].display = "Palmar-plantar erythrodysesthesia syndrome"
* group[=].element[=].target[+].code = #403638003
* group[=].element[=].target[=].display = "Acral erythema due to cytotoxic therapy"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Akrales Erythem unter Zytostatika = Hand-Fuss-Syndrom / PPE."

* group[=].element[+].code = #10054541
* group[=].element[=].display = "Periorbital edema"
* group[=].element[=].target[+].code = #49563000
* group[=].element[=].target[=].display = "Periorbital edema"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10054692
* group[=].element[=].display = "Visceral arterial ischemia"
* group[=].element[=].target[+].code = #153821000119103
* group[=].element[=].target[=].display = "Visceral ischemia"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED unterscheidet nicht zwischen arterieller und venoeser viszeraler Ischaemie."

* group[=].element[+].code = #10054746
* group[=].element[=].display = "Fetal growth retardation"
* group[=].element[=].target[+].code = #22033007
* group[=].element[=].target[=].display = "Fetal growth restriction"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055005
* group[=].element[=].display = "Ovarian infection"
* group[=].element[=].target[+].code = #280516007
* group[=].element[=].target[=].display = "Infection of ovary"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10055026
* group[=].element[=].display = "Prostatic obstruction"
* group[=].element[=].target[+].code = #4127004
* group[=].element[=].target[=].display = "Prostatic obstruction"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055078
* group[=].element[=].display = "Bronchial infection"
* group[=].element[=].target[+].code = #233795005
* group[=].element[=].target[=].display = "Infectious disorder of bronchus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055226
* group[=].element[=].display = "Anal hemorrhage"
* group[=].element[=].target[+].code = #6072007
* group[=].element[=].target[=].display = "Bleeding from anus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung; SNOMED-Term nennt die Blutung aus dem Anus."

* group[=].element[+].code = #10055242
* group[=].element[=].display = "Duodenal hemorrhage"
* group[=].element[=].target[+].code = #95533003
* group[=].element[=].target[=].display = "Duodenal haemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055287
* group[=].element[=].display = "Ileal hemorrhage"
* group[=].element[=].target[+].code = #95535005
* group[=].element[=].target[=].display = "Ileal haemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055291
* group[=].element[=].display = "Intra-abdominal hemorrhage"
* group[=].element[=].target[+].code = #443826006
* group[=].element[=].target[=].display = "Hemorrhage into peritoneal cavity"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Synonym 'Intraabdominal hemorrhage'; Kandidat war postprozedural"

* group[=].element[+].code = #10055298
* group[=].element[=].display = "Intraoperative hemorrhage"
* group[=].element[=].target[+].code = #213261000
* group[=].element[=].target[=].display = "Intraoperative hemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055300
* group[=].element[=].display = "Jejunal hemorrhage"
* group[=].element[=].target[+].code = #712509002
* group[=].element[=].target[=].display = "Hemorrhage of jejunum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: anastomotische Variante ersetzt"

* group[=].element[+].code = #10055315
* group[=].element[=].display = "Pharyngeal hemorrhage"
* group[=].element[=].target[+].code = #324618004
* group[=].element[=].target[=].display = "Pharyngeal hemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055319
* group[=].element[=].display = "Pleural hemorrhage"
* group[=].element[=].target[+].code = #31892009
* group[=].element[=].target[=].display = "Haemothorax"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055322
* group[=].element[=].display = "Postoperative hemorrhage"
* group[=].element[=].target[+].code = #110265006
* group[=].element[=].target[=].display = "Postoperative haemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055325
* group[=].element[=].display = "Prostatic hemorrhage"
* group[=].element[=].target[+].code = #44843000
* group[=].element[=].target[=].display = "Hemorrhage of prostate"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055347
* group[=].element[=].display = "Testicular hemorrhage"
* group[=].element[=].target[+].code = #77708008
* group[=].element[=].target[=].display = "Hemorrhage of testis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055356
* group[=].element[=].display = "Upper gastrointestinal hemorrhage"
* group[=].element[=].target[+].code = #37372002
* group[=].element[=].target[=].display = "Upper gastrointestinal bleeding"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10055472
* group[=].element[=].display = "Esophageal perforation"
* group[=].element[=].target[+].code = #23387001
* group[=].element[=].target[=].display = "Perforation of oesophagus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Spontaneous rupture' ersetzt"

* group[=].element[+].code = #10055599
* group[=].element[=].display = "Hemoglobin increased"
* group[=].element[=].target[+].code = #131141003
* group[=].element[=].target[=].display = "Hemoglobin above reference range"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10056238
* group[=].element[=].display = "Phantom pain"
* group[=].element[=].target[+].code = #710110008
* group[=].element[=].target[=].display = "Phantom pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10056356
* group[=].element[=].display = "Mediastinal hemorrhage"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Mediastinalblutung in SNOMED (409497009 'Hemorrhagic mediastinitis' ist eine Entzuendung, keine Blutung)."

* group[=].element[+].code = #10056388
* group[=].element[=].display = "Olfactory nerve disorder"
* group[=].element[=].target[+].code = #68982002
* group[=].element[=].target[=].display = "Disorder of olfactory nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10056519
* group[=].element[=].display = "Abdominal infection"
* group[=].element[=].target[+].code = #128070006
* group[=].element[=].target[=].display = "Infectious disease of abdomen"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10056522
* group[=].element[=].display = "Hepatic infection"
* group[=].element[=].target[+].code = #235859005
* group[=].element[=].target[=].display = "Liver disorder due to infection"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Syn. 'Infectious disease of liver'; Kandidat war eine Leberegelinfektion"

* group[=].element[+].code = #10056627
* group[=].element[=].display = "Phlebitis infective"
* group[=].element[=].target[+].code = #77910001
* group[=].element[=].target[=].display = "Suppurative phlebitis"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "In SNOMED unter 'Infectious disease of cardiovascular system' eingeordnet, also die infektioese Phlebitis - allerdings mit dem zusaetzlichen Merkmal 'eitrig'. 61599003 'Phlebitis' ist bereits dem CTCAE-Term 'Phlebitis' zugeordnet."

* group[=].element[+].code = #10056681
* group[=].element[=].display = "Salivary duct inflammation"
* group[=].element[=].target[+].code = #41569004
* group[=].element[=].target[=].display = "Sialodochitis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Sialodochitis = Entzuendung des Speichelgangs (im Unterschied zur Sialadenitis der Druese)."

* group[=].element[+].code = #10056745
* group[=].element[=].display = "Postoperative thoracic procedure complication"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Komplikation nach thoraxchirurgischem Eingriff in SNOMED; nur generische Konzepte wie 738778005 'Intraoperative complication' ohne Bezug zum Thorax."

* group[=].element[+].code = #10056910
* group[=].element[=].display = "GGT increased"
* group[=].element[=].target[+].code = #274782002
* group[=].element[=].target[=].display = "Gamma-glutamyl transferase above reference range"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "GGT ausgeschrieben; Laborwert-Muster 'increased' -> 'above reference range'."

* group[=].element[+].code = #10057066
* group[=].element[=].display = "Delayed orgasm"
* group[=].element[=].target[+].code = #40915004
* group[=].element[=].target[=].display = "Orgasm impairment"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED hat keinen verzoegerten Orgasmus; 'Orgasm impairment' umfasst auch Anorgasmie und abgeschwaechten Orgasmus. 735633000 ff. (delayed ejaculation) waeren maennerspezifisch."

* group[=].element[+].code = #10057262
* group[=].element[=].display = "Peritoneal infection"
* group[=].element[=].target[+].code = #129129003
* group[=].element[=].target[=].display = "Infectious peritonitis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Peritonealdialyse-Katheterinfektion ersetzt"

* group[=].element[+].code = #10057483
* group[=].element[=].display = "Mediastinal infection"
* group[=].element[=].target[+].code = #312157006
* group[=].element[=].target[=].display = "Infectious mediastinitis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10058084
* group[=].element[=].display = "Precocious puberty"
* group[=].element[=].target[+].code = #400179000
* group[=].element[=].target[=].display = "Precocious puberty"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10058096
* group[=].element[=].display = "Pancreatic necrosis"
* group[=].element[=].target[+].code = #1835003
* group[=].element[=].target[=].display = "Necrosis of pancreas"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10058597
* group[=].element[=].display = "Right ventricular dysfunction"
* group[=].element[=].target[+].code = #473365008
* group[=].element[=].target[=].display = "Dysfunction of right cardiac ventricle"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: fetale Variante ersetzt"

* group[=].element[+].code = #10058674
* group[=].element[=].display = "Pelvic infection"
* group[=].element[=].target[+].code = #203230004
* group[=].element[=].target[=].display = "Infection of pelvis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: gonokokkenbedingte Variante ersetzt"

* group[=].element[+].code = #10058720
* group[=].element[=].display = "Edema trunk"
* group[=].element[=].target[+].code = #301867009
* group[=].element[=].target[=].display = "Edema of trunk"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10058804
* group[=].element[=].display = "Esophageal infection"
* group[=].element[=].target[+].code = #235600000
* group[=].element[=].target[=].display = "Infective oesophagitis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Herpes-spezifisches Konzept ersetzt"

* group[=].element[+].code = #10058838
* group[=].element[=].display = "Enterocolitis infectious"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keine infektioese Enterokolitis; 43752006 'Enterocolitis' ist generisch und bereits dem CTCAE-Term 'Enterocolitis' zugeordnet."

* group[=].element[+].code = #10059094
* group[=].element[=].display = "Intestinal stoma obstruction"
* group[=].element[=].target[+].code = #236131001
* group[=].element[=].target[=].display = "Stomal obstruction"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED-Konzept ist nicht auf Darmstomata eingeschraenkt."

* group[=].element[+].code = #10059095
* group[=].element[=].display = "Intestinal stoma leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein Leck eines Darmstomas in SNOMED; 1162771004 betrifft die Gastrostomie."

* group[=].element[+].code = #10059446
* group[=].element[=].display = "Gallbladder necrosis"
* group[=].element[=].target[+].code = #111372003
* group[=].element[=].target[=].display = "Gangrene of gallbladder"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Gangraen = Nekrose der Gallenblase."

* group[=].element[+].code = #10059639
* group[=].element[=].display = "Laryngeal obstruction"
* group[=].element[=].target[+].code = #61169001
* group[=].element[=].target[=].display = "Obstruction of larynx"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Inducible laryngeal obstruction' war zu eng"

* group[=].element[+].code = #10059827
* group[=].element[=].display = "Rhinitis infective"
* group[=].element[=].target[+].code = #275496003
* group[=].element[=].target[=].display = "Nasal infection"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Korrektur aus adversarialer Verifikation"

* group[=].element[+].code = #10059895
* group[=].element[=].display = "Urine output decreased"
* group[=].element[=].target[+].code = #718403007
* group[=].element[=].target[=].display = "Decreased urine output"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10060602
* group[=].element[=].display = "Hematosalpinx"
* group[=].element[=].target[+].code = #78095005
* group[=].element[=].target[=].display = "Hematosalpinx"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10060640
* group[=].element[=].display = "Hemorrhoidal hemorrhage"
* group[=].element[=].target[+].code = #51551000
* group[=].element[=].target[=].display = "Bleeding hemorrhoids"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "SNOMED formuliert als 'blutende Haemorrhoiden'; inhaltlich identisch."

* group[=].element[+].code = #10060890
* group[=].element[=].display = "Trigeminal nerve disorder"
* group[=].element[=].target[+].code = #64309007
* group[=].element[=].target[=].display = "Trigeminal nerve disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10060929
* group[=].element[=].display = "Accessory nerve disorder"
* group[=].element[=].target[+].code = #84759007
* group[=].element[=].target[=].display = "Disorder of accessory nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061017
* group[=].element[=].display = "Bone infection"
* group[=].element[=].target[+].code = #111253001
* group[=].element[=].target[=].display = "Infection of bone"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061103
* group[=].element[=].display = "Dermatitis radiation"
* group[=].element[=].target[+].code = #49084001
* group[=].element[=].target[=].display = "Dermatitis caused by radiation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061145
* group[=].element[=].display = "Eyelid function disorder"
* group[=].element[=].target[+].code = #60113004
* group[=].element[=].target[=].display = "Disorder of eyelid"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED unterscheidet keine reine Funktionsstoerung des Lids; 'Disorder of eyelid' umfasst auch strukturelle Lidveraenderungen."

* group[=].element[+].code = #10061149
* group[=].element[=].display = "Female genital tract fistula"
* group[=].element[=].target[+].code = #85059005
* group[=].element[=].target[=].display = "Fistula of the female genital organs"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Female genital tract-skin fistula' war zu eng"

* group[=].element[+].code = #10061185
* group[=].element[=].display = "Glossopharyngeal nerve disorder"
* group[=].element[=].target[+].code = #80962007
* group[=].element[=].target[=].display = "Disorder of glossopharyngeal nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061212
* group[=].element[=].display = "Hypoglossal nerve disorder"
* group[=].element[=].target[+].code = #24777009
* group[=].element[=].target[=].display = "Disorder of hypoglossal nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061229
* group[=].element[=].display = "Lung infection"
* group[=].element[=].target[+].code = #128601007
* group[=].element[=].target[=].display = "Infectious disease of lung"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061261
* group[=].element[=].display = "Lactation disorder"
* group[=].element[=].target[+].code = #35046003
* group[=].element[=].target[=].display = "Disorder of lactation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061304
* group[=].element[=].display = "Nail infection"
* group[=].element[=].target[+].code = #238408000
* group[=].element[=].target[=].display = "Infection of nail"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061322
* group[=].element[=].display = "Optic nerve disorder"
* group[=].element[=].target[+].code = #77157004
* group[=].element[=].target[=].display = "Disorder of optic nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061339
* group[=].element[=].display = "Perineal pain"
* group[=].element[=].target[+].code = #225565007
* group[=].element[=].target[=].display = "Perineal pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061351
* group[=].element[=].display = "Pleural infection"
* group[=].element[=].target[+].code = #58554001
* group[=].element[=].target[=].display = "Empyema of pleura"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Kein generisches Konzept fuer Pleurainfektion; Empyem ist die eitrige Auspraegung"

* group[=].element[+].code = #10061389
* group[=].element[=].display = "Tricuspid valve disease"
* group[=].element[=].target[+].code = #20721001
* group[=].element[=].target[=].display = "Tricuspid valve disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061403
* group[=].element[=].display = "Vagus nerve disorder"
* group[=].element[=].target[+].code = #73765005
* group[=].element[=].target[=].display = "Disorder of vagus nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061457
* group[=].element[=].display = "Facial nerve disorder"
* group[=].element[=].target[+].code = #422426003
* group[=].element[=].target[=].display = "Facial nerve disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061461
* group[=].element[=].display = "Erectile dysfunction"
* group[=].element[=].target[+].code = #860914002
* group[=].element[=].target[=].display = "Erectile dysfunction"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061510
* group[=].element[=].display = "Scleral disorder"
* group[=].element[=].target[+].code = #33064008
* group[=].element[=].target[=].display = "Disorder of sclera"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Scleral melt' war zu spezifisch"

* group[=].element[+].code = #10061532
* group[=].element[=].display = "Mitral valve disease"
* group[=].element[=].target[+].code = #11851006
* group[=].element[=].target[=].display = "Mitral valve disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061541
* group[=].element[=].display = "Pulmonary valve disease"
* group[=].element[=].target[+].code = #76267008
* group[=].element[=].target[=].display = "Pulmonary valve disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061574
* group[=].element[=].display = "Urinary tract obstruction"
* group[=].element[=].target[+].code = #7163005
* group[=].element[=].target[=].display = "Urinary tract obstruction"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061589
* group[=].element[=].display = "Aortic valve disease"
* group[=].element[=].target[+].code = #8722008
* group[=].element[=].target[=].display = "Aortic valve disorder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061640
* group[=].element[=].display = "Anorectal infection"
* group[=].element[=].target[+].code = #371568002
* group[=].element[=].target[=].display = "Anal infection"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED hat kein anorektales Infektionskonzept; 'Anal infection' deckt nur den analen Anteil ab."

* group[=].element[+].code = #10061664
* group[=].element[=].display = "Autoimmune disorder"
* group[=].element[=].target[+].code = #85828009
* group[=].element[=].target[=].display = "Autoimmune disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061695
* group[=].element[=].display = "Biliary tract infection"
* group[=].element[=].target[+].code = #846685008
* group[=].element[=].target[=].display = "Infection of biliary tract"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061788
* group[=].element[=].display = "Corneal infection"
* group[=].element[=].target[+].code = #312428002
* group[=].element[=].target[=].display = "Corneal infection"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061912
* group[=].element[=].display = "Penile infection"
* group[=].element[=].target[+].code = #309090002
* group[=].element[=].target[=].display = "Infection of penis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Protheseninfektion ersetzt"

* group[=].element[+].code = #10061928
* group[=].element[=].display = "Radiculitis"
* group[=].element[=].target[+].code = #82473003
* group[=].element[=].target[=].display = "Radiculitis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10061970
* group[=].element[=].display = "Gastric stenosis"
* group[=].element[=].target[+].code = #55860008
* group[=].element[=].target[=].display = "Stenosis of stomach"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: erworbene Pylorusstenose ersetzt"

* group[=].element[+].code = #10062112
* group[=].element[=].display = "Splenic infection"
* group[=].element[=].target[+].code = #721239009
* group[=].element[=].target[=].display = "Infection of spleen"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10062156
* group[=].element[=].display = "Scrotal infection"
* group[=].element[=].target[+].code = #371413003
* group[=].element[=].target[=].display = "Infection of scrotum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10062169
* group[=].element[=].display = "Vascular access complication"
* group[=].element[=].target[+].code = #398158001
* group[=].element[=].target[=].display = "Complication of intravascular line"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED-Konzept beschraenkt sich auf intravasale Katheter/Verweilkanuelen; CTCAE 'Vascular access complication' schliesst auch andere Zugangsformen (z.B. Shunt) ein."

* group[=].element[+].code = #10062225
* group[=].element[=].display = "Urinary tract pain"
* group[=].element[=].target[+].code = #247382002
* group[=].element[=].target[=].display = "Urinary tract pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10062233
* group[=].element[=].display = "Uterine infection"
* group[=].element[=].target[+].code = #301775005
* group[=].element[=].target[=].display = "Infection of uterus"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10062244
* group[=].element[=].display = "Sinus disorder"
* group[=].element[=].target[+].code = #7393007
* group[=].element[=].target[=].display = "Disorder of nasal sinus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Sinusitis' war zu eng"

* group[=].element[+].code = #10062255
* group[=].element[=].display = "Soft tissue infection"
* group[=].element[=].target[+].code = #95880003
* group[=].element[=].target[=].display = "Soft tissue infection"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10062263
* group[=].element[=].display = "Small intestinal stenosis"
* group[=].element[=].target[+].code = #1162577003
* group[=].element[=].target[=].display = "Stricture of small intestine"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Striktur = Stenose; die uebrigen Treffer (204691002, 14430002) sind kongenital und daher unpassend."

* group[=].element[+].code = #10062283
* group[=].element[=].display = "Nail ridging"
* group[=].element[=].target[+].code = #271768001
* group[=].element[=].target[=].display = "Ridged nails"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: 'Beaded ridging of nails' war zu eng"

* group[=].element[+].code = #10062315
* group[=].element[=].display = "Lipohypertrophy"
* group[=].element[=].target[+].code = #238893005
* group[=].element[=].target[=].display = "Fat hypertrophy"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: insulinbedingte Variante ersetzt"

* group[=].element[+].code = #10062466
* group[=].element[=].display = "Localized edema"
* group[=].element[=].target[+].code = #274724004
* group[=].element[=].target[=].display = "Localized edema"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10062501
* group[=].element[=].display = "Non-cardiac chest pain"
* group[=].element[=].target[+].code = #274668005
* group[=].element[=].target[=].display = "Non-cardiac chest pain"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10062548
* group[=].element[=].display = "Tracheal hemorrhage"
* group[=].element[=].target[+].code = #233783005
* group[=].element[=].target[=].display = "Tracheal haemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10062570
* group[=].element[=].display = "Enterovesical fistula"
* group[=].element[=].target[+].code = #40046003
* group[=].element[=].target[=].display = "Intestinovesical fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10062572
* group[=].element[=].display = "Generalized muscle weakness"
* group[=].element[=].target[+].code = #1137501002
* group[=].element[=].target[=].display = "Generalized muscle weakness"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10062632
* group[=].element[=].display = "Gallbladder infection"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keine Gallenblaseninfektion; 76581006 'Cholecystitis' ist generisch und bereits dem CTCAE-Term 'Cholecystitis' zugeordnet."

* group[=].element[+].code = #10062646
* group[=].element[=].display = "Pancreatic enzymes decreased"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat nur 443828007 'Pancreatic enzyme level above reference range', kein Gegenstueck fuer erniedrigte Werte. 47367009 'Exocrine pancreatic insufficiency' ist eine Funktionsdiagnose, kein Laborbefund."

* group[=].element[+].code = #10062667
* group[=].element[=].display = "Laryngopharyngeal dysesthesia"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine laryngopharyngeale Dysaesthesie in SNOMED."

* group[=].element[+].code = #10062872
* group[=].element[=].display = "Dysesthesia"
* group[=].element[=].target[+].code = #279079003
* group[=].element[=].target[=].display = "Dysaesthesia"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10063057
* group[=].element[=].display = "Cystitis noninfective"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keine nicht-infektioese Zystitis als Klasse; 236630004 'Chemical cystitis' wuerde eine Aetiologie unterstellen, 38822007 'Cystitis' ist generisch und bereits dem CTCAE-Term 'Bladder infection' zugeordnet."

* group[=].element[+].code = #10063190
* group[=].element[=].display = "Rectal mucositis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine rektale Mukositis in SNOMED. 3951002 'Proctitis' ist bereits dem CTCAE-Term 'Proctitis' zugeordnet und meint zudem jede Rektumentzuendung, nicht speziell die mukosale."

* group[=].element[+].code = #10063524
* group[=].element[=].display = "Bronchial stricture"
* group[=].element[=].target[+].code = #79877004
* group[=].element[=].target[=].display = "Stenosis of bronchus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: anastomotische Variante ersetzt"

* group[=].element[+].code = #10063575
* group[=].element[=].display = "Bladder perforation"
* group[=].element[=].target[+].code = #262909002
* group[=].element[=].target[=].display = "Perforation of urinary bladder"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10063636
* group[=].element[=].display = "Pyramidal tract syndrome"
* group[=].element[=].target[+].code = #46251005
* group[=].element[=].target[=].display = "Corticospinal motor disease"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Pyramidenbahn = Tractus corticospinalis; SNOMED fuehrt das Konzept unter 'Upper motor neuron disease'."

* group[=].element[+].code = #10063761
* group[=].element[=].display = "Reversible posterior leukoencephalopathy syndrome"
* group[=].element[=].target[+].code = #450886002
* group[=].element[=].target[=].display = "Posterior reversible encephalopathy syndrome"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10064026
* group[=].element[=].display = "Pelvic floor muscle weakness"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keine Schwaeche der Beckenbodenmuskulatur; vorhandene Konzepte beschreiben Dysfunktion (711263002), Relaxation (444599008) oder Instabilitaet (444735002) - alle mit abweichender Bedeutung."

* group[=].element[+].code = #10064505
* group[=].element[=].display = "Stoma site infection"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat nur 442222009 'Infection of tracheostomy stoma', kein generisches Stoma-Infektionskonzept."

* group[=].element[+].code = #10064658
* group[=].element[=].display = "Osteonecrosis of jaw"
* group[=].element[=].target[+].code = #1231151009
* group[=].element[=].target[=].display = "Osteonecrosis of jaw"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10064687
* group[=].element[=].display = "Device related infection"
* group[=].element[=].target[+].code = #473047000
* group[=].element[=].target[=].display = "Infection associated with device"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10064774
* group[=].element[=].display = "Infusion site extravasation"
* group[=].element[=].target[+].code = #95384003
* group[=].element[=].target[=].display = "Injection site extravasation"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "SNOMED fuehrt nur 'Injection site'-Konzepte; Injektions- und Infusionsort werden dort nicht unterschieden. Inhaltlich das Paravasat an der Applikationsstelle."

* group[=].element[+].code = #10064848
* group[=].element[=].display = "Chronic kidney disease"
* group[=].element[=].target[+].code = #709044004
* group[=].element[=].target[=].display = "Chronic kidney disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065368
* group[=].element[=].display = "Urinary fistula"
* group[=].element[=].target[+].code = #57243009
* group[=].element[=].target[=].display = "Urinary fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065417
* group[=].element[=].display = "Brachial plexopathy"
* group[=].element[=].target[+].code = #3548001
* group[=].element[=].target[=].display = "Brachial plexus disorder"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: seitenbezogenes Konzept ersetzt; Syn. 'Brachial plexus neuropathy'"

* group[=].element[+].code = #10065703
* group[=].element[=].display = "Pancreatic duct stenosis"
* group[=].element[=].target[+].code = #235972007
* group[=].element[=].target[=].display = "Pancreatic duct stricture"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Striktur = Stenose des Ductus pancreaticus."

* group[=].element[+].code = #10065704
* group[=].element[=].display = "Peritoneal necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Nur 'Fat necrosis of peritoneum' vorhanden - eine eigenstaendige Pathologie, nicht die generische Peritonealnekrose"

* group[=].element[+].code = #10065705
* group[=].element[=].display = "Pharyngeal anastomotic leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine pharyngeale Anastomoseninsuffizienz in SNOMED."

* group[=].element[+].code = #10065706
* group[=].element[=].display = "Pharyngeal necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Nekrose des Pharynx in SNOMED."

* group[=].element[+].code = #10065707
* group[=].element[=].display = "Rectal obstruction"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED kennt nur 25730006 'Stricture of rectum', keine Obstruktion des Rektums."

* group[=].element[+].code = #10065709
* group[=].element[=].display = "Rectal necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Nekrose des Rektums in SNOMED (nur 236115009 'Anastomotic necrosis of large intestine', anderer Kontext)."

* group[=].element[+].code = #10065710
* group[=].element[=].display = "Small intestinal mucositis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Mukositis des Duenndarms in SNOMED."

* group[=].element[+].code = #10065712
* group[=].element[=].display = "Gastrointestinal stoma necrosis"
* group[=].element[=].target[+].code = #236121008
* group[=].element[=].target[=].display = "Necrosis of stoma"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED-Konzept ist nicht auf gastrointestinale Stomata eingeschraenkt."

* group[=].element[+].code = #10065713
* group[=].element[=].display = "Gastric fistula"
* group[=].element[=].target[+].code = #235671002
* group[=].element[=].target[=].display = "Gastric fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065719
* group[=].element[=].display = "Jejunal fistula"
* group[=].element[=].target[+].code = #304371002
* group[=].element[=].target[=].display = "Jejunal fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065720
* group[=].element[=].display = "Oral cavity fistula"
* group[=].element[=].target[+].code = #20674003
* group[=].element[=].target[=].display = "Oral fistula"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: orokutane Variante ersetzt"

* group[=].element[+].code = #10065721
* group[=].element[=].display = "Anal mucositis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keine anale Mukositis. 3951002 'Proctitis' liegt anatomisch daneben und ist bereits dem CTCAE-Term 'Proctitis' zugeordnet."

* group[=].element[+].code = #10065722
* group[=].element[=].display = "Anal necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein SNOMED-Konzept fuer Analnekrose; Kandidat betraf Nierenpapillennekrose"

* group[=].element[+].code = #10065727
* group[=].element[=].display = "Esophageal necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Nur 'Esophageal anastomotic necrosis' vorhanden; unterstellt faelschlich eine Anastomose"

* group[=].element[+].code = #10065728
* group[=].element[=].display = "Ileal fistula"
* group[=].element[=].target[+].code = #235734008
* group[=].element[=].target[=].display = "Small bowel fistula"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Kein ileumspezifisches Fistelkonzept in SNOMED; Ziel umfasst den gesamten Duenndarm"

* group[=].element[+].code = #10065730
* group[=].element[=].display = "Ileal obstruction"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED kennt nur 'Stenosis of ileum' (355468491000132106) bzw. 'Stricture of ileum' (95539004), keine Obstruktion des Ileums. Stenose ist keine Obstruktion; generisches 81060008 'Intestinal obstruction' wuerde die Lokalisation verlieren, die den CTCAE-Term erst ausmacht."

* group[=].element[+].code = #10065732
* group[=].element[=].display = "Jejunal obstruction"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Analog zu 'Ileal obstruction': keine Obstruktion des Jejunums in SNOMED."

* group[=].element[+].code = #10065735
* group[=].element[=].display = "Laryngeal inflammation"
* group[=].element[=].target[+].code = #45913009
* group[=].element[=].target[=].display = "Laryngitis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Laryngitis = Kehlkopfentzuendung. ACHTUNG: derselbe Code ist im HIGH-Tier bereits dem CTCAE-Term 'Laryngitis' (MedDRA 10023874, SOC Infections) zugeordnet; jener Term sollte auf 312423006 'Infective laryngitis' umgehaengt werden, da er die infektioese Form meint."

* group[=].element[+].code = #10065738
* group[=].element[=].display = "Unequal limb length"
* group[=].element[=].target[+].code = #300261000119100
* group[=].element[=].target[=].display = "Acquired unequal limb length"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED erfasst nur die erworbene Form"

* group[=].element[+].code = #10065744
* group[=].element[=].display = "Arteritis infective"
* group[=].element[=].target[+].code = #52089001
* group[=].element[=].target[=].display = "Arteritis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED hat keine infektioese Arteriitis; 'Arteritis' umfasst auch die (haeufigeren) nicht-infektioesen Formen."

* group[=].element[+].code = #10065745
* group[=].element[=].display = "Prolapse of intestinal stoma"
* group[=].element[=].target[+].code = #45168341000119100
* group[=].element[=].target[=].display = "Enterostomy prolapse"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Enterostoma = Darmstoma; woertliche Entsprechung."

* group[=].element[+].code = #10065746
* group[=].element[=].display = "Bronchopulmonary hemorrhage"
* group[=].element[=].target[+].code = #78144005
* group[=].element[=].target[=].display = "Pulmonary hemorrhage"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED deckt nur die Blutung aus dem Lungenparenchym ab; CTCAE schliesst die Bronchialwand ein. 95431003 'Respiratory tract hemorrhage' waere umgekehrt zu weit."

* group[=].element[+].code = #10065747
* group[=].element[=].display = "Cecal hemorrhage"
* group[=].element[=].target[+].code = #711441008
* group[=].element[=].target[=].display = "Hemorrhage of cecum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung (cecal -> caecum)."

* group[=].element[+].code = #10065748
* group[=].element[=].display = "Urostomy site bleeding"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein Konzept im Pin 20250701 (nur Ileostomie-Blutung, andere Lokalisation) — Term verbleibt MedDRA-only."

* group[=].element[+].code = #10065749
* group[=].element[=].display = "Tracheostomy site bleeding"
* group[=].element[=].target[+].code = #82872004
* group[=].element[=].target[=].display = "Tracheostomy hemorrhage"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10065752
* group[=].element[=].display = "Duodenal infection"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Nur erregerspezifische Konzepte (Giardia, Anisakis) vorhanden"

* group[=].element[+].code = #10065755
* group[=].element[=].display = "Lip infection"
* group[=].element[=].target[+].code = #737187008
* group[=].element[=].target[=].display = "Infection of lip"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065759
* group[=].element[=].display = "Laryngeal hemorrhage"
* group[=].element[=].target[+].code = #249467000
* group[=].element[=].target[=].display = "Bleeding from larynx"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wortumstellung."

* group[=].element[+].code = #10065761
* group[=].element[=].display = "Cecal infection"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Infektion des Zoekums in SNOMED. 61564002 'Typhlitis' ist ein eigener CTCAE-Term und meint die neutropene Enterokolitis, nicht jede Zoekuminfektion."

* group[=].element[+].code = #10065762
* group[=].element[=].display = "Spermatic cord hemorrhage"
* group[=].element[=].target[+].code = #33878005
* group[=].element[=].target[=].display = "Haemorrhage of spermatic cord"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065763
* group[=].element[=].display = "Ovarian hemorrhage"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Nur 'Hemorrhagic cyst of ovary' vorhanden; keine generische Ovarialblutung in SNOMED"

* group[=].element[+].code = #10065764
* group[=].element[=].display = "Mucosal infection"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine generische Schleimhautinfektion in SNOMED; nur erreger- oder lokalisationsspezifische Konzepte."

* group[=].element[+].code = #10065765
* group[=].element[=].display = "Cranial nerve infection"
* group[=].element[=].target[+].code = #721254003
* group[=].element[=].target[=].display = "Infection of cranial nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065766
* group[=].element[=].display = "Peripheral nerve infection"
* group[=].element[=].target[+].code = #1177010008
* group[=].element[=].target[=].display = "Infection of peripheral nerve"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065771
* group[=].element[=].display = "Small intestine infection"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Nur parasitenspezifische Konzepte vorhanden"

* group[=].element[+].code = #10065772
* group[=].element[=].display = "Vulval infection"
* group[=].element[=].target[+].code = #63144007
* group[=].element[=].target[=].display = "Vulvitis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED subsumiert die infektioesen Vulvitiden unter 'Vulvitis'; ein eigenes Infektionskonzept fehlt."

* group[=].element[+].code = #10065773
* group[=].element[=].display = "Lymph leakage"
* group[=].element[=].target[+].code = #234104002
* group[=].element[=].target[=].display = "Escape of lymph"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065775
* group[=].element[=].display = "Abdominal soft tissue necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat kein Konzept 'Weichteilnekrose'; nur ursachengebundene Konzepte (z.B. Erfrierung)."

* group[=].element[+].code = #10065776
* group[=].element[=].display = "Muscle weakness lower limb"
* group[=].element[=].target[+].code = #1137412000
* group[=].element[=].target[=].display = "Weakness of muscle of lower limb"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065777
* group[=].element[=].display = "Soft tissue necrosis lower limb"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Weichteilnekrose der unteren Extremitaet in SNOMED."

* group[=].element[+].code = #10065778
* group[=].element[=].display = "Soft tissue necrosis upper limb"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Weichteilnekrose der oberen Extremitaet in SNOMED."

* group[=].element[+].code = #10065779
* group[=].element[=].display = "Head soft tissue necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Weichteilnekrose des Kopfes in SNOMED."

* group[=].element[+].code = #10065780
* group[=].element[=].display = "Muscle weakness left-sided"
* group[=].element[=].target[+].code = #278287000
* group[=].element[=].target[=].display = "Left hemiparesis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Hemiparese = linksseitige Muskelschwaeche."

* group[=].element[+].code = #10065781
* group[=].element[=].display = "Neck soft tissue necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Weichteilnekrose des Halses in SNOMED."

* group[=].element[+].code = #10065783
* group[=].element[=].display = "Musculoskeletal deformity"
* group[=].element[=].target[+].code = #40668007
* group[=].element[=].target[=].display = "Acquired musculoskeletal deformity"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED erfasst nur erworbene Deformitaeten"

* group[=].element[+].code = #10065784
* group[=].element[=].display = "Central nervous system necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Nur 'Necrosis of central nervous system caused by ionizing radiation' vorhanden; unterstellt faelschlich Strahlengenese"

* group[=].element[+].code = #10065785
* group[=].element[=].display = "External ear pain"
* group[=].element[=].target[+].code = #792886009
* group[=].element[=].target[=].display = "Pain in pinna"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED kennt nur Schmerz der Ohrmuschel; CTCAE 'External ear pain' umfasst zusaetzlich den aeusseren Gehoergang. 301354004 'Pain of ear' ist bereits dem CTCAE-Term 'Ear pain' zugeordnet."

* group[=].element[+].code = #10065786
* group[=].element[=].display = "Laryngeal fistula"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein SNOMED-Konzept fuer Larynxfistel; Kandidat war eine Prozedur"

* group[=].element[+].code = #10065787
* group[=].element[=].display = "Tracheal fistula"
* group[=].element[=].target[+].code = #233778002
* group[=].element[=].target[=].display = "Tracheal fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065788
* group[=].element[=].display = "Fallopian tube anastomotic leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Anastomoseninsuffizienz der Tube in SNOMED; SNOMED fuehrt Anastomosenlecks nur fuer GI-Trakt, Gallenwege, Pankreas, Bronchus und Urologie."

* group[=].element[+].code = #10065789
* group[=].element[=].display = "Fallopian tube obstruction"
* group[=].element[=].target[+].code = #237143006
* group[=].element[=].target[=].display = "Blocked fallopian tube"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: seitenbezogenes Konzept ersetzt"

* group[=].element[+].code = #10065790
* group[=].element[=].display = "Fallopian tube perforation"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Perforation der Tuba uterina in SNOMED."

* group[=].element[+].code = #10065791
* group[=].element[=].display = "Fallopian tube stenosis"
* group[=].element[=].target[+].code = #280504001
* group[=].element[=].target[=].display = "Fallopian tube stenosis"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065793
* group[=].element[=].display = "Pelvic soft tissue necrosis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Weichteilnekrose des Beckens in SNOMED."

* group[=].element[+].code = #10065794
* group[=].element[=].display = "Muscle weakness right-sided"
* group[=].element[=].target[+].code = #278286009
* group[=].element[=].target[=].display = "Right hemiparesis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Hemiparese = rechtsseitige Muskelschwaeche."

* group[=].element[+].code = #10065795
* group[=].element[=].display = "Muscle weakness trunk"
* group[=].element[=].target[+].code = #249937002
* group[=].element[=].target[=].display = "Truncal muscle weakness"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10065796
* group[=].element[=].display = "Joint range of motion decreased cervical spine"
* group[=].element[=].target[+].code = #304344002
* group[=].element[=].target[=].display = "Decreased range of cervical spine movement"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10065798
* group[=].element[=].display = "Superficial soft tissue fibrosis"
* group[=].element[=].target[+].code = #445156001
* group[=].element[=].target[=].display = "Fibrosis of subcutaneous tissue"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Oberflaechliches Weichgewebe = Subkutangewebe."

* group[=].element[+].code = #10065799
* group[=].element[=].display = "Fibrosis deep connective tissue"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat keine Fibrose des tiefen Bindegewebes; nur 445156001 'Fibrosis of subcutaneous tissue' (oberflaechlich, siehe MedDRA 10065798)."

* group[=].element[+].code = #10065800
* group[=].element[=].display = "Joint range of motion decreased lumbar spine"
* group[=].element[=].target[+].code = #304352004
* group[=].element[=].target[=].display = "Decreased range of lumbar spine movement"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10065802
* group[=].element[=].display = "Bladder anastomotic leak"
* group[=].element[=].target[+].code = #276869002
* group[=].element[=].target[=].display = "Leakage of urological anastomosis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED hat kein blasenspezifisches Anastomoseninsuffizienz-Konzept; das urologische Sammelkonzept ist die naechstliegende Oberklasse."

* group[=].element[+].code = #10065803
* group[=].element[=].display = "Kidney anastomotic leak"
* group[=].element[=].target[+].code = #276869002
* group[=].element[=].target[=].display = "Leakage of urological anastomosis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Kein nierenspezifisches Anastomosenleck in SNOMED; urologisches Sammelkonzept."

* group[=].element[+].code = #10065805
* group[=].element[=].display = "Spermatic cord obstruction"
* group[=].element[=].target[+].code = #198065008
* group[=].element[=].target[=].display = "Spermatic cord stricture"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED kennt nur die Striktur des Samenstrangs; CTCAE meint jede Obstruktion."

* group[=].element[+].code = #10065811
* group[=].element[=].display = "Uterine fistula"
* group[=].element[=].target[+].code = #77408009
* group[=].element[=].target[=].display = "Fistula of uterus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Kandidat war eine Prozedur (Fistelverschluss)"

* group[=].element[+].code = #10065813
* group[=].element[=].display = "Vaginal fistula"
* group[=].element[=].target[+].code = #45135002
* group[=].element[=].target[=].display = "Fistulous opening in vagina"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Beobachtungskonzept durch Disorder-Konzept ersetzt"

* group[=].element[+].code = #10065814
* group[=].element[=].display = "Ureteric anastomotic leak"
* group[=].element[=].target[+].code = #276869002
* group[=].element[=].target[=].display = "Leakage of urological anastomosis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Kein ureterspezifisches Anastomosenleck in SNOMED; urologisches Sammelkonzept."

* group[=].element[+].code = #10065815
* group[=].element[=].display = "Urethral anastomotic leak"
* group[=].element[=].target[+].code = #276869002
* group[=].element[=].target[=].display = "Leakage of urological anastomosis"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Kein urethraspezifisches Anastomosenleck in SNOMED; urologisches Sammelkonzept."

* group[=].element[+].code = #10065817
* group[=].element[=].display = "Vaginal obstruction"
* group[=].element[=].target[+].code = #737178004
* group[=].element[=].target[=].display = "Gynatresia of vagina"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Gynatresie = Verschluss der Vagina, in SNOMED unter 'Disorder of vagina'; enger als die CTCAE-Obstruktion, die auch partielle Blockaden umfasst."

* group[=].element[+].code = #10065818
* group[=].element[=].display = "Vaginal perforation"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED fuehrt vaginale Perforationen nur im Kontext von Schwangerschaftsabbruch/Abort (87967003, 64181003, 609478003)."

* group[=].element[+].code = #10065822
* group[=].element[=].display = "Prolapse of urostomy"
* group[=].element[=].target[+].code = #298135000
* group[=].element[=].target[=].display = "Urostomy stomal prolapse"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10065823
* group[=].element[=].display = "Nipple deformity"
* group[=].element[=].target[+].code = #237469008
* group[=].element[=].target[=].display = "Nipple deformity"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065825
* group[=].element[=].display = "Intraoperative gastrointestinal injury"
* group[=].element[=].target[+].code = #1290696007
* group[=].element[=].target[=].display = "Injury to intestine during surgery"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED deckt nur den Darm ab; CTCAE meint den gesamten Gastrointestinaltrakt (Oesophagus bis Anus)."

* group[=].element[+].code = #10065826
* group[=].element[=].display = "Intraoperative arterial injury"
* group[=].element[=].target[+].code = #63043004
* group[=].element[=].target[=].display = "Injury of artery"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Im Pin 20250701 kein Konzept für die intraoperative Genese; Oberkonzept Arterienverletzung, der operative Kontext ergibt sich aus AdverseEvent.suspectEntity."

* group[=].element[+].code = #10065827
* group[=].element[=].display = "Intraoperative hepatobiliary injury"
* group[=].element[=].target[+].code = #713203006
* group[=].element[=].target[=].display = "Injury to liver during surgery"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED trennt Leber (713203006) und Gallenblase (715212005); ein hepatobiliaeres Sammelkonzept fehlt. Die Leberverletzung ist der dominante Anteil."

* group[=].element[+].code = #10065828
* group[=].element[=].display = "Intraoperative urinary injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED bietet nur die Teilkonzepte 10661000087107 'Injury of urinary bladder during surgery' und 10581000087102 'Injury of ureter during surgery'; ein Sammelkonzept fuer den Harntrakt fehlt."

* group[=].element[+].code = #10065829
* group[=].element[=].display = "Intraoperative musculoskeletal injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine intraoperative muskuloskelettale Verletzung in SNOMED."

* group[=].element[+].code = #10065830
* group[=].element[=].display = "Intraoperative neurological injury"
* group[=].element[=].target[+].code = #213267001
* group[=].element[=].target[=].display = "Injury to nerve during surgery"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED deckt nur die Nervenverletzung ab; CTCAE schliesst ZNS-Schaeden ein."

* group[=].element[+].code = #10065831
* group[=].element[=].display = "Intraoperative breast injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED fuehrt intraoperative Verletzungen nur fuer eine begrenzte Organliste (Lunge, Nerv, Leber, Eingeweide, Rektum, Milz, Ureter, Atemweg, Blase, Oesophagus, Zwerchfell, Darm, Gallenblase, Gefaess, Niere, Vene, Magen, Arterie, Pankreas). Mamma fehlt."

* group[=].element[+].code = #10065832
* group[=].element[=].display = "Intraoperative respiratory injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED bietet zwei gleichrangige Teilkonzepte - 11051000087106 'Injury of airway during surgery' und 1290694005 'Injury to lung during surgery'; keines deckt den respiratorischen Trakt als Ganzes ab, eine Auswahl waere willkuerlich."

* group[=].element[+].code = #10065834
* group[=].element[=].display = "Intraoperative endocrine injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine intraoperative Verletzung endokriner Organe in SNOMED."

* group[=].element[+].code = #10065836
* group[=].element[=].display = "IVth nerve disorder"
* group[=].element[=].target[+].code = #20610004
* group[=].element[=].target[=].display = "Fourth nerve palsy"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED hat kein 'Disorder of trochlear nerve'; die Trochlearisparese ist die klinische Manifestation, engt aber gegenueber 'Stoerung' ein. 106154007 'Fourth cranial nerve finding' waere zu weit (schliesst Normalbefunde ein)."

* group[=].element[+].code = #10065837
* group[=].element[=].display = "External ear inflammation"
* group[=].element[=].target[+].code = #3135009
* group[=].element[=].target[=].display = "Otitis externa"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Otitis externa ist die Entzuendung des aeusseren Ohres; Kandidat beschrieb eine Stenose. Hinweis: 3135009 ist in SNOMED ursachenneutral, wird aber bereits vom CTCAE-Term \"Otitis externa\" (SOC Infektionen) belegt"

* group[=].element[+].code = #10065838
* group[=].element[=].display = "Middle ear inflammation"
* group[=].element[=].target[+].code = #65363002
* group[=].element[=].target[=].display = "Otitis media"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: generisches Konzept statt bilateraler akuter Sonderform. Hinweis: 65363002 ist in SNOMED ursachenneutral, wird aber bereits vom CTCAE-Term \"Otitis media\" (SOC Infektionen) belegt"

* group[=].element[+].code = #10065840
* group[=].element[=].display = "Intraoperative reproductive tract injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine intraoperative Verletzung des Reproduktionstrakts in SNOMED."

* group[=].element[+].code = #10065841
* group[=].element[=].display = "Intraoperative ocular injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine intraoperative Augenverletzung in SNOMED."

* group[=].element[+].code = #10065842
* group[=].element[=].display = "Intraoperative head and neck injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine intraoperative Kopf-Hals-Verletzung in SNOMED."

* group[=].element[+].code = #10065843
* group[=].element[=].display = "Intraoperative cardiac injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine intraoperative Herzverletzung in SNOMED (siehe Organliste bei 'Intraoperative breast injury')."

* group[=].element[+].code = #10065844
* group[=].element[=].display = "Intraoperative ear injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine intraoperative Ohrverletzung in SNOMED."

* group[=].element[+].code = #10065845
* group[=].element[=].display = "Intraoperative renal injury"
* group[=].element[=].target[+].code = #40095003
* group[=].element[=].target[=].display = "Injury of kidney"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Im Pin 20250701 kein Konzept für die intraoperative Genese; Oberkonzept Nierenverletzung, der operative Kontext ergibt sich aus AdverseEvent.suspectEntity."

* group[=].element[+].code = #10065846
* group[=].element[=].display = "Intraoperative skin injury"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine intraoperative Hautverletzung in SNOMED."

* group[=].element[+].code = #10065847
* group[=].element[=].display = "Intraoperative splenic injury"
* group[=].element[=].target[+].code = #711366008
* group[=].element[=].target[=].display = "Injury of spleen during surgery"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10065848
* group[=].element[=].display = "Intraoperative venous injury"
* group[=].element[=].target[+].code = #64583005
* group[=].element[=].target[=].display = "Injury of vein"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Im Pin 20250701 kein Konzept für die intraoperative Genese; Oberkonzept Venenverletzung, der operative Kontext ergibt sich aus AdverseEvent.suspectEntity."

* group[=].element[+].code = #10065849
* group[=].element[=].display = "Injury to jugular vein"
* group[=].element[=].target[+].code = #76019006
* group[=].element[=].target[=].display = "Injury of internal jugular vein"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "SNOMED hat kein Konzept fuer die Vena jugularis allgemein, nur getrennt fuer V. jugularis interna (76019006) und externa (5166001). Gewaehlt wurde die interne als klinisch relevante (Katheteranlage)."

* group[=].element[+].code = #10065851
* group[=].element[=].display = "Esophageal fistula"
* group[=].element[=].target[+].code = #30873000
* group[=].element[=].target[=].display = "Esophageal fistula"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065873
* group[=].element[=].display = "Pulmonary fistula"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein generisches Lungenfistel-Konzept; \"Bronchopleural fistula\" ist bereits exakte Zielcodierung des eigenen CTCAE-Terms Bronchopleural fistula"

* group[=].element[+].code = #10065879
* group[=].element[=].display = "Gastrointestinal anastomotic leak"
* group[=].element[=].target[+].code = #236085004
* group[=].element[=].target[=].display = "Gastrointestinal anastomotic leak"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065880
* group[=].element[=].display = "Laryngeal mucositis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Mukositis des Larynx in SNOMED; 45913009 'Laryngitis' ist bereits vergeben und bezeichnet zudem jede Kehlkopfentzuendung."

* group[=].element[+].code = #10065881
* group[=].element[=].display = "Pharyngeal mucositis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Mukositis des Pharynx in SNOMED; 405737000 'Pharyngitis' ist bereits dem CTCAE-Term 'Pharyngitis' zugeordnet."

* group[=].element[+].code = #10065882
* group[=].element[=].display = "Urostomy leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein Leck eines Urostomas in SNOMED (276869002 betrifft die urologische Anastomose, nicht das Stoma)."

* group[=].element[+].code = #10065883
* group[=].element[=].display = "Urostomy obstruction"
* group[=].element[=].target[+].code = #236131001
* group[=].element[=].target[=].display = "Stomal obstruction"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED-Konzept ist nicht auf urologische Stomata eingeschraenkt."

* group[=].element[+].code = #10065885
* group[=].element[=].display = "Urostomy stenosis"
* group[=].element[=].target[+].code = #236119003
* group[=].element[=].target[=].display = "Stenosis of stoma"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "SNOMED-Konzept ist nicht auf urologische Stomata eingeschraenkt; 1086781000119103 waere GI-spezifisch und daher falsch."

* group[=].element[+].code = #10065886
* group[=].element[=].display = "Uterine anastomotic leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine uterine Anastomoseninsuffizienz in SNOMED."

* group[=].element[+].code = #10065887
* group[=].element[=].display = "Vaginal anastomotic leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine vaginale Anastomoseninsuffizienz in SNOMED."

* group[=].element[+].code = #10065888
* group[=].element[=].display = "Vas deferens anastomotic leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Anastomoseninsuffizienz des Ductus deferens in SNOMED."

* group[=].element[+].code = #10065891
* group[=].element[=].display = "Large intestinal anastomotic leak"
* group[=].element[=].target[+].code = #236091002
* group[=].element[=].target[=].display = "Large intestine anastomotic leak"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10065892
* group[=].element[=].display = "Small intestinal anastomotic leak"
* group[=].element[=].target[+].code = #236090001
* group[=].element[=].target[=].display = "Small intestine anastomotic leak"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Woertliche Entsprechung."

* group[=].element[+].code = #10065893
* group[=].element[=].display = "Gastric anastomotic leak"
* group[=].element[=].target[+].code = #236087007
* group[=].element[=].target[=].display = "Gastric anastomotic leak"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065894
* group[=].element[=].display = "Rectal anastomotic leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein rektumspezifisches Anastomosenleck in SNOMED. 236091002 'Large intestine anastomotic leak' waere die Oberklasse, ist aber bereits dem CTCAE-Term 'Large intestinal anastomotic leak' als equivalent zugeordnet."

* group[=].element[+].code = #10065895
* group[=].element[=].display = "Muscle weakness upper limb"
* group[=].element[=].target[+].code = #713512009
* group[=].element[=].target[=].display = "Muscle weakness of upper limb"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065897
* group[=].element[=].display = "Spermatic cord anastomotic leak"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Anastomoseninsuffizienz des Samenstrangs in SNOMED."

* group[=].element[+].code = #10065898
* group[=].element[=].display = "Stenosis of gastrointestinal stoma"
* group[=].element[=].target[+].code = #1086781000119103
* group[=].element[=].target[=].display = "Stenosis of enterostomy stoma"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Enterostoma = gastrointestinales Stoma."

* group[=].element[+].code = #10065900
* group[=].element[=].display = "Tracheal mucositis"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Mukositis der Trachea in SNOMED; 62994001 'Tracheitis' ist bereits dem CTCAE-Term 'Tracheitis' zugeordnet."

* group[=].element[+].code = #10065906
* group[=].element[=].display = "Carbon monoxide diffusing capacity decreased"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED fuehrt zur CO-Diffusionskapazitaet nur Messverfahren (36421003, 1366665001) bzw. den unspezifischen Elternbefund 37985006 'Finding of diffusion capacity of lung', aber keinen Befund 'vermindert'."

* group[=].element[+].code = #10065928
* group[=].element[=].display = "Uterine obstruction"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Keine Obstruktion des Uterus in SNOMED."

* group[=].element[+].code = #10065961
* group[=].element[=].display = "Esophageal anastomotic leak"
* group[=].element[=].target[+].code = #236086003
* group[=].element[=].target[=].display = "Oesophageal anastomotic leak"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10065973
* group[=].element[=].display = "Iron overload"
* group[=].element[=].target[+].code = #60737008
* group[=].element[=].target[=].display = "Iron overload"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10066480
* group[=].element[=].display = "Avascular necrosis"
* group[=].element[=].target[+].code = #397758007
* group[=].element[=].target[=].display = "Osteonecrosis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Kandidatenwechsel: Syn. 'Avascular necrosis of bone'; Kandidat war hueftspezifisch"

* group[=].element[+].code = #10066874
* group[=].element[=].display = "Gastroesophageal reflux disease"
* group[=].element[=].target[+].code = #235595009
* group[=].element[=].target[=].display = "Gastroesophageal reflux disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10069138
* group[=].element[=].display = "Papulopustular rash"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "SNOMED hat kein papulopustuloeses Exanthem. 402644006 'Acneiform eruption' ist dem CTCAE-Term 'Rash acneiform' vorbehalten, 271757001 'Papular eruption' verliert die pustuloese Komponente."

* group[=].element[+].code = #10069339
* group[=].element[=].display = "Acute kidney injury"
* group[=].element[=].target[+].code = #14669001
* group[=].element[=].target[=].display = "Acute kidney injury"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10069501
* group[=].element[=].display = "Left ventricular systolic dysfunction"
* group[=].element[=].target[+].code = #134401001
* group[=].element[=].target[=].display = "Left ventricular systolic dysfunction"
* group[=].element[=].target[=].equivalence = #equivalent
