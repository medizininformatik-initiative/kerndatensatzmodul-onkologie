// ConceptMap der ICD-O-3-Morphologie-Umsteiger von der Ersten (2014) zur Zweiten
// Revision (2019) — analog zum ATC-Transitions-Muster (mii-cm-onko-atc-transitions-*).
// Kuratierung: 56 in 2019 gestrichene Codes - 55 server-verifiziert gegen beide
// CS-Versionen auf dem MII-Ontoserver (Diff-Basis: examples-source/icdo/) plus
// 8153/1 (Gastrinom o.n.A.), das Aktualisierungsliste und Online-Fassung
// streichen, die amtliche ClaML aber weiterhin fuehrt; der Server spiegelt
// die ClaML exakt (1622 Klassen) -> BfArM-Meldung, beads dq9.
// Muster: Dignitäts-Neubewertungen (equivalent), Entitäts-Zusammenlegungen
// (equivalent/wider), unsichere /1-Konzepte mit mehreren Nachfolgern (narrower),
// Syndrom-Konzepte ohne Nachfolger (unmatched, mit Guidance).
// Abgleich gegen die BfArM-Aktualisierungsliste (29.01.2021) ERLEDIGT (2026-08-28):
// Farbbasierte PDF-Auswertung (blau=Streichung, rot=Einfuegung, Ziffern-Diffs bei
// Dignitaetswechseln). Ergebnis: alle 55 Server-Diff-Codes amtlich bestaetigt;
// 1 zusaetzliche amtliche Streichung (8153/1) ergaenzt; alle 119 amtlichen
// Neueinfuegungen auf dem Server vorhanden.
Instance: mii-cm-onko-icdo3-transitions-2019
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-icdo3-transitions-2019"
* name = "MII_CM_Onko_ICDO3_Transitions_2019"
* title = "MII CM Onko ICD-O-3 Code Changes 2014 to 2019"
* status = #active
* experimental = false
* date = "2026-08-26"
* insert Version
* insert SP_Publisher
* description = "Diese ConceptMap dokumentiert die Morphologie-Code-Änderungen der ICD-O-3 von der Ersten Revision (deutsche Ausgabe 2014, ICD-O-3.1) zur Zweiten Revision (2019, ICD-O-3.2): Dignitäts-Neubewertungen (z. B. GIST, Phäochromozytom, Thymome, Paragangliome), Entitäts-Zusammenlegungen (z. B. Ewing-Sarkom, Hämangioperizytom in solitärer fibröser Tumor) und entfallene Konzepte. Werkzeug für die Migration von Krebsregister-Bestandsdaten."
* purpose = "Migration von ICD-O-3-Morphologie-Codes der Ersten Revision (2014) auf die Zweite Revision (2019)."
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-morphologie-2014"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-morphologie-2019"

* group[+].source = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* group[=].sourceVersion = "2014"
* group[=].target = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* group[=].targetVersion = "2019"

// ── Dignitäts-Neubewertungen und 1:1-Zusammenlegungen (equivalent) ──

* group[=].element[+].code = #8151/0
* group[=].element[=].display = "Insulinom o.n.A."
* group[=].element[=].target[+].code = #8151/3
* group[=].element[=].target[=].display = "Insulinom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8152/1
* group[=].element[=].display = "Glukagonom o.n.A."
* group[=].element[=].target[+].code = #8152/3
* group[=].element[=].target[=].display = "Glukagonom"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8153/1
* group[=].element[=].display = "Gastrinom o.n.A."
* group[=].element[=].target[+].code = #8153/3
* group[=].element[=].target[=].display = "Malignes Gastrinom"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Streichung in der Zweiten Revision (Aktualisierungsliste 29.01.2021): Zusammenlegung in das bereits bestehende Konzept 8153/3. Achtung: Die amtliche BfArM-ClaML-Fassung (und damit der MII-Terminologieserver, der sie exakt spiegelt) enthaelt 8153/1 in der 2019er-Version weiterhin - im Widerspruch zu Aktualisierungsliste und amtlicher Online-Fassung, die den Code streichen (BfArM-Meldung, beads dq9)."

