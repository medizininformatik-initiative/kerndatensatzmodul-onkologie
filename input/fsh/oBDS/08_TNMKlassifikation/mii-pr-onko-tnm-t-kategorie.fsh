Profile: MII_PR_Onko_TNM_T_Kategorie
Parent: Observation
Id: mii-pr-onko-tnm-t-kategorie
Title: "MII PR Onkologie TNM T-Kategorie"
Description: "TNM-Klassifikation: TNM T-Kategorie. Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM."
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
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^short = "TNM c/p-Präfix T"
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^definition = "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte."
* code.extension[MII_EX_Onko_TNM_cp_Praefix] ^comment = "c oder (leer) = Kategorie wurde durch klinische Angaben festgestellt, bzw. erfüllt die Kriterien für p nicht. p = Feststellung der Kategorie erfolgte durch eine pathohistologische Untersuchung, mit der auch der höchste Grad der jeweiligen Kategorie hätte festgestellt werden können. u (Feststellung mit Ultraschall) ist unter c zu übermitteln."
* code from MII_VS_Onko_TNM_T_Kategorie (preferred)
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

* method MS
* method.coding MS
* method.coding ^short = "TNM Version"
* method.coding ^definition = "Gibt an, nach welcher Version des TNM klassifiziert wurde."
* method from mii-vs-onko-tnm-version (required)
* insert Translation(method.coding ^short, de-DE, TNM Version )
* insert Translation(method.coding ^definition, de-DE, Version nach 8.2 oBDS 2021 )

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^short = "TNM T-Kategorie"
* valueCodeableConcept.coding ^definition = "Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM."
* valueCodeableConcept.coding ^comment = "Entitätsspezifisch, siehe auch allgemeine Bemerkungen zu TNM."
* insert Translation(valueCodeableConcept.coding ^short, de-DE, TNM T-Kategorie )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, TNM Primärtumor 8.9 oBDS 2021 )
* valueCodeableConcept.coding contains
    uicc 1..1 MS and
    snomed-ct 0..1 MS
* valueCodeableConcept.coding[uicc] from MII_VS_Onko_TNM_T_Kategorie_Werte (required)
* valueCodeableConcept.coding[uicc].system 1.. MS
* valueCodeableConcept.coding[uicc].system = $UICC
* valueCodeableConcept.coding[uicc].code 1.. MS
* valueCodeableConcept.coding[snomed-ct] from MII_VS_Onko_TNM_T_Kategorie_Werte_SCT (required)
* valueCodeableConcept.coding[snomed-ct].system 1.. MS
* valueCodeableConcept.coding[snomed-ct].system = $SCT
* valueCodeableConcept.coding[snomed-ct].code 1.. MS

// Multiple Primaertumoren, UICC-m-Suffix (oBDS 8.10) — ab v2027 als Component
// der T-Kategorie statt als eigene Observation: Das Suffix ist T-exklusiv
// (pT2(m), T1(3); es gibt kein N(m)/M(m)) und aendert den T-Wert nicht, sondern
// ergaenzt ihn — daher component und nicht modifierExtension (anders als die
// Praefixe y/r/a, die die Interpretation der Kategorie veraendern).
// Das fruehere Profil MII_PR_Onko_TNM_m_Symbol ist deprecated.
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains multipleTumoren 0..1 MS
* component[multipleTumoren].code = $LNC#42030-7 "Multiple tumors reported as single primary Cancer"
* component[multipleTumoren].value[x] only CodeableConcept
* component[multipleTumoren].valueCodeableConcept from MII_VS_Onko_TNM_m_Symbol (required)
* component[multipleTumoren].valueCodeableConcept ^comment = "(m) = multiple Tumoren ohne Angabe der Zahl; (2)/(3)/(4) = Anzahl der multiplen Tumoren; nicht angegeben = keine multiplen Tumoren. Fuer die reine Mehrfachigkeit existiert in SNOMED CT das Qualifier-Konzept 369755005 |Multiple tumors|; fuer die Zaehlvarianten gibt es keine Entsprechung, daher hier kein Dual-Coding."
* insert Label(component[multipleTumoren], Multiple Primaertumoren als m-Suffix, Multiple Primaertumoren in einem anatomischen Bezirk nach 8.10 oBDS 2021 - UICC-m-Suffix der T-Kategorie)
* insert Translation(component[multipleTumoren] ^short, de-DE, Multiple Primaertumoren - m-Suffix)

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
* modifierExtension[yPraefix].valueCodeableConcept.coding.code -> "8.3" "TNM y-Symbol"
* modifierExtension[rPraefix].valueCodeableConcept.coding.code -> "8.4" "TNM r-Symbol"
* modifierExtension[aPraefix].valueCodeableConcept.coding.code -> "8.5" "TNM a-Symbol"
