

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

Instance: OncologicExamplePatient1
InstanceOf: Patient // or MII Patient, but then I guess I have to import it? 
Usage: #example
* birthDate = 1956-03-14
* name.family = "Musterperson"
* name.given = "Kim"


// 10.06.2021 CT Abdomen mit KM: V.a. Peritonealkarzinose, Aszites im gesamten Bauchraum, Raumforderung Ovar rechts. Mesenteriale retroperitoneale LK-Metastasen, V.a. Lebermetastasierung
// Diagnostische Eingriffe und Bildgebung werden im oBDS nicht gesondert kodiert, dafür dann Prozedur OPS

/*
15.06.2021 Aszitespunktion: mit malignen Tumorzellen. Zytologisch mögliches Ovarial-CA.
// Modeling einer condition Ressource mit Ov-CA. ICD-10 wahrscheinlich klar, ICD-O noch 
22.06.2021 CT Thorax: kein Hinweis auf Metastasen. 
// Modelling als cM0?

Tumorboard 25.06.2021: Eindeutiges CT-Korrelat und zytologisch ED Ovarial-CA. Neoadjuvante Chemotherapie mit 3 Zyklen Carboplatin/Paxlitaxel, Intervall-Debulking im Verlauf. 
// Modelling als Tumorboard mit Empfehlung Carboplatin/Paxlitaxel. Debulking deutet auf geplante partielle Resektionen hin.

05.07.21-25.07.21 Z1 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21
26.07.21-15.08.21 Z2 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21
16.08.21-05.09.21 Z3 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, Wdh. d21
// Modelling als SystemicTherapy (Intent?),MedicationStatement, Anfangs-Enddauer als Procedure, ATC Codes raussuchen (von 21?)
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