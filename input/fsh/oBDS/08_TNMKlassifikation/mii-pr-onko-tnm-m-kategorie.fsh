Profile: MII_PR_Onko_TNM_M_Kategorie
Parent: Observation
Id: mii-pr-onko-tnm-m-kategorie
Title: "MII PR Onkologie TNM M-Kategorie"
Description: "TNM-Klassifikation: TNM M-Kategorie. Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* status MS
* code MS
* code.extension contains 
    MII_EX_Onko_TNM_cp_Praefix named cpPraefix 0..1 MS
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^short = "TNM c/p-Präfix M"
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^definition = "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte."
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^comment = "c oder (leer) = Kategorie wurde durch klinische Angaben festgestellt, bzw. erfüllt die Kriterien für p nicht. p = Feststellung der Kategorie erfolgte durch eine pathohistologische Untersuchung, mit der auch der höchste Grad der jeweiligen Kategorie hätte festgestellt werden können. u (Feststellung mit Ultraschall) ist unter c zu übermitteln."
* code from MII_VS_Onko_TNM_M_Kategorie (preferred)
* code.coding.code 1.. MS
* code.coding.system 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime obeys tnm-datum
* hasMember MS
* hasMember only Reference(MII_PR_Onko_Fernmetastasen)
* method MS
* method ^short = "TNM Version"
* method ^definition = "Gibt an, nach welcher Version des TNM klassifiziert wurde."
* method from mii-vs-onko-tnm-version (required)
* partOf MS
* partOf only Reference(Procedure)
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept.extension contains 
    MII_EX_Onko_TNM_ITC_Suffix named itcSuffix 0..1 MS
* valueCodeableConcept.extension[MII_EX_Onko_TNM_ITC_Suffix] ^short = "isolierte Tumorzellen (ITC) Suffix"
* valueCodeableConcept from MII_VS_Onko_TNM_M_Kategorie_Werte (required)
* valueCodeableConcept ^short = "TNM M-Kategorie"
* valueCodeableConcept ^definition = "Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM."
* valueCodeableConcept ^comment = "Teilweise entitätsspezifisch, einschließlich Zusatzangaben wie (i+/-) und (mol+/-)"
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS

Mapping: FHIR-oBDS-TNM_M_Kategorie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_M_Kategorie
* effectiveDateTime -> "8.1" "TNM Datum"
* code.extension[MII_EX_Onko_TNM_cp_Praefix].valueCodeableConcept.coding.code -> "8.8" "TNM c/p-Präfix M"
* valueCodeableConcept.coding.code -> "8.12" "TNM M-Kategorie"
