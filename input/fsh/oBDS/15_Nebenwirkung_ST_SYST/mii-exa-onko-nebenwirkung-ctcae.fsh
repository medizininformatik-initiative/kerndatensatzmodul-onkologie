// CTCAE-v4.03-Beispielinstanzen (beads qst): typische Nebenwirkungen mit
// MedDRA-Pflichtkodierung (+ deutsches Display via Supplement
// mii-cs-onko-nebenwirkung-meddra-de), optionaler SNOMED-CT-Zweitkodierung
// (via ConceptMap mii-cm-onko-nebenwirkung-meddra-sct) und CTCAE-Grad.

Instance: mii-exa-onko-nebenwirkung-anaemie-grad3
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example
Title: "MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3"
Description: "Anämie CTCAE Grad 3 (MedDRA 10002272, deutsches Display aus dem Supplement) unter systemischer Therapie — mit SNOMED-CT-Zweitkodierung aus der ConceptMap."
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10002272
* event.coding[meddra].display = "Anämie"
* event.coding[meddra].version = "Version 4"
* event.coding[snomed] = $SCT#271737000 "Anaemia"
* subject = Reference(PatientKimMusterperson)
* date = "2021-08-30"
* seriousness.coding = $mii-cs-onko-nebenwirkung-ctcae-grad#3 "schwerwiegend"
* suspectEntity.instance = Reference(PatientKimMusterperson-SystemicTherapy-1)

Instance: mii-exa-onko-nebenwirkung-crs-grad4
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example
Title: "MII EXA Onkologie Nebenwirkung Cytokine-Release-Syndrom CTCAE Grad 4"
Description: "Cytokine-Release-Syndrom CTCAE Grad 4 (MedDRA 10052015) unter medikamentöser systemischer Therapie — SNOMED-Zweitkodierung gemäß ConceptMap gegen die im Expansions-Manifest gepinnte SNOMED-Version (International 20250701)."
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10052015
* event.coding[meddra].display = "Zytokin-Freisetzungs-Syndrom"
* event.coding[meddra].version = "Version 4"
* event.coding[snomed] = $SCT#710027002 "Cytokine release syndrome"
* subject = Reference(PatientKimMusterperson)
* date = "2021-09-02"
* seriousness.coding = $mii-cs-onko-nebenwirkung-ctcae-grad#4 "lebensbedrohlich"
* suspectEntity.instance = Reference(PatientKimMusterperson-SystemicTherapyMedication-1a)

Instance: mii-exa-onko-nebenwirkung-rektale-mukositis-grad2
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example
Title: "MII EXA Onkologie Nebenwirkung Rektale Mukositis CTCAE Grad 2 (MedDRA-only)"
Description: "Rektale Mukositis CTCAE Grad 2 (MedDRA 10063190) nach Strahlentherapie — Beispiel für einen Term OHNE SNOMED-CT-Äquivalent (in der ConceptMap als unmatched geführt): Die Kodierung bleibt MedDRA-only, der optionale snomed-Slice entfällt."
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10063190
* event.coding[meddra].display = "Rektale Mukositis"
* event.coding[meddra].version = "Version 4"
* subject = Reference(PatientKimMusterperson)
* date = "2021-09-10"
* seriousness.coding = $mii-cs-onko-nebenwirkung-ctcae-grad#2 "moderat"
* suspectEntity.instance = Reference(mii-exa-onko-strahlentherapie-strahlentherapie-1)
