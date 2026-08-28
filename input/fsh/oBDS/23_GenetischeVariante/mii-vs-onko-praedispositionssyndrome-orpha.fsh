// GENERIERT + KURATIERT (beads 14w.2, 2026-08-28). Quelle: §65c Manual Plus
// "Krebsprädispositionssyndrom und -gen" (v3, plattform65c.atlassian.net/wiki/
// spaces/UMK/pages/859373569) — 75 Syndrom-Einträge, davon 60 nach ORPHA
// aufgelöst (55 distinkte Codes; Mosaikformen teilen den Code der Grundform,
// ORPHA unterscheidet nicht). Alle Codes gegen den MII-TermServ verifiziert
// (ORPHA Version 2025). OHNE ORPHA-Konzept bleiben (Stand der Auflösung) die
// neuen genspezifischen Prädispositionen — sie sind über das Gen-VS adressierbar:
//   - ALK-bedingte Prädisposition für neuroblastische Tumoren/ALK-Defizienz
//   - CTR9-assoziierte Prädisposition für Wilms-Tumor
//   - Happle-Tinschert-Syndrom
//   - DIS3L2-assoziierte Prädisposition für Wilms-Tumor
//   - ELP1-assoziierte Prädisposition für Medulloblastom
//   - ETV6-assoziierte Thrombozytopenie und Prädisposition für Leukämie
//   - GPR161-assoziierte Prädisposition für Medulloblastom
//   - IKAROS-assoziierte Prädisposition für lymphoide Neoplasien
//   - Multilineage mosaic RASopathy
//   - PAX5-assoziierte Prädisposition für Leukämie
//   - REST-assoziierte Prädisposition für Wilms-Tumor
//   - TCF3-assoziierte Prädisposition für Leukämie
//   - TRIM28-assoziierte Prädisposition für Wilms-Tumor
//   - WT1-assoziierte Prädisposition für Wilms-Tumor
// "Unbekannt" ist bewusst nicht kodiert.
ValueSet: MII_VS_Onko_Praedispositionssyndrome_ORPHA
Id: mii-vs-onko-praedispositionssyndrome-orpha
Title: "MII VS Onkologie Krebsprädispositionssyndrome ORPHA"
Description: "Krebsprädispositionssyndrome der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als Orphanet-Codes. Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker); 15 genspezifische Prädispositionen der Quell-Liste haben kein Orphanet-Konzept und sind über das Gen-ValueSet mii-vs-onko-praedispositionsgene-hgnc adressierbar. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

* http://www.orpha.net#100 "Ataxia-telangiectasia"
* http://www.orpha.net#116 "Beckwith-Wiedemann syndrome"
* http://www.orpha.net#125 "Bloom syndrome"
* http://www.orpha.net#97297 "Bohring-Opitz syndrome"
* http://www.orpha.net#363972 "Noonan syndrome-like disorder with juvenile myelomonocytic leukemia"
* http://www.orpha.net#319465 "Inherited acute myeloid leukemia"
* http://www.orpha.net#626 "Large/giant congenital melanocytic nevus"
* http://www.orpha.net#252202 "Constitutional mismatch repair deficiency syndrome"
* http://www.orpha.net#3071 "Costello syndrome"
* http://www.orpha.net#1553 "Curry-Jones syndrome"
* http://www.orpha.net#124 "Diamond-Blackfan anemia"
* http://www.orpha.net#284343 "DICER1 tumor-predisposition syndrome"
* http://www.orpha.net#870 "Down syndrome"
* http://www.orpha.net#733 "Familial adenomatous polyposis"
* http://www.orpha.net#84 "Fanconi anemia"
* http://www.orpha.net#404476 "Global developmental delay-lung cysts-overgrowth-Wilms tumor syndrome"
* http://www.orpha.net#377 "Gorlin syndrome"
* http://www.orpha.net#29072 "Hereditary pheochromocytoma-paraganglioma"
* http://www.orpha.net#357027 "Hereditary retinoblastoma"
* http://www.orpha.net#2929 "Juvenile polyposis syndrome"
* http://www.orpha.net#524 "Li-Fraumeni syndrome"
* http://www.orpha.net#144 "Lynch syndrome"
// DICER1-assoziiertes Tumorsyndrom (Mosaikform): bereits enthalten als ORPHA:284343 (Mosaikform — ORPHA unterscheidet nicht)
// Down-Syndrom (Mosaikform): bereits enthalten als ORPHA:870 (Mosaikform — ORPHA unterscheidet nicht)
// Li-Fraumeni-Syndrom (Mosaikform): bereits enthalten als ORPHA:524 (Mosaikform — ORPHA unterscheidet nicht)
* http://www.orpha.net#634461 "Mosaic neurofibromatosis type 1"
// Hereditäres Retinoblastom (Mosaikform): bereits enthalten als ORPHA:357027 (Mosaikform — ORPHA unterscheidet nicht)
* http://www.orpha.net#1052 "Mosaic variegated aneuploidy syndrome"
* http://www.orpha.net#2576 "Mulibrey nanism"
* http://www.orpha.net#652 "Multiple endocrine neoplasia type 1"
* http://www.orpha.net#247698 "Multiple endocrine neoplasia type 2A"
* http://www.orpha.net#247709 "Multiple endocrine neoplasia type 2B"
* http://www.orpha.net#636 "Neurofibromatosis type 1"
* http://www.orpha.net#647 "Nijmegen breakage syndrome"
* http://www.orpha.net#648 "Noonan syndrome"
* http://www.orpha.net#296 "Ollier disease"
* http://www.orpha.net#163634 "Maffucci syndrome"
* http://www.orpha.net#2780 "Osteopathia striata-cranial sclerosis syndrome"
* http://www.orpha.net#324299 "Multiple paragangliomas associated with polycythemia"
* http://www.orpha.net#2849 "Perlman syndrome"
* http://www.orpha.net#2869 "Peutz-Jeghers syndrome"
* http://www.orpha.net#661 "Congenital central hypoventilation syndrome"
* http://www.orpha.net#530313 "PIK3CA-related overgrowth syndrome"
* http://www.orpha.net#306498 "PTEN hamartoma tumor syndrome"
* http://www.orpha.net#231108 "Rhabdoid tumor predisposition syndrome"
// Rhabdoid-Tumor-Prädispositions-Syndrom 2: bereits enthalten als ORPHA:231108 (Orphanet unterscheidet RTPS1 (SMARCB1) und RTPS2 (SMARCA4) NICHT; beide Listeneinträge fallen auf 231108.)
* http://www.orpha.net#2909 "Rothmund-Thomson syndrome"
* http://www.orpha.net#71290 "Familial platelet disorder with associated myeloid malignancy"
* http://www.orpha.net#494433 "MIRAGE syndrome"
* http://www.orpha.net#2585 "Ataxia-pancytopenia syndrome"
* http://www.orpha.net#42738 "Severe congenital neutropenia"
* http://www.orpha.net#373 "Simpson-Golabi-Behmel syndrome"
* http://www.orpha.net#821 "Sotos syndrome"
* http://www.orpha.net#1775 "Dyskeratosis congenita"
* http://www.orpha.net#3380 "Trisomy 18 syndrome"
* http://www.orpha.net#805 "Tuberous sclerosis complex"
* http://www.orpha.net#892 "Von Hippel-Lindau disease"
* http://www.orpha.net#893 "WAGR syndrome"
* http://www.orpha.net#3447 "Weaver syndrome"
* http://www.orpha.net#910 "Xeroderma pigmentosum"
