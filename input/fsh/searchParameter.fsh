//----------------------------------------
// SearchParameters for Diagnose
//----------------------------------------
// verificationStatus
Instance: mii-sp-onko-diagnose-verification-status
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Diagnose_verification_status"
* description = "SearchParameter for Diagnose.verificationStatus"
* status = #active 
* code = #verification-status
* base = #Observation 
* type = #token
* expression = "Condition.verificationStatus"

//----------------------------------------
// SearchParameters for Histologie
//----------------------------------------

//----------------------------------------
// SearchParameters for TNM Klassifikationen
//----------------------------------------

//----------------------------------------
// SearchParameters for Weitere Klassifikationen
//----------------------------------------

// No search parameters to cover

//----------------------------------------
// SearchParameters for Redidualstatus
//----------------------------------------

// No search parameters to cover

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
// SearchParameters for Allgemeiner Leistungszustand
//----------------------------------------

// No search parameters to cover

//----------------------------------------
// SearchParameters for Operation
//----------------------------------------
Instance: mii-sp-onko-operation-extension-durchfuehrungsabsicht // wo kommt die extension her? Vllt von der base abgeleitet? steht auch in strahlentherapie -> kann wahrscheinlic raus
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

// is this correct for a complex extension?
Instance: mii-sp-onko-strahlentherapie-extension-bestrahlung // complex extension
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Bestrahlung"
* description = "SearchParameter for Strahlentherapie.extension.bestrahlung.extension..."
* status = #active 
* code = #extension-bestrahlung
* base = #Procedure
* type = #token
* expression = "Procedure.extension.bestrahlung.extension-element.Applikationsart | ⁄ 
Procedure.extension.bestrahlung.extension-element.Strahlenart | ⁄
Procedure.extension.bestrahlung.extension-element.Zielgebiet | ⁄
Procedure.extension.bestrahlung.extension-element.Zielgebiet_Lateralitaet | ⁄
Procedure.extension.bestrahlung.extension-element.Gesamtdosis | ⁄
Procedure.extension.bestrahlung.extension-element.Einzeldosis | ⁄
Procedure.extension.bestrahlung.extension-element.Boost ⁄
"
// die unterschiedlichen extension elemente können unterschiedliche typen haben?!?

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

//----------------------------------------
// SearchParameters for Nebenwirkung
//----------------------------------------
Instance: mii-sp-onko-nebenwirkun-suspectEntity
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Nebenwirkung_SuspectEntity_instance"
* description = "SearchParameter for Nebenwirkung.suspectEntity.instance"
* status = #active 
* code = #instance
* base = #AdverseEvent 
* type = #reference
* expression = "AdverseEvent.suspectEntity.instance" 

//----------------------------------------
// SearchParameters for Systemische Therapie -> Fehler in IG
//----------------------------------------
Instance: mii-sp-onko-systemische-therapie-outcome
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Systemische_Therapie_Outcome"
* description = "SearchParameter for Systemische_Therapie.outcome"
* status = #active 
* code = #outcome
* base = #Procedure 
* type = #token
* expression = "Procedure.outcome" 

//----------------------------------------
// SearchParameters for Tumorkonferenz
//----------------------------------------
Instance: mii-sp-onko-tumorkonferenz-created
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Tumorkonferenz_Created"
* description = "SearchParameter for Tumorkonferenz.created"
* status = #active 
* code = #created
* base = #CarePlan 
* type = #date
* expression = "CarePlan.created" 

Instance: mii-sp-onko-tumorkonferenz-contributor
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Tumorkonferenz_Contributor"
* description = "SearchParameter for Tumorkonferenz.contributor"
* status = #active 
* code = #contributor
* base = #CarePlan 
* type = #reference

Instance: mii-sp-onko-tumorkonferenz-addresses
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Tumorkonferenz_Addresses"
* description = "SearchParameter for Tumorkonferenz.addresses"
* status = #active 
* code = #addresses
* base = #CarePlan 
* type = #reference

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

//----------------------------------------
// SearchParameters for Genetische Variante
//----------------------------------------
Instance: mii-sp-onko-genetische-variante-interpreation // why is this MS? It not from parent but also not defined in fsh profile?
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Onko_Genetische_Variante_Interpreation"
* description = "SearchParameter for Genetische_Variante.interpretation"
* status = #active
* code = #interpretation
* base = #Observation
* type = #token
* expression = "Observation.interpretation"