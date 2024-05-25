Instance: MII-CM-Onko-Operation-Komplikation-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-operation-komplikation-sct"
* name = "mii-cm-onko-operation-komplikation-snomed-mapping"
* title = "MII CM Onko Operation Komplikation SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Operation Komplikation Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-operation-komplikation
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #N
* group[=].element[=].display = "nein"
* group[=].element[=].target.code = #373067005
* group[=].element[=].target.display = "No (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "sollte nicht gemeinsam mit anderen Antworten vergeben werden"

* group[=].element[+].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #ABD
* group[=].element[=].display = "Abszess in einem Drainagekanal"
* group[=].element[=].target.code = #128477000
* group[=].element[=].target.display = "Abscess (disorder)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Abzsess in Drainagekanal existiert nicht als Konzept, kann ggfs. über Postkoordination konstruiert werden"

* group[=].element[+].code = #ABS
* group[=].element[=].display = "Abszess, intraabdominaler oder intrathorakaler"
* group[=].element[=].target.code = #75100008
* group[=].element[=].target.display = "Abdominal abscess (disorder)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "kein spezifischer Code für diese 'oder'-Konstruktion, daher spezifisch entweder Abdominal oder thorarical Abzess"
* group[=].element[+].target.code = #405950009
* group[=].element[=].target.display = "Abscess of thorax (disorder)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "kein spezifischer Code für diese 'oder'-Konstruktion, daher spezifisch entweder Abdominal oder thorarical Abzess"
* group[=].element[=].target.code = #128477000
* group[=].element[=].target.display = "Abscess (disorder)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "weiterfassend als Abszess kodiert"

* group[=].element[+].code = #ASF
* group[=].element[=].display = "Abszess, subfaszialer"
* group[=].element[=].target.code = #128477000
* group[=].element[=].target.display = "Abscess (disorder)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "keine englische Expression für die Spezifizierung subfaszial gefunden"

* group[=].element[+].code = #ANI
* group[=].element[=].display = "Akute Niereninsuffizienz"
* group[=].element[=].target.code = #723189000
* group[=].element[=].target.display = "Acute renal insufficiency (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #AEP
* group[=].element[=].display = "Alkoholentzugspsychose"
* group[=].element[=].target.code = #8635005
* group[=].element[=].target.display = "Alcohol withdrawal delirium (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #ALR
* group[=].element[=].display = "Allergische Reaktion ohne Schocksymptomatik"
* group[=].element[=].target.code = #419076005
* group[=].element[=].target.display = "Allergic reaction (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #ANS
* group[=].element[=].display = "Anaphylaktischer Schock"
* group[=].element[=].target.code = #735173007
* group[=].element[=].target.display = "Shock due to anaphylaxis (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #AEE
* group[=].element[=].display = "Anastomoseninsuffizienz einer Enterostomie"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "kein äquivalenter SNOMED-Term, ggfs. über Postkoordination möglich"

* group[=].element[+].code = #API
* group[=].element[=].display = "Apoplektischer Insult"
* group[=].element[=].target.code = #230690007
* group[=].element[=].target.display = "Cerebrovascular accident (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #BIF
* group[=].element[=].display = "Biliäre Fistel"
* group[=].element[=].target.code = #53206008
* group[=].element[=].target.display = "Fistula of bile duct (disorder) "
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #BOG
* group[=].element[=].display = "Blutung, obere gastrointestinale (z. B „Stressulkus“)"
* group[=].element[=].target.code = #37372002
* group[=].element[=].target.display = "Upper gastrointestinal hemorrhage (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #BOE
* group[=].element[=].display = "Bolusverlegung eines Endotubus"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "kein äquivalenter SNOMED-Term, ggfs. über Postkoordination möglich"

* group[=].element[+].code = #BSI
* group[=].element[=].display = "Bronchusstumpfinsuffizienz"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "kein äquivalenter SNOMED-Term, ggfs. über Postkoordination möglich"

* group[=].element[+].code = #CHI
* group[=].element[=].display = "Cholangitis"
* group[=].element[=].target.code = #82403002
* group[=].element[=].target.display = "Cholangitis (disorder) "
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #DAI
* group[=].element[=].display = "Darmanastomoseninsuffizienz"
* group[=].element[=].target.code = #236091002
* group[=].element[=].target.display = "Large intestine anastomotic leak (disorder)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "kein SNOMED-Term für Gesamtdarm-Anastomoseninsuffizienz"
* group[=].element[+].target.code = #236090001
* group[=].element[=].target.display = "Small intestine anastomotic leak (disorder)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "kein SNOMED-Term für Gesamtdarm-Anastomoseninsuffizienz"

