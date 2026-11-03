// HDB-1001 (Ballot 2027): Leistungszustand-Profile erlauben dataAbsentReason.
// oBDS kennt "U" (Unbekannt) als regulären Wert; dataAbsentReason ist für den
// Fall "Skala nicht anwendbar" (z. B. KDK-Wert notApplicable im Modellvorhaben
// Genomsequenzierung) vorgesehen. obs-6 der Basis verbietet nur das Doppel,
// nicht das Fehlen beider - deshalb diese Invariante.
Invariant: onko-leistungszustand-wert-oder-grund
Description: "Entweder valueCodeableConcept oder dataAbsentReason muss angegeben sein (genau eines von beiden). Ein unbekannter Leistungszustand ist als Wert 'U' zu kodieren, dataAbsentReason=not-applicable ist für den Fall vorgesehen, dass die Skala nicht anwendbar ist."
Severity: #error
Expression: "value.exists() xor dataAbsentReason.exists()"

// ECOG 5 (verstorben) ist im oBDS nicht vorgesehen, im LOINC-Answer-Set LL529-9
// aber enthalten (LA9627-6 Dead). Nur in diesem Fall darf der oBDS-Slice fehlen.
Invariant: onko-ecog-obds-oder-verstorben
Description: "Der oBDS-ECOG-Code (0-4, U) ist Pflicht; er darf nur fehlen, wenn der LOINC-Wert LA9627-6 'Dead' (ECOG 5, verstorben) angegeben ist, den das oBDS nicht kennt."
Severity: #error
Expression: "valueCodeableConcept.exists() implies (valueCodeableConcept.coding.where(system = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog').exists() or valueCodeableConcept.coding.where(system = 'http://loinc.org' and code = 'LA9627-6').exists())"
