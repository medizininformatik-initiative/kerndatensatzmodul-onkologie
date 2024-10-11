CodeSystem: MII_CS_Onko_Verlauf_Gesamtbeurteilung
Id: mii-cs-onko-verlauf-gesamtbeurteilung
Title: "MII CS Onkologie Verlauf Gesamtbeurteilung"
Description: "oBDS-spezifisches Codesystem für die Gesamtbeurteilung im Behandlungsverlauf "
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^content = #complete
* #V "Vollremission (complete remission, CR)"
* #T "Teilremission (partial remission, PR)"
* #K "keine Änderung (no change, NC) = stable disease"
* #P "Progression"
* #D "divergentes Geschehen"
* #B "klinische Besserung des Zustandes, Teilremissionkriterien jedoch nicht erfüllt (minimal response, MR)"
* #R "Vollremission mit residualen Auffälligkeiten (CRr)"
* #Y "Rezidiv"
* #U "Beurteilung unmöglich"
* #X "fehlende Angabe"