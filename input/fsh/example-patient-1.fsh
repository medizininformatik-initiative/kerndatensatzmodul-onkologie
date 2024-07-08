

// /* 
// KDS Onkologie – klinische Testdaten
// Disclaimer: Der Therapieverlauf entspricht einer möglichen leitliniengerechten Therapie, Daten und Verlauf sind für Testzwecke konstruiert, Ähnlichkeiten mit tatsächlichen Krankheitsverläufen sind zufällig.
// Szenario 1
// Kim Musterperson, geb. 14.03.1956
// */
// // Umsetzung als FHIR R4 Patient, ggfs. in finaler Version als MII Patient

// Instance: PatientKimMusterperson
// InstanceOf: Patient // or MII Patient, but then I guess I have to import it? 
// Usage: #example
// * birthDate = 1956-03-14
// * name.family = "Musterperson"
// * name.given = "Kim"

// // 10.06.2021 CT Abdomen mit KM: V.a. Peritonealkarzinose, Aszites im gesamten Bauchraum, Raumforderung Ovar rechts. Mesenteriale retroperitoneale LK-Metastasen, V.a. Lebermetastasierung
// // Diagnostische Eingriffe und Bildgebung werden im oBDS nicht gesondert kodiert, dafür dann Prozedur OPS

// Instance: PatientKimMusterperson-Procedure-1
// InstanceOf: $mii-procedure
// Usage: #example  
// Description: "10.06.2021 CT Abdomen mit KM"
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $OPS#3-222 "Computertomographie des Abdomens mit Kontrastmittel"
// * code.coding.version = "OPS 2024"
// * performedDateTime = 2021-06-10
// /*
// Instance: OncologicExamplePatientPrimaryDiagnosis
// InstanceOf: mii-pr-onko-diagnose
// Usage: #example
// Description: "Primärdiagnose"
// * recordedDate = 2021-06-10
// * subject = Reference(OncologicExamplePatientKimMusterperson)
// * clinicalStatus = #active //zum Zeitpunkt der Diagnosestellung
// * verificationStatus.coding[primaertumorDiagnosesicherung].code = #2 "klinische Diagnostik" // steht für "Alle Untersuchungstechniken, einschl. Röntgen, Endoskopie, bildgeb. Verfahren, Ultraschall, explorativer Eingriffe(wie Laparotomie) und Autopsie, aber ohne Gewebsuntersuchungen"
// * code.coding  = $ICD10GM#C48.2 "Bösartige Neubildung des Retroperitoneums und Peritoneums - Peritoneum, nicht näher bezeichnet "
// // 389026000 | Ascites (disorder) | 
// * bodySite = $ICDO3#C56.9 "Ovar" // mögliche Lokalisation des Haupttumors? 


// // Kann man auf Basis von "Mesenteriale retroperitoneale LK-Metastasen, V.a. Lebermetastasierung" ein NM-Staging machen? Ovar
// // T3 N1 M1 accoding to 8th TNM UICC ?? Dann 4 Ressourcen von klinischem TNM 
// */
// Instance: PatientKimMusterperson-Diagnosis-1
// InstanceOf: mii-pr-onko-diagnose
// Usage: #example
// Description: "Primärdiagnose"
// * recordedDate = 2021-06-10
// * subject = Reference(PatientKimMusterperson)
// * clinicalStatus = #active //zum Zeitpunkt der Diagnosestellung
// * verificationStatus.coding[primaertumorDiagnosesicherung].code = #2 "klinische Diagnostik" // steht für "Alle Untersuchungstechniken, einschl. Röntgen, Endoskopie, bildgeb. Verfahren, Ultraschall, explorativer Eingriffe(wie Laparotomie) und Autopsie, aber ohne Gewebsuntersuchungen"
// * code.coding  = $ICD10GM#C48.2 "Bösartige Neubildung des Retroperitoneums und Peritoneums - Peritoneum, nicht näher bezeichnet "
// // 389026000 | Ascites (disorder) | 
// * bodySite = $ICDO3#C56.9 "Ovar" // mögliche Lokalisation des Haupttumors? 

