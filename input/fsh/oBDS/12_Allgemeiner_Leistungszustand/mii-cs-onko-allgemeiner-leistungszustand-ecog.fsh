CodeSystem: MII_CS_Onko_Allgemeiner_Leistungszustand_ECOG
Id: mii-cs-onko-allgemeiner-leistungszustand-ecog
Title: "MII CS Onkologie Allgemeiner Leistungszustand ECOG"
Description: "oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach ECOG"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog"
* ^content = #complete
* #0 "Normale, uneingeschränkte Aktivität wie vor der Erkrankung (90 - 100 % nach Karnofsky)"
* #1 "Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen (z. B. leichte Hausarbeit oder Büroarbeit) möglich (70 - 80 % nach Karnofsky)"
* #2 "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
* #3 "Nur begrenzte Selbstversorgung möglich; ist 50 % oder mehr der Wachzeit an Bett oder Stuhl gebunden (30  40 % nach Karnofsky)"
* #4 "Völlig pflegebedürftig, keinerlei Selbstversorgung möglich; völlig an Bett oder Stuhl gebunden (10 - 20 % nach Karnofsky)"
* #U "Unbekannt"
