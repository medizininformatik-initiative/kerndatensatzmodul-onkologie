

Instance: mii-exa-onko-example-Procedure
InstanceOf: mii-pr-onko-genetische-variante
Usage: #example
* status = #final
* subject = Reference(Patient/example)
/* 
KDS Onkologie – klinische Testdaten
Disclaimer: Der Therapieverlauf entspricht einer möglichen leitliniengerechten Therapie, Daten und Verlauf sind für Testzwecke konstruiert, Ähnlichkeiten mit tatsächlichen Krankheitsverläufen sind zufällig.
Szenario 1
Kim Musterperson, geb. 14.03.1956
*/
// Umsetzung als FHIR R4 Patient, ggfs. in finaler Version als MII Patient

Instance: OncologicExamplePatientKimMusterperson
InstanceOf: Patient // or MII Patient, but then I guess I have to import it? 
Usage: #example
* birthDate = 1956-03-14
* name.family = "Musterperson"
* name.given = "Kim"

// 10.06.2021 CT Abdomen mit KM: V.a. Peritonealkarzinose, Aszites im gesamten Bauchraum, Raumforderung Ovar rechts. Mesenteriale retroperitoneale LK-Metastasen, V.a. Lebermetastasierung
// Diagnostische Eingriffe und Bildgebung werden im oBDS nicht gesondert kodiert, dafür dann Prozedur OPS

Instance: OncologicExamplePatientProcedure1
InstanceOf: $mii-procedure
Usage: #example  
Description: "10.06.2021 CT Abdomen mit KM"
* status = #completed
* subject = Reference(OncologicExamplePatientKimMusterperson)
* code.coding = $OPS#3-225 "Computertomographie des Beckens mit Kontrastmittel"
* code.coding.version = "OPS 2024"
* performedDateTime = 2021-06-10
/*
Instance: OncologicExamplePatientPrimaryDiagnosis
InstanceOf: mii-pr-onko-diagnose
Usage: #example
Description: "Primärdiagnose"
* recordedDate = 2021-06-10
* subject = Reference(OncologicExamplePatientKimMusterperson)
* clinicalStatus = #active //zum Zeitpunkt der Diagnosestellung
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #2 "klinische Diagnostik" // steht für "Alle Untersuchungstechniken, einschl. Röntgen, Endoskopie, bildgeb. Verfahren, Ultraschall, explorativer Eingriffe(wie Laparotomie) und Autopsie, aber ohne Gewebsuntersuchungen"
* code.coding  = $ICD10GM#C48.2 "Bösartige Neubildung des Retroperitoneums und Peritoneums - Peritoneum, nicht näher bezeichnet "
// 389026000 | Ascites (disorder) | 
* bodySite = $ICDO3#C56.9 "Ovar" // mögliche Lokalisation des Haupttumors? 


// Kann man auf Basis von "Mesenteriale retroperitoneale LK-Metastasen, V.a. Lebermetastasierung" ein NM-Staging machen? Ovar
// T3 N1 M1b accoding to 8th TNM UICC ?? Dann 4 Tumorinstanzen
*/
Instance: OncologicExamplePatientPrimaryDiagnosis2
InstanceOf: mii-pr-onko-diagnose
Usage: #example
Description: "Primärdiagnose"
* recordedDate = 2021-06-10
* subject = Reference(OncologicExamplePatientKimMusterperson)
* clinicalStatus = #active //zum Zeitpunkt der Diagnosestellung
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #2 "klinische Diagnostik" // steht für "Alle Untersuchungstechniken, einschl. Röntgen, Endoskopie, bildgeb. Verfahren, Ultraschall, explorativer Eingriffe(wie Laparotomie) und Autopsie, aber ohne Gewebsuntersuchungen"
* code.coding  = $ICD10GM#C48.2 "Bösartige Neubildung des Retroperitoneums und Peritoneums - Peritoneum, nicht näher bezeichnet "
// 389026000 | Ascites (disorder) | 
* bodySite = $ICDO3#C56.9 "Ovar" // mögliche Lokalisation des Haupttumors? 

