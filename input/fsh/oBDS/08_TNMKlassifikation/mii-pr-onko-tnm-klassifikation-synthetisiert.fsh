// =============================================================================
// MII PR Onkologie TNM-Klassifikation (synthetisiert)
// -----------------------------------------------------------------------------
// Aggregates multiple Meldungs-bezogene TNM-Klassifikationen into a single
// "stage at decision time" view. Typical use: Tumorkonferenz consumes the
// per-Meldung Klassifikationen (Diagnose-Meldung -> cTNM, OP-/Pathologie-
// Meldung -> pTNM, Verlauf-Meldung -> recurrence) and needs ONE coherent
// stage to base treatment recommendations on.
//
// UICC merge rules applied by the producing system (not enforced here):
//   - pTNM trumps cTNM where available
//   - Within the same disease state, the most recent assessment wins
//   - r-prefix marks a new baseline (chain break)
//   - Categories not reassessed carry forward from the previous Meldung
//
// Discriminator from Meldungs-level Klassifikation:
//   - meta.profile carries this profile's canonical
//   - derivedFrom is mandatory and references the source Klassifikationen
//   - code uses SCT#399390009 ("TNM stage grouping" - mixed/derived)
// =============================================================================

Profile: MII_PR_Onko_TNM_Klassifikation_Synthetisiert
Parent: MII_PR_Onko_TNM_Klassifikation
Id: mii-pr-onko-tnm-klassifikation-synthetisiert
Title: "MII PR Onkologie TNM-Klassifikation (synthetisiert)"
Description: "Synthetisierte TNM-Klassifikation: Aggregat aus mehreren Meldungs-bezogenen TNM-Klassifikationen, das den Stand zum Entscheidungszeitpunkt (z. B. Tumorkonferenz) zusammenfasst. UICC-Regeln zur Stage-Auswahl (pTNM > cTNM, jüngste Bewertung innerhalb derselben Krankheitsphase, r-Präfix als Bruchpunkt) werden vom erzeugenden System angewendet. Provenienz wird über derivedFrom auf die Quell-Klassifikationen abgebildet."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

// derivedFrom is the defining feature of a synthesized stage.
* derivedFrom 1..* MS
* derivedFrom only Reference(MII_PR_Onko_TNM_Klassifikation)
* derivedFrom ^short = "Quell-Klassifikationen"
* derivedFrom ^definition = "Pflicht-Referenzen auf die zugrunde liegenden Meldungs-bezogenen TNM-Klassifikationen, aus denen die synthetisierte Klassifikation abgeleitet wurde."
* insert Translation(derivedFrom ^short, de-DE, Quell-Klassifikationen)
* insert Translation(derivedFrom ^definition, de-DE, Pflicht-Referenzen auf die zugrunde liegenden Meldungs-bezogenen TNM-Klassifikationen )

// effectiveDateTime is the decision date, not a clinical assessment date.
* effectiveDateTime ^short = "Entscheidungsdatum"
* effectiveDateTime ^definition = "Datum, zu dem die synthetisierte TNM-Klassifikation gilt — typischerweise das Datum der Tumorkonferenz oder Therapieentscheidung."
* insert Translation(effectiveDateTime ^short, de-DE, Entscheidungsdatum)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Tumorkonferenz oder Therapieentscheidung )

// hasMember references the WINNING per-category observations (typically reused
// from one of the source Klassifikationen rather than duplicated).
* hasMember ^short = "Auswahl der gewinnenden T/N/M/L/V/Pn/S/a/r/y-Beobachtungen"
* hasMember ^definition = "Referenzen auf die per UICC-Regel ausgewählten Per-Kategorie-Beobachtungen aus den derivedFrom-Quellen."
