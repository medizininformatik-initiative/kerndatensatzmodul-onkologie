//----------------------------------------
// SearchParameters for Fernmetastasen
//----------------------------------------
Instance: mii-sp-onko-fernmetastasen-body-site
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fernmetastasen_Body_Site"
* description = "SearchParameter for Fernmetastasen.bodysite" // Muss hier Fernmetastasen oder Observation stehen?
* status = #active 
* code = #body-site
* base = #Observation 
* type = #token
* expression = "Observation.bodySite" // is Observation not already covered by base?

//----------------------------------------
// SearchParameters for Operation
//----------------------------------------
Instance: mii-sp-onko-operation-extension-durchfuehrungsabsicht // wo kommt die extension her? Vllt von der base abgeleitet? steht auch in strahlentherapie
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
* base = #Procedure // im profil steht mii procdure, tut das eine spezifische mii base dann erfordern?
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

Instance: mii-sp-onko-operation-complication // is this enouh or we need two for obds and icd10 slices?
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
// SearchParameters for Strahlentherapie
//----------------------------------------

// durchfuehrungsabsicht?

Instance: mii-sp-onko-strahlentherapie-extension-intention
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Intention"
* description = "SearchParameter for Strahlentherapie.extension.intention"
* status = #active 
* code = #extension-intention
* base = #Procedure
* type = #token
* expression = "Procedure.extension.intention"

Instance: mii-sp-onko-strahlentherapie-extension-stellung
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Stellung"
* description = "SearchParameter for Strahlentherapie.extension.stellung"
* status = #active 
* code = #extension-stellung
* base = #Procedure
* type = #token
* expression = "Procedure.extension.stellung"

Instance: mii-sp-onko-strahlentherapie-extension-behandlungsabschnitt // complex extension
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Behandlungsabschnitt"
* description = "SearchParameter for Strahlentherapie.extension.behandlungsabschnitt.extension..."
* status = #active 
* code = #extension-behandlungsabschnitt
* base = #Procedure
* type = #token
* expression = "Procedure.extension.behandlungsabschnitt.extension-element.Applikationsart | ⁄
Procedure.extension.behandlungsabschnitt.extension-element.Strahlenart | ⁄
Procedure.extension.behandlungsabschnitt.extension-element.Zielgebiet | ⁄
Procedure.extension.behandlungsabschnitt.extension-element.Zielgebiet_Lateralitaet | ⁄
Procedure.extension.behandlungsabschnitt.extension-element.Gesamtdosis | ⁄
Procedure.extension.behandlungsabschnitt.extension-element.Einzeldosis | ⁄
Procedure.extension.behandlungsabschnitt.extension-element.Boost ⁄
"

Instance: mii-sp-onko-strahlentherapie-body-site
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Body_Site"
* description = "SearchParameter for Strahlentherapie.bodysite"
* status = #active 
* code = #body-site
* base = #Procedure 
* type = #token
* expression = "Procedure.bodySite" 

Instance: mii-sp-onko-strahlentherapie-outcome
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Outcome"
* description = "SearchParameter for Strahlentherapie.outcome"
* status = #active 
* code = #outcome
* base = #Procedure 
* type = #token
* expression = "Procedure.outcome" 

Instance: mii-sp-onko-strahlentherapie-note
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Note"
* description = "SearchParameter for Strahlentherapie.note"
* status = #active 
* code = #note
* base = #Procedure 
* type = #string
* expression = "Procedure.note" 

// Systemische Therapie -> Fehler in IG



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
