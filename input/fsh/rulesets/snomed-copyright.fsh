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
