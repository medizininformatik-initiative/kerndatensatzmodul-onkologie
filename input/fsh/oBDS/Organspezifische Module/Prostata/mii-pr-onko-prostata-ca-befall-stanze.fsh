Profile: MII_PR_Onko_Prostata_CA_Befall_Stanze
Parent: Observation
Id: mii-pr-onko-prostate-ca-befall-stanze
Title: "MII PR Onkologie Ca-Befall Stanze"
Description: "Dieses Profil beschreibt den prozentualen Befall der am stärksten befallenen Stanze einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der Onkologie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* code MS
* code 1..1 
* code ^definition = "Prozentualer Karzinombefall der am stärksten befallenen Stanze einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates. "
* code ^short = "Prozentualer Karzinombefall"
* code.coding = $LNC#44654-2 "Tissue involved by tumor in Prostate tumor" 
* specimen MS
* specimen 0..1

// P6 Ca-Befall Stanze 


* value[x] MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity 1..1
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%
* valueQuantity.value 1..1
* insert Label(valueQuantity, Prozentualer Karzinombefall, Prozentualer Karzinombefall der am stärksten befallenen Stanze einer Prostata-Biopsie )
* insert Translation(valueQuantity ^short, de-DE, Prozentualer Karzinombefall )
* insert Translation(valueQuantity ^definition, de-DE, Prozentualer Karzinombefall der am stärksten befallenen Stanze einer Prostata-Biopsie)




Mapping: FHIR-oBDS-ProstataCaBefallStanze
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Prostata_CA_Befall_Stanze
* -> "P6" "Ca-Befall Stanze"
* valueQuantity.value -> "P6" "Prozentualer Karzinombefall der am stärksten befallenen Stanze"
