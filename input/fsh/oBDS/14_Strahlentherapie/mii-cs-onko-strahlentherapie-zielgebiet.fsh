CodeSystem: MII_CS_Onko_Strahlentherapie_Zielgebiet
Id: mii-cs-onko-strahlentherapie-zielgebiet
Title: "MII CS Onkologie Strahlentherapie Zielgebiet"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Zielgebiet von Strahlentherapie"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-zielgebiet"
* ^content = #complete
// Bereich: ZNS
* #1.1 "Ganzhirn (Neurokranium, inklusive Meningen)"
* #1.2 "Teilhirn (frontal/parietal/occipital/temporal/Kleinhirn)"
* #1.3 "Neuroachse/Rückenmark"
* #1.4 "Hypophyse"
* #1.5 "Hirn sonstiges"

//Bereich: Kopf-Hals
* #2.1 "Auge (r, l)"
* #2.2 "Nase/Nasennebenhöhle"
* #2.3 "Mundhöhle inklusive Mundhöhlenvorhof"
* #2.4 "Ohr (r, l)"
* #2.5 "Speicheldrüse (r, l)"
* #2.6 "Pharynx"
* #2.7 "Nasopharynx"
* #2.8 "Oropharynx"
* #2.9 "Hypopharynx"
* #2.10 "Larynx"
* #2.11 "Schilddrüse"
* #2.12 "Kopf-Hals sonstige"

//Bereich: Thorax
* #3.1 "Mamma als Ganzbrust (r, l)"
* #3.2 "Mamma als Teilbrust (r, l)"
* #3.3 "Thoraxwand, gegebenenfalls r, l"
* #3.4 "Lunge (r, l)"
* #3.5 "Ösophagus"
* #3.6 "Mediastinum (mediastinaler Lymphabfluss ist in Nummer 9 zu kodieren)"
* #3.7 "Thymus"
* #3.8 "Thorax sonstige"

//Bereich: "Abdomen"
* #4.1 "Magen"
* #4.2 "Pankreas"
* #4.3 "Leber, auch bei Teilbestrahlung"
* #4.4 "Milz"
* #4.5 "Niere (r, l)"
* #4.6 "Nebenniere (r, l)"
* #4.7 "Retroperitoneum (z. B. Sarkome)"
* #4.8 "Ureter (r, l)"
* #4.9 "Bauchwand (z. B. Sarkome)"
* #4.10 "Oberbauch"
* #4.11 "Gallengänge"
* #4.12 "Gallenblase"
* #4.13 "Abdomen sonstige"

//Bereich: Becken (Organe)
* #5.1 "Rektum"
* #5.2 "Analbereich"
* #5.3 "Harnblase"
* #5.4 "Prostata"
* #5.5 "Hoden (r, l)"
* #5.6 "Penis"
* #5.7 "Uterus"
* #5.8 "Zervix"
* #5.9 "Vulva"
* #5.10 "Vagina"
* #5.11 "Beckenwand"
* #5.12 "Becken sonstige"

//Bereich: Knochen/Skelettsystem
* #6.1 "Schädel"
* #6.2 "Schädelbasis"
* #6.3 "Orbita (r, l)"
* #6.4 "Halswirbelsäule"
* #6.5 "Brustwirbelsäule"
* #6.6 "Lendenwirbelsäule"
* #6.7 "Sacrum /Coccygeum"
* #6.8 "Rippen (r, l)"
* #6.9 "Sternum"
* #6.10 "Schulter (r, l)"
* #6.11 "Oberarm (r, l)"
* #6.12 "Unterarm (r, l)"
* #6.13 "Hand (r, l)"
* #6.14 "Becken (r, l)"
* #6.15 "Hüfte (r, l)"
* #6.16 "Oberschenkel (r, l)"
* #6.17 "Unterschenkel (r, l)"
* #6.18 "Fuß (r, l)"
* #6.19 "Knochen sonstige"

//Bereich: Bindegewebe (Subkutangewebe, Fettgewebe, Muskeln, anderes Bindegewebe)
* #7.1 "Kopf, Gesicht, Hals"
* #7.2 "obere Extremität ink* #lusive Schulter (r, l)"
* #7.3 "untere Extremität und Hüfte (r, l)"
* #7.4 "Thorax"
* #7.5 "Abdomen"
* #7.6 "Becken"
* #7.7 "Stammes o. n. A."
* #7.8 "mehrere Bereiche überlappend"
* #7.9 "sonstige Weichteile o. n. A."

//Bereich: Haut
* #8.1 "Ganzhaut"
* #8.2 "Teilbereiche"

// Bereich: Lymphabflussregionen und Lymphknoten
* #9.1 "Cervikale Lymphknoten (r, l)"
* #9.2 "Supra-/infraclavikuläre Lymphknoten (r, l)"
* #9.3 "Axilläre Lymphknoten (r, l)"
* #9.4 "Retrosternale/sternale/Mammaria interna Lymphknoten"
* #9.5 "Mediastinale Lymphknoten"
* #9.6 "Hiläre Lymphknoten"
* #9.7 "Intraabdominale Lymphknoten (z. B. subphrenisch, perigastrisch, peripankreatisch, Leber-, Milzhilus)"
* #9.8 "Paraaortale/paracavale Lymphknoten"
* #9.9 "Retroperitoneale Lymphknoten"
* #9.10 "Beckenlymphabfluss (r, l) (Iliakal commun, extern, intern, obturatorisch, präsakral)"
* #9.11 "Inguinale Lymphknoten (r, l)"
* #9.12 "Involved Node"
* #9.13 "Involved Site"
* #9.14 "Involved Field"
* #9.15 "Sonstige Lymphknoten"

// Bereich: Spezielle Zielgebiete
* #10.1 "Ganzkörperbestrahlung bei allogener Stammzelltransplantation"
* #10.2 "operative Zugangswege"
* #10.3 "Sonstige, nicht genannte Zielgebiete"