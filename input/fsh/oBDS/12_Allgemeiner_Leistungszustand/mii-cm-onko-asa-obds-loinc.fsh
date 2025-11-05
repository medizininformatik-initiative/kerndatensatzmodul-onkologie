Instance: mii-cm-onko-asa-obds-loinc
InstanceOf: ConceptMap
Usage: #definition
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-asa-obds-loinc"
* name = "MII_CM_Onko_ASA_oBDS_LOINC"
* title = "MII CM Onkologie ASA oBDS zu LOINC"
* description = "Mapping von oBDS ASA-Klassifikation (ursprünglich KR9, generalisiert für alle onkologischen Indikationen) zu LOINC ASA Physical Status"
* status = #active
* experimental = false

* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-obds"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-loinc"

* group[+]
  * source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds"
  * target = "http://loinc.org"
  
  * element[+]
    * code = #1
    * display = "ASA I"
    * target[+]
      * code = #LA28813-6
      * display = "ASA I"
      * equivalence = #equivalent
  
  * element[+]
    * code = #2
    * display = "ASA II"
    * target[+]
      * code = #LA28814-4
      * display = "ASA II"
      * equivalence = #equivalent
  
  * element[+]
    * code = #3
    * display = "ASA III"
    * target[+]
      * code = #LA28815-1
      * display = "ASA III"
      * equivalence = #equivalent
  
  * element[+]
    * code = #4
    * display = "ASA IV"
    * target[+]
      * code = #LA28816-9
      * display = "ASA IV"
      * equivalence = #equivalent
  
  * element[+]
    * code = #5
    * display = "ASA V"
    * target[+]
      * code = #LA28817-7
      * display = "ASA V"
      * equivalence = #equivalent
  
  * element[+]
    * code = #6
    * display = "ASA VI"
    * target[+]
      * code = #LA28818-5
      * display = "ASA VI"
      * equivalence = #equivalent
  
  * element[+]
    * code = #U
    * display = "Unbekannt"
    * target[+]
      * equivalence = #unmatched
      * comment = "Kein entsprechender LOINC-Code für 'Unbekannt' verfügbar"