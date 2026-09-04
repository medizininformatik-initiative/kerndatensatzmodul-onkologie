ValueSet: MII_VS_Onko_Mamma_Operation_SCT
Id: mii-vs-onko-mamma-operation-sct
Title: "MII VS Onkologie Mamma Operation SNOMED CT"
Description: "Value Set für Mamma-Operationen basierend auf SNOMED CT"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* insert SNOMEDCopyrightForVS

* include codes from system $SCT where concept is-a #392090004 //Operation of the breast (procedure)
// Axillaere Lymphknoten-Chirurgie ergaenzt (Review 2026-09-04): Bei Brust-OPs
// werden die Lymphknoten haeufig mit entfernt; die Brust-Wurzel 392090004 deckt
// das nicht ab. 234262008 ist die Obermenge der axillaeren Exzisionen (Einzel-
// und Gruppen-Exzision, Lymphadenektomien, Level-1-3-Clearance, 22 Konzepte im
// Pin 20250701); 396487001 deckt die Sentinel-Node-Biopsie samt Spezialisierungen.
* include codes from system $SCT where concept is-a #234262008 //Excision of axillary lymph node (procedure)
* include codes from system $SCT where concept is-a #396487001 //Sentinel lymph node biopsy (procedure)