// //15.06.2021 Aszitespunktion: mit malignen Tumorzellen. Zytologisch mögliches Ovarial-CA.
// // Modeling einer condition Ressource mit Ov-CA. ICD-10 + ICD-O Topopgraphe wahrscheinlich klar, ICD-O Morphologisch noch nicht
// Instance: PatientKimMusterperson-Procedure-2
// InstanceOf: $mii-procedure
// Usage: #example  
// Description: "15.06.2021 Aszitespunktion"
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $OPS#1-853.2 "Aszitespunktion"
// * performedDateTime = 2021-06-15

// //22.06.2021 CT Thorax: kein Hinweis auf Metastasen. 
// // Modelling als cM0

// Instance: PatientKimMusterperson-Procedure-3
// InstanceOf: $mii-procedure
// Usage: #example  
// Description: "22.06.2021 CT Thorax: kein Hinweis auf Metastasen."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $OPS#1-853.2 "CT Thorax"
// * performedDateTime = 2021-06-22

// Instance: PatientKimMusterperson-TNM-Observation-1-M
// InstanceOf: MII_PR_Onko_TNM_M_Kategorie
// Usage: #example  
// Description: "."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.extension[cpPraefix].valueCodeableConcept = $UICC#c
// * code.coding = $SCT#1-853.2 "M - Distant metastasis stage"
// * effectiveDateTime = 2021-06-22
// * method = #8
// * partOf = Reference(PatientKimMusterperson-Procedure-3)

// //Tumorboard 25.06.2021: Eindeutiges CT-Korrelat und zytologisch ED Ovarial-CA. Neoadjuvante Chemotherapie mit 3 Zyklen Carboplatin/Paxlitaxel, Intervall-Debulking im Verlauf. 
// // Modelling als Tumorboard mit Empfehlung Carboplatin/Paxlitaxel. Debulking deutet auf geplante partielle Resektionen hin.
// Instance: PatientKimMusterperson-Tumorkonferenz-1
// InstanceOf: MII_PR_Onko_Tumorkonferenz
// Usage: #example  
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * intent = #plan
// * category.coding = $mii-cs-onko-therapieplanung-typ#praeth "Prätherapeutische Tumorkonferenz" 
// * created = 2021-06-25
// * addresses = Reference(PatientKimMusterperson-Diagnosis-1)
// * activity[0].detail.code = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
// * activity[0].detail.status = #completed // Es wurden nur 3 Zyklen geplant, die alle durchgeführt wurden
// * activity[0].detail.statusReason = $mii-cs-onko-therapieabweichung#N
// * activity[1].detail.code = $mii-cs-onko-therapie-typ#OP
// * activity[1].detail.status = #completed
// * activity[1].detail.statusReason = $mii-cs-onko-therapieabweichung#N




// //L01CD01 Paclitaxel
// //L01XA02 Carboplatin
// Instance: PatientKimMusterperson-SystemicTherapy-1
// InstanceOf: MII_PR_Onko_Systemische_Therapie
// Usage: #example
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * code.coding = $OPS#8-54 "Chemotherapie " // bei Bedarf spezifischer? 
// * extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // impliziert 
// * extension[Stellung].valueCodeableConcept = $mii-cs-onko-therapie-stellung#N "neo"
// * performedPeriod.start = 2021-07-05
// * performedPeriod.end = 2021-09-05
// * basedOn = Reference(PatientKimMusterperson-Tumorkonferenz-1)

// Instance: PatientKimMusterperson-SystemicTherapyMedication-1
// InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
// Usage: #example
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * effectivePeriod.start = 2021-07-05  
// * effectivePeriod.end = 2021-09-05
// * medicationCodeableConcept.coding[atcClassDe][0] = $ATC_DE#L01CD01 "Paclitaxel"
// * medicationCodeableConcept.coding[atcClassDe][1] = $ATC_DE#L01XA02 "Carboplatin"
// * partOf = Reference(SystemicTherapy1)
// * note.text = "CarboTax"



// //05.07.21-25.07.21 Z1 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21
// //26.07.21-15.08.21 Z2 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21
// //16.08.21-05.09.21 Z3 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21
// // Modelling als SystemicTherapy (Intent?),MedicationStatement, Anfangs-Enddauer als Procedure, ATC Codes raussuchen (von 21?)
// // die genaueren Informationen können als MedicationAdministration kodiert werden -> außerhalb oBDS

