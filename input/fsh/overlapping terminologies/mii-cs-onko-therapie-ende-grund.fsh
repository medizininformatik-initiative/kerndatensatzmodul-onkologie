CodeSystem: MII_CS_Onko_Therapie_Ende_Grund
Id: mii-cs-onko-therapie-ende-grund
Title: "MII CS Onkologie Strahlentherapie Ende Grund"
Description: "oBDS-spezifisches Codesystem für Klassifikation des Grundes der Beendigung der Strahlentherapie oder der systemischen Therapie"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^content = #complete
* #E "reguläres Ende"
* #R "reguläres Ende mit Dosisreduktion"
* #W "reguläres Ende mit Substanzwechsel"
* #A "Abbruch wegen Nebenwirkungen"
* #P "Abbruch wegen Progress"
* #S "Abbruch aus sonstigen Gründen"
* #V "Patient verweigert weitere Therapie"
* #T "Patient verstorben"
* #F "Zieldosis erreicht mit Unterbrechung > 3 Kalendertage"
* #U "unbekannt"


