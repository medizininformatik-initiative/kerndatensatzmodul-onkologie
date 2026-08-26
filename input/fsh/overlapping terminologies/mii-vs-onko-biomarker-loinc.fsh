// Kuratierte allgemeine LOINC-Codes der onkologischen Serum-/Urin-Tumormarker
// nach ENCR-Recommendation "Basis of Diagnosis" (Okt. 2022), Table 4 (GH #246,
// beads 14w.15). Kuratierungsprinzip: je Marker der METHODENUNSPEZIFISCHE
// Serum/Plasma- (bzw. 24h-Urin-)Code; jeder Code einzeln gegen LOINC verifiziert
// (lokaler TermServ + tx.fhir.org — Achtung: fünf naive Kandidaten waren
// Fehltreffer, z.B. 3126-0=Vasopressin statt VIP!).
// Spezifischere Varianten (Methoden/Einheiten/Proben) je Marker: siehe
// LOINC-SNOMED-Kurationsreport (examples-source/biomarker/, Snowstorm
// MAIN/SNOMEDCT-LOINC) — Erweiterung nach fachlichem Review.
ValueSet: MII_VS_Onko_Biomarker_LOINC
Id: mii-vs-onko-biomarker-loinc
Title: "MII VS Onkologie Biomarker LOINC (ENCR Table 4)"
Description: "Allgemeine (methodenunspezifische) LOINC-Codes der Tumormarker, mit denen nach ENCR-Recommendation Basis of Diagnosis (Table 4) in Kombination mit klinischer Untersuchung eine Krebsdiagnose gestellt werden kann (Basis of Diagnosis 4): CEA, AFP, CA 19-9, CA-125, PSA, hCG, Chromogranin A, gastroenteropankreatische Hormone, Calcitonin, Katecholamin-Metabolite, Hypophysenhormone, M-Protein und Immunglobuline."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version

* $LNC#2039-6 "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"  // CEA — Kolorektal
* $LNC#1834-1 "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"  // AFP — HCC / Keimzell
* $LNC#24108-3 "Cancer Ag 19-9 [Units/volume] in Serum or Plasma"  // CA 19-9 — Pankreas/Galle
* $LNC#10334-1 "Cancer Ag 125 [Units/volume] in Serum or Plasma"  // CA-125 — Ovar
* $LNC#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"  // PSA — Prostata
* $LNC#19080-1 "Choriogonadotropin [Units/volume] in Serum or Plasma"  // hCG — Chorion-Ca / Keimzell
* $LNC#21198-7 "Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma"  // beta-hCG — Chorion-Ca / Keimzell
* $LNC#9811-1 "Chromogranin A [Mass/volume] in Serum or Plasma"  // Chromogranin A — NET / Phäo
* $LNC#20448-7 "Insulin [Units/volume] in Serum or Plasma"  // Insulin — Insulinom
* $LNC#2338-2 "Glucagon [Mass/volume] in Serum or Plasma"  // Glukagon — Glukagonom
* $LNC#2333-3 "Gastrin [Mass/volume] in Serum or Plasma"  // Gastrin — Gastrinom
* $LNC#3125-2 "Vasoactive intestinal peptide [Mass/volume] in Serum or Plasma"  // VIP — VIPom
* $LNC#2961-1 "Somatostatin [Mass/volume] in Plasma"  // Somatostatin — Somatostatinom
* $LNC#18253-5 "Serotonin [Mass/time] in 24 hour Urine"  // Serotonin — NET (Serotonin)
* $LNC#2141-0 "Corticotropin [Mass/volume] in Plasma"  // ACTH — ACTH-produzierend
* $LNC#1992-7 "Calcitonin [Mass/volume] in Serum or Plasma"  // Calcitonin — Medulläres SD-Ca
* $LNC#2436-4 "Homovanillate [Mass/time] in 24 hour Urine"  // HVA (Urin) — Neuroblastom
* $LNC#3122-9 "Vanillylmandelate [Mass/time] in 24 hour Urine"  // VMA (Urin) — Neuroblastom
* $LNC#27055-3 "Catecholamines Free [Mass/time] in 24 hour Urine"  // Katecholamine — Phäochromozytom
* $LNC#2842-3 "Prolactin [Mass/volume] in Serum or Plasma"  // Prolaktin — Prolaktinom
* $LNC#2963-7 "Somatotropin [Mass/volume] in Serum or Plasma"  // GH/Somatotropin — Hypophysentumor
* $LNC#15067-2 "Follitropin [Units/volume] in Serum or Plasma"  // FSH — Hypophysentumor
* $LNC#10501-5 "Lutropin [Units/volume] in Serum or Plasma"  // LH — Hypophysentumor
* $LNC#3016-3 "Thyrotropin [Units/volume] in Serum or Plasma"  // TSH — Hypophysentumor
* $LNC#33358-3 "Protein.monoclonal [Mass/volume] in Serum or Plasma by Electrophoresis"  // M-Protein (SerPl) — Multiples Myelom
* $LNC#2465-3 "IgG [Mass/volume] in Serum or Plasma"  // IgG — Myelom
* $LNC#2458-8 "IgA [Mass/volume] in Serum or Plasma"  // IgA — Myelom
* $LNC#2472-9 "IgM [Mass/volume] in Serum or Plasma"  // IgM — Waldenström / Myelom