//15.06.2021 Aszitespunktion: mit malignen Tumorzellen. Zytologisch mögliches Ovarial-CA.
// Modeling einer condition Ressource mit Ov-CA. ICD-10 + ICD-O Topopgraphe wahrscheinlich klar, ICD-O Morphologisch noch nicht
Instance: OncologicExamplePatientProcedure2
InstanceOf: $mii-procedure
Usage: #example  
Description: "15.06.2021 Aszitespunktion"
* status = #completed
* subject = Reference(OncologicExamplePatientKimMusterperson)
* code.coding = $OPS#1-853.2 "Aszitespunktion"
* performedDateTime = 2021-06-15

//22.06.2021 CT Thorax: kein Hinweis auf Metastasen. 
// Modelling als cM0

Instance: OncologicExamplePatientProcedure3
InstanceOf: $mii-procedure
Usage: #example  
Description: "22.06.2021 CT Thorax: kein Hinweis auf Metastasen."
* status = #completed
* subject = Reference(OncologicExamplePatientKimMusterperson)
* code.coding = $OPS#1-853.2 "Aszitespunktion"
* performedDateTime = 2021-06-22

Instance: TNM-M-Observation-1
InstanceOf: MII_PR_Onko_TNM_M_Kategorie
Usage: #example  
Description: "."
* status = #completed
* subject = Reference(OncologicExamplePatientKimMusterperson)
* code.extension[cpPraefix].valueCodeableConcept = $UICC#c
* code.coding = $SCT#1-853.2 "M - Distant metastasis stage"
* effectiveDateTime = 2021-06-22
* method = #8
* partOf = Reference(OncologicExamplePatientProcedure3)

//Tumorboard 25.06.2021: Eindeutiges CT-Korrelat und zytologisch ED Ovarial-CA. Neoadjuvante Chemotherapie mit 3 Zyklen Carboplatin/Paxlitaxel, Intervall-Debulking im Verlauf. 
// Modelling als Tumorboard mit Empfehlung Carboplatin/Paxlitaxel. Debulking deutet auf geplante partielle Resektionen hin.
Instance: Tumorkonferenz-1
InstanceOf: MII_PR_Onko_Tumorkonferenz
Usage: #example  
Description: "."
* subject = Reference(OncologicExamplePatientKimMusterperson)
* status = #completed
* intent = #plan
* category.coding = $mii-cs-onko-therapieplanung-typ#praeth "Prätherapeutische Tumorkonferenz" 
* created = 2021-06-25
* addresses = Reference(OncologicExamplePatientPrimaryDiagnosis2)
* activity[0].detail.code = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[0].detail.status = #completed // In den Daten nicht enthalten, aber die Leitlinien sehen 6 Zyklen vor. Es wurden nur 3 Zyklen gemacht
* activity[0].detail.statusReason = $mii-cs-onko-therapieabweichung#N
* activity[1].detail.code = $mii-cs-onko-therapie-typ#OP
* activity[1].detail.status = #completed
* activity[1].detail.statusReason = $mii-cs-onko-therapieabweichung#N




//L01CD01 Paclitaxel
//L01XA02 Carboplatin
Instance: SystemicTherapy1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Description: "."
* subject = Reference(OncologicExamplePatientKimMusterperson)
* status = #completed
* code.coding = $OPS#8-54 "Chemotherapie " // bei Bedarf spezifischer? 
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // impliziert 
* extension[Stellung].valueCodeableConcept = $mii-cs-onko-systemische-therapie-stellung#O "ohne Bezug zur operativen Therapie"
* performedPeriod.start = 2021-07-05
* performedPeriod.end = 2021-09-05

Instance: SystemicTherapyMedication1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Description: "."
* subject = Reference(OncologicExamplePatientKimMusterperson)
* status = #completed
* effectivePeriod.start = 2021-07-05  
* effectivePeriod.end = 2021-09-05
* medicationCodeableConcept.coding[atcClassDe][0] = $ATC_DE#L01CD01 "Paclitaxel"
* medicationCodeableConcept.coding[atcClassDe][1] = $ATC_DE#L01XA02 "Carboplatin"
* partOf = Reference(SystemicTherapy1)
* note.text = "CarboTax"



