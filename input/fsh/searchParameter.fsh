//----------------------------------------
// SearchParameters for Fernmetastasen
//----------------------------------------
Instance: mii-sp-onko-fernmetastasen-body-site
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fernmetastasen_Body_Site"
* description = "SearchParameter for Fernmetastasen.bodysite"
* status = #active 
* code = #body-site
* base = #Observation 
* type = #token
* expression = "Observation.bodySite" // is Observation not already covered by base?

//----------------------------------------
// SearchParameters for Operation
//----------------------------------------
Instance: mii-sp-onko-operation-extension-durchfuehrungsabsicht
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Extension_Durchfuehrungsabsicht"
* description = "SearchParameter for Operation.extension.durchfuehrungsabsicht"
* status = #active 
* code = #extension-durchfuehrungsabsicht
* base = #Procedure 
* type = #token
* expression = "Procedure.extension.durchfuehrungsabsicht"

Instance: mii-sp-onko-operation-extension-intention // sollte kleingeschrieben werden im profil + Dokumentationsdatum auch
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Extension_Intention"
* description = "SearchParameter for Operation.extension.intention"
* status = #active 
* code = #extension-intention
* base = #Procedure 
* type = #token
* expression = "Procedure.extension.intention"

Instance: mii-sp-onko-operation-body-site
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Body_Site"
* description = "SearchParameter for Operation.bodysite"
* status = #active 
* code = #body-site
* base = #Procedure 
* type = #token
* expression = "Procedure.bodySite" 

Instance: mii-sp-onko-operation-outcome
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Outcome"
* description = "SearchParameter for Operation.outcome"
* status = #active 
* code = #outcome
* base = #Procedure 
* type = #token
* expression = "Procedure.outcome" 

Instance: mii-sp-onko-operation-complication
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Complication"
* description = "SearchParameter for Operation.complication"
* status = #active 
* code = #complication
* base = #Procedure 
* type = #token
* expression = "Procedure.complication" 

Instance: mii-sp-onko-operation-note
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Note"
* description = "SearchParameter for Operation.note"
* status = #active 
* code = #note
* base = #Procedure 
* type = #string
* expression = "Procedure.note" 

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