// Instance: PatientKimMusterperson-Verlauf-2021-09-15
// InstanceOf: MII_PR_Onko_Verlauf
// Usage: #example
// Description: ". "
// * subject = Reference(PatientKimMusterperson)
// * status = #final
// * effectiveDateTime = 2021-09-15
// * code.coding = $mii-cs-onko-verlauf-gesamtbeurteilung#P "Progression"
// * component[Tumor_Verlauf].code.coding = $SCT#277062004 "Status des Residualtumors"
// * component[Tumor_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#P "Tumorreste (Residualtumor) Progress"

// * component[Lymphknoten_Verlauf].code.coding =  $SCT#277060007 "Status der lymphatischen Tumorinvasion"
// * component[Lymphknoten_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-lymphknoten#R "neu aufgetretenes Lymphknotenrezidiv" // Text nicht aussagekräftig, ggfs. auch als #P "bekannter Lymphknotenbefall Progress" oder  #N "bekannter Lymphknotenbefall No Change" zu kodieren

// * component[Fernmetastasen_Verlauf].code.coding = $SCT#260874000 "Status der Metastasen"
// * component[Fernmetastasen_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-fernmetastasen#K "Keine Änderung"




// //15.09.21 CT Thorax/Abdomen: Beurteilung
// //Peritonelakarzinose zunehmend, metastasensuspekte Lymphknoten retroperitoneal. V.a. konstante Lebermetastasierung
// // Abbildung außerhalb des oBDS als Prozedur.codes = 3-222 und 3-225 (mit Kontrastmittel)
// // Abildung der Conditions 
// //TNM-Staging angebracht? zu wenig Informationen? cT3c cN1 cM0 ? 


// //16.09.21 Tumorboard: 
// //Deutlicher Tumorprogress. OP zur histologischen Sicherung bereits geplant, optimales Debulking anstreben.
// // deutlicher Tumorprogress unklar zu kodieren. Verlaufsbeobachtung und CarePlan

// Instance: PatientKimMusterperson-Tumorkonferenz-2
// InstanceOf: MII_PR_Onko_Tumorkonferenz
// Usage: #example  
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * intent = #plan
// * category.coding = $mii-cs-onko-therapieplanung-typ#praeth "Prätherapeutische Tumorkonferenz" 
// * created = 2021-09-16
// * addresses = Reference(PatientKimMusterperson-Diagnosis-1)
// * activity[0].detail.code = $mii-cs-onko-therapie-typ#OP
// * activity[0].detail.status = #completed
// * activity[0].detail.statusReason = $mii-cs-onko-therapieabweichung#N 

// Instance: PatientKimMusterperson-Procedure-4
// InstanceOf: $mii-procedure
// Usage: #example  
// Description: "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding[0] = $OPS#5-547.0 "Resektion von Gewebe ohne sichere Organzuordnung - intraperitoneal" // alternativ 5-590.8 Resektion von Gewebe ohne sichere Organzuordnung
// * code.coding[1] = $OPS#5-683 "Hysterektomie"
// * code.coding[2] = $OPS#5-661 "bilaterale Adnexektomie / Salpingektomie"
// * code.coding[3] = $OPS#5-501 "atypische Lebersegmentresektion"
// * performedDateTime = 2021-09-30
// * outcome = $mii-cs-onko-residualstatus#R0

// Instance: PatientKimMusterperson-PathoReport-1
// InstanceOf: DiagnosticReport
// Usage: #example  
// Description: "Pathoreport incl. Immunhistochemie"
// * subject = Reference(PatientKimMusterperson)
// * status = #complete
// * code.coding = $LOINC#60568-3 "Pathological laboratory report"
// * conclusion = "Histologie: Resektat vom 30.09.2021: Neoplasie des Ovars (Z.n. neoadjuvanter Therapie) (ICD-10-C56) Ovar o.n.A. (ICD-O-C56.9) Untersuchungsmaterial: Resektat WHO-Typ: Seröses Adenokarzinom (ICD-O M-8441/3) Lokale Tumorausbreitung: Ovartumor links mit einer max. Größe von 2,2 cm und tumorinfiltrierter Kapsel mit Nachweis von Tumorzellen auf der Ovaroberfläche, Anteil vitaler Tumorzellen von ca. 80 %. UICC-Klassifikation (8. Auflage): ypT3c. pM1b (HEP) L1. V0. Pn0 FIGO: IVB"


