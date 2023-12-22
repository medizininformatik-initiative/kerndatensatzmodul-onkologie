CodeSystem: MII_CS_Onko_Primaertumor_Seitenlokalisation
Id: mii-cs-onko-primaertumor-seitenlokalisation
Title: "MII CS Onkologie Primärtumor Seitenlokalisation"
Description: "Codes für Primärtumor Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-seitenlokalisation"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-seitenlokalisation"
* ^content = #complete
* #L "links"
* #R "rechts"
* #B "beidseitig" "(sollte bei Tumoren in paarigen Organen 2 Meldungen ergeben)"
* #M "Mittellinie/mittig"
* #U "unbekannt"
* #T "trifft nicht zu" "Seitenangabe nicht sinnvoll, einschließlich Systemerkrankungen"