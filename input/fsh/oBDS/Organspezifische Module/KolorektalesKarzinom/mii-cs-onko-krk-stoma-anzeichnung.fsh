CodeSystem: MII_CS_Onko_KRK_Stoma_Anzeichnung
Id: mii-cs-onko-krk-stoma-anzeichnung
Title: "MII CS Onkologie KRK Stoma Anzeichnung"
Description: "oBDS-basiertes Codesystem für die präoperative Anzeichnung der Stoma-Position beim Rektumkarzinom"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-stoma-anzeichnung"
* ^count = 5

* #D "Anzeichnung durchgeführt" "Präoperative Anzeichnung der Stoma-Position wurde durchgeführt"
* #N "Anzeichnung nicht durchgeführt" "Präoperative Anzeichnung der Stoma-Position wurde nicht durchgeführt"
* #K "Kein Stoma" "Kein Stoma geplant oder erforderlich"
* #S "Stoma angelegt, Anzeichnungsstatus unbekannt" "Stoma wurde angelegt, aber der Status der präoperativen Anzeichnung ist unbekannt"
* #U "Unbekannt" "Status der präoperativen Stoma-Anzeichnung ist unbekannt"