* group[=].element[+].code = #8156/1
* group[=].element[=].display = "Somatostatinom o.n.A."
* group[=].element[=].target[+].code = #8156/3
* group[=].element[=].target[=].display = "Malignes Somatostatinom"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8240/1
* group[=].element[=].display = "Karzinoidtumor fraglicher Dignität"
* group[=].element[=].target[+].code = #8240/3
* group[=].element[=].target[=].display = "Neuroendokriner Tumor o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8242/1
* group[=].element[=].display = "Enterochromaffin-like-cell-Karzinoid o.n.A."
* group[=].element[=].target[+].code = #8242/3
* group[=].element[=].target[=].display = "Maligner Enterochromaffin-like-cell-Tumor"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8336/0
* group[=].element[=].display = "Hyalinisiertes trabekuläres Adenom"
* group[=].element[=].target[+].code = #8336/1
* group[=].element[=].target[=].display = "Hyalinisierender trabekulärer Tumor"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8444/1
* group[=].element[=].display = "Klarzelliger zystischer Tumor mit Borderline-Malignität"
* group[=].element[=].target[+].code = #8313/1
* group[=].element[=].target[=].display = "Klarzelliger Borderline-Tumor"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8581/1
* group[=].element[=].display = "Thymom vom Typ A o.n.A."
* group[=].element[=].target[+].code = #8581/3
* group[=].element[=].target[=].display = "Thymom vom Typ A"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8582/1
* group[=].element[=].display = "Thymom vom Typ AB o.n.A."
* group[=].element[=].target[+].code = #8582/3
* group[=].element[=].target[=].display = "Thymom vom Typ AB"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8583/1
* group[=].element[=].display = "Thymom vom Typ B1 o.n.A."
* group[=].element[=].target[+].code = #8583/3
* group[=].element[=].target[=].display = "Thymom vom Typ B1"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8584/1
* group[=].element[=].display = "Thymom vom Typ B2 o.n.A."
* group[=].element[=].target[+].code = #8584/3
* group[=].element[=].target[=].display = "Thymom vom Typ B2"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8585/1
* group[=].element[=].display = "Thymom vom Typ B3 o.n.A."
* group[=].element[=].target[+].code = #8585/3
* group[=].element[=].target[=].display = "Thymom vom Typ B3"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8680/0
* group[=].element[=].display = "Benignes Paragangliom"
* group[=].element[=].target[+].code = #8680/3
* group[=].element[=].target[=].display = "Paragangliom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8680/1
* group[=].element[=].display = "Paragangliom o.n.A."
* group[=].element[=].target[+].code = #8680/3
* group[=].element[=].target[=].display = "Paragangliom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8681/1
* group[=].element[=].display = "Sympathisches Paragangliom"
* group[=].element[=].target[+].code = #8681/3
* group[=].element[=].target[=].display = "Sympathisches Paragangliom"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8682/1
* group[=].element[=].display = "Parasympathisches Paragangliom"
* group[=].element[=].target[+].code = #8682/3
* group[=].element[=].target[=].display = "Parasympathisches Paragangliom"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8690/1
* group[=].element[=].display = "Glomus-jugulare-Tumor o.n.A."
* group[=].element[=].target[+].code = #8690/3
* group[=].element[=].target[=].display = "Paragangliom des Mittelohrs"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8691/1
* group[=].element[=].display = "Glomus-aorticum-Tumor"
* group[=].element[=].target[+].code = #8691/3
* group[=].element[=].target[=].display = "Glomus-aorticum-Tumor"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8692/1
* group[=].element[=].display = "Glomus-caroticum-Tumor"
* group[=].element[=].target[+].code = #8692/3
* group[=].element[=].target[=].display = "Paragangliom des Glomus caroticum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8693/1
* group[=].element[=].display = "Extraadrenales Paragangliom o.n.A."
* group[=].element[=].target[+].code = #8693/3
* group[=].element[=].target[=].display = "Extraadrenales Paragangliom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8700/0
* group[=].element[=].display = "Phäochromozytom o.n.A."
* group[=].element[=].target[+].code = #8700/3
* group[=].element[=].target[=].display = "Phäochromozytom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8833/3
* group[=].element[=].display = "Pigmentiertes Dermatofibrosarcoma protuberans"
* group[=].element[=].target[+].code = #8833/1
* group[=].element[=].target[=].display = "Pigmentiertes Dermatofibrosarcoma protuberans"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8841/1
* group[=].element[=].display = "Angiomyxom"
* group[=].element[=].target[+].code = #8841/0
* group[=].element[=].target[=].display = "Angiomyxom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8936/0
* group[=].element[=].display = "Benigner gastrointestinaler Stromatumor"
* group[=].element[=].target[+].code = #8936/3
* group[=].element[=].target[=].display = "Gastrointestinaler Stromatumor"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #8936/1
* group[=].element[=].display = "Gastrointestinaler Stromatumor o.n.A."
* group[=].element[=].target[+].code = #8936/3
* group[=].element[=].target[=].display = "Gastrointestinaler Stromatumor"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9055/1
* group[=].element[=].display = "Zystisches Mesotheliom o.n.A"
* group[=].element[=].target[+].code = #9055/0
* group[=].element[=].target[=].display = "Peritoneale Einschlusszysten"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9133/1
* group[=].element[=].display = "Epitheloides Hämangioendotheliom o.n.A"
* group[=].element[=].target[+].code = #9133/3
* group[=].element[=].target[=].display = "Epitheloides Hämangioendotheliom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9150/0
* group[=].element[=].display = "Benignes Hämangioperizytom"
* group[=].element[=].target[+].code = #8815/0
* group[=].element[=].target[=].display = "Solitärer fibröser Tumor/Hämangioperizytom, Grad 1"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9150/1
* group[=].element[=].display = "Hämangioperizytom o.n.A."
* group[=].element[=].target[+].code = #8815/1
* group[=].element[=].target[=].display = "Solitärer fibröser Tumor o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9150/3
* group[=].element[=].display = "Malignes Hämangioperizytom"
* group[=].element[=].target[+].code = #8815/3
* group[=].element[=].target[=].display = "Maligner solitärer fibröser Tumor"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9230/0
* group[=].element[=].display = "Chondroblastom o.n.A."
* group[=].element[=].target[+].code = #9230/1
* group[=].element[=].target[=].display = "Chondroblastom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9260/3
* group[=].element[=].display = "Ewing-Sarkom"
* group[=].element[=].target[+].code = #9364/3
* group[=].element[=].target[=].display = "Ewing-Sarkom"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9341/1
* group[=].element[=].display = "Odontogener Klarzelltumor"
* group[=].element[=].target[+].code = #9341/3
* group[=].element[=].target[=].display = "Klarzelliges odontogenes Karzinom"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9670/3
* group[=].element[=].display = "Kleinzelliges lymphozytisches B-Zell-Lymphom o.n.A. (siehe )"
* group[=].element[=].target[+].code = #9823/3
* group[=].element[=].target[=].display = "Chronische lymphatische B-Zell-Leukämie/kleinzelliges lymphozytisches Lymphom"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9725/3
* group[=].element[=].display = "Hydroa-vacciniform-artiges Lymphom"
* group[=].element[=].target[+].code = #9725/1
* group[=].element[=].target[=].display = "Hydroa-vacciniform-lymphoproliferative Erkrankung"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9728/3
* group[=].element[=].display = "B-lymphoblastisches Lymphom vom Vorläuferzell-Typ (siehe )"
* group[=].element[=].target[+].code = #9811/3
* group[=].element[=].target[=].display = "B-lymphoblastische/s Leukämie/Lymphom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9729/3
* group[=].element[=].display = "T-lymphoblastisches Lymphom vom Vorläuferzell-Typ (siehe )"
* group[=].element[=].target[+].code = #9837/3
* group[=].element[=].target[=].display = "Vorläufer-T-lymphoblastische Leukämie"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9826/3
* group[=].element[=].display = "Burkitt-Zell-Leukämie (siehe )"
* group[=].element[=].target[+].code = #9687/3
* group[=].element[=].target[=].display = "Burkitt-Lymphom o.n.A. (Hinw.: Einschließlich aller Varianten)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9836/3
* group[=].element[=].display = "Vorläufer-B-lymphoblastische Leukämie (siehe )"
* group[=].element[=].target[+].code = #9811/3
* group[=].element[=].target[=].display = "B-lymphoblastische/s Leukämie/Lymphom o.n.A."
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

