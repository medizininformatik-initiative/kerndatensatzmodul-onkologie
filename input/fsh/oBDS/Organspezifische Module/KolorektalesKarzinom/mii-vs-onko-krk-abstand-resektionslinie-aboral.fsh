ValueSet: MII_VS_Onko_KRK_Abstand_Resektionslinie_Aboral
Id: mii-vs-onko-krk-abstand-resektionslinie-aboral
Title: "MII VS Onkologie KRK Abstand Resektionslinie Aboral"
Description: "Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur aboralen Resektionslinie im Kolorektalen Karzinom"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version

* include $LNC#81175-2 "Distance of tumor from closest margin [Length] in Specimen by Macroscopy"
* include $LNC#81183-6 "Distance of tumor from closest distal margin [Length] in Specimen by Light microscopy"
