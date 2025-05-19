Extension: MII_EX_Onko_Strahlentherapie_Bestrahlung_Gesamtdosis
Id: mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis
Title: "MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis"
Description: "Strahlentherapie: Gesamtdosis einer Bestrahlung"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"  

* value[x] ^short = "Strahlentherapie Gesamtdosis (Dosis)"
* value[x] ^definition = "Gibt an, mit welcher Gesamtdosis da Zielgebiet bestrahlt wurde (inklusive Boost)."
* value[x] only Quantity
* valueQuantity from mii-vs-onko-strahlentherapie-strahlungseinheit (required)
* valueQuantity.system = $UCUM

Extension: MII_EX_Onko_Strahlentherapie_Bestrahlung_Einzeldosis
Id: mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis
Title: "MII EX Onko Strahlentherapie Bestrahlung Einzeldosis"
Description: "Strahlentherapie: Einzeldosis einer Bestrahlung"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"  

* value[x] ^short = "Strahlentherapie Einzeldosis pro Tag (Dosis)"
* value[x] ^definition = "Gibt an, mit welcher Einzeldosis (häufigste Dosis, nicht Boost) pro Tag das Zielgebiet bestrahlt wurde."
* value[x] only Quantity
* valueQuantity from mii-vs-onko-strahlentherapie-strahlungseinheit (required)
* valueQuantity.system = $UCUM

Extension: MII_EX_Onko_Strahlentherapie_Bestrahlung_Boost
Id: mii-ex-onko-strahlentherapie-bestrahlung-boost
Title: "MII EX Onko Strahlentherapie Bestrahlung Boost"
Description: "Strahlentherapie: Boost einer Bestrahlung"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"  

* value[x] ^short = "Strahlentherapie Boost"
* value[x] ^definition = "Angabe, ob ein Boost und falls ja, welche Art von Boost appliziert wurde."
* value[x] only CodeableConcept
* valueCodeableConcept from mii-vs-onko-strahlentherapie-boost (required) 

Extension: MII_EX_Onko_Strahlentherapie_Bestrahlung_Seitenlokalisation
Id: mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation
Title: "MII EX Onko Strahlentherapie Bestrahlung Seitenlokalisation"
Description: "Strahlentherapie: Seitenlokalisation einer Bestrahlung"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure.bodySite"  

* value[x] ^short = "Seitenlokalisation im Zielgebiet"
* value[x] ^definition = "Gibt Seitenlokalisation des Zielgebietes an. Bei beidseitiger Bestrahlung paariger Organe sind die Bestrahlungen einzeln zu melden."
* value[x] only CodeableConcept
* valueCodeableConcept from mii-vs-onko-seitenlokalisation (required) 
