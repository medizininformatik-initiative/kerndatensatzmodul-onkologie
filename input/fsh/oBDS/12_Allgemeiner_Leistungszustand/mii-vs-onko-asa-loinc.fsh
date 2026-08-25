ValueSet: MII_VS_Onko_ASA_LOINC
Id: mii-vs-onko-asa-loinc
Title: "MII VS Onkologie ASA LOINC"
Description: "Value Set für LOINC ASA Physical Status Classification (generalisiert für alle onkologischen Indikationen)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version

* include $LNC#LA28813-6 "ASA I"
* include $LNC#LA28814-4 "ASA II"  
* include $LNC#LA28815-1 "ASA III"
* include $LNC#LA28816-9 "ASA IV"
* include $LNC#LA28817-7 "ASA V"
* include $LNC#LA28818-5 "ASA VI"