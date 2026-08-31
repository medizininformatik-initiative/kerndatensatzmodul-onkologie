// Onkologische Marker-Gene der §65c-Genetik-Markerliste (beads 14w.1).
// Quelle: input/examples-source/genetik/Liste-Gen-Marker-Biomarker_2023-11-27.xlsx
// (Blatt "Gen"), 41 Gensymbole; 40 davon in HGNC aufloesbar und hier gelistet.
// NICHT enthalten (bewusst):
//   - IGHV: keine Einzelgen-, sondern eine Genfamilie (IGHV-Mutationsstatus bei
//     CLL) — in HGNC nur als Einzelsegmente IGHV1-2 usw. gefuehrt.
//   - Immunhistochemie-Pseudoeintraege der Liste (ALK_IHC, HER2_IHC, PD-L1_IHC,
//     p16_IHC, p53_IHC, POLE_IHC, ROS1_IHC, TRK-A/B/C_IHC, panTRK_IHC, IDH1_IHC,
//     L1CAM_IHC): keine Gene — Abbildung ueber das IHC-Profil des Moduls MTB.
//   - Zytogenetische Angaben (del(17)(p13), LOH 1p/19q-Ko-Deletion): keine Gene —
//     Abbildung ueber component:cytogenetic-location (ISCN).
// Das Binding im Profil ist EXTENSIBLE: Die Liste bildet die gebraeuchlichen
// onkologischen Marker-Gene ab, ist aber ausdruecklich nicht abschliessend.
ValueSet: MII_VS_Onko_Marker_Gene_HGNC
Id: mii-vs-onko-marker-gene-hgnc
Title: "MII VS Onkologie Marker-Gene HGNC"
Description: "Gensymbole der onkologisch gebraeuchlichen Marker-Gene aus der Genetik-Markerliste der §65c-Plattform, als HGNC-Gen-IDs. Auswahlunterstuetzung fuer Observation.component:gene-studied im Profil MII_PR_Onko_Genetische_Variante (extensible gebunden — weitere Gene sind zulaessig). Nicht-Gene der Quellliste (IHC-Marker, zytogenetische Aberrationen) sind bewusst ausgeschlossen; siehe die Kommentare in der FSH-Quelle und die IG-Seite zu den Variantentypen."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

* http://www.genenames.org/geneId#HGNC:76 "ABL1"
* http://www.genenames.org/geneId#HGNC:427 "ALK"
* http://www.genenames.org/geneId#HGNC:1097 "BRAF"
* http://www.genenames.org/geneId#HGNC:1100 "BRCA1"
* http://www.genenames.org/geneId#HGNC:1101 "BRCA2"
* http://www.genenames.org/geneId#HGNC:1133 "BTK"
* http://www.genenames.org/geneId#HGNC:2561 "CXCR4"
* http://www.genenames.org/geneId#HGNC:3236 "EGFR"
* http://www.genenames.org/geneId#HGNC:3430 "ERBB2"
* http://www.genenames.org/geneId#HGNC:3689 "FGFR2"
* http://www.genenames.org/geneId#HGNC:3765 "FLT3"
* http://www.genenames.org/geneId#HGNC:5382 "IDH1"
* http://www.genenames.org/geneId#HGNC:5383 "IDH2"
* http://www.genenames.org/geneId#HGNC:6342 "KIT"
* http://www.genenames.org/geneId#HGNC:13726 "KMT2C"
* http://www.genenames.org/geneId#HGNC:6407 "KRAS"
* http://www.genenames.org/geneId#HGNC:6470 "L1CAM"
* http://www.genenames.org/geneId#HGNC:6840 "MAP2K1"
* http://www.genenames.org/geneId#HGNC:7029 "MET"
* http://www.genenames.org/geneId#HGNC:7059 "MGMT"
* http://www.genenames.org/geneId#HGNC:7562 "MYD88"
* http://www.genenames.org/geneId#HGNC:7765 "NF1"
* http://www.genenames.org/geneId#HGNC:7910 "NPM1"
* http://www.genenames.org/geneId#HGNC:7989 "NRAS"
* http://www.genenames.org/geneId#HGNC:7997 "NRG1"
* http://www.genenames.org/geneId#HGNC:8031 "NTRK1"
* http://www.genenames.org/geneId#HGNC:8032 "NTRK2"
* http://www.genenames.org/geneId#HGNC:8033 "NTRK3"
* http://www.genenames.org/geneId#HGNC:8803 "PDGFRA"
* http://www.genenames.org/geneId#HGNC:8975 "PIK3CA"
* http://www.genenames.org/geneId#HGNC:9177 "POLE"
* http://www.genenames.org/geneId#HGNC:9864 "RARA"
* http://www.genenames.org/geneId#HGNC:9967 "RET"
* http://www.genenames.org/geneId#HGNC:10261 "ROS1"
* http://www.genenames.org/geneId#HGNC:10680 "SDHA"
* http://www.genenames.org/geneId#HGNC:10681 "SDHB"
* http://www.genenames.org/geneId#HGNC:10682 "SDHC"
* http://www.genenames.org/geneId#HGNC:10683 "SDHD"
* http://www.genenames.org/geneId#HGNC:25941 "TET2"
* http://www.genenames.org/geneId#HGNC:11998 "TP53"
