ValueSet: MII_CS_Onko_Nebenwirkung_Origination
Id: mii-cs-onko-nebenwirkung-origination
Title: "MII CS Onko Nebenwirkung von verschiedene Therapien"
Description: "Gibt an, aus welche Therapie die Nebenwirkungen stammen."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-origination"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* include $SCT#423661009 "Complication of chemotherapy (disorder)"
* include $SCT#431010004 "Late effect of radiation therapy (disorder)"
// Es ist der übergeordnete Begriff. Finde leider keine passende Snomed Code für hormonal therapy, targeted drugs, and immunotherapy (Unterkategorie von systemische Therapie).
* include $SCT#127325009 "Procedure related finding (finding)"