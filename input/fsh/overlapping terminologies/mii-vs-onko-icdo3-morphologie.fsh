ValueSet: MII_VS_Onko_ICDO3_Morphologie
Id: mii-vs-onko-icdo3-morphologie
Title: "MII VS Onkologie ICD-O-3 Morphologie"
Description: "Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-morphologie"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
// UNION beider Revisionen (Erste Revision 2014 + Zweite Revision 2019), jeweils
// versions-gepinnt: Bestandsdaten (2014-codiert, inkl. der in 3.2 gestrichenen
// Codes wie GIST 8936/1) UND aktuelle Daten validieren gegen dieses Binding.
// Revisionsscharfe Pruefung: mii-vs-onko-icdo3-morphologie-2014/-2019;
// Migration: mii-cm-onko-icdo3-transitions-2019. Hintergrund: beads dq9/14w.30.
* include codes from system http://terminology.hl7.org/CodeSystem/icd-o-3|2014 where concept descendent-of #M
* include codes from system http://terminology.hl7.org/CodeSystem/icd-o-3|2019 where concept descendent-of #M