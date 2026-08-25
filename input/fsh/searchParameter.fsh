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
* name = "MII_SP_Condition_Extension_Morphology_Behavior_ICD-O-3"
* experimental = false
* date = 2026-08-25
* description = "SearchParameter for Condition.extension[morphology-behavior-icdo3]"
* status = #active 
* code = #morphology-behavior-icdo3
* base = #Condition
* type = #token
* expression = "Condition.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3').value"

// Ein gemeinsamer SearchParameter für das c/p/u-Präfix aller TNM-Kategorien: die
// Extension mii-ex-onko-tnm-cp-praefix existiert genau einmal und sitzt auf
// Observation.code (Kontext CodeableConcept). Die Unterscheidung zwischen T-, N- und
// M-Kategorie erfolgt über den Kategorie-Code der Observation (SearchParameter `code`).
// Ersetzt die früheren, defekten SPs tnm-t-/tnm-n-/tnm-m-cppraefix.
Instance: mii-sp-onko-observation-tnm-cp-praefix
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Observation_TNM_cp_Praefix"
* description = "SearchParameter for Observation.code.extension[cp-praefix]. Die Extension gilt gleichermaßen für T-, N- und M-Kategorien; die Unterscheidung der Kategorie erfolgt über den Kategorie-Code der Observation (Kombination mit dem SearchParameter `code`)."
* status = #active
* experimental = false
* date = 2026-08-25
* code = #tnm-cp-praefix
* base = #Observation
* type = #token
* expression = "Observation.code.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value"

Instance: mii-sp-onko-observation-tnm-y-praefix
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Observation_TNM_y_Praefix"
* description = "SearchParameter for Observation.modifierExtension[y-praefix]. Kennzeichnet TNM-Kategorien, die während oder nach initialer multimodaler Therapie festgestellt wurden (UICC y-Präfix). Die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation."
* status = #active
* experimental = false
* date = 2026-08-25
* code = #tnm-y-praefix
* base = #Observation
* type = #token
* expression = "Observation.modifierExtension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix').value"

Instance: mii-sp-onko-observation-tnm-r-praefix
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Observation_TNM_r_Praefix"
* description = "SearchParameter for Observation.modifierExtension[r-praefix]. Kennzeichnet TNM-Kategorien, die zur Beurteilung eines Rezidivs festgestellt wurden (UICC r-Präfix). Die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation."
* status = #active
* experimental = false
* date = 2026-08-25
* code = #tnm-r-praefix
* base = #Observation
* type = #token
* expression = "Observation.modifierExtension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix').value"

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

Instance: mii-sp-onko-procedure-strahlentherapie-applikationsart
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Strahlentherapie_Applikationsart"
* description = "SearchParameter for Procedure.usedCode:Applikationsart"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #bestrahlung-applikationsart
* base = #Procedure
* type = #token
* expression = "Procedure.usedCode.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart')"

Instance: mii-sp-onko-procedure-strahlentherapie-strahlenart
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Strahlentherapie_Strahlenart"
* description = "SearchParameter for Procedure.usedCode:Strahlenart"
* status = #active 
* date = 2024-04-15
* experimental = true
* code = #bestrahlung-strahlenart
* base = #Procedure
* type = #token
* expression = "Procedure.usedCode.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart')"

// Removed mii-sp-onko-procedure-ext-strahlentherapie-bs-zielgebiet as bodySite is covered by MII-wide search parameters
Instance: mii-sp-onko-procedure-strahlentherapie-lateralitaet
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Strahlentherapie_Lateralitaet"
* description = "SearchParameter for Procedure.bodySite.extension:Seitenlokalisation"
* status = #active 
* experimental = true
* date = 2025-05-17
* code = #bestrahlung-zielgebiet-lateralitaet
* base = #Procedure
* type = #token
* expression = "Procedure.bodySite.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation').value"



Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Gesamtdosis"
* description = "SearchParameter for Procedure.extension:gesamtdosis"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #bestrahlung-gesamtdosis
* base = #Procedure
* type = #quantity
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Einzeldosis"
* description = "SearchParameter for Procedure.extension:einzeldosis"
* status = #active 
* date = 2024-04-15
* experimental = true
* code = #bestrahlung-einzeldosis
* base = #Procedure
* type = #quantity
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis').value"

Instance: mii-sp-onko-procedure-ext-strahlentherapie-bs-boost
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Boost"
* description = "SearchParameter for Procedure.extension:boost"
* status = #active 
* experimental = true
* date = 2024-04-15
* code = #bestrahlung-boost
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost').value"

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