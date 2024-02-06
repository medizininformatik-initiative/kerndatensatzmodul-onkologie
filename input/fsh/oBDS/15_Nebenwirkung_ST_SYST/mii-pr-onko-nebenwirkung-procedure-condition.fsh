Profile: MII_PR_Onko_Nebenwirkung_Condition
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Id: mii-pr-onko-nebenwirkung-condition-reference
Title: "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie"
Description: "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Diese Profil ist die Referenz für Procedure.complicationDetail von Procedure Profile Strahlentherapie und Systemische Therapie
* severity 1..1 MS
* severity from $mii-vs-onko-nebenwirkung-ctcae-grad

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    nebenwirkung-art 0..*
* code.coding[nebenwirkung-art] from $hl7-meddra-de
* code.text MS