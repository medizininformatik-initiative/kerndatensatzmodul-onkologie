CodeSystem: MII_CS_Onko_Primaertumor_Diagnosesicherung
Id: mii-cs-onko-primaertumor-diagnosesicherung
Title: "MII CS Onkologie Primärtumor Diagnosesicherung"
Description: "Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-diagnosesicherung"
* ^content = #complete
* #0 "Totenschein"
* #1 "klinisch" "Die Diagnose wurde vor dem Tode gestellt, jedoch ohne die folgenden Maßnahmen (Schlüsselnummern 2 - 7)."
* #2 "klinische Diagnostik" "Alle Untersuchungstechniken, einschließlich Röntgen, Endoskopie, bildgebender Verfahren, Ultraschall, explorativer Eingriffe (wie Laparotomie) und Autopsie, aber ohne Gewebsuntersuchung."
* #4 "spezifische Tumor-Marker" "Zusätzlich biochemische und/oder immunologische Marker, die für einen bestimmten Tumorsitz spezifisch sind."
* #5 "Zytologie" "Untersuchung von Zellen aus einem primären oder sekundären Sitz, einschließlich der aus durch Endoskopie oder durch Punktion gewonnenen Aspiraten; beinhaltet auch die mikroskopische Untersuchung peripheren Blutes und von Knochenmarkspunktaten."
* #6 "histologische Untersuchung einer Metastase" "Histologische Untersuchung des Gewebes aus einer Metastase, inklusive der Untersuchung von Proben aus einer Autopsie."
* #7 "histologische Untersuchung eines Primärtumors" "Histologische Untersuchung des Gewebes aus einem Primärtumor, gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien; schließt auch die Untersuchung von Proben des Primärtumors aus einer Autopsie ein."
* #7.1 "histologische Untersuchung eines Primärtumors" "Histologische Untersuchung des Gewebes aus einem Primärtumor, gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien; schließt auch die Untersuchung von Proben des Primärtumors aus einer Autopsie ein."
* #7.2 "histologische Untersuchung einer Metastase" "Histologische Untersuchung des Gewebes aus einer Metastase, inklusive der Untersuchung von Proben aus einer Autopsie."
* #7.3 "Histologie der Autopsie" "Histologische Untersuchung von Tumorgewebe gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien"
* #8 "Zytogenetisch und/oder molekularer Test" "Nachweis von tumorspezifischen genetischen Anomalien und genetischen Veränderungen im Tumor einschließlich Verfahren wie Karyotypisierung, FISH (Fluoreszenz in situ-Hybridisierung), PCR"
* #9 "unbekannt"