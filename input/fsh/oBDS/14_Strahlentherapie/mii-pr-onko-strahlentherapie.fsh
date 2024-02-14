Profile: MII_PR_Onko_Strahlentherapie
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure 
Id: mii-pr-onko-strahlentherapie
Title: "MII PR Onkologie Strahlentherapie"
Description: "Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532153/Strahlentherapie+ST+Typ
// Intention der Strahlentherapie 
* extension contains mii-ex-onko-strahlentherapie-intention named Intention 1..1 
* extension[Intention] MS

// Strahlentherapie Stellung zu operativer Therapie
* extension contains MII_EX_Onko_Strahlentherapie_Stellung named Stellung 0.. 
* extension[Stellung] MS 

* extension contains mii-ex-onko-strahlentherapie-behandlungsabschnitt named Behandlungsabschnitt 1..
* extension[Behandlungsabschnitt] MS
* extension[Behandlungsabschnitt] 1..*

// Strahlentherapie Zielgebiet #XRayXtension
//TODO --> die MII Prozedur sieht bei bodysite eine Kodierung durch SNOMED vor, bound explicitly to SNOMED
// ggfs. kann man hier ein CodeSystem mit den oBDS machen und ein ValueSet einbinden, dass sowohl dass SNOMED Codesystem als auch das oBDS-Codesystem mit einbindet. 

// Strahlentherapie Seite Zielgebiet #XRayXtension
// --> bei Bestrahlung mit mehreren Zielgebieten muss das klar sein

// ggfs. aus input/fsh/oBDS/05_Diagnose/mii-cs-onko-primaertumor-seitenlokalisation.fsh übernehmen

// Strahlentherapie Beginn und Ende
* performed[x] MS
* performed[x] only Period //  wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performed[x].start 1..1 MS 
* performed[x].end 0..1 MS

// Strahlentherapie Applikationsart #XRayXtension
// ist derzeit eine eigene Extension, sollten wir mit den anderen Strahlentherapie-feldern in eine eigene Extension überführen
// #XRayXtension


// Strahlenart #XRayXtension
// Sowohl Strahlungsarten als auch Metabolite fallen hierdrunter 
// --> entweder invarianten definieren, oder alle antwortmöglichkeiten zulassen
//--> gilt auch für folgende Felder (oBDS-XML hat hier Restriktionen zwecks Validierung! )

// Strahlentherapie Gesamtdosis (Dosis) #XRayXtension
// Strahlentherapie Einzeldosis pro Tag (Dosis) #XRayXtension


// Strahlentherapie Einheit #XRayXtension
// Gray für Bestrahlung, Becquerel (inkl. kBq, MBq, GBq) für Metabolite

// Boost #XRayXtension
// ValueSet + Codesystem erstellen

// Strahlentherapie Ende Grund
* outcome MS
* outcome 0..1
* outcome.coding.code from MII_VS_Onko_Strahlentherapie_Ende_Grund (required)


Mapping: FHIR-oBDS-Strahlentherapie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Strahlentherapie
* -> "14" "Strahlentherapie"
* extension[Intention].valueCodeableConcept.coding.code -> "14.1" "Intention der Strahlentherapie"
* extension[Stellung].valueCodeableConcept.coding.code -> "14.2" "Strahlentherapie Stellung zu operativer Therapie" 
* extension[Behandlungsabschnitt].extension[Zielgebiet].valueCodeableConcept.coding.code -> "14.3" "Strahlentherapie Zielgebiet" 
* extension[Behandlungsabschnitt].extension[Zielgebiet_Lateralitaet].valueCodeableConcept.coding.code -> "14.4" "Strahlentherapie Seite Zielgebiet" 
* performed[x].start -> "14.5" "Strahlentherapie Beginn"
* performed[x].end -> "14.6" "Strahlentherapie Ende"
* extension[Behandlungsabschnitt].extension[Applikationsart].valueCodeableConcept.coding.code -> "14.7" "Strahlentherapie Applikationsart"
* extension[Behandlungsabschnitt].extension[Strahlenart].valueCodeableConcept.coding.code -> "14.8" "Strahlentherapie Strahlenart"
* extension[Behandlungsabschnitt].extension[Gesamtdosis].valueQuantity.value -> "14.9" "Strahlentherapie Gesamtdosis"
* extension[Behandlungsabschnitt].extension[Gesamtdosis].valueQuantity.unit -> "14.11" "Strahlentherapie Einheit"
* extension[Behandlungsabschnitt].extension[Einzeldosis].valueQuantity.value -> "14.10" "Strahlentherapie Einzeldosis pro Tag"
* extension[Behandlungsabschnitt].extension[Einzeldosis].valueQuantity.unit -> "14.11" "Strahlentherapie Einheit"

* extension[Behandlungsabschnitt].extension[Boost].valueCodeableConcept.coding.code -> "14.12" "Strahlentherapie Boost"
* outcome.coding.code -> "14.13" "Strahlentherapie Ende Grund"
