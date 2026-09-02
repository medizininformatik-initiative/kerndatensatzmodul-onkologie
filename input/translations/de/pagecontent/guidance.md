<!-- markdownlint-disable MD041 -->

### Abweichungen zum oBDS

Der vorliegende Implementation Guide beschreibt eine Umsetzung des oBDS in
FHIR. Eine reine 1:1-Abbildung des kompletten Datensatzes ist weder inhaltlich
noch technisch sinnvoll. Die wichtigsten Abweichungen:

#### Inhalte

Das KDS-Modul Onkologie beinhaltet diejenigen Gruppen des oBDS, die vor allem
klinisch-diagnostische und therapeutische Datenpunkte umfassen. Mehrere
Gruppen wurden daher **nicht** in FHIR implementiert:

- Die personenbezogenen Gruppen
  - Gruppe 3: Patienten-Stammdaten
  - Gruppe 4: Melder-Stammdaten
  - Gruppe 7: Einsender
  - Gruppe 22: Operateur
  - Gruppe 25: Zusätzliche Kontakte
- Die administrativen und meldungsbezogenen Gruppen
  - Gruppe 1: Meldung
  - Gruppe 2: Zentrum
  - Gruppe 21: Anmerkungen

Die organspezifischen Module waren nicht Teil der ersten Profilierung, sind
aber seit der Version 2026 Teil des Moduls Onkologie: Modul Prostata, Modul
Mamma, Modul Melanom, Modul Kolon.

#### Kardinalitäten

Der oBDS ist hauptsächlich für die Datenmeldung an die Krebsregister optimiert
worden. In den ersten Versionen wurden die Kardinalitäten größtenteils aus dem
oBDS übernommen, sind teilweise aber „weicher" eingestellt, um gerade in einem
ersten Schritt Zugang zu einer breiteren Datenbasis zu bekommen.

#### Einbindung von Terminologien und Codesystemen

Um eine Auswertbarkeit durch das Forschungsdatenportal Gesundheit (FDPG) zu
gewährleisten, verlangt die Angabe der Medikation bei Systemischer Therapie
eine Kodierung mittels ATC. Freitext ist weiterhin als zusätzliche Angabe
möglich.

#### Validierung

Im oBDS-XML-Schema ist eine Reihe von Validierungen vorgesehen, die die
Datenqualität und -vollständigkeit überprüfen. Diese sind technisch nicht mit
implementiert. Es ist davon auszugehen, dass die oBDS-Daten in den
Primärsystemen der Tumordokumentation zumindest so weit validiert werden, dass
ein Export ins XML-Format möglich ist. Weitere Validierungen (z. B. sich
gegenseitig ausschließende Datenfelder) könnten bei Bedarf in Zukunft
vorgenommen werden — erforderlich, wenn das Modul über seinen derzeitigen
Zweck hinaus als Datenerhebungsgrundlage für Primärsysteme dienen soll.

#### Inhalte der Module und Profile

Im oBDS sind die Datenfelder an die Meldestruktur gebunden; Gruppen mit
unterschiedlichen Kardinalitäten sind häufig getrennt gelagert. Wichtige
Änderungen auszugsweise:

- die Diagnose enthält Teile der Histologie-Gruppe (ICD-O-Topographie,
  ICD-O-Morphologie),
- die Gruppen Tumorkonferenz und Therapieempfehlung wurden im FHIR-Profil
  Tumorkonferenz/Therapieempfehlung (CarePlan) zusammengelegt,
- der Allgemeine Leistungszustand kann sowohl als ECOG als auch als Karnofsky
  kodiert werden (eine ursprüngliche Zusammenlegung der Datenpunkte wurde nach
  der Kommentierungsphase verworfen).

### Bezug zu nationalen Standards

#### German OncoLogical Data Standard (GOLD)

