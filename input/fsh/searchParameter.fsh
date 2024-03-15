//----------------------------------------
// SearchParameters for Fernmetastasen
//----------------------------------------
Instance: mii-sp-onko-fernmetastasen-body-site
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fernmetastasen_Body-Site"
* description = "SearchParameter for Fernmetastasen.bodysite"
* status = #active 
* code = #fernmetastasen-body-site
* base = #Observation 
* type = #token
* expression = "Fernmetastasen.bodySite"

//----------------------------------------
// SearchParameters for Tod
//----------------------------------------
Instance: mii-sp-onko-tod-interpretation
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Onko_Tod_Interpreation"
* description = "SearchParameter for Tod.interpretation"
* status = #active
* code = #interpretation
* base = #Observation
* type = #token
* expression = "Observation.interpretation"
