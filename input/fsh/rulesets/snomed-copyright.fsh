// SNOMED-Lizenzhinweis in der Affiliate-Variante — gleiche Formulierung wie
// kerndatensatz-basis (RuleSet SnomedLicense): die von SNOMED International
// geforderte Fassung, relevant im Kontext der nationalen BfArM-Lizenz.
// Für definitorische Ressourcen (ValueSet/CodeSystem als FSH-Definition):
RuleSet: SNOMEDCopyrightForVS
* ^copyright = "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license."

// Für Instances (z. B. ConceptMaps mit Usage #definition) — dort ist copyright
// ein normales Feld, kein Caret-Element:
RuleSet: SNOMEDCopyrightForInstance
* copyright = "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license."

// ── UICC / TNM ────────────────────────────────────────────────────────────────
// Die TNM-Klassifikation ist urheberrechtlich geschuetztes Werk der UICC. Das
// Modul fuehrt die Codes als FHIR-CodeSystem unter der UICC-Kanonical-URL
// (special-url in sushi-config) — die Zusammenstellung ist unsere Arbeit, der
// Inhalt aber nicht unser Werk. Daher: Copyright-Vermerk statt einer
// CC-BY-Lizenzbehauptung.
RuleSet: UICCCopyright
* ^copyright = "Die TNM-Klassifikation maligner Tumoren ist urheberrechtlich geschuetzt: TNM Classification of Malignant Tumours © Union for International Cancer Control (UICC). Die hier gefuehrten Codes sind eine Zusammenstellung der im MII-Kerndatensatzmodul Onkologie verwendeten TNM-Kategorien und -Werte zum Zweck der FHIR-Validierung; sie ersetzen nicht die amtliche UICC-Ausgabe und begruenden keine eigenen Rechte an der Klassifikation. Nutzende benoetigen fuer den produktiven Einsatz die entsprechende UICC-Berechtigung."

RuleSet: UICCCopyrightForInstance
* copyright = "Die TNM-Klassifikation maligner Tumoren ist urheberrechtlich geschuetzt: TNM Classification of Malignant Tumours © Union for International Cancer Control (UICC). Die hier gefuehrten Codes sind eine Zusammenstellung der im MII-Kerndatensatzmodul Onkologie verwendeten TNM-Kategorien und -Werte zum Zweck der FHIR-Validierung; sie ersetzen nicht die amtliche UICC-Ausgabe und begruenden keine eigenen Rechte an der Klassifikation. Nutzende benoetigen fuer den produktiven Einsatz die entsprechende UICC-Berechtigung."
