// Fragment-Deklaration des RSNA-RadElement-Systems (Common Data Elements, radelement.org).
// RadElement ist auf keinem Terminologieserver als FHIR-CodeSystem verfügbar (kein THO-Eintrag,
// Stand 2026-08); dieses Fragment liefert die im Modul verwendeten Codes für die Validierung mit.
// System-URI folgt der De-facto-Konvention der Imaging-Community (Open Imaging Data Model, IHE IDR).
CodeSystem: RadElement
Id: radelement
Title: "RSNA RadElement Common Data Elements (Fragment)"
Description: "Fragment des RSNA-RadElement-Systems (Common Data Elements, https://www.radelement.org). Enthält nur die im MII-Modul Onkologie verwendeten Datenelemente. Quelle: RSNA RadElement API."
* ^url = "https://radelement.org"
* ^status = #active
* ^experimental = false
* ^publisher = "Radiological Society of North America (RSNA)"
* ^copyright = "RadElement Common Data Elements © Radiological Society of North America (RSNA)."
* ^caseSensitive = true
* ^content = #fragment
* #RDE96 "Distance to MRF" "Shortest distance of the definitive tumor border to the mesorectal fascia (MRF). Set RDES11 'MR Rectal Tumor Imaging', Integer 0–99 mm."
