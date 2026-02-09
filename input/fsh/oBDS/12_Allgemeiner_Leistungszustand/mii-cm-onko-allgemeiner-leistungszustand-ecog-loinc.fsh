Instance: mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping oBDS ECOG zu LOINC"
Description: "Mapping der oBDS-Codes für ECOG Performance Status zu LOINC Answer List LA29179-1"
* status = #active
* experimental = false
* insert Version

* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog"
* targetCanonical = "http://loinc.org/vs/LL529-9"

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog"
* group[=].target = "http://loinc.org"

* group[=].element[+].code = #0
* group[=].element[=].display = "Normale, uneingeschränkte Aktivität wie vor der Erkrankung (90 - 100 % nach Karnofsky)"
* group[=].element[=].target[+].code = #LA9622-2
* group[=].element[=].target[=].display = "Fully active, able to carry on all pre-disease performance without restriction"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #1
* group[=].element[=].display = "Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen (z. B. leichte Hausarbeit oder Büroarbeit) möglich (70 - 80 % nach Karnofsky)"
* group[=].element[=].target[+].code = #LA9623-0
* group[=].element[=].target[=].display = "Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #2
* group[=].element[=].display = "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
* group[=].element[=].target[+].code = #LA9624-8
* group[=].element[=].target[=].display = "Ambulatory and capable of all selfcare but unable to carry out any work activities; up and about more than 50% of waking hours"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #3
* group[=].element[=].display = "Nur begrenzte Selbstversorgung möglich; ist 50 % oder mehr der Wachzeit an Bett oder Stuhl gebunden (30  40 % nach Karnofsky)"
* group[=].element[=].target[+].code = #LA9625-5
* group[=].element[=].target[=].display = "Capable of only limited selfcare; confined to bed or chair more than 50% of waking hours"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #4
* group[=].element[=].display = "Völlig pflegebedürftig, keinerlei Selbstversorgung möglich; völlig an Bett oder Stuhl gebunden (10 - 20 % nach Karnofsky)"
* group[=].element[=].target[+].code = #LA9626-3
* group[=].element[=].target[=].display = "Completely disabled; cannot carry on any selfcare; totally confined to bed or chair"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "Unbekannt"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No corresponding LOINC code for 'Unknown' available"
