Instance: mii-cm-onko-atc-transitions-2024
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2024"
* name = "MII_CM_Onko_ATC_Transitions_2024"
* title = "MII CM Onko ATC Code Changes 2023 to 2024"
* status = #active
* experimental = false
* date = "2024-12-12"
* description = "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2023 zu 2024. Mehrere immunmodulatorische Substanzen wurden in neue Kategorien umklassifiziert, und Kombinationspräparate erhielten neue Codes."
* purpose = "Migration von ATC-Codes für immunmodulatorische Substanzen und Kombinationspräparate, die 2024 umkodiert wurden."
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2023"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024"

// Gruppe für alle Umkodierungen
* group[+].source = "http://fhir.de/CodeSystem/bfarm/atc"
* group[=].target = "http://fhir.de/CodeSystem/bfarm/atc"

// Immunsuppressiva Umklassifizierungen
* group[=].element[+].code = #L04AA34
* group[=].element[=].display = "Alemtuzumab"
* group[=].element[=].target[+].code = #L04AG06
* group[=].element[=].target[=].display = "Alemtuzumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung innerhalb der Immunsuppressiva"

* group[=].element[+].code = #L04AA26
* group[=].element[=].display = "Belimumab"
* group[=].element[=].target[+].code = #L04AG04
* group[=].element[=].target[=].display = "Belimumab"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L04AA25
* group[=].element[=].display = "Eculizumab"
* group[=].element[=].target[+].code = #L04AJ01
* group[=].element[=].target[=].display = "Eculizumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Komplement-Inhibitoren"

* group[=].element[+].code = #L04AA21
* group[=].element[=].display = "Efalizumab"
* group[=].element[=].target[+].code = #L04AG02
* group[=].element[=].target[=].display = "Efalizumab"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01EG02
* group[=].element[=].display = "Everolimus"
* group[=].element[=].target[+].code = #L04AH02
* group[=].element[=].target[=].display = "Everolimus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Zusätzliche Klassifizierung als Immunsuppressivum (behält auch L01EG02)"

* group[=].element[+].code = #L04AA27
* group[=].element[=].display = "Fingolimod"
* group[=].element[=].target[+].code = #L04AE01
* group[=].element[=].target[=].display = "Fingolimod"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Sphingosin-1-Phosphat-Rezeptor-Modulatoren"

* group[=].element[+].code = #L04AA13
* group[=].element[=].display = "Leflunomid"
* group[=].element[=].target[+].code = #L04AK01
* group[=].element[=].target[=].display = "Leflunomid"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01FX24
* group[=].element[=].display = "Mosunetuzumab"
* group[=].element[=].target[+].code = #L01FX25
* group[=].element[=].target[=].display = "Mosunetuzumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Code-Anpassung innerhalb der bispezifischen Antikörper"

* group[=].element[+].code = #L04AA02
* group[=].element[=].display = "Muromonab-CD3"
* group[=].element[=].target[+].code = #L04AG01
* group[=].element[=].target[=].display = "Muromonab-CD3"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L04AA23
* group[=].element[=].display = "Natalizumab"
* group[=].element[=].target[+].code = #L04AG03
* group[=].element[=].target[=].display = "Natalizumab"
* group[=].element[=].target[=].equivalence = #equivalent

// Kombinationspräparate
* group[=].element[+].code = #L01XY03
* group[=].element[=].display = "Nivolumab und Relatlimab"
* group[=].element[=].target[+].code = #L01FY02
* group[=].element[=].target[=].display = "Nivolumab und Relatlimab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Kombinationen monoklonaler Antikörper"

* group[=].element[+].code = #L01FA02
* group[=].element[=].display = "Ofatumumab"
* group[=].element[=].target[+].code = #L04AG12
* group[=].element[=].target[=].display = "Ofatumumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Zusätzliche Klassifizierung als Immunsuppressivum (behält auch L01FA02)"

* group[=].element[+].code = #L01XY02
* group[=].element[=].display = "Pertuzumab und Trastuzumab"
* group[=].element[=].target[+].code = #L01FY01
* group[=].element[=].target[=].display = "Pertuzumab und Trastuzumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Kombinationen monoklonaler Antikörper"

* group[=].element[+].code = #L04AA10
* group[=].element[=].display = "Sirolimus"
* group[=].element[=].target[+].code = #L04AH01
* group[=].element[=].target[=].display = "Sirolimus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu mTOR-Inhibitoren (Immunsuppressiva)"