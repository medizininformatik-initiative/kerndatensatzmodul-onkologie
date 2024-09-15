Instance: mii-cm-onko-strahlentherapie-strahlenart-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-strahlenart-sct"
* name = "MII CM Onko Strahlentherapie Strahlenart SCT Mapping"
* title = "MII CM Onko Strahlentherapie Strahlenart SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Strahlentherapie Strahlenart Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-strahlentherapie-strahlenart
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #UH
* group[=].element[=].display = "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)"
* group[=].element[=].target.code = #290006006
* group[=].element[=].target.display = "Photon (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #EL
* group[=].element[=].display = "Elektronen"
* group[=].element[=].target.code = #46602004
* group[=].element[=].target.display = "Electron (substance) "
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #NE
* group[=].element[=].display = "Neutronen"
* group[=].element[=].target.code = #58607005
* group[=].element[=].target.display = "Neutron (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #PN
* group[=].element[=].display = "Protonen (leichte Wasserstoffionen/H1/Leichtionen)"
* group[=].element[=].target.code = #89177007
* group[=].element[=].target.display = "Proton (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SI
* group[=].element[=].display = "Schwerionen (schwere Kohlenstoff-Ionen/C12/Sauerstoffionen/Heliumionen)"
* group[=].element[=].target.code = #312253001
* group[=].element[=].target.display = "Heavy ion radiation (physical force)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #RO
* group[=].element[=].display = "Weichstrahl (kV)"
* group[=].element[=].target.code = #286630003
* group[=].element[=].target.display = "Soft X-radiation (physical force)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SO
* group[=].element[=].display = "Sonstige (inklusive Mixed Beams, exklusive Nuklide)"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #LU-177
* group[=].element[=].display = "Lu-177"
* group[=].element[=].target.code = #447553000
* group[=].element[=].target.display = "Lutetium-177 (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #J-131
* group[=].element[=].display = "J131"
* group[=].element[=].target.code = #1368003
* group[=].element[=].target.display = "Iodine-131 (substance) "
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Y-90
* group[=].element[=].display = "Y-90"
* group[=].element[=].target.code = #14691008
* group[=].element[=].target.display = "Yttrium-90 (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Ra-223
* group[=].element[=].display = "Ra-223"
* group[=].element[=].target.code = #24853006
* group[=].element[=].target.display = "Radium-223 (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Ac-225
* group[=].element[=].display = "Ac-225"
* group[=].element[=].target.code = #32059002
* group[=].element[=].target.display = "Actinium-225 (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Sm-153
* group[=].element[=].display = "Sm-153"
* group[=].element[=].target.code = #419804008
* group[=].element[=].target.display = "Samarium-153 (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Tb-161
* group[=].element[=].display = "Tb-161"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #Sr-89
* group[=].element[=].display = "Sr-89"
* group[=].element[=].target.code = #7770004
* group[=].element[=].target.display = " Strontium-89 (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Ir-192
* group[=].element[=].display = "Ir-192"
* group[=].element[=].target.code = #48341001
* group[=].element[=].target.display = "Iridium-192 (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Co-60
* group[=].element[=].display = "Co-60"
* group[=].element[=].target.code = #5405008
* group[=].element[=].target.display = "Cobalt-60 (substance)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SONU
* group[=].element[=].display = "Sonstige Nuklide"
* group[=].element[=].target.code = #89457008
* group[=].element[=].target.display = "Radioactive isotope (substance)"
* group[=].element[=].target.equivalence = #equivalent