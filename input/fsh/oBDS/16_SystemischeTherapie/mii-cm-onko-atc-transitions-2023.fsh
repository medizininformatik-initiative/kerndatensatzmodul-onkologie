Instance: mii-cm-onko-atc-transitions-2023
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2023"
* name = "MII_CM_Onko_ATC_Transitions_2023"
* title = "MII CM Onko ATC Code Changes 2022 to 2023"
* status = #active
* experimental = false
* date = "2024-12-12"
* description = "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2022 zu 2023. In diesem Jahr wurden CAR-T-Zelltherapien und onkolytische Viren in neue spezifische ATC-Kategorien umklassifiziert."
* purpose = "Migration von ATC-Codes für CAR-T-Zelltherapien und onkolytische Viren, die 2023 umkodiert wurden."
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2022"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2023"

// Gruppe für alle Umkodierungen
* group[+].source = "http://fhir.de/CodeSystem/bfarm/atc"
* group[=].target = "http://fhir.de/CodeSystem/bfarm/atc"

// CAR-T-Zelltherapien und onkolytische Viren (L01XX → L01XL)
* group[=].element[+].code = #L01XX70
* group[=].element[=].display = "Axicabtagen Ciloleucel"
* group[=].element[=].target[+].code = #L01XL03
* group[=].element[=].target[=].display = "Axicabtagen Ciloleucel"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu CAR-T-Zelltherapien"

* group[=].element[+].code = #L01XX51
* group[=].element[=].display = "Talimogen laherparepvec"
* group[=].element[=].target[+].code = #L01XL02
* group[=].element[=].target[=].display = "Talimogen laherparepvec"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu onkolytische Viren"

* group[=].element[+].code = #L01XX71
* group[=].element[=].display = "Tisagenlecleucel"
* group[=].element[=].target[+].code = #L01XL04
* group[=].element[=].target[=].display = "Tisagenlecleucel"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu CAR-T-Zelltherapien"