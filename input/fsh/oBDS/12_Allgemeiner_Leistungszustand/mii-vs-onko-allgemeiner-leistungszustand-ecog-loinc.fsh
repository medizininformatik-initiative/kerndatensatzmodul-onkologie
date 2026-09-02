// Enumerierte Fassung der LOINC-Answer-List LL529-9 (ECOG Performance Status).
// Implizite LOINC-Answer-List-VS expandieren auf der TermServ-Kette nicht
// zuverlässig — daher lokale Enumeration (Muster wie HER2/2a4.5); beads 14w.16.
ValueSet: MII_VS_Onko_Allgemeiner_Leistungszustand_ECOG_LOINC
Id: mii-vs-onko-allgemeiner-leistungszustand-ecog-loinc
Title: "MII VS Onkologie Allgemeiner Leistungszustand ECOG LOINC"
Description: "LOINC-Answer-Codes für den ECOG Performance Status. Enumerierte Fassung der LOINC-Answer-List LL529-9."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

* $LNC#LA9622-7 "Fully active, able to carry on all pre-disease performance without restriction"
* $LNC#LA9623-5 "Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work"
* $LNC#LA9624-3 "Ambulatory and capable of all selfcare but unable to carry out any work activities. Up and about more than 50% of waking hours"
* $LNC#LA9625-0 "Capable of only limited selfcare, confined to bed or chair more than 50% of waking hours"
* $LNC#LA9626-8 "Completely disabled. Cannot carry on any selfcare. Totally confined to bed or chair"
* $LNC#LA9627-6 "Dead"