* group[=].element[+].code = #DPS
* group[=].element[=].display = "Darmpassagestörungen (z. B. protrahierte Atonie, Subileus, Ileus)"
* group[=].element[=].target.code = #81060008
* group[=].element[=].target.display = "Intestinal obstruction (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #DIC
* group[=].element[=].display = "Disseminierte intravasale Koagulopathie"
* group[=].element[=].target.code = #67406007
* group[=].element[=].target.display = "Disseminated intravascular coagulation (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #DEP
* group[=].element[=].display = "Drogenentzugspsychose"
* group[=].element[=].target.code = #772133000
* group[=].element[=].target.display = "Recreational drug misuse withdrawal (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #DLU
* group[=].element[=].display = "Druck- und Lagerungsschäden, z. B. Dekubitalulzera"
* group[=].element[=].target.code = #1163215007
* group[=].element[=].target.display = "Pressure injury (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #DSI
* group[=].element[=].display = "Duodenalstumpfinsuffizienz"
* group[=].element[=].target.code = #236089005
* group[=].element[=].target.display = "Duodenal stump leak (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #ENF
* group[=].element[=].display = "Enterale Fistel"
* group[=].element[=].target.code = #735426009
* group[=].element[=].target.display = "Fistula of digestive system (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #GER
* group[=].element[=].display = "Gerinnungsstörung"
* group[=].element[=].target.code = #64779008
* group[=].element[=].target.display = "Blood coagulation disorder (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HEM
* group[=].element[=].display = "Hämatemesis"
* group[=].element[=].target.code = #8765009
* group[=].element[=].target.display = "Hematemesis (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HUR
* group[=].element[=].display = "Hämaturie"
* group[=].element[=].target.code = #34436003
* group[=].element[=].target.display = "Blood in urine (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HAE
* group[=].element[=].display = "Hämorrhagischer Schock"
* group[=].element[=].target.code = #355001
* group[=].element[=].target.display = "Hemorrhagic shock (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HFI
* group[=].element[=].display = "Harnfistel"
* group[=].element[=].target.code = #57243009
* group[=].element[=].target.display = "Urinary fistula (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HNK
* group[=].element[=].display = "Hautnekrose im Operationsbereich"
* group[=].element[=].target.code = #95347000
* group[=].element[=].target.display = "Skin necrosis (disorder)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "äquivalent insofern, als das im FHIR-Modell nach Komplikationen der OP gefragt wird; ansonsten ggfs. Spezifizierung über Postkoordination"

* group[=].element[+].code = #HZI
* group[=].element[=].display = "Herzinsuffizienz"
* group[=].element[=].target.code = #84114007
* group[=].element[=].target.display = "Heart failure (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HRS
* group[=].element[=].display = "Herzrhythmusstörungen"
* group[=].element[=].target.code = #698247007
* group[=].element[=].target.display = "Cardiac arrhythmia (disorder) "
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HNA
* group[=].element[=].display = "Hirnnervenausfälle"
* group[=].element[=].target.code = #73013002
* group[=].element[=].target.display = "Cranial nerve disorder (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HOP
* group[=].element[=].display = "Hirnorganisches Psychosyndrom (z. B. „Durchgangssyndrom“)"
* group[=].element[=].target.code = #2776000
* group[=].element[=].target.display = "Delirium (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HYB
* group[=].element[=].display = "Hyperbilirubinämie"
* group[=].element[=].target.code = #14783006
* group[=].element[=].target.display = "Hyperbilirubinemia (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HYF
* group[=].element[=].display = "Hypopharynxfistel"
* group[=].element[=].target.code = #126663003
* group[=].element[=].target.display = "Disorder of hypopharynx (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #IFV
* group[=].element[=].display = "Ileofemorale Venenthrombose"
* group[=].element[=].target.code = #234044007
* group[=].element[=].target.display = "Iliofemoral deep vein thrombosis (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #KAS
* group[=].element[=].display = "Kardiogener Schock"
* group[=].element[=].target.code = #89138009
* group[=].element[=].target.display = "Cardiogenic shock (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #KES
* group[=].element[=].display = "Komplikationen einer Stomaanlage"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "kein äquivalenter SNOMED-Term, ggfs. über Postkoordination möglich"

