// Als modifierExtension zu verwenden: Das y-Präfix ändert die Interpretation der
// Kategorie (ypT2 ist prognostisch nicht mit pT2 vergleichbar) — Verarbeiter, die
// die Extension nicht kennen, dürfen den Wert nicht unmodifiziert weiterverwenden.
// Konsistenz zum SNOMED-value-Slice (präkoordinierte yc/yp-Qualifier) siehe #272.
Extension: MII_EX_Onko_TNM_y_Praefix
Id: mii-ex-onko-tnm-y-praefix
Title: "MII EX Onkologie TNM y-Präfix"
Description: "Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung während oder nach initialer multimodaler Therapie erfolgte (UICC y-Präfix, z. B. ycT2, ypN0). Als modifierExtension zu verwenden, da das y-Präfix die Interpretation des Kategorie-Wertes verändert."
* insert PR_CS_VS_Version
* insert OnkoCRMIExtension
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix"
* ^context.type = #element
* ^context.expression = "Observation"
* . ^isModifier = true
* . ^isModifierReason = "Das y-Präfix verändert die Interpretation der TNM-Kategorie: eine posttherapeutische Klassifikation (ypT2) ist nicht mit einer prätherapeutischen (pT2) vergleichbar."
* value[x] only CodeableConcept
* valueCodeableConcept = $UICC#y "y"
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS
