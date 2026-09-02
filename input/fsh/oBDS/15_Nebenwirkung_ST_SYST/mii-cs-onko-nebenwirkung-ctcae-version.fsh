// CTCAE-Katalogversion nach oBDS 15.3 (XSD: Nebenwirkung/Version).
// ABGRENZUNG zur MedDRA-Version: Die CTCAE fuehrt ihre Terme mit MedDRA-Codes —
// CTCAE v4.03 basiert auf MedDRA v12.0. Die Version des CodeSystems, aus dem der
// Code stammt (MedDRA), gehoert nach event.coding[meddra].version; die Version des
// KATALOGS, aus dem der Term stammt (CTCAE), ist eine andere Aussage und wird
// ueber die Extension mii-ex-onko-nebenwirkung-ctcae-version gefuehrt.
CodeSystem: MII_CS_Onko_Nebenwirkung_CTCAE_Version
Id: mii-cs-onko-nebenwirkung-ctcae-version
Title: "MII CS Onkologie Nebenwirkung CTCAE-Version"
Description: "Versionsbezeichnungen des CTCAE-Katalogs nach oBDS 15.3. Werte gemaess oBDS-XML-Schema (Nebenwirkung/Version)."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-version"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* #4 "CTCAE Version 4"
* #4.03 "CTCAE Version 4.03"
* #5.0 "CTCAE Version 5.0"
* #Sonstige "Sonstige" "Falls andere bzw. aeltere Versionen verwendet werden"

ValueSet: MII_VS_Onko_Nebenwirkung_CTCAE_Version
Id: mii-vs-onko-nebenwirkung-ctcae-version
Title: "MII VS Onkologie Nebenwirkung CTCAE-Version"
Description: "Versionsbezeichnungen des CTCAE-Katalogs nach oBDS 15.3."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-ctcae-version"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* include codes from system MII_CS_Onko_Nebenwirkung_CTCAE_Version
