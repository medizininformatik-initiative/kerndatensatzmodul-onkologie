// Enumerierte Fassung der LOINC-Answer-List LL4396-9 (HER2-IHC-Score).
// Implizite LOINC-Answer-List-VS (http://loinc.org/vs/LL...) expandieren auf der
// TermServ-Kette nicht zuverlässig — daher lokale Enumeration (beads 2a4.5).
ValueSet: MII_VS_Onko_Mamma_Her2neu_IHC_Score
Id: mii-vs-onko-mamma-her2neu-ihc-score
Title: "MII VS Onkologie Mamma Her2neu IHC Score"
Description: "HER2-Score der Immunhistochemie (0, 1+, 2+, 3+, Indeterminate). Enumerierte Fassung der LOINC-Answer-List LL4396-9."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

* $LNC#LA6111-4 "0"
* $LNC#LA11841-6 "1+"
* $LNC#LA11842-4 "2+"
* $LNC#LA11843-2 "3+"
* $LNC#LA11884-6 "Indeterminate"