// Instance: PatientKimMusterperson-Specimen-1
// InstanceOf: Specimen
// Usage: #example  
// Description: "Tumorresektat Primärtumor"
// * subject = Reference(PatientKimMusterperson)
// * identifier.value = "12345678"
// * collection.collectedDateTime = 2021-09-30 


// Instance: TNM-Klassifikation-Observation-2
// InstanceOf: MII_PR_Onko_TNM_Klassifikation
// Usage: #example  
// Description: ". "
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $SCT#263642008 "Tumor-node-metastasis (TNM) staging classification (attribute)"
// * effectiveDateTime = 2021-06-22
// * method = #8
// * partOf = Reference(PatientKimMusterperson-Procedure-4)

// Instance: TNM-T-Observation-2
// InstanceOf: MII_PR_Onko_TNM_T_Kategorie
// Usage: #example  
// Description: "Lokale Tumorausbreitung: Ovartumor links mit einer max. Größe von 2,2 cm und tumorinfiltrierter Kapsel mit Nachweis von Tumorzellen auf der Ovaroberfläche, Anteil vitaler Tumorzellen von ca. 80 %. "
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.extension[cpPraefix].valueCodeableConcept = $UICC#p
// * code.coding = $SCT#384625004 "pT category (observable entity)"
// * effectiveDateTime = 2021-06-22
// * method = #8
// * partOf = Reference(PatientKimMusterperson-Procedure-4)
// * valueCodeableConcept.coding = $UICC#T3c

// Instance: TNM-M-Observation-2
// InstanceOf: MII_PR_Onko_TNM_M_Kategorie
// Usage: #example  
// Description: "."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.extension[cpPraefix].valueCodeableConcept = $UICC#p
// * code.coding = $SCT#371497001 "pM category (observable entity)"
// * effectiveDateTime = 2021-06-22
// * method = #8
// * partOf = Reference(PatientKimMusterperson-Procedure-4)
// * valueCodeableConcept.coding = $UICC#M1b

// Instance: TNM-y-Symbol-Observation-2
// InstanceOf: MII_PR_Onko_TNM_y_Symbol
// Usage: #example  
// Description: "."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $LOINC#101658-3
// * effectiveDateTime = 2021-06-22
// * method = #8
// * partOf = Reference(PatientKimMusterperson-Procedure-4)
// * valueCodeableConcept.coding = $SCT#421755005

// Instance: TNM-Pn-Observation-2
// InstanceOf: MII_PR_Onko_TNM_Pn_Kategorie
// Usage: #example  
// Description: "."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $SCT#371513001
// * effectiveDateTime = 2021-06-22
// * method = #8
// * partOf = Reference(PatientKimMusterperson-Procedure-4)
// * valueCodeableConcept.coding = $UICC#Pn0

// Instance: TNM-L-Observation-2
// InstanceOf: MII_PR_Onko_TNM_L_Kategorie
// Usage: #example  
// Description: "."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $SCT#395715009
// * effectiveDateTime = 2021-06-22
// * method = #8
// * partOf = Reference(PatientKimMusterperson-Procedure-4)
// * valueCodeableConcept.coding = $UICC#L1

// Instance: TNM-V-Observation-2
// InstanceOf: MII_PR_Onko_TNM_L_Kategorie
// Usage: #example  
// Description: "."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $SCT#371493002
// * effectiveDateTime = 2021-06-22
// * method = #8
// * partOf = Reference(PatientKimMusterperson-Procedure-4)
// * valueCodeableConcept.coding = $UICC#V0

// Instance: FIGO-Observation-2
// InstanceOf: MII_PR_Onko_Weitere_Klassifikationen
// Usage: #example
// Description: "."
// * status = #completed
// * subject = Reference(PatientKimMusterperson)
// * code.coding = $SCT#385361009 "International Federation of Gynecology and Obstetrics tumor stage (observable entity)"
// * code.text = "FIGO Klassifikation für ovariale Tumore"
// * effectiveDateTime = 2021-06-22
// * method = $SCT#254386003 "International Federation of Gynecology and Obstetrics ovarian tumor staging system (tumor staging)"
// * partOf = Reference(PatientKimMusterperson-Procedure-4)
// * valueCodeableConcept.coding.code = #IVB


