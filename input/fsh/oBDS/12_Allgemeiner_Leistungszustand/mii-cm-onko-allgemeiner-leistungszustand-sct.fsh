Instance: MII-CM-Onko-Allgemeiner-Leistungszustand-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-sct"
* name = "mii-cm-onko-allgemeiner-leistungszustand-snomed-mapping"
* title = "MII CM Onko Allgemeiner Leistungszustand SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Allgemeiner Leistungszustand Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-allgemeiner-leistungszustand
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #0
* group[=].element[=].display = "Normale, uneingeschränkte Aktivität wie vor der Erkrankung (90 - 100 % nach Karnofsky)"
* group[=].element[=].target.code = #425389002
* group[=].element[=].target.display = "Eastern Cooperative Oncology Group performance status - grade 0 (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #1
* group[=].element[=].display = "Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen (z. B. leichte Hausarbeit oder Büroarbeit) möglich (70 - 80 % nach Karnofsky)"
* group[=].element[=].target.code = #422512005
* group[=].element[=].target.display = "Eastern Cooperative Oncology Group performance status - grade 1 (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2
* group[=].element[=].display = "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
* group[=].element[=].target.code = #422894000
* group[=].element[=].target.display = "Eastern Cooperative Oncology Group performance status - grade 2 (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #3
* group[=].element[=].display = "Nur begrenzte Selbstversorgung möglich; ist 50 % oder mehr der Wachzeit an Bett oder Stuhl gebunden (30  40 % nach Karnofsky)"
* group[=].element[=].target.code = #423053003
* group[=].element[=].target.display = "Eastern Cooperative Oncology Group performance status - grade 3 (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4
* group[=].element[=].display = "Völlig pflegebedürftig, keinerlei Selbstversorgung möglich; völlig an Bett oder Stuhl gebunden (10 - 20 % nach Karnofsky)"
* group[=].element[=].target.code = #423237006
* group[=].element[=].target.display = "Eastern Cooperative Oncology Group performance status - grade 4 (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "Unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
