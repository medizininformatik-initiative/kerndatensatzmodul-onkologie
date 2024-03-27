CodeSystem: MII_CS_Onko_Strahlentherapie_Strahlenart
Id: mii-cs-onko-strahlentherapie-strahlenart
Title: "MII CS Onkologie Strahlentherapie Strahlenart"
Description: "oBDS-spezifisches Codesystem für Klassifikation von eingesetzter Strahlenart"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-strahlenart"
* ^content = #complete

// ACHTUNG! Abkürzung der Variablen nicht auf Webseite hinterlegt, aber in der obDS-XML v3.0.2( siehe https://basisdatensatz.de/xml/oBDS_v3.0.2.xsd)

* #UH "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)"
* #EL "Elektronen"
* #NE "Neutronen"
* #PN "Protonen (leichte Wasserstoffionen/H1/Leichtionen)"
* #SI "Schwerionen (schwere Kohlenstoff-Ionen/C12/Sauerstoffionen/Heliumionen)"
* #RO "Weichstrahl (kV)"
* #SO "Sonstige (inklusive Mixed Beams, exklusive Nuklide)"
* #Lu-177 "Lu-177"
* #J-131 "J131"
* #Y-90 "Y-90"
* #Ra-223 "Ra-223"
* #Ac-225 "Ac-225"
* #Sm-153 "Sm-153"
* #Tb-161 "Tb-161"
* #Sr-89 "Sr-89"
* #Ir-192 "Ir-192"
* #Co-60 "Co-60"
* #SONU "Sonstige Nuklide"