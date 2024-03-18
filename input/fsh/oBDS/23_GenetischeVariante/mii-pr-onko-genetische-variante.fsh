Profile: MII_PR_Onko_Genetische_Variante
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante 
Id: mii-pr-onko-genetische-variante
Title: "MII PR Onkologie Genetische Variante"
Description: "Genetische Variante wie im oBDS "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft


* subject 1..1 MS
* subject only Reference(Patient)

* interpretation MS
* interpretation from from $mii-cs-onko-genetische-variante-auspraegung (required)
* note MS

Mapping: FHIR-oBDSGenetischeVariante
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Genetische_Variante
* -> "23" "Genetische Variante"
* note -> "23.1" "Genetische Variante Name" 
* interpretation -> "23.2" "Genetische Variante Ausprägung" 