// /*
// Histologie: Resektat vom 30.09.2021
// Neoplasie des Ovars (Z.n. neoadjuvanter Therapie) (ICD-10-C56) Ovar o.n.A. (ICD-O-C56.9) Untersuchungsmaterial: Resektat WHO-Typ: Seröses Adenokarzinom (ICD-O M-8441/3) 
// Lokale Tumorausbreitung: Ovartumor links mit einer max. Größe von 2,2 cm und tumorinfiltrierter Kapsel mit Nachweis von Tumorzellen auf der Ovaroberfläche, Anteil vitaler Tumorzellen von ca. 80 %. 
// UICC-Klassifikation (8. Auflage): ypT3c. pM1b (HEP) L1. V0. Pn0 FIGO: IVB 
// // dieser Text in den Pathobefundbericht, zusätzlich kodierung als einzelne Observations. 

// Immunhistochemie: (Beispiel für einige Marker, in echtem Befund stehen viel mehr)  Vereinzelt kräftige nukleäre Expression des Progesteronrezeptors. Positivität für P16 im Tumor. Der Proliferationsindex mittels MIB-1 liegt bei max. 38%. Mikroskopie: Partieller Nachweis von Muzin. 

// Kommentar: Das immunhistochemische Markerprofil passt zu einem high-grade serösen Adenokarzinom des Ovars (Z.n. neoadjuvanter CTX)
// // Joa, auch mit zu Patho. ggfs. Modellierung eines PathoBefundberichts
// */
// Instance: PatientKimMusterperson-Tumorkonferenz-3
// InstanceOf: MII_PR_Onko_Tumorkonferenz
// Usage: #example  
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * intent = #plan
// * category.coding = $mii-cs-onko-therapieplanung-typ#postop "Posttherapeutische Tumorkonferenz" 
// * created = 2021-10-25
// * replaces = Reference(PatientKimMusterperson-Tumorkonferenz-2)
// * addresses = Reference(PatientKimMusterperson-PrimaryDiagnosis-2)
// * activity[0].detail.code = $mii-cs-onko-therapie-typ#CH
// * activity[0].detail.status = #completed // unklar, weil genaue Zyklenanzahl nicht beschrieben ist
// * activity[0].detail.statusReason = $mii-cs-onko-therapieabweichung#N

// Instance: PatientKimMusterperson-Verlauf-2021-10-25
// InstanceOf: MII_PR_Onko_Verlauf
// Usage: #example
// Description: ". "
// * subject = Reference(PatientKimMusterperson)
// * status = #final
// * effectiveDateTime = 2021-10-25
// * code.coding = $mii-cs-onko-verlauf-gesamtbeurteilung#V "Vollremission" // 26 Tage postop, aber sehr unsicher weil Neoadjuvanter progress
// * component[Tumor_Verlauf].code.coding = $SCT#277062004 "Status des Residualtumors"
// * component[Tumor_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#K "kein Tumor nachweisbar"


// /*
// Tumorboard 25.10.2021 :
// Durch OP makroskopische Komplett-Resektion erreicht.
// Jedoch Progress unter Neoadjuvanz.
// Daher Umstellung auf Carboplatin/Gemcitabine
// Humangenetische Vorstellung empfohlen // nicht über oBDS abbildbar
// */

// Instance: PatientKimMusterperson-SystemicTherapy-2
// InstanceOf: MII_PR_Onko_Systemische_Therapie
// Usage: #example
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * code.coding = $OPS#8-54 "Chemotherapie " // bei Bedarf spezifischer? 
// * extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // impliziert 
// * extension[Stellung].valueCodeableConcept = $mii-cs-onko-therapie-stellung#A "adjuvant"
// * performedPeriod.start = 2021-11-08
// * performedPeriod.end = 2022-01-09

// Instance: PatientKimMusterperson-SystemicTherapyMedication-2
// InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
// Usage: #example
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * effectivePeriod.start = 2021-11-08  
// * effectivePeriod.end = 2022-01-09
// * medicationCodeableConcept.coding[atcClassDe][0] = $ATC_DE#L01BC05 "Gemcitabin"
// * medicationCodeableConcept.coding[atcClassDe][1] = $ATC_DE#L01XA02 "Carboplatin"
// * partOf = Reference(PatientKimMusterperson-SystemicTherapy-2)
// * note.text = "Gem-Carbo"

