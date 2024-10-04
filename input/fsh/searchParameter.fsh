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
* description = "SearchParameter for Condition.verificationStatus"
* status = #active 
* code = #verification-status
* base = #Condition 
* type = #token
* expression = "Condition.verificationStatus"

Instance: mii-sp-onko-diagnose-ext-morphology-behavior-icdo3 // im IG sollte kleingeschrieben werden im profil + Dokumentationsdatum auch
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Extension_Morphology_Behaviour_ICD-O-3"
* description = "SearchParameter for Diagnosis.extension[morphology-behaviour-icdo3]"
* status = #active 
* code = #extension-morphology-behavior-icdo3
* base = #Diagnosis
* type = #token
* expression = "Diagnosis.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3').value"

//----------------------------------------
// SearchParameters for Histologie
//----------------------------------------

// No search parameters to cover

//----------------------------------------
// SearchParameters for TNM Klassifikationen
//----------------------------------------
Instance: mii-sp-onko-tnm-klassifikation-has-member
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_TNM_Klassifikationen_Has_Member"
* description = "SearchParameter for Observation.hasMember"
* status = #active 
* code = #has-member
* base = #Observation 
* type = #reference
* expression = "Observation.hasMember"

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

// No search parameters to cover, since Lokalisation was moved from bodySite to valueCodeableConcept


//----------------------------------------
// SearchParameters for Allgemeiner Leistungszustand
//----------------------------------------

// No search parameters to cover

//----------------------------------------
// SearchParameters for Operation
//----------------------------------------
Instance: mii-sp-onko-operation-ext-intention // im IG sollte kleingeschrieben werden im profil + Dokumentationsdatum auch
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Extension_Intention"
* description = "SearchParameter for Procedure.extension.intention"
* status = #active 
* code = #extension-intention
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention').value"

Instance: mii-sp-onko-operation-complication
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Operation_Complication"
* description = "SearchParameter for Procedure.complication"
* status = #active 
* code = #complication
* base = #Procedure 
* type = #token
* expression = "Procedure.complication" 

//----------------------------------------
// SearchParameters for Strahlentherapie
//----------------------------------------
Instance: mii-sp-onko-strahlentherapie-ext-stellung
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Stellung"
* description = "SearchParameter for Procedure.extension.stellung"
* status = #active 
* code = #extension-stellung
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellung').value"

Instance: mii-sp-onko-strahlentherapie-ext-bestrahlung-applikationsart
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Bestrahlung_Applikationsart"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:applikationsart"
* status = #active 
* code = #extension-bestrahlung-applikationsart
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Applikationsart').value"

Instance: mii-sp-onko-strahlentherapie-ext-bestrahlung-strahlenart
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Bestrahlung_Strahlenart"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:strahlenart"
* status = #active 
* code = #extension-bestrahlung-strahlenart
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Strahlenart').value"

Instance: mii-sp-onko-strahlentherapie-extension-bestrahlung-zielgebiet
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Bestrahlung_Zielgebiet"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:zielgebiet"
* status = #active 
* code = #extension-bestrahlung-zielgebiet
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Zielgebiet').value"

Instance: mii-sp-onko-strahlentherapie-ext-zielgebiet-lateralitaet
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Bestrahlung_Zielgebiet_Lateralitaet"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:zielgebiet_Lateralitaet"
* status = #active 
* code = #extension-bestrahlung-zielgebiet-Lateralitaet
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Zielgebiet_Lateralitaet').value"

Instance: mii-sp-onko-strahlentherapie-ext-bestrahlung-gesamtdosis
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Bestrahlung_Gesamtdosis"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:gesamtdosis"
* status = #active 
* code = #extension-bestrahlung-gesamtdosis
* base = #Procedure
* type = #quantity
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Gesamtdosis').value"

Instance: mii-sp-onko-strahlentherapie-ext-bestrahlung-einzeldosis
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Bestrahlung_Einzeldosis"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:einzeldosis"
* status = #active 
* code = #extension-bestrahlung-einzeldosis
* base = #Procedure
* type = #quantity
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Einzeldosis').value"

Instance: mii-sp-onko-strahlentherapie-ext-bestrahlung-boost
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Extension_Bestrahlung_Boost"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:boost"
* status = #active 
* code = #extension-bestrahlung-boost
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Boost').value"

Instance: mii-sp-onko-strahlentherapie-outcome
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Strahlentherapie_Outcome"
* description = "SearchParameter for Procedure.outcome"
* status = #active 
* code = #outcome
* base = #Procedure 
* type = #token
* expression = "Procedure.outcome" 

//----------------------------------------
// SearchParameters for Nebenwirkung
//----------------------------------------
Instance: mii-sp-onko-nebenwirkung-suspectEntity
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Nebenwirkung_SuspectEntity_instance"
* description = "SearchParameter for AdverseEvent.suspectEntity.instance"
* status = #active 
* code = #instance
* base = #AdverseEvent 
* type = #reference
* expression = "AdverseEvent.suspectEntity.instance" 

//----------------------------------------
// SearchParameters for Systemische Therapie
//----------------------------------------

// No search parameters to cover

//----------------------------------------
// SearchParameters for Verlauf
//----------------------------------------

// No search parameters to cover

//----------------------------------------
// SearchParameters for Tumorkonferenz
//----------------------------------------
Instance: mii-sp-onko-tumorkonferenz-created
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Tumorkonferenz_Created"
* description = "SearchParameter for CarePlan.created"
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
* description = "SearchParameter for CarePlan.contributor"
* status = #active 
* code = #contributor
* base = #CarePlan 
* type = #reference
* expression = "CarePlan.contributor" 

Instance: mii-sp-onko-tumorkonferenz-addresses
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Tumorkonferenz_Addresses"
* description = "SearchParameter for CarePlan.addresses"
* status = #active 
* code = #addresses
* base = #CarePlan 
* type = #reference
* expression = "CarePlan.addresses" 

//----------------------------------------
// SearchParameters for Tod
//----------------------------------------
Instance: mii-sp-onko-tod-interpretation
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Onko_Tod_Interpreation"
* description = "SearchParameter for Observation.interpretation"
* status = #active
* code = #interpretation
* base = #Observation
* type = #token
* expression = "Observation.interpretation"

Instance: mii-sp-onko-tod-focus
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Onko_Tod_Focus"
* description = "SearchParameter for Observation.focus"
* status = #active
* code = #focus
* base = #Observation
* type = #reference
* expression = "Observation.focus"

Instance: mii-sp-onko-tod-encounter
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Onko_Tod_Encounter"
* description = "SearchParameter for Observation.encounter"
* status = #active
* code = #encounter
* base = #Observation
* type = #reference
* expression = "Observation.encounter"

Instance: mii-sp-onko-tod-derived-from
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Onko_Tod_DerivedFrom"
* description = "SearchParameter for Observation.derivedFrom"
* status = #active
* code = #derived-from
* base = #Observation
* type = #reference
* expression = "Observation.derived-from"

//----------------------------------------
// SearchParameters for Genetische Variante
//----------------------------------------

// No search parameters to cover
