// =============================================================================
// MII Onkologie TNM-Synthese Algorithmus — versionierte Library-Definition
// -----------------------------------------------------------------------------
// Diese Library-Resource macht den Synthese-Algorithmus zitierbar und
// versionierbar. Provenance-Resources, die synthetisierte TNM-Klassifikationen
// als Output dokumentieren, referenzieren diese Library mit Version, sodass
// nachvollziehbar bleibt, welche Algorithmus-Version welche Outputs erzeugt hat.
//
// Bei Methoden-Updates wird die Version gebumpt:
//   - Patch (1.0.x): Bugfix ohne Output-Änderung
//   - Minor (1.x.0): zusätzliche Features (neue Phase, neue Symbol-Erkennung)
//   - Major (x.0.0): Breaking Change am Output (geänderte Merge-Regel)
//
// Implementation: .claude/scripts/synthesize_tnm/ (Python, stdlib-only).
// =============================================================================

Instance: mii-lib-onko-synthesize-tnm
InstanceOf: Library
Usage: #definition
Title: "MII Onkologie TNM-Synthese Algorithmus"
Description: "Deterministischer Algorithmus zur Synthese einer TNM-Klassifikation aus mehreren Meldungs-bezogenen Quell-Klassifikationen. Implementiert UICC General Rules nach Manual der Krebsregistrierung Kap. 6 (Stegmaier 2019). Drei Phasen: primary (kein y/r), post-neoadjuvant (y), recurrence (r). Symbol-Lesen aus hasMember (mii-pr-onko-tnm-{y,r,a,m}-symbol). Pre-therapeutic intentional NICHT Phase: nicht aus TNM-Daten ableitbar (Biopsien können pTNM ergeben), gehört in Workflow-Kontext (Tumorkonferenz.category=praeth)."
* insert OnkoCRMILibrary
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Library/mii-lib-onko-synthesize-tnm"
* version = "1.0.0"
* name = "MIIOnkoSynthesizeTNM"
* status = #active
* experimental = false
* type = http://terminology.hl7.org/CodeSystem/library-type#logic-library
* publisher = "Medizininformatik-Initiative"
* contact.name = "Medizininformatik-Initiative"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.medizininformatik-initiative.de"

* relatedArtifact[+].type = #documentation
* relatedArtifact[=].label = "README mit Algorithmus-Doku, ETL-Integration und Performance-Notes"
* relatedArtifact[=].url = "https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/main/.claude/scripts/synthesize_tnm/README.md"

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].label = "UICC General Rules / Best-of-Prozess"
* relatedArtifact[=].citation = "Stegmaier C, Hentschel S, Hofstädter F, Katalinic A, Tillack A, Klinkhammer-Schalke M (Hg.). Das Manual der Krebsregistrierung. W. Zuckschwerdt Verlag, München. 2019. ISBN 978-3-86371-165-8. Kap. 6 'Datenzusammenführung, -speicherung und Best-of-Prozess'."

* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].label = "UICC TNM 8th Edition"
* relatedArtifact[=].citation = "Brierley JD, Gospodarowicz MK, Wittekind C (Hg.). TNM Classification of Malignant Tumours, 8th Edition. Wiley-Blackwell, Oxford. 2017. ISBN 978-1-119-26357-9."
