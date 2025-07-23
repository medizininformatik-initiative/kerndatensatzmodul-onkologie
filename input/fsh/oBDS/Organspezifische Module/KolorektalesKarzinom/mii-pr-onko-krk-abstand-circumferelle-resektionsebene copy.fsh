Profile: MII_PR_Onko_KRK_MRT_Mesorektale_Faszie
Parent: Observation
Id: mii-pr-onko-krk-mrt-mesorektale-faszie
Title: "MII PR Onkologie KRK MRT/CT Abstand Mesorektale Faszie"
Description: "Dieses Profil beschreibt den Abstand des Tumors zur mesorektalen Faszie bei MRT oder Dünnschicht-CT Untersuchung beim Kolorektalen Karzinom (oBDS KR5)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


* code MS
* code 1..1 
* code ^definition = "Abstand des Tumors zur mesorektalen Faszie bei MRT oder Dünnschicht-CT, gemäß oBDS 2021 KR5"
* code ^short = "MRT/CT Abstand mesorektale Faszie"
* code.coding = $LNC#33747-0 "Distance from tumor to mesorectal fascia [Length] by Imaging"
// mikroskopisch 

* value[x] MS
* value[x] only Quantity or CodeableConcept
* valueQuantity MS
* valueQuantity.code 0.. MS
* valueQuantity.code = #mm
* valueQuantity.system 0.. MS
* valueQuantity.system = $UCUM
* valueQuantity.unit 0.. MS
* valueQuantity.unit = "mm"
* valueQuantity.value 0.. MS

* valueCodeableConcept MS
* valueCodeableConcept from MII_VS_Onko_KRK_MRT_Mesorektale_Faszie_Status (required)

* insert Label (valueQuantity, Abstand mesorektale Faszie, Abstand des Tumors zur mesorektalen Faszie in mm bei MRT/CT gemäß oBDS 2021 KR5)
* insert Translation(valueQuantity ^short, de-DE, Abstand mesorektale Faszie)
* insert Translation(valueQuantity ^definition, de-DE, Abstand des Tumors zur mesorektalen Faszie in mm bei MRT/CT gemäß oBDS 2021 KR5)

* insert Label (valueCodeableConcept, MRT/CT Status, Status der MRT/CT Untersuchung gemäß oBDS 2021 KR5)
* insert Translation(valueCodeableConcept ^short, de-DE, MRT/CT Status)
* insert Translation(valueCodeableConcept ^definition, de-DE, Status der MRT/CT Untersuchung gemäß oBDS 2021 KR5)

// P3 Datum der Stanzen
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum MRT/CT, Datum der MRT/CT Untersuchung)
* insert Translation(effectiveDateTime ^short, de-DE, Datum MRT/CT)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der MRT oder Dünnschicht-CT Untersuchung)


Mapping: FHIR-oBDS-KRK-MRT-Mesorektale-Faszie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_KRK_MRT_Mesorektale_Faszie
* -> "KR5" "Rektum: MRT oder Dünnschicht-CT durchgeführt mit Angabe Abstand mesorektale Faszie"
* valueQuantity.value -> "KR5" "Abstand zur mesorektalen Faszie in mm (natürliche Zahl)"
* valueCodeableConcept.coding.code -> "KR5" "D = durchgeführt, aber Abstand nicht angegeben; N = Nein (MRT/CT nicht durchgeführt); U = Unbekannt"
* effectiveDateTime -> "KR5" "Datum der MRT/CT Untersuchung"