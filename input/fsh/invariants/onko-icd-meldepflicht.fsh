// Extensible-Semantik ohne Binding-Abschwächung: Das Basis-Diagnose-Profil bindet
// den icd10-gm-Slice required an das volle ICD-10-GM-VS (nicht abschwächbar).
// Diese Warning-Invariante prüft zusätzlich die Zugehörigkeit zur Krebsregister-
// Meldepflicht-Menge — Codes außerhalb erzeugen eine Warnung, keinen Fehler.
Invariant: onko-icd-meldepflicht
Description: "Der ICD-10-GM-Code sollte aus der Menge der krebsregister-meldepflichtigen Neubildungen stammen (C00-C97, D00-D09, D32-D33, D35.2-D35.4, D37-D48). Andere Codes sind zulässig, aber untypisch für eine onkologische Primärdiagnose."
Severity: #warning
Expression: "$this.memberOf('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icd10-meldepflichtige-tumoren')"