* group[=].element[+].code = #KIM
* group[=].element[=].display = "Komplikation eines Implantates (Gefäßprothese, Totalendoprothese, Katheter), z. B. Dislokation"
* group[=].element[=].target.code = #19220005
* group[=].element[=].target.display = "Complication of implant (disorder) "
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #KRA
* group[=].element[=].display = "Krampfanfall"
* group[=].element[=].target.code = #91175000
* group[=].element[=].target.display = "Seizure (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #KDS
* group[=].element[=].display = "Kurzdarmsyndrom"
* group[=].element[=].target.code = #26629001
* group[=].element[=].target.display = "Short bowel syndrome (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LEV
* group[=].element[=].display = "Leberversagen"
* group[=].element[=].target.code = #59927004
* group[=].element[=].target.display = "Hepatic failure (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LOE
* group[=].element[=].display = "Lungenödem"
* group[=].element[=].target.code = #19242006
* group[=].element[=].target.display = "Pulmonary edema (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LYF
* group[=].element[=].display = "Lymphfistel"
* group[=].element[=].target.code = #234105001
* group[=].element[=].target.display = "Lymph fistula (disorder) "
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LYE
* group[=].element[=].display = "Lymphozele"
* group[=].element[=].target.code = #234109007
* group[=].element[=].target.display = "Lymphocele (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #MES
* group[=].element[=].display = "Magenentleerungsstörung"
* group[=].element[=].target.code = #386211005
* group[=].element[=].target.display = "Disorder of function of stomach (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #MIL
* group[=].element[=].display = "Mechanischer Ileus"
* group[=].element[=].target.code = #46420000
* group[=].element[=].target.display = "Mechanical ileus (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #MED
* group[=].element[=].display = "Mediastinitis"
* group[=].element[=].target.code = #373409004
* group[=].element[=].target.display = "Inflammatory disorder of mediastinum (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #MAT
* group[=].element[=].display = "Mesenterialarterien- oder -venenthrombose"
* group[=].element[=].target.code = #243410003
* group[=].element[=].target.display = "Thrombosis of mesenteric artery (disorder)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "es existiert weder das gemeinsame noch ein für Mesenterialvenenthrombose spezifisches Konzept in SNOMED"

* group[=].element[+].code = #NIN
* group[=].element[=].display = "Nahtinsuffizienz, anderweitig nicht erwähnt"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "kein äquivalenter SNOMED-Term, ggfs. über Postkoordination möglich"

* group[=].element[+].code = #MYI
* group[=].element[=].display = "Myokardinfarkt"
* group[=].element[=].target.code = #22298006
* group[=].element[=].target.display = "Myocardial infarction (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #RNB
* group[=].element[=].display = "Nachblutung, revisionsbedürftig, anderweitig nicht erwähnt"
* group[=].element[=].target.code = #308896002
* group[=].element[=].target.display = "Secondary hemorrhage postprocedure (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #NAB
* group[=].element[=].display = "Nachblutung, nicht revisionsbedürftig, anderweitig nicht erwähnt"
* group[=].element[=].target.code = #110265006
* group[=].element[=].target.display = "Postoperative hemorrhage (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #OES
* group[=].element[=].display = "Ösophagitis"
* group[=].element[=].target.code = #16761005
* group[=].element[=].target.display = "Esophagitis (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PPA
* group[=].element[=].display = "Periphere Parese"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "kein äquivalenter SNOMED-Term, ggfs. über Postkoordination möglich"

// Wert von equivalence muss noch überprüft werden
* group[=].element[+].code = #OSM
* group[=].element[=].display = "Osteitis, Osteomyelitis"
* group[=].element[=].target.code = #274144001
* group[=].element[=].target.display = "Bone inflammatory disease (disorder)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Spezifische Kodierung für Knochenentzündung"
* group[=].element[+].target.code = #60168000
* group[=].element[=].target.display = "Osteomyelitis (disorder) "
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Spezifische Kodierung für Knochenmarksentzündung"

