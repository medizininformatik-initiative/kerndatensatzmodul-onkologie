Profile: MII_PR_Onko_Genetische_Variante
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante
Id: mii-pr-onko-genetische-variante
Title: "MII PR Onkologie Genetische Variante"
Description: "Genetische Variante wie im oBDS beschrieben"
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

// Strukturierte Gen-Identitaet (beads 14w.1): Das oBDS uebermittelt den Gennamen
// als Freitext (23.1, unten in note.text); fuer die strukturierte Sicht wird das
// vom MolGen-Profil geerbte component:gene-studied genutzt und an die Liste der
// onkologischen Marker-Gene gebunden. Binding EXTENSIBLE — die Liste deckt die
// gebraeuchlichen Marker ab, schliesst weitere Gene aber ausdruecklich nicht aus.
// Die Zuordnung Markertyp -> MolGen-Komponente (Exon, Fusion, Amplifikation,
// IHC, Zytogenetik) beschreibt die IG-Seite zu den Variantentypen.
* component[gene-studied] MS
* component[gene-studied].value[x] only CodeableConcept
* component[gene-studied].valueCodeableConcept from MII_VS_Onko_Marker_Gene_HGNC (extensible)
* insert Label(component[gene-studied].valueCodeableConcept, Untersuchtes Gen, Untersuchtes Gen als HGNC-Gensymbol - strukturierte Entsprechung des Freitext-Gennamens nach 23.1 oBDS)
* insert Translation(component[gene-studied].valueCodeableConcept ^short, de-DE, Untersuchtes Gen als HGNC-Gensymbol)

* note MS 
* note.text MS 
* insert Label(note.text, Genetische Variante Name, Genetische Variante Name gemäß 23.1 oBDS 2021)
* insert Translation(note.text ^short, de-DE, Genetische Variante Name)
* insert Translation(note.text ^definition, de-DE, Genetische Variante Name gemäß 23.1 oBDS 2021)

* interpretation MS
* interpretation ^slicing.discriminator.type = #type
* interpretation ^slicing.discriminator.path = "$this"
* interpretation ^slicing.rules = #open
* interpretation only CodeableConcept 
* interpretation contains oBDS 0..1
* interpretation[oBDS] from mii-vs-onko-genetische-variante-auspraegung (required)
* interpretation[oBDS].coding.system MS
* interpretation[oBDS].coding.code MS
* insert Label(interpretation[oBDS].coding, Genetische Variante Ausprägung, Genetische Variante Ausprägung gemäß 23.1 oBDS 2021)
* insert Translation(interpretation[oBDS].coding ^short, de-DE, Genetische Variante Ausprägung)
* insert Translation(interpretation[oBDS].coding ^definition, de-DE, Genetische Variante Ausprägung gemäß 23.2 oBDS 2021)

* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed
* value[x] only CodeableConcept 
* valueCodeableConcept 0..1 MS
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS


// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

// Referenz zu Specimen (optional)
* specimen 0..1 MS
* specimen only Reference(MII_PR_Onko_Specimen)
* specimen ^short = "Tumor-Specimen aus dem die Variante bestimmt wurde"
* specimen ^definition = "Referenz auf die Tumorprobe (Specimen), aus der die genetische Variante bestimmt wurde. Optional, da die Methodik auch über GenomicStudy abgebildet werden kann."

Mapping: FHIR-oBDSGenetischeVariante
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Genetische_Variante
* -> "23" "Genetische Variante"
* note -> "23.1" "Genetische Variante Name" 
* interpretation -> "23.2" "Genetische Variante Ausprägung" 
