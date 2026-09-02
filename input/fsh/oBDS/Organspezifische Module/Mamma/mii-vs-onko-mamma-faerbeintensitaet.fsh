// Enumerierte Fassung der LOINC-Answer-List LL4358-9 (Färbeintensität IHC).
// Implizite LOINC-Answer-List-VS expandieren auf der TermServ-Kette nicht
// zuverlässig — daher lokale Enumeration (beads 2a4.5).
ValueSet: MII_VS_Onko_Mamma_Faerbeintensitaet
Id: mii-vs-onko-mamma-faerbeintensitaet
Title: "MII VS Onkologie Mamma Färbeintensität"
Description: "Färbeintensität der immunhistochemischen Rezeptorbestimmung (Weak, Moderate, Strong). Enumerierte Fassung der LOINC-Answer-List LL4358-9."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

* $LNC#LA13034-6 "Weak"
* $LNC#LA6751-7 "Moderate"
* $LNC#LA14974-2 "Strong"
