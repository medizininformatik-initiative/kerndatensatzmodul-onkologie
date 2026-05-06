Instance: mii-cm-onko-atc-transitions-2026
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2026"
* name = "MII_CM_Onko_ATC_Transitions_2026"
* title = "MII CM Onko ATC Code Changes 2025 to 2026"
* status = #active
* experimental = false
* date = "2026-03-10"
* description = "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2025 zu 2026. c-MET-Kinase-Inhibitoren wurden in die neue Untergruppe L01EP umklassifiziert."
* purpose = "Migration von ATC-Codes für c-MET-Kinase-Inhibitoren, die 2026 von L01EX nach L01EP umkodiert wurden."
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2025"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2026"

// Gruppe: c-MET-Kinase-Inhibitoren (L01EX → L01EP)
* group[+].source = "http://fhir.de/CodeSystem/bfarm/atc"
* group[=].target = "http://fhir.de/CodeSystem/bfarm/atc"

* group[=].element[+].code = #L01EX17
* group[=].element[=].display = "Capmatinib"
* group[=].element[=].target[+].code = #L01EP01
* group[=].element[=].target[=].display = "Capmatinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu c-MET-Kinase-Inhibitoren (neue Untergruppe L01EP)"

* group[=].element[+].code = #L01EX21
* group[=].element[=].display = "Tepotinib"
* group[=].element[=].target[+].code = #L01EP02
* group[=].element[=].target[=].display = "Tepotinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu c-MET-Kinase-Inhibitoren (neue Untergruppe L01EP)"
