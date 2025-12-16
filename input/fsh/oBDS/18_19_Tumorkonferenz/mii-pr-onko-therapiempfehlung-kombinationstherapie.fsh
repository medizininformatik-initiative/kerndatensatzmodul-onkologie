Profile: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie
Parent: RequestGroup
Id: mii-pr-onko-therapieempfehlung-kombinationstherapie
Title: "MII PR Onkologie Therapieempfehlung Kombinationstherapie"
Description: "Dieses Profil beschreibt eine Empfehlung für eine Kombinationstherapie im Rahmen der Tumorkonferenz"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* identifier MS
* status MS


* intent MS
* intent = #proposal


* subject MS
* subject 1..1
* subject only Reference(Patient)

// Therapy type classification using oBDS therapy types
* code MS  
* code from mii-vs-onko-therapieempfehlung-typ (preferred)
* code ^short = "Type of therapy recommendation"
* code ^definition = "Classification of the therapy recommendation using oBDS therapy types (CH, HO, IM, ZS, etc.) to specify the kind of therapy being recommended."

// Therapieplanung Datum
* authoredOn 1..1 MS

// die Referenz zu Tumorerkrankung
* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)

// Action for protocol and medications
* action MS
* action.code MS
* action.code from mii-vs-onko-systemische-therapie-protokolle (extensible)
* action.code ^short = "Recommended protocol"
* action.code ^definition = "Specific therapy protocol recommended by tumor board (e.g., FOLFOX, R-CHOP, AC). For combination therapies, this represents the overall protocol with individual medications as sub-actions."
* insert Label(action.code, Empfohlenes Therapieprotokoll, Empfohlenes Therapieprotokoll gemäß Tumorkonferenz)
* insert Translation(action.code ^short, de-DE, Empfohlenes Therapieprotokoll)
* insert Translation(action.code ^definition, de-DE, Spezifisches Therapieprotokoll empfohlen durch Tumorkonferenz. Bei Kombinationstherapien repräsentiert dies das Gesamtprotokoll mit einzelnen Medikamenten als Sub-Actions.)

* action.action MS
* action.action ^short = "Individual medications in protocol"
* action.action ^definition = "For combination therapy protocols, each sub-action references an individual MedicationRequest with ATC/UNII coding"
* action.action.resource MS
* action.action.resource only Reference(MII_PR_Onko_Therapieempfehlung_Medikation)

// Referenz zu relevanten Verlaufs-Stagings oder anderen Observationen

Mapping: FHIR-oBDS-Therapieplanung-Kombinationstherapie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie