// Eigener Component-Code für die generierte TNM-Gesamtformel am synthetisierten
// Panel. Ein SCT-/LOINC-Konzept dafür existiert nicht (LOINC-TNM-Codes deprecated;
// SCT 399703000 ist bereits der Observation.code und scheidet wegen obs-7 aus,
// solange value das Stadium trägt).
CodeSystem: MII_CS_Onko_TNM_Formel
Id: mii-cs-onko-tnm-formel
Title: "MII CS Onkologie TNM Formel"
Description: "Codes für die Darstellung der zusammengeführten TNM-Gesamtformel als Component der synthetisierten TNM-Klassifikation."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^content = #complete
* #tnm-formel "TNM-Formel" "Zusammengeführte TNM-Gesamtformel (z. B. 'ypT0 ypN0 cM0') als generierte Darstellung der gewinnenden Kategorie-Beobachtungen inklusive Präfixe."
