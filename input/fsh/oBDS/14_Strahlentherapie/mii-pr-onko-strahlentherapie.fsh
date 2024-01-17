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

// Strahlentherapie Applikationsart #XRayXtension
// extension contains MII_EX_Onko_Strahlentherapie_Applikationsart named 0.. MS
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


/*
Mapping
14.1 Intention der Strahlentherapie 
14.2 Strahlentherapie Stellung zu operativer Therapie 
14.3 Strahlentherapie Zielgebiet 
14.4 Strahlentherapie Seite Zielgebiet 
14.5 Strahlentherapie Beginn 
14.6 Strahlentherapie Ende 
14.7 Strahlentherapie Applikationsart 
14.8 Strahlenart 
14.9 Strahlentherapie Gesamtdosis (Dosis) 
14.10 Strahlentherapie Einzeldosis pro Tag (Dosis) 
14.11 Strahlentherapie Einheit 
14.12 Boost 
14.13 Strahlentherapie Ende Grund 
*/