* group[=].element[+].code = #9971/3
* group[=].element[=].display = "Polymorphe lymphoproliferative Krankheit nach Transplantation"
* group[=].element[=].target[+].code = #9971/1
* group[=].element[=].target[=].display = "Lymphoproliferative Krankheit nach Transplantation o.n.A. (siehe )"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Umklassifizierung in der Zweiten Revision (ICD-O-3.2)."

// ── Aufgegangen in breiterem Konzept (wider) ──

* group[=].element[+].code = #8460/0
* group[=].element[=].display = "Seröses papilläres Zystadenom"
* group[=].element[=].target[+].code = #8441/0
* group[=].element[=].target[=].display = "Seröses Zystadenom o.n.A."
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "In der Zweiten Revision im breiteren Konzept aufgegangen."

* group[=].element[+].code = #8462/1
* group[=].element[=].display = "Serös-papillärer zystischer Tumor mit Borderline-Malignität"
* group[=].element[=].target[+].code = #8442/1
* group[=].element[=].target[=].display = "Seröser Borderline-Tumor o.n.A."
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "In der Zweiten Revision im breiteren Konzept aufgegangen."

* group[=].element[+].code = #8463/1
* group[=].element[=].display = "Serös-papillärer Oberflächentumor mit Borderline-Malignität"
* group[=].element[=].target[+].code = #8442/1
* group[=].element[=].target[=].display = "Seröser Borderline-Tumor o.n.A."
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "In der Zweiten Revision im breiteren Konzept aufgegangen."

* group[=].element[+].code = #8471/0
* group[=].element[=].display = "Muzinöses papilläres Zystadenom o.n.A."
* group[=].element[=].target[+].code = #8470/0
* group[=].element[=].target[=].display = "Muzinöses Zystadenom o.n.A."
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "In der Zweiten Revision im breiteren Konzept aufgegangen."

