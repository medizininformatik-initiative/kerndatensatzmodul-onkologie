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
* insert Label (collection.collectedDateTime, Datum der Probenentnahme, Datum der Probenentnahme - oBDS 6.1 Tumor Histologiedatum)
* insert Translation(collection.collectedDateTime ^short, de-DE, Datum der Probenentnahme)
* insert Translation(collection.collectedDateTime ^definition, de-DE, Datum der Probenentnahme entspricht oBDS 6.1 Tumor Histologiedatum)

* accessionIdentifier MS
* accessionIdentifier.value 0..1 MS
* insert Label (accessionIdentifier.value, Histologie-Einsendenummer, Histologie-Einsendenummer nach 6.2 oBDS 2021)
* insert Translation(accessionIdentifier.value ^short, de-DE, Histologie-Einsendenummer)
* insert Translation(accessionIdentifier.value ^definition, de-DE, Histologie-Einsendenummer nach 6.2 oBDS 2021)

Mapping: FHIR-oBDS-Histologie-Specimen
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Specimen
* -> "6" "Histologie"
* collection.collectedDateTime -> "6.1" "Tumor Histologiedatum (Datum der Probenentnahme)"
* accessionIdentifier.value -> "6.2" "Histologie-Einsendenummer"