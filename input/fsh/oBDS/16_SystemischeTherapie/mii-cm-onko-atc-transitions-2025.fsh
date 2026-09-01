Instance: mii-cm-onko-atc-transitions-2025
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2025"
* name = "MII_CM_Onko_ATC_Transitions_2025"
* title = "MII CM Onko ATC Code Changes 2024 to 2025"
* status = #active
* experimental = false
* date = "2024-12-12"
* description = "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2024 zu 2025. IDH-Inhibitoren wurden in eine neue spezifische Kategorie umklassifiziert."
* purpose = "Migration von ATC-Codes für IDH-Inhibitoren, die 2025 umkodiert wurden."
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2025"

// Gruppe für alle Umkodierungen
* group[+].source = "http://fhir.de/CodeSystem/bfarm/atc"
* group[=].target = "http://fhir.de/CodeSystem/bfarm/atc"

// IDH-Inhibitoren (L01XX → L01XM)
* group[=].element[+].code = #L01XX59
* group[=].element[=].display = "Enasidenib"
* group[=].element[=].target[+].code = #L01XM01
* group[=].element[=].target[=].display = "Enasidenib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu IDH-Inhibitoren"

* group[=].element[+].code = #L01XX62
* group[=].element[=].display = "Ivosidenib"
* group[=].element[=].target[+].code = #L01XM02
* group[=].element[=].target[=].display = "Ivosidenib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu IDH-Inhibitoren"