* group[=].element[+].code = #8471/3
* group[=].element[=].display = "Muzinöses papilläres Zystadenokarzinom"
* group[=].element[=].target[+].code = #8470/3
* group[=].element[=].target[=].display = "Muzinöses Zystadenokarzinom o.n.A."
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "In der Zweiten Revision im breiteren Konzept aufgegangen."

* group[=].element[+].code = #8473/1
* group[=].element[=].display = "Muzinöses papilläres Zystadenom mit Borderline-Malignität"
* group[=].element[=].target[+].code = #8472/1
* group[=].element[=].target[=].display = "Muzinöser zystischer Tumor mit Borderline-Malignität"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "In der Zweiten Revision im breiteren Konzept aufgegangen."

* group[=].element[+].code = #9991/3
* group[=].element[=].display = "Refraktäre Neutropenie"
* group[=].element[=].target[+].code = #9980/3
* group[=].element[=].target[=].display = "Myelodysplastisches Syndrom mit Single-Lineage-Dysplasie"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "In der Zweiten Revision im breiteren Konzept aufgegangen."

* group[=].element[+].code = #9992/3
* group[=].element[=].display = "Refraktäre Thrombozytopenie"
* group[=].element[=].target[+].code = #9980/3
* group[=].element[=].target[=].display = "Myelodysplastisches Syndrom mit Single-Lineage-Dysplasie"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "In der Zweiten Revision im breiteren Konzept aufgegangen."

// ── Unsichere /1-Konzepte mit mehreren dignitätsspezifischen Nachfolgern (narrower) ──

* group[=].element[+].code = #8120/1
* group[=].element[=].display = "Urothelpapillom o.n.A."
* group[=].element[=].target[+].code = #8120/0
* group[=].element[=].target[=].display = "Urothelpapillom o.n.A."
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dignität ist im Einzelfall anhand der Befundlage zuzuordnen."
* group[=].element[=].target[+].code = #8120/2
* group[=].element[=].target[=].display = "Urothel-Carcinoma in situ"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dignität ist im Einzelfall anhand der Befundlage zuzuordnen."
* group[=].element[=].target[+].code = #8120/3
* group[=].element[=].target[=].display = "Übergangszellkarzinom o.n.A."
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dignität ist im Einzelfall anhand der Befundlage zuzuordnen."

* group[=].element[+].code = #8150/1
* group[=].element[=].display = "Endokriner Pankreastumor o.n.A."
* group[=].element[=].target[+].code = #8150/0
* group[=].element[=].target[=].display = "Neuroendokrines Pankreas-Mikroadenom"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dignität ist im Einzelfall anhand der Befundlage zuzuordnen."
* group[=].element[=].target[+].code = #8150/3
* group[=].element[=].target[=].display = "Neuroendokriner Pankreastumor, hormoninaktiv"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dignität ist im Einzelfall anhand der Befundlage zuzuordnen."

* group[=].element[+].code = #8158/1
* group[=].element[=].display = "Endokriner Tumor, hormonaktiv, o.n.A."
* group[=].element[=].target[+].code = #8158/3
* group[=].element[=].target[=].display = "ACTH-produzierender Tumor"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dignität ist im Einzelfall anhand der Befundlage zuzuordnen."

* group[=].element[+].code = #8408/1
* group[=].element[=].display = "Aggressives digitales papilläres Adenom"
* group[=].element[=].target[+].code = #8408/0
* group[=].element[=].target[=].display = "Ekkrines papilläres Adenom"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dignität ist im Einzelfall anhand der Befundlage zuzuordnen."
* group[=].element[=].target[+].code = #8408/3
* group[=].element[=].target[=].display = "Digitales papilläres Adenokarzinom"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dignität ist im Einzelfall anhand der Befundlage zuzuordnen."

// ── Ohne Nachfolgekonzept (unmatched) ──

* group[=].element[+].code = #8965/0
* group[=].element[=].display = "Nephrogenes Adenofibrom"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Kein Nachfolgekonzept in der Zweiten Revision identifiziert — gegen BfArM-Aktualisierungsliste prüfen."

* group[=].element[+].code = #9530/1
* group[=].element[=].display = "Meningeomatose o.n.A."
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Syndrom-Konzept (Meningeomatose) in der Zweiten Revision entfallen — die einzelnen Meningeome sind separat zu codieren (z. B. 9530/0)."

* group[=].element[+].code = #9540/1
* group[=].element[=].display = "Neurofibromatose o.n.A."
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Syndrom-Konzept (Neurofibromatose) in der Zweiten Revision entfallen — die einzelnen Neurofibrome sind separat zu codieren (z. B. 9540/0)."
