CodeSystem: MII_CS_Onko_Strahlentherapie_Applikationsart
Id: mii-cs-onko-strahlentherapie-applikationsart
Title: "MII CS Onkologie Strahlentherapie Applikationsart"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-strahlentherapie-applikationsart"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-applikationsart"
* ^content = #complete
* #P "perkutan (Teletherapie)"


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