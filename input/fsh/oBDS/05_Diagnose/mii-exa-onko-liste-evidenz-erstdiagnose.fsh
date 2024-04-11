Instance: mii-exa-onko-liste-evidenz-erstdiagnose-1
InstanceOf: mii-pr-onko-liste-evidenz-erstdiagnose
Usage: #example
Description: "Eine Beispielliste, welche Observations zur Diagnosestellung präsent waren"
* status = #current
* mode = #snapshot
* title = "Liste der Evidenz zum Erstdiagnosezeitpunkt"
* subject = Reference(Patient/example)
* entry[0].item = Reference(Observation/example-ecog-zustand)
* entry[1].item = Reference(Observation/example-tnm-klassifikation)
* entry[2].item = Reference(Observation/example-tnm-t-kategorie)
* entry[3].item = Reference(Observation/example-tnm-n-kategorie)
* entry[4].item = Reference(Observation/example-tnm-m-kategorie)
* entry[5].item = Reference(Observation/example-tnm-l-kategorie)
* entry[6].item = Reference(Observation/example-fernmetastase-1)
* entry[7].item = Reference(Observation/example-fernmetastase-2)
* entry[8].item = Reference(DiagnosticReport/example-pathobefund-1)