//05.07.21-25.07.21 Z1 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21
//26.07.21-15.08.21 Z2 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21
//16.08.21-05.09.21 Z3 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21

// Modelling als SystemicTherapy (Intent?),MedicationStatement, Anfangs-Enddauer als Procedure, ATC Codes raussuchen (von 21?)
/*
15.09.21 CT Thorax/Abdomen: Beurteilung
Peritonelakarzinose zunehmend, metastasensuspekte Lymphknoten retroperitoneal. V.a. konstante Lebermetastasierung
// Symptomatik wird so denke ich nicht im oBDS abgebildet, ggfs. MII Conditions mit Primärdiagnose ED? 

16.09.21 Tumorboard: 
Deutlicher Tumorprogress. OP zur histologischen Sicherung bereits geplant, optimales Debulking anstreben.
// deutlicher Tumorprogress unklar zu kodieren. 

30.09.2021 OP
Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.
// 
Histologie: Resektat vom 30.09.2021
Neoplasie des Ovars (Z.n. neoadjuvanter Therapie) (ICD-10-C56) Ovar o.n.A. (ICD-O-C56.9) Untersuchungsmaterial: Resektat WHO-Typ: Seröses Adenokarzinom (ICD-O M-8441/3) 
Lokale Tumorausbreitung: Ovartumor links mit einer max. Größe von 2,2 cm und tumorinfiltrierter Kapsel mit Nachweis von Tumorzellen auf der Ovaroberfläche, Anteil vitaler Tumorzellen von ca. 80 %. 
UICC-Klassifikation (8. Auflage): ypT3c. pM1b (HEP) L1. V0. Pn0 FIGO: IVB 
// dieser Text in den Pathobefundbericht, zusätzlich kodierung als einzelne Observations. 

Immunhistochemie: (Beispiel für einige Marker, in echtem Befund stehen viel mehr)  Vereinzelt kräftige nukleäre Expression des Progesteronrezeptors. Positivität für P16 im Tumor. Der Proliferationsindex mittels MIB-1 liegt bei max. 38%. Mikroskopie: Partieller Nachweis von Muzin. 
Kommentar: Das immunhistochemische Markerprofil passt zu einem high-grade serösen Adenokarzinom des Ovars (Z.n. neoadjuvanter CTX)
// Joa, auch mit zu Patho. ggfs. Modellierung eines PathoBefundberichts

Tumorboard 25.10.2021 :
Durch OP makroskopische Komplett-Resektion erreicht.
Jedoch Progress unter Neoadjuvanz.
Daher Umstellung auf Carboplatin/Gemcitabine
Humangenetische Vorstellung empfohlen

08.11.21-28.11.21 Z1 Carboplatin AUC 4 d1, Gemcitabin 1000mg/m2 d1+d8 Wdh d22
29.11.21- 19.12.21  Z2 Carboplatin AUC 4 d1, Gemcitabin 1000mg/m2 d1+d8 Wdh d22
20.12.21-09.01.22 Z3 Carboplatin AUC 4 d1, Gemcitabin 1000mg/m2 d1+d8 Wdh d22
15.01.22 CT: // Verlaufs-Observation
Abdomen:
- Regredienz der bekannten Peritonealkarzinose
- Leber ohne eindeutigen Hinweis auf Metastasierung, bei Z.n. atpyischer Lebersegmentresektion a.e. narbige Veränderungen
Beurteilung
Regredienter Befund, bei Z.n. zwischenzeitig operativem Debulking

20.01.22 Tumorboard: 
Erhaltungstherapie mit Niraparib bei BRCAwt // genetische Variante
Restaging in 3 Monaten mit CT Thorax/Abdomen und TM
25.01.22 Beginn Niraparib 300mg d1-28 wdh d28 //Systemic Therapy


 */