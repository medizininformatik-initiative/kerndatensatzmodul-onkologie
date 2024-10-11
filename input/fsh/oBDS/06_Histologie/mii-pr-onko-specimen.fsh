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
* collection.collectedDateTime MS
* accessionIdentifier MS
* accessionIdentifier.value MS

Mapping: FHIR-oBDS-Histologie-Specimen
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Specimen
* -> "6" "Histologie"
* collection.collectedDateTime -> "6.1" "Tumor Histologiedatum"
* accessionIdentifier.value -> "6.2" "Histologie-Einsendenummer"