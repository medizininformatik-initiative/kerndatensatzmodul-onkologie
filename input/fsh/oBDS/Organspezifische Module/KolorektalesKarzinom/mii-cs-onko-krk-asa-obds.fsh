CodeSystem: MII_CS_Onko_KRK_ASA_oBDS
Id: mii-cs-onko-krk-asa-obds
Title: "MII CS Onkologie KRK ASA-Klassifikation oBDS"
Description: "oBDS-basiertes CodeSystem für ASA-Klassifikation beim Kolorektalen Karzinom (KR9)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-asa-obds"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^content = #complete

* #1 "ASA I" "Gesunder Patient ohne organische, physiologische, biochemische oder psychiatrische Störung"
* #2 "ASA II" "Patient mit leichter Allgemeinerkrankung"
* #3 "ASA III" "Patient mit schwerer Allgemeinerkrankung und Leistungsminderung"
* #4 "ASA IV" "Patient mit schwerer Allgemeinerkrankung, die eine ständige Lebensbedrohung darstellt"
* #5 "ASA V" "Moribunder Patient, der ohne Operation voraussichtlich nicht die nächsten 24 Stunden überleben wird"
* #6 "ASA VI" "Hirntoter Patient zur Organspende"
* #U "Unbekannt" "ASA-Klassifikation unbekannt"