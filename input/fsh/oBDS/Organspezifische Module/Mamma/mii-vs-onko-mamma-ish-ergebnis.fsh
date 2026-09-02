// Positive/Negative/Equivocal für ISH-/FISH-Ergebnisse (z.B. ERBB2 96893-3).
// Ersetzt das zuvor gebundene http://loinc.org/vs/LL4678-0 — das war eine FALSCHE
// Liste (Pflege-Settings, nicht Pos/Neg/Equivocal) und expandierte zudem nicht
// auf der TermServ-Kette (beads 2a4.5).
ValueSet: MII_VS_Onko_Mamma_ISH_Ergebnis
Id: mii-vs-onko-mamma-ish-ergebnis
Title: "MII VS Onkologie Mamma ISH Ergebnis"
Description: "Ergebnis der In-situ-Hybridisierung (ISH/FISH): Positive, Negative, Equivocal (LOINC-Answer-Codes)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

* $LNC#LA6576-8 "Positive"
* $LNC#LA6577-6 "Negative"
* $LNC#LA11885-3 "Equivocal"
