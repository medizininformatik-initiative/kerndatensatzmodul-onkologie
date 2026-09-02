Profile: MII_PR_Onko_TNM_M_Kategorie
Parent: Observation
Id: mii-pr-onko-tnm-m-kategorie
Title: "MII PR Onkologie TNM M-Kategorie"
Description: "TNM-Klassifikation: TNM M-Kategorie. Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM."
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
* ^status = #active
* obeys tnm-sct-uicc-konsistenz
* meta.profile 0..* MS
* encounter 0..1 MS

* status MS
* code MS
* code.extension contains 
    MII_EX_Onko_TNM_cp_Praefix named cpPraefix 0..1 MS
* code.extension[MII_EX_Onko_TNM_cp_Praefix].valueCodeableConcept.coding ^short = "TNM c/p-Präfix M"
* code.extension[MII_EX_Onko_TNM_cp_Praefix].valueCodeableConcept.coding ^definition = "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte."
* code.extension[MII_EX_Onko_TNM_cp_Praefix].valueCodeableConcept.coding ^comment = "c oder (leer) = Kategorie wurde durch klinische Angaben festgestellt, bzw. erfüllt die Kriterien für p nicht. p = Feststellung der Kategorie erfolgte durch eine pathohistologische Untersuchung, mit der auch der höchste Grad der jeweiligen Kategorie hätte festgestellt werden können. u (Feststellung mit Ultraschall) ist unter c zu übermitteln."
* code from MII_VS_Onko_TNM_M_Kategorie (preferred)
* code.coding.code 1.. MS
* code.coding.system 1.. MS

// UICC-Präfixe y/r/a als modifierExtension: sie verändern die Interpretation des
// Kategorie-Wertes (ypT2 ist nicht mit pT2 vergleichbar, rT beurteilt das Rezidiv,
// aT wurde erst bei Autopsie festgestellt) — siehe Extension-Definitionen.
* modifierExtension contains
    MII_EX_Onko_TNM_y_Praefix named yPraefix 0..1 MS and
    MII_EX_Onko_TNM_r_Praefix named rPraefix 0..1 MS and
    MII_EX_Onko_TNM_a_Praefix named aPraefix 0..1 MS
* modifierExtension[yPraefix] ^short = "TNM y-Präfix (während/nach multimodaler Therapie)"
* modifierExtension[rPraefix] ^short = "TNM r-Präfix (Rezidiv)"
* modifierExtension[aPraefix] ^short = "TNM a-Präfix (Autopsie)"

* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime obeys tnm-datum
* insert Label(effectiveDateTime, TNM-Datum, Datum der TNM-Klassifikation nach 8.1 oBDS 2021)
* insert Translation(effectiveDateTime ^short, de-DE, TNM-Datum )
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der TNM-Klassifikation nach 8.1 oBDS 2021 )

* hasMember MS
* hasMember only Reference(MII_PR_Onko_Fernmetastasen)
* method MS
* method.coding MS
* method.coding ^short = "TNM Version"
* method.coding ^definition = "Gibt an, nach welcher Version des TNM klassifiziert wurde."
* method.coding from mii-vs-onko-tnm-version (required)
* insert Translation(method.coding ^short, de-DE, TNM Version )
* insert Translation(method.coding ^definition, de-DE, Version nach 8.2 oBDS 2021 )

* partOf MS
* partOf only Reference(Procedure)
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept.extension contains 
    MII_EX_Onko_TNM_ITC_Suffix named itcSuffix 0..1 MS
* valueCodeableConcept.extension[MII_EX_Onko_TNM_ITC_Suffix] ^short = "isolierte Tumorzellen (ITC) Suffix"
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^short = "TNM M-Kategorie"
* valueCodeableConcept.coding ^definition = "Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM."
* valueCodeableConcept.coding ^comment = "Teilweise entitätsspezifisch, einschließlich Zusatzangaben wie (i+/-) und (mol+/-)"
* insert Translation(valueCodeableConcept.coding ^short, de-DE, TNM M-Kategorie )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, TNM Fernmetastasierung nach 8.12 oBDS 2021 )
* valueCodeableConcept.coding contains
    uicc 1..1 MS and
    snomed-ct 0..1 MS
* valueCodeableConcept.coding[uicc] from MII_VS_Onko_TNM_M_Kategorie_Werte (required)
* valueCodeableConcept.coding[uicc].system 1.. MS
* valueCodeableConcept.coding[uicc].system = $UICC
* valueCodeableConcept.coding[uicc].code 1.. MS
* valueCodeableConcept.coding[snomed-ct] from MII_VS_Onko_TNM_M_Kategorie_Werte_SCT (required)
* valueCodeableConcept.coding[snomed-ct].system 1.. MS
* valueCodeableConcept.coding[snomed-ct].system = $SCT
* valueCodeableConcept.coding[snomed-ct].code 1.. MS




// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


Mapping: FHIR-oBDS-TNM_M_Kategorie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_M_Kategorie
* effectiveDateTime -> "8.1" "TNM Datum"
* code.extension[MII_EX_Onko_TNM_cp_Praefix].valueCodeableConcept.coding.code -> "8.8" "TNM c/p-Präfix M"
* valueCodeableConcept.coding.code -> "8.12" "TNM M-Kategorie"
* modifierExtension[yPraefix].valueCodeableConcept.coding.code -> "8.3" "TNM y-Symbol"
* modifierExtension[rPraefix].valueCodeableConcept.coding.code -> "8.4" "TNM r-Symbol"
* modifierExtension[aPraefix].valueCodeableConcept.coding.code -> "8.5" "TNM a-Symbol"
