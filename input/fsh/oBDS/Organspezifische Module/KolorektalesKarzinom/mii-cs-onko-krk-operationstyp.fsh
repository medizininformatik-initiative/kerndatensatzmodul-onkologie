CodeSystem: MII_CS_Onko_KRK_Operationstyp
Id: mii-cs-onko-krk-operationstyp
Title: "MII CS Onkologie KRK Operationstyp"
Description: "oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
//* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-operationstyp"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* ^caseSensitive = true
* ^content = #fragment
* #T "TME" "Totale mesorektale Exzision" // ergänzt, im Original-oBDS nicht enthalten
* #P "PME" "Partielle mesorektale Exzision"
* #L "Lokale Exzision" "Lokale Exzision des Rektums"
* #A "Andere Operation" "Andere Operation des Rektums"
* #U "Unbekannt" "Unbekannte Operation des Rektums"