Das Projekt GOLD wurde vom Vision-Zero e. V. initiiert und zielt auf die
Abbildung einer kompletten onkologischen Patient Journey ab. Das Datenmodell
und die dazugehörigen Profile wurden von existierenden Datenmodellen aus
Versorgung, Forschung und Industrie abgeleitet. Die ersten FHIR-Profile mit
Fokus auf Diagnose und Klassifikationen sind in mehrere weitere Projekte
eingeflossen, z. B. die Basisprofile Onkologie von HL7 Deutschland und das
MII-Modul Befunde bildgebender Verfahren. Aktuelle Version:
[vision-zero-oncology.github.io/GOLD](https://vision-zero-oncology.github.io/GOLD/)

#### Basisprofile Onkologie von HL7 Deutschland

In den [Basisprofilen Onkologie](https://simplifier.net/BasisprofileOnkologie)
wurden insbesondere 2022 Profilierungsarbeiten für eine Grundlage der
einheitlichen Verwendung von FHIR-Ressourcen im onkologischen Sektor
geliefert. Die Arbeiten ruhen seit der Kommentierung 2022; mittlerweile
verweisen die Basisprofile Onkologie auf das hier vorliegende KDS-Modul
Onkologie der MII.

#### Deutsches Konsortium für Translationale Krebsforschung (DKTK)

Das interne Datenmodell des DKTK nutzt aus den Tumordokumentationssystemen
aufbereitete oBDS-Daten im FHIR-Format als Austauschmedium
([simplifier.net/oncology](https://simplifier.net/oncology)). Das ursprüngliche
Informationsmodell des KDS-Moduls Onkologie war stark am DKTK-Modell
orientiert. Die Profilierung unterscheidet sich jedoch insofern, als die
DKTK-Profile in sich abgeschlossen sind, während ein MII-Modul möglichst gut
mit den MII-Basismodulen (v. a. Diagnose, Prozedur, Medikation) und bereits
bestehenden KDS-Modulen arbeiten soll. Eine der Hauptmodellierungsentscheidungen
war daher die Verwendung der MII-Diagnose und MII-Medikation sowie die
Darstellung von OPs, Strahlentherapien und systemischen/abwartenden Therapien
als MII-Prozeduren.

#### Modellvorhaben Genomsequenzierung (§ 64e SGB V)

Das Modellvorhaben Genomsequenzierung sieht die Erhebung eines Datenkranzes
bei einer Next-Generation-Sequenzierung (NGS) onkologischer Patienten vor. Der
Datenkranz beinhaltet Informationen zur diagnostischen und therapeutischen
Vorgeschichte, zur molekulargenetischen Beschreibung des Tumors, zu
Empfehlungen zu Studienteilnahmen und systemischen Therapien sowie
Follow-up-Informationen. Ein ähnlicher Datenkranz für Seltene Erkrankungen
wird zukünftig im Modul Seltene Erkrankungen abgebildet.

Das logische Modell des Datenkranzes ist als
[Logical Model mii-lm-mvgenomseq-onkologie](StructureDefinition-mii-lm-mvgenomseq-onkologie.html)
abgebildet; das Mapping der Datenelemente auf den MII-KDS liegt als
[ConceptMap mii-cm-onkologie-to-mvgenomseq](ConceptMap-mii-cm-onkologie-to-mvgenomseq.html)
vor (in Arbeit).

### Bezug zu internationalen Standards

#### OSIRIS, Frankreich

Das französische Common Data Model „Interoperability and data sharing of
clinical and biological data in oncology" (OSIRIS) umfasst zwei unabhängige
Kerndatensätze: einen klinischen und einen genomischen Teil; ein dritter Teil
zu Imaging und Strahlentherapie ist in Arbeit. Der OSIRIS-Datensatz modelliert
die zeitliche Darstellung vor allem um sogenannte „Tumor Events" (Erstdiagnosen
oder Verlaufsbeobachtungen). Weitere Informationen:
[PMC8140800](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8140800/); englische
Version des Datensatzes auf
[GitHub](https://github.com/InstitutNationalduCancer/OSIRIS/blob/v1.1.05/documentation/ModeleCliniqueOSIRIS-english_version.pdf).

### Anwendungsszenario einer leitliniengerechten Behandlung

Der oBDS dient als Grundlage für die Krebsregistermeldungen an die
Landeskrebsregister. Die vorliegende Profilierung hat den Anspruch, die Daten,
die bei der Krebsregistrierung anfallen, für andere Forschungsfelder nutzbar
zu machen. Bei der FHIR-Abbildung des untenstehenden Beispiels wird klar, dass
Informationen zu bildgebenden Verfahren, zu detaillierten Behandlungs- und
Bestrahlungsschemata und zu genetischen Varianten außerhalb der
Krebsregisterdaten in detaillierter Form vorliegen.

*Disclaimer: Der Therapieverlauf entspricht einer möglichen leitliniengerechten
Therapie; Daten und Verlauf sind für Testzwecke konstruiert, Ähnlichkeiten mit
tatsächlichen Krankheitsverläufen sind zufällig.*

#### Textuelle Darstellung des beispielhaften Therapieverlaufs

- Kim Musterperson, geb. 14.03.1956
- 10.06.2021 CT Abdomen mit KM: V. a. Peritonealkarzinose, Aszites im gesamten
  Bauchraum, Raumforderung Ovar rechts. Mesenteriale retroperitoneale
  LK-Metastasen, V. a. Lebermetastasierung
- 15.06.2021 Aszitespunktion: mit malignen Tumorzellen. Zytologisch mögliches
  Ovarial-CA.
- 22.06.2021 CT Thorax: kein Hinweis auf Metastasen.
- Tumorboard 25.06.2021: Eindeutiges CT-Korrelat und zytologisch ED
  Ovarial-CA. Neoadjuvante Chemotherapie mit 3 Zyklen Carboplatin/Paclitaxel,
  Intervall-Debulking im Verlauf (Zyklen 05.07.–05.09.2021).
- 15.09.2021 CT Thorax/Abdomen: Peritonealkarzinose zunehmend,
  metastasensuspekte Lymphknoten retroperitoneal, V. a. konstante
  Lebermetastasierung
- 16.09.2021 Tumorboard: Deutlicher Tumorprogress. OP zur histologischen
  Sicherung bereits geplant, optimales Debulking anstreben.
- 30.09.2021 OP: Intervalldebulking mittels Längsschnittlaparotomie,
  Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie und atypischer
  Lebersegmentresektion (Seg. II und V). Postoperativ: R0.
- Pathologischer Bericht (Resektat vom 30.09.2021): Neoplasie des Ovars
  (Z. n. neoadjuvanter Therapie, ICD-10 C56); Ovar o. n. A. (ICD-O C56.9);
  WHO-Typ: Seröses Adenokarzinom (ICD-O M-8441/3). Lokale Tumorausbreitung:
  Ovartumor links, max. 2,2 cm, tumorinfiltrierte Kapsel mit Nachweis von
  Tumorzellen auf der Ovaroberfläche, vitale Tumorzellen ca. 80 %.
  UICC-Klassifikation (8. Auflage): ypT3c pM1b (HEP) L1 V0 Pn0, FIGO IVB.
  Immunhistochemie (Auszug): vereinzelt kräftige nukleäre Expression des
  Progesteronrezeptors, Positivität für p16, MIB-1 max. 38 %.
- Tumorboard 25.10.2021: Durch OP makroskopische Komplettresektion erreicht,
  jedoch Progress unter Neoadjuvanz → Umstellung auf Carboplatin/Gemcitabin;
  humangenetische Vorstellung empfohlen.
- Systemische Therapie: 3 Zyklen Carboplatin AUC 4 d1, Gemcitabin 1000 mg/m²
  d1+d8, Wdh. d22 (08.11.2021–09.01.2022).
- 15.01.2022 CT Abdomen: Regredienz der bekannten Peritonealkarzinose; Leber
  ohne eindeutigen Hinweis auf Metastasierung.
- 20.01.2022 Tumorboard: Erhaltungstherapie mit Niraparib bei BRCAwt;
  Restaging in 3 Monaten.
- 25.01.2022 Beginn Niraparib 300 mg d1–28, Wdh. d28.

#### Grafische Darstellung des beispielhaften Therapieverlaufs

![Beispielhafter Therapieverlauf Kim Musterperson](MII_Onko_Example_Patient.svg)
