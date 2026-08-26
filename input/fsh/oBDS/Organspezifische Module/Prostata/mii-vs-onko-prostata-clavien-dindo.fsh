ValueSet: MII_VS_Onko_Prostata_Clavien_Dindo
Id: mii-vs-onko-prostata-clavien-dindo
Title: "MII VS Onkologie Prostata Clavien Dindo"
Description: "Value Set für Gleason Score"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
//* ^url = ""
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMEDCopyrightForVS

* include $SCT#1367519000 "Clavien-Dindo classification grade I (finding)"
* include $SCT#1367520006 "Clavien-Dindo classification grade II (finding)"
* include $SCT#1367521005 "Clavien-Dindo classification grade III (finding)"
* include $SCT#1367522003 "Clavien-Dindo classification grade IIIa (finding)"
* include $SCT#1367523008  "Clavien-Dindo classification grade IIIb (finding)"
* include $SCT#1367524002 "Clavien-Dindo classification grade IV (finding)"
* include $SCT#1367525001 "Clavien-Dindo classification grade IVa (finding)"
* include $SCT#1367526000 "Clavien-Dindo classification grade IVb (finding)"
* include $SCT#1367527009 "Clavien-Dindo classification grade V (finding)"