* group[=].element[+].code = #PAF
* group[=].element[=].display = "Pankreasfistel"
* group[=].element[=].target.code = #25803005
* group[=].element[=].target.display = "Pancreatic fistula (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PIT
* group[=].element[=].display = "Pankreatitis"
* group[=].element[=].target.code = #75694006
* group[=].element[=].target.display = "Pancreatitis (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PAB
* group[=].element[=].display = "Peranale Blutung"
* group[=].element[=].target.code = #6072007
* group[=].element[=].target.display = "Bleeding from anus (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PAV
* group[=].element[=].display = "Peripherer arterieller Verschluss (Embolie, Thrombose)"
* group[=].element[=].target.code = #399957001
* group[=].element[=].target.display = "Peripheral arterial occlusive disease (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PER
* group[=].element[=].display = "Peritonitis"
* group[=].element[=].target.code = #48661000
* group[=].element[=].target.display = "Peritonitis (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PLB
* group[=].element[=].display = "Platzbauch"
* group[=].element[=].target.code = #698817002
* group[=].element[=].target.display = "Dehiscence of postoperative abdominal wound (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PEY
* group[=].element[=].display = "Pleuraempyem"
* group[=].element[=].target.code = #58554001
* group[=].element[=].target.display = "Empyema of pleura (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PLE
* group[=].element[=].display = "Pleuraerguss"
* group[=].element[=].target.code = #60046008
* group[=].element[=].target.display = "Pleural effusion (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PMN
* group[=].element[=].display = "Pneumonie"
* group[=].element[=].target.code = #233604007
* group[=].element[=].target.display = "Pneumonia (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PNT
* group[=].element[=].display = "Pneumothorax"
* group[=].element[=].target.code = #36118008
* group[=].element[=].target.display = "Pneumothorax (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PDA
* group[=].element[=].display = "Protrahierte Darmatonie (paralytischer Ileus)"
* group[=].element[=].target.code = #1162567000
* group[=].element[=].target.display = "Postoperative paralytic ileus (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PAE
* group[=].element[=].display = "Pulmonalarterienembolie"
* group[=].element[=].target.code = #59282003
* group[=].element[=].target.display = "Pulmonary embolism (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #RPA
* group[=].element[=].display = "Rekurrensparese"
* group[=].element[=].target.code = #1052239007
* group[=].element[=].target.display = "Paresis of left vocal cord (disorder)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.code = #1052240009
* group[=].element[=].target.display = "Paresis of right vocal cord (disorder)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Kein gemeinsamer Überbegriff"


* group[=].element[+].code = #RIN
* group[=].element[=].display = "Respiratorische Insuffizienz"
* group[=].element[=].target.code = #409623005
* group[=].element[=].target.display = "Respiratory insufficiency (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SKI
* group[=].element[=].display = "Septische Komplikation eines Implantates"
* group[=].element[=].target.code = #19220005
* group[=].element[=].target.display = "Complication of implant (disorder)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Komplikation hat keine spezifischen Sepsis-Unterkonzepte, ggfs. über Postkoordination "

* group[=].element[+].code = #SES
* group[=].element[=].display = "Septischer Schock"
* group[=].element[=].target.code = #76571007
* group[=].element[=].target.display = "Septic shock (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SFH
* group[=].element[=].display = "Störungen des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
* group[=].element[=].target.code = #76314005
* group[=].element[=].target.display = "Disorder of fluid AND/OR electrolyte (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #STK
* group[=].element[=].display = "Stomakomplikation (z. B. Blutung, Nekrose, Stenose)"
* group[=].element[=].target.code = #302918009
* group[=].element[=].target.display = "Disorder of stoma (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #TZP
* group[=].element[=].display = "Thrombozytopenie"
* group[=].element[=].target.code = #302215000
* group[=].element[=].target.display = "Thrombocytopenic disorder (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #TIA
* group[=].element[=].display = "TIA (transitorische ischämische Attacke) oder Rind (reversibles ischämisches neurologisches Defizit)"
* group[=].element[=].target.code = #266257000
* group[=].element[=].target.display = "Transient ischemic attack (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #TRZ
* group[=].element[=].display = "Transfusionszwischenfall"
* group[=].element[=].target.code = #82545002
* group[=].element[=].target.display = "Blood transfusion reaction (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #WUH
* group[=].element[=].display = "Wundhämatom (konservativ therapiert)"
* group[=].element[=].target.code = #239160006
* group[=].element[=].target.display = "Wound hematoma (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #WSS
* group[=].element[=].display = "Wundheilungsstörung, subkutane"
* group[=].element[=].target.code = #271618001
* group[=].element[=].target.display = "Impaired wound healing (finding)"
* group[=].element[=].target.equivalence = #equivalent
