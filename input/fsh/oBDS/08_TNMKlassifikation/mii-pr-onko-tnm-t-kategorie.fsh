Profile: MII_PR_Onko_TNM_T_Kategorie
Parent: Observation
Id: mii-pr-onko-tnm-t-kategorie
Title: "MII PR Onkologie TNM T-Kategorie"
Description: "TNM-Klassifikation: TNM T-Kategorie. Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* encounter 0..1 MS

* status MS
* code MS
* code.extension contains 
    MII_EX_Onko_TNM_cp_Praefix named cpPraefix 0..1 MS
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^short = "TNM c/p-Präfix T"
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^definition = "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte."
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^comment = "c oder (leer) = Kategorie wurde durch klinische Angaben festgestellt, bzw. erfüllt die Kriterien für p nicht. p = Feststellung der Kategorie erfolgte durch eine pathohistologische Untersuchung, mit der auch der höchste Grad der jeweiligen Kategorie hätte festgestellt werden können. u (Feststellung mit Ultraschall) ist unter c zu übermitteln."
* code from MII_VS_Onko_TNM_T_Kategorie (preferred)
* code.coding.code 1.. MS
* code.coding.system 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime obeys tnm-datum
* method MS
* method ^short = "TNM Version"
* method ^definition = "Gibt an, nach welcher Version des TNM klassifiziert wurde."
* method from mii-vs-onko-tnm-version (required)
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_TNM_T_Kategorie_Werte (required)
* valueCodeableConcept ^short = "TNM T-Kategorie"
* valueCodeableConcept ^definition = "Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM."
* valueCodeableConcept ^comment = "Entitätsspezifisch, siehe auch allgemeine Bemerkungen zu TNM."
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


Mapping: FHIR-oBDS-TNM_T_Kategorie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_T_Kategorie
* effectiveDateTime -> "8.1" "TNM Datum"
* code.extension[MII_EX_Onko_TNM_cp_Praefix].valueCodeableConcept.coding.code -> "8.6" "TNM c/p-Präfix T"
* valueCodeableConcept.coding.code -> "8.9" "TNM T-Kategorie"
