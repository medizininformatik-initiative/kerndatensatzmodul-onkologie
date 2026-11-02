CodeSystem: MII_CS_Onko_Primaertumor_Diagnosesicherung
Id: mii-cs-onko-primaertumor-diagnosesicherung
Title: "MII CS Onkologie Primärtumor Diagnosesicherung"
Description: "Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose. Die Codes 6 und 7 sind im oBDS-Schema als veraltet gekennzeichnet (Nachfolger 7.2 bzw. 7.1) und tragen die Konzept-Property status = deprecated sowie replaced-by; sie bleiben für Altdaten gültig und werden nicht umkodiert."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-diagnosesicherung"
* ^content = #complete
// Konzept-Properties fuer die Abkuendigung einzelner Codes (HDB-951, #326).
// Konvention: status = deprecated kennzeichnet einen im oBDS abgekuendigten,
// fuer Altdaten weiterhin gueltigen Code; replaced-by nennt den Nachfolger.
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "Status des Konzepts (active | deprecated | retired)"
* ^property[=].type = #code
* ^property[+].code = #deprecationDate
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#deprecationDate"
* ^property[=].description = "Datum des oBDS-Schemastands, der den Code als veraltet kennzeichnet"
* ^property[=].type = #dateTime
* ^property[+].code = #replaced-by
* ^property[=].uri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/concept-properties#replaced-by"
* ^property[=].description = "Nachfolgecode gemäß oBDS"
* ^property[=].type = #code
* #0 "Totenschein"
* #1 "klinisch" "Die Diagnose wurde vor dem Tode gestellt, jedoch ohne die folgenden Maßnahmen (Schlüsselnummern 2 - 7)."
* #2 "klinische Diagnostik" "Alle Untersuchungstechniken, einschließlich Röntgen, Endoskopie, bildgebender Verfahren, Ultraschall, explorativer Eingriffe (wie Laparotomie) und Autopsie, aber ohne Gewebsuntersuchung."
* #4 "spezifische Tumor-Marker" "Zusätzlich biochemische und/oder immunologische Marker, die für einen bestimmten Tumorsitz spezifisch sind."
* #5 "Zytologie" "Untersuchung von Zellen aus einem primären oder sekundären Sitz, einschließlich der aus durch Endoskopie oder durch Punktion gewonnenen Aspiraten; beinhaltet auch die mikroskopische Untersuchung peripheren Blutes und von Knochenmarkspunktaten."
* #6 "histologische Untersuchung einer Metastase" "Histologische Untersuchung des Gewebes aus einer Metastase, inklusive der Untersuchung von Proben aus einer Autopsie. Veraltet: regulär in ADT/GEKID 2.x (oBDS 2014) sowie oBDS 3.0.0 und 3.0.1; seit oBDS 3.0.2 (17.10.2023) durch 7.2 abgelöst, seit oBDS 3.0.3 (04.09.2024) im Schema ausdrücklich als veraltet gekennzeichnet. Für Altdaten weiterhin gültig, keine Umkodierung."
* #6 ^property[+].code = #status
* #6 ^property[=].valueCode = #deprecated
* #6 ^property[+].code = #deprecationDate
* #6 ^property[=].valueDateTime = "2024-09-04"
* #6 ^property[+].code = #replaced-by
* #6 ^property[=].valueCode = #7.2
* #7 "histologische Untersuchung eines Primärtumors" "Histologische Untersuchung des Gewebes aus einem Primärtumor, gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien; schließt auch die Untersuchung von Proben des Primärtumors aus einer Autopsie ein. Veraltet: regulär in ADT/GEKID 2.x (oBDS 2014) sowie oBDS 3.0.0 und 3.0.1; seit oBDS 3.0.2 (17.10.2023) als veraltet gekennzeichnet (dort noch mit Verweis auf 7.1, 7.2 oder 7.3), seit oBDS 3.0.3 (04.09.2024) eindeutig durch 7.1 abgelöst. Für Altdaten weiterhin gültig, keine Umkodierung."
* #7 ^property[+].code = #status
* #7 ^property[=].valueCode = #deprecated
* #7 ^property[+].code = #deprecationDate
* #7 ^property[=].valueDateTime = "2023-10-17"
* #7 ^property[+].code = #replaced-by
* #7 ^property[=].valueCode = #7.1
* #7.1 "histologische Untersuchung eines Primärtumors" "Histologische Untersuchung des Gewebes aus einem Primärtumor, gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien; schließt auch die Untersuchung von Proben des Primärtumors aus einer Autopsie ein."
* #7.2 "histologische Untersuchung einer Metastase" "Histologische Untersuchung des Gewebes aus einer Metastase, inklusive der Untersuchung von Proben aus einer Autopsie."
* #7.3 "Histologie der Autopsie" "Histologische Untersuchung von Tumorgewebe gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien"
* #8 "Zytogenetisch und/oder molekularer Test" "Nachweis von tumorspezifischen genetischen Anomalien und genetischen Veränderungen im Tumor einschließlich Verfahren wie Karyotypisierung, FISH (Fluoreszenz in situ-Hybridisierung), PCR"
* #9 "unbekannt"