CodeSystem: MII_CS_Onko_Mamma_Her2neu_Status_Leitlinie
Id: mii-cs-onko-mamma-her2neu-status-leitlinie
Title: "MII CS Onkologie Mamma Her2neu Status Leitlinie"
Description: "Codesystem für Her2neu Status basierend auf der S3-Leitlinie Mammakarzinom und ASCO/CAP Guidelines mit erweiterten Klassifikationen (HER2-low, HER2-ultralow)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-leitlinie"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* ^caseSensitive = true
* ^content = #complete
* #positiv "HER2-positiv" "HER2-positiv: IHC 3+ (Score 3+) oder IHC 2+ (Score 2+) und ISH positiv"
* #low "HER2-low" "HER2-low: IHC 1+ oder IHC 2+ und ISH negativ"
* #ultralow "HER2-ultralow" "HER2-ultralow: IHC 0 mit Membranfärbung"
* #negativ "HER2-negativ" "HER2-negativ: IHC 0 ohne Membranfärbung"
* #equivocal "equivocal" "Equivocal: Grenzwertig/unklarer Befund, weitere Testung erforderlich"
