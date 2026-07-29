CodeSystem: MII_CS_Onko_Seitenlokalisation
Id: mii-cs-onko-seitenlokalisation
Title: "MII CS Onkologie Primärtumor Seitenlokalisation"
Description: "Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^content = #complete
* #L "links"
* #R "rechts"
* #B "beidseitig" "Bei paarigen Organen i.d.R. als 2 getrennte Tumoren; ABER Ovar (C56), Tube (C57.0) und Adnexe (C57.4) gelten beidseitig als EINE Tumorerkrankung (Best-of, §65c), Ausnahmen: seröses Ovarialkarzinom/Wilms/Retinoblastom."
* #M "Mittellinie/mittig"
* #U "unbekannt"
* #T "trifft nicht zu" "Seitenangabe nicht sinnvoll, einschließlich Systemerkrankungen"