// Union-Liste der onkologischen Tumormarker (beads 14w.15, GH #246).
// Grundlage: Kernliste der IG-Seite "Tumormarker — kuratierte LOINC-Codes";
// fachliche Herleitung siehe dort (ENCR-Recommendation Basis of Diagnosis,
// Table 4: Marker -> zulaessige ICD-O-Morphologie).
// Bewusst eine flache Union der allgemeinen LOINC-Codes: Die feingranularen
// Varianten (Methode, Einheit, Probenmaterial) sind ueber die LOINC-SNOMED-
// Ontologie erreichbar und werden hier NICHT einzeln gepflegt.
ValueSet: MII_VS_Onko_Tumormarker_LOINC
Id: mii-vs-onko-tumormarker-loinc
Title: "MII VS Onkologie Tumormarker LOINC"
Description: "Kuratierte LOINC-Codes der in der Onkologie gebraeuchlichen Tumormarker (Serum-/Plasma- bzw. Urin-Bestimmungen). Verwendung als Auswahlliste fuer Observation.code im Profil MII_PR_Onko_Tumormarker (Ableitung des KDS-Moduls Laborbefund). Die Liste ist nicht abschliessend gemeint: Weitere Laborwerte werden ueber das KDS-Modul Laborbefund abgebildet."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

* $LNC#2039-6 "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma" // CEA — Kolorektales Karzinom
* $LNC#1834-1 "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma" // AFP — HCC, Keimzelltumoren
* $LNC#24108-3 "Cancer Ag 19-9 [Units/volume] in Serum or Plasma" // CA 19-9 — Pankreas-/Gallengangskarzinom
* $LNC#10334-1 "Cancer Ag 125 [Units/volume] in Serum or Plasma" // CA-125 — Ovarialkarzinom
* $LNC#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma" // PSA — Prostatakarzinom
* $LNC#19080-1 "Choriogonadotropin [Units/volume] in Serum or Plasma" // hCG — Chorionkarzinom, Keimzelltumoren
* $LNC#21198-7 "Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma" // β-hCG — Chorionkarzinom, Keimzelltumoren
* $LNC#9811-1 "Chromogranin A [Mass/volume] in Serum or Plasma" // Chromogranin A — NET, Phäochromozytom
* $LNC#20448-7 "Insulin [Units/volume] in Serum or Plasma" // Insulin — Insulinom
* $LNC#2338-2 "Glucagon [Mass/volume] in Serum or Plasma" // Glukagon — Glukagonom
* $LNC#2333-3 "Gastrin [Mass/volume] in Serum or Plasma" // Gastrin — Gastrinom
* $LNC#3125-2 "Vasoactive intestinal peptide [Mass/volume] in Serum or Plasma" // VIP — VIPom
* $LNC#2961-1 "Somatostatin [Mass/volume] in Plasma" // Somatostatin — Somatostatinom
* $LNC#18253-5 "Serotonin [Mass/time] in 24 hour Urine" // Serotonin — NET (Serotonin-produzierend)
* $LNC#2141-0 "Corticotropin [Mass/volume] in Plasma" // ACTH — ACTH-produzierende Tumoren
* $LNC#1992-7 "Calcitonin [Mass/volume] in Serum or Plasma" // Calcitonin — Medulläres Schilddrüsenkarzinom
* $LNC#2436-4 "Homovanillate [Mass/time] in 24 hour Urine" // HVA (Urin) — Neuroblastom
* $LNC#3122-9 "Vanillylmandelate [Mass/time] in 24 hour Urine" // VMA (Urin) — Neuroblastom
* $LNC#27055-3 "Catecholamines Free [Mass/time] in 24 hour Urine" // Katecholamine (Urin) — Phäochromozytom
* $LNC#2842-3 "Prolactin [Mass/volume] in Serum or Plasma" // Prolaktin — Prolaktinom
* $LNC#2963-7 "Somatotropin [Mass/volume] in Serum or Plasma" // GH/Somatotropin — Hypophysentumoren
* $LNC#15067-2 "Follitropin [Units/volume] in Serum or Plasma" // FSH — Hypophysentumoren
* $LNC#10501-5 "Lutropin [Units/volume] in Serum or Plasma" // LH — Hypophysentumoren
* $LNC#3016-3 "Thyrotropin [Units/volume] in Serum or Plasma" // TSH — Hypophysentumoren
* $LNC#33358-3 "Protein.monoclonal [Mass/volume] in Serum or Plasma by Electrophoresis" // M-Protein — Multiples Myelom
* $LNC#2465-3 "IgG [Mass/volume] in Serum or Plasma" // IgG — Multiples Myelom
* $LNC#2458-8 "IgA [Mass/volume] in Serum or Plasma" // IgA — Multiples Myelom
* $LNC#2472-9 "IgM [Mass/volume] in Serum or Plasma" // IgM — M. Waldenström, Myelom
