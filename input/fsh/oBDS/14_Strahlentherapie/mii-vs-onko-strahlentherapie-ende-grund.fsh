ValueSet: MII_VS_Onko_Strahlentherapie_Ende_Grund
Id: mii-vs-onko-strahlentherapie-ende-grund
Title: "MII VS Onkologie Strahlentherapie Ende Grund"
Description: "oBDS-spezifisches ValueSet für Klassifikation des Grundes der Beendigung der Strahlentherapie"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-ende-grund"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* $mii-cs-onko-therapie-ende-grund#E "reguläres Ende"
* $mii-cs-onko-therapie-ende-grund#F "Zieldosis erreicht mit Unterbrechung > 3 Kalendertage"
* $mii-cs-onko-therapie-ende-grund#A "Abbruch wegen Nebenwirkungen"
* $mii-cs-onko-therapie-ende-grund#P "Abbruch wegen Progress"
* $mii-cs-onko-therapie-ende-grund#S "Abbruch aus sonstigen Gründen"
* $mii-cs-onko-therapie-ende-grund#V "Patient verweigert weitere Therapie"
* $mii-cs-onko-therapie-ende-grund#T "Patient verstorben"
* $mii-cs-onko-therapie-ende-grund#U "unbekannt"