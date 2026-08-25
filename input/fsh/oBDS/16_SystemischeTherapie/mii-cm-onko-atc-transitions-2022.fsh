Instance: mii-cm-onko-atc-transitions-2022
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2022"
* name = "MII_CM_Onko_ATC_Transitions_2022"
* title = "MII CM Onko ATC Code Changes 2021 to 2022"
* status = #active
* experimental = false
* date = "2026-08-25"
* description = "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2021 zu 2022. In diesem Jahr erfolgte die größte Reklassifikation der onkologischen ATC-Systematik: die monoklonalen Antikörper wurden aus der Sammelgruppe L01XC in die neue, nach Zielstruktur gegliederte Gruppe L01F überführt."
* purpose = "Migration von ATC-Codes für monoklonale Antikörper, die 2022 von L01XC nach L01F umkodiert wurden."
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2021"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2022"

// Gruppe für alle Umkodierungen
* group[+].source = "http://fhir.de/CodeSystem/bfarm/atc"
* group[=].target = "http://fhir.de/CodeSystem/bfarm/atc"

// CD20-Inhibitoren (L01XC → L01FA)
* group[=].element[+].code = #L01XC02
* group[=].element[=].display = "Rituximab"
* group[=].element[=].target[+].code = #L01FA01
* group[=].element[=].target[=].display = "Rituximab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu CD20-Inhibitoren"

* group[=].element[+].code = #L01XC15
* group[=].element[=].display = "Obinutuzumab"
* group[=].element[=].target[+].code = #L01FA03
* group[=].element[=].target[=].display = "Obinutuzumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu CD20-Inhibitoren"

// CD22-Inhibitoren (L01XC → L01FB)
* group[=].element[+].code = #L01XC26
* group[=].element[=].display = "Inotuzumab ozogamicin"
* group[=].element[=].target[+].code = #L01FB01
* group[=].element[=].target[=].display = "Inotuzumab ozogamicin"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu CD22-Inhibitoren"

// CD38-Inhibitoren (L01XC → L01FC)
* group[=].element[+].code = #L01XC24
* group[=].element[=].display = "Daratumumab"
* group[=].element[=].target[+].code = #L01FC01
* group[=].element[=].target[=].display = "Daratumumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu CD38-Inhibitoren"

// HER2-Inhibitoren (L01XC → L01FD)
* group[=].element[+].code = #L01XC03
* group[=].element[=].display = "Trastuzumab"
* group[=].element[=].target[+].code = #L01FD01
* group[=].element[=].target[=].display = "Trastuzumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu HER2-Inhibitoren"

* group[=].element[+].code = #L01XC13
* group[=].element[=].display = "Pertuzumab"
* group[=].element[=].target[+].code = #L01FD02
* group[=].element[=].target[=].display = "Pertuzumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu HER2-Inhibitoren"

* group[=].element[+].code = #L01XC14
* group[=].element[=].display = "Trastuzumab emtansin"
* group[=].element[=].target[+].code = #L01FD03
* group[=].element[=].target[=].display = "Trastuzumab emtansin"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu HER2-Inhibitoren"

// EGFR-Inhibitoren (L01XC → L01FE)
* group[=].element[+].code = #L01XC06
* group[=].element[=].display = "Cetuximab"
* group[=].element[=].target[+].code = #L01FE01
* group[=].element[=].target[=].display = "Cetuximab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu EGFR-Inhibitoren"

* group[=].element[+].code = #L01XC08
* group[=].element[=].display = "Panitumumab"
* group[=].element[=].target[+].code = #L01FE02
* group[=].element[=].target[=].display = "Panitumumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu EGFR-Inhibitoren"

// PD-1-/PD-L1-Inhibitoren (L01XC → L01FF)
* group[=].element[+].code = #L01XC17
* group[=].element[=].display = "Nivolumab"
* group[=].element[=].target[+].code = #L01FF01
* group[=].element[=].target[=].display = "Nivolumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"

* group[=].element[+].code = #L01XC18
* group[=].element[=].display = "Pembrolizumab"
* group[=].element[=].target[+].code = #L01FF02
* group[=].element[=].target[=].display = "Pembrolizumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"

* group[=].element[+].code = #L01XC28
* group[=].element[=].display = "Durvalumab"
* group[=].element[=].target[+].code = #L01FF03
* group[=].element[=].target[=].display = "Durvalumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"

* group[=].element[+].code = #L01XC31
* group[=].element[=].display = "Avelumab"
* group[=].element[=].target[+].code = #L01FF04
* group[=].element[=].target[=].display = "Avelumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"

* group[=].element[+].code = #L01XC32
* group[=].element[=].display = "Atezolizumab"
* group[=].element[=].target[+].code = #L01FF05
* group[=].element[=].target[=].display = "Atezolizumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"

// VEGF-/VEGFR-Inhibitoren (L01XC → L01FG)
* group[=].element[+].code = #L01XC07
* group[=].element[=].display = "Bevacizumab"
* group[=].element[=].target[+].code = #L01FG01
* group[=].element[=].target[=].display = "Bevacizumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu VEGF-/VEGFR-Inhibitoren"

* group[=].element[+].code = #L01XC21
* group[=].element[=].display = "Ramucirumab"
* group[=].element[=].target[+].code = #L01FG02
* group[=].element[=].target[=].display = "Ramucirumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu VEGF-/VEGFR-Inhibitoren"

// Andere monoklonale Antikörper (L01XC → L01FX)
* group[=].element[+].code = #L01XC11
* group[=].element[=].display = "Ipilimumab"
* group[=].element[=].target[+].code = #L01FX04
* group[=].element[=].target[=].display = "Ipilimumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu andere monoklonale Antikörper"

* group[=].element[+].code = #L01XC12
* group[=].element[=].display = "Brentuximab vedotin"
* group[=].element[=].target[+].code = #L01FX05
* group[=].element[=].target[=].display = "Brentuximab vedotin"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu andere monoklonale Antikörper"

* group[=].element[+].code = #L01XC19
* group[=].element[=].display = "Blinatumomab"
* group[=].element[=].target[+].code = #L01FX07
* group[=].element[=].target[=].display = "Blinatumomab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu andere monoklonale Antikörper"

* group[=].element[+].code = #L01XC27
* group[=].element[=].display = "Olaratumab"
* group[=].element[=].target[+].code = #L01FX10
* group[=].element[=].target[=].display = "Olaratumab"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu andere monoklonale Antikörper"

// ---------------------------------------------------------------------------
// Verifikation: Alle 20 Ziel-Codes wurden gegen die tatsächlichen Einträge in
// mii-vs-onko-systemische-therapie-substanzen-2022.fsh geprüft (Code UND Display).
//
// TODO: Weitere monoklonale Antikörper des VS 2022 (u. a. Ofatumumab, Isatuximab,
// Necitumumab, Cemiplimab, Edrecolomab, Gemtuzumab ozogamicin, Catumaxomab,
// Dinutuximab beta, Elotuzumab, Mogamulizumab, Polatuzumab vedotin) besitzen
// ebenfalls L01XC-Vorgängercodes. Diese sind hier noch nicht aufgenommen, da die
// Quell-Codes nicht gegen den WHO-/BfArM-ATC-Index 2021 verifiziert werden konnten.
// ---------------------------------------------------------------------------
