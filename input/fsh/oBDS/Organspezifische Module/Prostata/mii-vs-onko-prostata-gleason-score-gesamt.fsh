ValueSet: MII_VS_Onko_Prostata_Gleason_Score_Gesamt
Id: mii-vs-onko-prostata-gleason-score-gesamt
Title: "MII VS Onkologie Prostata Gleason Score Gesamt"
Description: "Value Set für den Gleason-Gesamtscore (Summe aus primärem und sekundärem Pattern) ohne Aufschlüsselung in Primär-/Sekundär-Pattern. Enthält die Scores 2 bis 10 aus der SNOMED-CT-Hierarchie unterhalb von 385377005 (Gleason grade finding for prostatic cancer). Damit sind auch Gesamtscores < 6 abbildbar, wie sie bei TURP-Material und in historischen Befunden vorkommen. Ein Gesamtscore 1 existiert nicht, da sich der Score aus zwei Patterns mit Werten ab 1 zusammensetzt. Die ISUP Grade Groups sind bewusst nicht enthalten; sie werden über MII_VS_Onko_Prostata_Gleason_Score abgebildet."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-score-gesamt"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* insert SNOMEDCopyrightForVS

* include $SCT#49878003 "Gleason grade score 2 out of 10 (finding)"
* include $SCT#46677009 "Gleason grade score 3 out of 10 (finding)"
* include $SCT#18430005 "Gleason grade score 4 out of 10 (finding)"
* include $SCT#74013009 "Gleason grade score 5 out of 10 (finding)"
* include $SCT#84556003 "Gleason grade score 6 out of 10 (finding)"
* include $SCT#57403001 "Gleason grade score 7 out of 10 (finding)"
* include $SCT#33013007 "Gleason grade score 8 out of 10 (finding)"
* include $SCT#58925000 "Gleason grade score 9 out of 10 (finding)"
* include $SCT#24514009 "Gleason grade score 10 out of 10 (finding)"
