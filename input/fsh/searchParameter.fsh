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
* description = "SearchParameter for Condition.extension[morphology-behaviour-icdo3]"
* status = #active 
* code = #morphology-behavior-icdo3
* base = #Condition
* type = #token
* expression = "Condition.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3').value"

Instance: mii-sp-onko-procedure-ext-intention
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Intention"
* description = "SearchParameter for Procedure.extension[intention]"
* status = #active 
* code = #intention
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-intention').value"


Instance: mii-sp-onko-procedure-ext-strahlentherapie-stellungzurop
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_Strahlentherapie_StellungZurOp"
* description = "SearchParameter for Procedure.extension.strahlentherapie.stellung"
* status = #active 
* code = #strahlentherapie-stellung
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellung').value"

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
* code = #bestrahlung-boost
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung').extension.where(url='Boost').value"

Instance: mii-sp-onko-procedure-ext-systemischetherapie-stellungzurop
InstanceOf: SearchParameter
Usage: #definition
* insert SP_Publisher
* insert LicenseCodeableCCBY40Instance
* insert SP_Profile
* insert Version
* name = "MII_SP_Procedure_Extension_SystemischeTherapie_StellungZurOp"
* description = "SearchParameter for Procedure.extension.systemischetherapie.stellung"
* status = #active 
* code = #systemischetherapie-stellung
* base = #Procedure
* type = #token
* expression = "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellung').value"
