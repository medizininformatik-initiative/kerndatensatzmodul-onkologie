CodeSystem: MII_CS_Onko_Grading
Id: mii-cs-onko-grading
Title: "MII CS Onkologie Grading"
Description: "Codes für Histologie Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-grading"
* ^content = #complete
* #0 "primär erworbene Melanose ohne zelluläre Atypien" "(nur beim malignen Melanom der Konjunktiva)"
* #1 "gut differenziert"
* #2 "mäßig differenziert"
* #3 "schlecht differenziert"
* #4 "undifferenziert"
* #5 "nur für C61, TNM8"
* #X "nicht bestimmbar"
* #L "low grade (G1 oder G2)"
* #M "intermediate grade (G2 oder G3)"
* #H "high grade (G3 oder G4)"
* #B "Borderline"
* #U "unbekannt"
* #T "trifft nicht zu"