Profile: MII_PR_Onko_Specimen
Parent: Specimen
Id: mii-pr-onko-specimen
Title: "MII PR Onkologie Specimen"
Description: "Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS

* subject 1..1 MS
* subject only Reference(Patient)
* collection MS
* collection.collectedDateTime 0..1 MS

* insert Translation(collection.collectedDateTime ^short, de-DE, Tumor Histologiedatum)
* insert Translation(collection.collectedDateTime ^definition, de-DE, Histologiedatum nach 6.1 oBDS 2021 )

* accessionIdentifier MS
* accessionIdentifier.value 0..1 MS
* insert Translation(accessionIdentifier.value ^short, de-DE, Histologie-Einsendenummer)
* insert Translation(accessionIdentifier.value ^definition, de-DE, Histologie-Einsendenummer nach 6.2 oBDS 2021)

Mapping: FHIR-oBDS-Histologie-Specimen
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Specimen
* -> "6" "Histologie"
* collection.collectedDateTime -> "6.1" "Tumor Histologiedatum"
* accessionIdentifier.value -> "6.2" "Histologie-Einsendenummer"