// Als modifierExtension zu verwenden: Das r-Präfix ändert die Interpretation der
// Kategorie (rT beurteilt ein Rezidiv, nicht den Ersttumor).
// Konsistenz zum SNOMED-value-Slice (präkoordinierte rc/rp-Qualifier) siehe #272.
Extension: MII_EX_Onko_TNM_r_Praefix
Id: mii-ex-onko-tnm-r-praefix
Title: "MII EX Onkologie TNM r-Präfix"
Description: "Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung zur Beurteilung eines Rezidivs erfolgte (UICC r-Präfix, z. B. rcT2). Als modifierExtension zu verwenden, da das r-Präfix die Interpretation des Kategorie-Wertes verändert."
* insert PR_CS_VS_Version
* insert OnkoCRMIExtension
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix"
* ^context.type = #element
* ^context.expression = "Observation"
* . ^isModifier = true
* . ^isModifierReason = "Das r-Präfix verändert die Interpretation der TNM-Kategorie: eine Rezidiv-Klassifikation (rcT2) beurteilt nicht den Ersttumor und markiert eine neue Baseline."
* value[x] only CodeableConcept
* valueCodeableConcept = $UICC#r "r"
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS
