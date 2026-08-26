// Enumerierte Fassung der LOINC-Answer-List LL4986-7 (Karnofsky Performance Status).
// Implizite LOINC-Answer-List-VS expandieren auf der TermServ-Kette nicht
// zuverlässig — daher lokale Enumeration (Muster wie HER2/2a4.5); beads 14w.16.
ValueSet: MII_VS_Onko_Allgemeiner_Leistungszustand_Karnofsky_LOINC
Id: mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc
Title: "MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC"
Description: "LOINC-Answer-Codes für den Karnofsky Performance Status. Enumerierte Fassung der LOINC-Answer-List LL4986-7."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version

* $LNC#LA29175-9 "Normal; no complaints; no evidence of disease"
* $LNC#LA29176-7 "Able to carry on normal activity; minor signs or symptoms of disease"
* $LNC#LA29177-5 "Normal activity with effort; some signs or symptoms of disease"
* $LNC#LA29178-3 "Cares for self; unable to carry on normal activity or do active work"
* $LNC#LA29179-1 "Requires occasional assistance but is able to care for most needs"
* $LNC#LA29180-9 "Requires considerable assistance and frequent medical care"
* $LNC#LA29181-7 "Disabled; requires special care and assistance"
* $LNC#LA29182-5 "Severely disabled; hospitalization is indicated, although death not imminent"
* $LNC#LA29183-3 "Very sick; hospitalization necessary; active supportive treatment necessary"
* $LNC#LA29184-1 "Moribund; fatal processes progressing rapidly"
* $LNC#LA9627-6 "Dead"
