Extension: MII_EX_Onko_Strahlentherapie_Behandlungsabschnitt
Id: mii-ex-onko-strahlentherapie-behandlungsabschnitt
Title: "MII EX Onko Strahlentherapie Behandlungsabschnitt"
Description: "Strahlentherapie einzelner Behandlungsabschnitt der Gesamttherapie"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-behandlungsabschnitt"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

* extension contains
    Applikationsart 1..1 MS and
    Strahlenart 1..1 MS and
    Zielgebiet 1..1 MS and
    Zielgebiet_Lateralitaet 0..1 MS and
    Gesamtdosis 0..1 MS and
    Einzeldosis 0..1 MS and
    Boost 0..1 MS 

* extension[Applikationsart] ^short = "Strahlentherapie Applikationsart"
* extension[Applikationsart] ^definition = "Gibt an, mit welcher Technik die Strahlentherapie durchgeführt wurde."
* extension[Applikationsart].value[x] from $mii-vs-onko-strahlentherapie-applikationsart (required) 
* extension[Strahlenart] ^short = "Strahlentherapie Strahlenart"
* extension[Strahlenart] ^definition = "Gibt an, mit welcher Strahlenart (sowohl Strahlung als auch Metabolite) die Strahlentherapie durchgeführt wurde."
* extension[Strahlenart].value[x] from $mii-vs-onko-strahlentherapie-strahlenart (required)
* extension[Zielgebiet] ^short = "Strahlentherapie Zielgebiet"
* extension[Zielgebiet] ^definition = "Gibt an, an welcher anatomischen Region die Bestrahlung durchgeführt wurde."
* extension[Zielgebiet].value[x] from $mii-vs-onko-strahlentherapie-zielgebiet (required)
* extension[Zielgebiet_Lateralitaet] ^short = "Seitenlokalisation Zielgebietes"
* extension[Zielgebiet_Lateralitaet] ^definition = "Gibt Seitenlokalisation des Zielgebietes an. Bei beidseitiger Bestrahlung paariger Organe sind die Bestrahlungen einzeln zu melden."
* extension[Zielgebiet_Lateralitaet].value[x] from $mii-cs-onko-primaertumor-seitenlokalisation (required) //hier ggfs. refactoren
* extension[Gesamtdosis] ^short = "Strahlentherapie Gesamtdosis (Dosis)"
* extension[Gesamtdosis] ^definition = "Gibt an, mit welcher Gesamtdosis da Zielgebiet bestrahlt wurde (inklusive Boost)."
* extension[Gesamtdosis].value[x] only Quantity
* extension[Gesamtdosis].valueQuantity.unit from $mii-vs-onko-strahlentherapie-strahlungseinheit (required)
// hier ggfs. den short/definition text für einheit anhängen
* extension[Einzeldosis] ^short = "Strahlentherapie Einzeldosis pro Tag (Dosis)"
* extension[Einzeldosis] ^definition = "Gibt an, mit welcher Einzeldosis (häufigste Dosis, nicht Boost) pro Tag das Zielgebiet bestrahlt wurde."
* extension[Einzeldosis].value[x] only Quantity
* extension[Einzeldosis].valueQuantity.unit from $mii-vs-onko-strahlentherapie-strahlungseinheit (required)
* extension[Boost] ^short = "Strahlentherapie Boost"
* extension[Boost] ^definition = "Angabe, ob ein Boost und falls ja, welche Art von Boost appliziert wurde."
* extension[Boost].value[x] only CodeableConcept
* extension[Boost].value[x] from $mii-vs-onko-strahlentherapie-boost (required) 
