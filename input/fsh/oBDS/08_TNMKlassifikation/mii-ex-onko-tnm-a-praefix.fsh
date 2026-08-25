// Als modifierExtension zu verwenden: Das a-Präfix ändert die Interpretation der
// Kategorie (aT wurde erst bei Autopsie festgestellt). Anders als bei y/r existiert
// in SNOMED CT keine Präkoordination — daher keine SCT-Konsistenz-Invariante.
Extension: MII_EX_Onko_TNM_a_Praefix
Id: mii-ex-onko-tnm-a-praefix
Title: "MII EX Onkologie TNM a-Präfix"
Description: "Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung erst im Rahmen einer Autopsie erfolgte (UICC a-Präfix). Als modifierExtension zu verwenden, da das a-Präfix die Interpretation des Kategorie-Wertes verändert."
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-a-praefix"
* ^context.type = #element
* ^context.expression = "Observation"
* . ^isModifier = true
* . ^isModifierReason = "Das a-Präfix verändert die Interpretation der TNM-Kategorie: die Klassifikation wurde erst durch eine Autopsie festgestellt und ist nicht mit prämortalen Klassifikationen vergleichbar."
* value[x] only CodeableConcept
* valueCodeableConcept = $UICC#a "a"
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS
