Instance: mii-exa-onko-allgemeiner-leistungszustand-ecog
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand-ecog
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog)
* status = #final
* code.coding[snomed] = $SCT#423740007
* code.coding[loinc] = $LNC#89262-0
* subject = Reference(Patient/example)

* valueCodeableConcept.coding[obds] = $mii-cs-onko-allgemeiner-leistungszustand-ecog#2 "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
* valueCodeableConcept.coding[loinc] = $LNC#LA9623-5 "Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work"
// * valueCodeableConcept.coding[loinc] = $LNC#LA9624-8 "Ambulatory and capable of all selfcare but unable to carry out any work activities; up and about more than 50% of waking hours"


// HDB-1001: ECOG 5 (verstorben) - oBDS kennt den Wert nicht, LOINC LL529-9 schon.
// Der oBDS-Slice fehlt deshalb (Invariante onko-ecog-obds-oder-verstorben).
Instance: mii-exa-onko-allgemeiner-leistungszustand-ecog-verstorben
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand-ecog
Usage: #example
Title: "MII EXA Onkologie Allgemeiner Leistungszustand ECOG 5 (verstorben)"
Description: "ECOG 5 (verstorben) aus einem Follow-up des Modellvorhabens Genomsequenzierung: nur als LOINC LA9627-6 kodierbar, oBDS-Slice entfällt"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog)
* status = #final
* code.coding[snomed] = $SCT#423740007
* code.coding[loinc] = $LNC#89262-0
* subject = Reference(Patient/example)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept.coding[loinc] = $LNC#LA9627-6 "Dead"

// HDB-1001: Skala nicht anwendbar (KDK notApplicable) - kein Wert, dataAbsentReason.
Instance: mii-exa-onko-allgemeiner-leistungszustand-ecog-nicht-anwendbar
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand-ecog
Usage: #example
Title: "MII EXA Onkologie Allgemeiner Leistungszustand ECOG nicht anwendbar"
Description: "ECOG-Skala nicht anwendbar (KDK-Wert notApplicable im Modellvorhaben Genomsequenzierung): kein Wert, dataAbsentReason=not-applicable"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog)
* status = #final
* code.coding[snomed] = $SCT#423740007
* code.coding[loinc] = $LNC#89262-0
* subject = Reference(Patient/example)
* effectiveDateTime = "2026-03-12"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable "Not Applicable"
