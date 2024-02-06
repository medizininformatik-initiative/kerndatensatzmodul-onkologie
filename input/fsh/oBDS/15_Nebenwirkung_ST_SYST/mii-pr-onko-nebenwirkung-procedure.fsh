Profile: MII_PR_Onko_Nebenwirkung_Procedure
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Id: mii-pr-onko-nebenwirkung-procedure
Title: "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie"
Description: "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Diese Profil sollte ein Teil von der Profile von Strahlentherapie und Systemische Therapie sein

* complication MS
* complication.coding from $mii-vs-onko-nebenwirkung-ctcae-grad
* complication.coding ^fixedCoding.system = $mii-cs-onko-nebenwirkung-ctcae-grad
* complicationDetail MS
