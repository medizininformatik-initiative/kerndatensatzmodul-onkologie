ValueSet: MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand
Id: mii-vs-onko-krk-abstand-circumferelle-resektionsrand
Description: "Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur circumferellen Resektionsrand im Kolorektalen Karzinom"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version

* include $LNC#81176-0 "Distance of tumor from circumferential resection margin [Length] in Specimen by Macroscopy"
* include $LNC#81184-4 "Distance of tumor from circumferential resection margin [Length] by Microscopy"
