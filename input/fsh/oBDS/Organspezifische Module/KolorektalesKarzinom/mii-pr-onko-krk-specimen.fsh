Profile: MII_PR_Onko_KRK_Specimen
Parent: MII_PR_Onko_Specimen
Id: mii-pr-onko-krk-specimen
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
* insert Label (collection.collectedDateTime, Tumor Histologiedatum, Histologiedatum nach 6.1 oBDS 2021)
* insert Translation(collection.collectedDateTime ^short, de-DE, Tumor Histologiedatum)
* insert Translation(collection.collectedDateTime ^definition, de-DE, Histologiedatum nach 6.1 oBDS 2021 )

* accessionIdentifier MS
* accessionIdentifier.value 0..1 MS
* insert Label (accessionIdentifier.value, Histologie-Einsendenummer, Histologie-Einsendenummer nach 6.2 oBDS 2021)
* insert Translation(accessionIdentifier.value ^short, de-DE, Histologie-Einsendenummer)
* insert Translation(accessionIdentifier.value ^definition, de-DE, Histologie-Einsendenummer nach 6.2 oBDS 2021)

* condition MS
* condition from MII_VS_Onko_KRK_TME_Qualitaet (extensible)



Mapping: FHIR-oBDS-KRK-Specimen
Id: oBDS-Organ
Title: "Mapping FHIR zu oBDS (organspezifisches Zusatzmodul)"
Source: MII_PR_Onko_KRK_Specimen
* -> "KR4" "Rektum: Qualität des TME-Präparats"
* condition -> "KR4" "Qualität des TME-Präparats (Mesorektum-Beurteilung)"
* collection.collectedDateTime -> "6.1" "Tumor Histologiedatum (oBDS Kapitel 6 Histologie)"
* accessionIdentifier.value -> "6.2" "Histologie-Einsendenummer (oBDS Kapitel 6 Histologie)"