Profile: MII_PR_Onko_Genetische_Variante
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante // müssen wir das noch irgendwo manuell hinzufügen
Id: mii-pr-onko-genetische-variante
Title: "MII PR Onkologie Genetische Variante"
Description: "Genetische Variante wie im oBDS "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* component MS
* component 1..1
* component[conclusion-string] MS
* component[molecular-consequence] MS

Mapping: FHIR-oBDSGenetischeVariante
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Genetische_Variante
* -> "23" "Genetische Variante"
* component[conclusion-string] -> "23.1" "Genetische Variante Name" 
* component[molecular-consequence] -> "23.2" "Genetische Variante Auswirkung" // OPS Code
