// Example: Study participation in PRO-B clinical trial
// PRO-B is a German multicenter RCT for alarm-based patient-reported outcome monitoring in metastatic breast cancer

// ResearchStudy instance for PRO-B trial
Instance: mii-exa-onko-studie-prob
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie
Usage: #example
Title: "Studie PRO-B"
Description: "PRO-B: Alarm-basiertes Patient-Reported Outcome Monitoring bei Patientinnen mit metastasiertem Mammakarzinom (Innovationsfonds 01NVF19013)"
* identifier[+].system = "https://drks.de"
* identifier[=].value = "DRKS00024015"
* identifier[+].system = "http://innovationsfonds.g-ba.de"
* identifier[=].value = "01NVF19013"
* title = "PRO-B: Evaluating the effect of an alarm-based patient-reported outcome monitoring compared with usual care in metastatic breast cancer patients"
* status = #active
* primaryPurposeType = http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type#health-services-research "Health Services Research"
* category = http://terminology.hl7.org/CodeSystem/research-study-classif#interventional "Interventional"
* focus.coding = $SCT#399427004 "Monitoring of patient with cancer (regime/therapy)"
* condition.coding = $SCT#315004001 "Metastasis from malignant tumor of breast"

// Study participation observation for a patient enrolled in PRO-B
Instance: mii-exa-onko-studienteilnahme-prob
InstanceOf: mii-pr-onko-studienteilnahme
Usage: #example
Title: "Studienteilnahme PRO-B"
Description: "Beispiel einer Studienteilnahme an der PRO-B Studie für eine Patientin mit metastasiertem Mammakarzinom"
* status = #final
* code.coding = $SCT#709491003 "Enrollment in clinical trial (procedure)"
* subject = Reference(Patient/example)

// Reference to the primary tumor diagnosis (breast cancer)
* focus[primaertumor] = Reference(Condition/primaertumor-example)

// Reference to the PRO-B study
* focus[studie] = Reference(mii-exa-onko-studie-prob)

// Study participation status: Yes (enrolled)
* valueCodeableConcept.coding = $mii-cs-onko-studienteilnahme#J "Ja"
* valueCodeableConcept.text = "Patientin wurde in PRO-B Studie eingeschlossen"

// Date of enrollment
* effectiveDateTime = "2021-06-20"

* note.text = "Patientin mit metastasiertem Mammakarzinom in PRO-B Studie randomisiert. Teilnahme am alarm-basierten PROMs-Monitoring zur Erfassung von Symptomen und Nebenwirkungen."
