CodeSystem: MII_CS_Onko_Therapie_Ende_Grund
Id: mii-cs-onko-therapie-ende-grund
Title: "MII CS Onkologie Strahlentherapie Ende Grund"
Description: "oBDS-spezifisches Codesystem für Klassifikation des Grundes der Beendigung der Strahlentherapie oder der systemischen Therapie"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
//* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-applikationsart"
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



/*
P = perkutan (Teletherapie)
P-ST = perkutan stereotaktisch
P-4D = perkutan, atemgetriggert
P-ST4D = perkutan, stereotaktisch, atemgetriggert
PRCN-ST = perkutan, stereotaktisch ohne Chemotherapie/Sensitizer
PRCN-4D = perkutan, atemgetriggert, ohne Chemotherapie/Sensitizer
PRCN-ST4D = perkutan, stereotaktisch, atemgetriggert, ohne Chemotherapie/Sensitizer
PRCJ = perkutan mit Chemotherapie/Sensitizer
PRCJ-4D = perkutan, atemgetriggert, mit Chemotherapie/Sensitizer
K = endokavitäre Kontakttherapie
KHDR = endokavitäre Kontakttherapie, high dose rate therapy
KLDR = endokavitäre Kontakttherapie, low dose rate therapy
KPDR = endokavitäre Kontakttherapie, pulsed dose rate therapy
I = intersitielle Kontakttherapie
IHDR = intersitielle Kontakttherapie, high dose rate therapy
ILDR = intersitielle Kontakttherapie, low dose rate therapy
IPDR = intersitielle Kontakttherapie, pulsed dose rate therapy
MSIRT = selektive interne Radio-Therapie
MPRRT = Peptid-Radio-Rezeptor-Therapie
MPSMA = PSMA-Therapie
MRJT = Radiojod-Therapie
MRIT = Radioimmun-Therapie
M = sonstige metabolische Radionuklidtherapie
S = Sonstiges
*/