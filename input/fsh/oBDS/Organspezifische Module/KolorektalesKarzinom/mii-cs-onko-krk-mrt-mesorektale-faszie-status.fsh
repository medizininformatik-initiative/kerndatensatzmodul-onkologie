CodeSystem: MII_CS_Onko_KRK_MRT_Mesorektale_Faszie_Status
Id: mii-cs-onko-krk-mrt-mesorektale-faszie-status
Title: "MII CS Onkologie KRK MRT Mesorektale Faszie Status"
Description: "oBDS-basiertes Codesystem für den Status der MRT/CT Untersuchung zur mesorektalen Faszie beim Kolorektalen Karzinom (KR5)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-mrt-mesorektale-faszie-status"
* ^count = 3

* #D "Durchgeführt, aber Abstand nicht angegeben" "MRT oder Dünnschicht-CT wurde durchgeführt, aber der Abstand zur mesorektalen Faszie wurde nicht angegeben"
* #N "Nein (MRT/CT nicht durchgeführt)" "MRT oder Dünnschicht-CT wurde nicht durchgeführt"
* #U "Unbekannt" "Es ist unbekannt, ob eine MRT oder Dünnschicht-CT durchgeführt wurde"