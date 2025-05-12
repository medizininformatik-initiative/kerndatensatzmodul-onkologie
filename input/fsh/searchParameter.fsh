/*
SearchParameters can be found at https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter.
The SearchParameters listed here are only specific for the extensions used in Onko. 
*/

Instance: mii-sp-onko-condition-ext-morphology-behavior-icdo3
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Condition_Extension_Morphology_Behaviour_ICD-O-3"
* experimental = true
* date = 2024-04-15
* description = "SearchParameter for Condition.extension[morphology-behaviour-icdo3]"
* status = #active 
* code = #morphology-behavior-icdo3
* base = #Condition
* type = #token
* expression = "Condition.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3').value"

Instance: mii-sp-onko-observation-ext-tnm-t-cppraefix
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Observation_Extension_TNM_T_CpPraefix"
* description = "SearchParameter for Observation.extension[cppraefix]"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #tnm-t-cppraefix
* base = #Observation
* type = #token
* expression = "Observation.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-t-cppraefic').value"

Instance: mii-sp-onko-observation-ext-tnm-n-cppraefix
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Observation_Extension_TNM_N_CpPraefix"
* description = "SearchParameter for Observation.extension[cppraefix]"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #tnm-n-cppraefix
* base = #Observation
* type = #token
* expression = "Observation.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-t-cppraefic').value"

Instance: mii-sp-onko-observation-ext-tnm-m-cppraefix
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Observation_Extension_TNM_M_CpPraefix"
* description = "SearchParameter for Observation.extension[cppraefix]"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #tnm-m-cppraefix
* base = #Observation
* type = #token
* expression = "Observation.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-t-cppraefic').value"

Instance: mii-sp-onko-observation-ext-tnm-n-itc
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Observation_Extension_TNM_N_ITC"
* description = "SearchParameter for Observation.extension[itc]"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #tnm-n-itc
* base = #Observation
* type = #token
* expression = "Observation.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-n-itc').value"

Instance: mii-sp-onko-observation-ext-tnm-n-sn-suffix
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Observation_Extension_TNM_N__SN_Suffix"
* description = "SearchParameter for Observation.extension[sn-suffix]"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #tnm-n-sn-suffix
* base = #Observation
* type = #token
* expression = "Observation.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-n-sn-suffix').value"

Instance: mii-sp-onko-procedure-ext-operation-intention
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Operation_Intention"
* description = "SearchParameter for Procedure.extension[intention]"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #operation-intention
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-intention
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Intention"
* description = "SearchParameter for Procedure.extension[intention]"
* status = #active 
* date = 2024-04-15
* experimental = true
* code = #strahlentherapie-intention
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention').value"

Instance: mii-sp-onko-ext-strahlentherapie-stellungzurop
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_StellungZurOp"
* description = "SearchParameter for Procedure.extension[StellungZurOp]"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #strahlentherapie-stellungzurop
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellungzurop').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-applikationsart
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Applikationsart"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:applikationsart"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #bestrahlung-applikationsart
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Applikationsart').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-strahlenart
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Strahlenart"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:strahlenart"
* status = #active 
* date = 2024-04-15
* experimental = true
* code = #bestrahlung-strahlenart
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Strahlenart').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-zielgebiet
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Zielgebiet"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:zielgebiet"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #bestrahlung-zielgebiet
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Zielgebiet').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-lateralitaet
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Zielgebiet_Lateralitaet"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:zielgebiet_Lateralitaet"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #bestrahlung-zielgebiet-lateralitaet
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Zielgebiet_Lateralitaet').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Gesamtdosis"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:gesamtdosis"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #bestrahlung-gesamtdosis
* base = #Procedure
* type = #quantity
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Gesamtdosis').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Einzeldosis"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:einzeldosis"
* status = #active 
* date = 2024-04-15
* experimental = true
* code = #bestrahlung-einzeldosis
* base = #Procedure
* type = #quantity
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Einzeldosis').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-boost
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Boost"
* description = "SearchParameter for Procedure.extension:bestrahlung.extension:boost"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #bestrahlung-boost
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Boost').value"

Instance: mii-sp-onko-procedure-ext-systemischetherapie-intention
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Systemischetherapie_Intention"
* description = "SearchParameter for Procedure.extension[intention]"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #systemischetherapie-intention
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention').value"

Instance: mii-sp-onko-ext-systemischetherapie-stellungzurop
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert Version
* name = "MII_SP_Procedure_Extension_Systemischetherapie_StellungZurOp"
* description = "SearchParameter for Procedure.extension[StellungZurOp]"
* status = #active 
* date = 2024-04-15
* experimental = true
* code = #systemischetherapie-stellungzurop
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop').value"