CodeSystem: MII_CS_Onko_Therapieplanung_Typ
Id: mii-cs-onko-therapieplanung-typ
Title: "MII CS Onkologie Therapieplanung Typ"
Description: "oBDS-spezifisches Codesystem für den Therapieplanungstyp"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^content = #complete
* #praeth "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
* #postop "postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)"
* #postth "posttherapeutische Tumorkonferenz (manche Tumoren werden nicht operiert)"
* #ther "Therapieplanung ohne Tumorkonferenz"