Extension: MII_EX_Onko_Strahlentherapie_Behandlungsabschnitt
Id: mii-ex-onko-strahlentherapie-behandlungsabschnitt
Title: "MII EX Onko Strahlentherapie Behandlungsabschnitt"
Description: "Strahlentherapie einzelner Behandlungsabschnitt der Gesamttherapie"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-behandlungsabschnitt"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

extension contains
    Menge_Bestrahlung 1..1 and // this might be needed for slicing
//  Start + Ende Dauer MS and   --> laut datenmodell oBDS sinnvoll, da mehrere perionden mit der gleichen Intention 
    Zielgebiet 1..1 MS and
    Zielgebiet_Lateralitaet 0..1 MS and
    Gesamtdosis 0..1 MS and
    Einzeldosis 0..1 MS and
    Boost 0..1 MS and
    radiationUnit 1 ..1 MS
* extension[Menge_Strahlentherapie] = only unsigned    
* extension[Zielgebiet] ^short = "Strahlentherapie Zielgebiet"
* extension[Zielgebiet] ^definition = "Gibt an, an welcher anatomischen Region die Bestrahlung durchgeführt wurde."
* extension[Zielgebiet].value[x] from $mii-vs-onko-strahlentherapie-zielgebiet (required)
* extension[Zielgebiet_Lateralitaet] ^short = "Seitenlokalisation Zielgebietes"
* extension[Zielgebiet_Lateralitaet] ^definition = "Gibt Seitenlokalisation des Zielgebietes an. Bei beidseitiger Bestrahlung paariger Organe sind die Bestrahlungen einzeln zu melden."
* extension[Zielgebiet_Lateralitaet].value[x] from $mii-cs-onko-primaertumor-seitenlokalisation (required) //hier ggfs. refactoren
* extension[Gesamtdosis] ^short = "Strahlentherapie Gesamtdosis (Dosis)"
* extension[Gesamtdosis] ^definition = "Gibt an, mit welcher Gesamtdosis da Zielgebiet bestrahlt wurde (inklusive Boost)."
* extension[Gesamtdosis].value[x] only Quantity
* extension[Einzeldosis] ^short = "Strahlentherapie Einzeldosis pro Tag (Dosis)"
* extension[Einzeldosis] ^definition = "Gibt an, mit welcher Einzeldosis (häufigste Dosis, nicht Boost) pro Tag das Zielgebiet bestrahlt wurde."
* extension[Einzeldosis].value[x] only unsignedInt
* extension[Boost] ^short = "Strahlentherapie Boost"
* extension[Boost] ^definition = "Angabe, ob ein Boost und falls ja, welche Art von Boost appliziert wurde."
* extension[Boost] only CodeableConcept
* extension[Boost] from XXX 
* extension[radiationUnit] ^short = "Strahlentherapie Einheit"
* extension[radiationUnit] ^definition = "Gibt die Einheit zu der Einzel- oder Gesamtdosis an, mit welcher das Zielgebiet bestrahlt wurde, bzw. bei metabolischer Therapie die Aktivität des verwendeten Radionuklids."
* extension[radiationUnit].value[x] only CodeableConcept
* extension[radiationUnit].value[x] from $mii-vs-onko-strahlentherapie-strahlungseinheit (required)