// /*
// 08.11.21-28.11.21 Z1 Carboplatin AUC 4 d1, Gemcitabin 1000mg/m2 d1+d8 Wdh d22
// 29.11.21- 19.12.21  Z2 Carboplatin AUC 4 d1, Gemcitabin 1000mg/m2 d1+d8 Wdh d22
// 20.12.21-09.01.22 Z3 Carboplatin AUC 4 d1, Gemcitabin 1000mg/m2 d1+d8 Wdh d22

// 15.01.22 CT: // Verlaufs-Observation
// Abdomen:
// - Regredienz der bekannten Peritonealkarzinose
// - Leber ohne eindeutigen Hinweis auf Metastasierung, bei Z.n. atpyischer Lebersegmentresektion a.e. narbige Veränderungen
// Beurteilung
// Regredienter Befund, bei Z.n. zwischenzeitig operativem Debulking
// */

// Instance: PatientKimMusterperson-Verlauf-2022-01-22
// InstanceOf: MII_PR_Onko_Verlauf
// Usage: #example
// Description: ". "
// * subject = Reference(PatientKimMusterperson)
// * status = #final
// * effectiveDateTime = 2022-01-22
// * code.coding = $mii-cs-onko-verlauf-gesamtbeurteilung#V "Vollremission" 
// * component[Tumor_Verlauf].code.coding = $SCT#277062004 "Status des Residualtumors"
// * component[Tumor_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#T "Tumorreste (Residualtumor)"
// * component[Fernmetastasen_Verlauf].code.coding = $SCT#260874000 "Status der Metastasen"
// * component[Fernmetastasen_Verlauf].valueCodeableConcept = $mii-cs-onko-verlauf-fernmetastasen#K "Keine Fernmetastasen nachweisbar"

// /*
// 20.01.22 Tumorboard: 
// Erhaltungstherapie mit Niraparib bei BRCAwt // genetische Variante
// Restaging in 3 Monaten mit CT Thorax/Abdomen und TM
// 25.01.22 Beginn Niraparib 300mg d1-28 wdh d28 //Systemic Therapy
//  */

// Instance: PatientKimMusterperson-Variante-BRCAwt
// InstanceOf: mii-pr-onko-genetische-variante
// Usage: #example
// * status = #final
// * subject = Reference(PatientKimMusterperson)
// //* effectiveDateTime = "2022-02-08"
// * note.text = "BRCAwt"
// * interpretation = $mii-cs-onko-genetische-variante-auspraegung#W "Wildtyp"

// Instance: PatientKimMusterperson-Tumorkonferenz-4
// InstanceOf: MII_PR_Onko_Tumorkonferenz
// Usage: #example  
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #active
// * intent = #plan
// * category.coding = $mii-cs-onko-therapieplanung-typ#postop "postoperativ Tumorkonferenz" 
// * created = 2022-01-20
// * replaces = Reference(PatientKimMusterperson-Tumorkonferenz-3)
// * addresses = Reference(OncologicExamplePatientPrimaryDiagnosis2)
// * activity[0].detail.code = $mii-cs-onko-therapie-typ#ZS
// * activity[0].detail.status = #active 
// * activity[0].detail.statusReason = $mii-cs-onko-therapieabweichung#U "unbekannt"
// * description = "Erhaltungstherapie mit Niraparib bei BRCAwt"

// Instance: PatientKimMusterperson-SystemicTherapy-3
// InstanceOf: MII_PR_Onko_Systemische_Therapie
// Usage: #example
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * code.coding = $OPS#8-54 "Chemotherapie " // bei Bedarf spezifischer? 
// * extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // impliziert 
// * extension[Stellung].valueCodeableConcept = $mii-cs-onko-therapie-stellung#A "adjuvant"
// * performedPeriod.start = 2022-01-25

// Instance: PatientKimMusterperson-SystemicTherapyMedication-3
// InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
// Usage: #example
// Description: "."
// * subject = Reference(PatientKimMusterperson)
// * status = #completed
// * effectivePeriod.start = 2022-01-25  
// * medicationCodeableConcept.coding[atcClassDe][0] = $ATC_DE#L01XK02  "Niraparib"
// * partOf = Reference(PatientKimMusterperson-SystemicTherapy-3)
// * note.text = "Niraparib"