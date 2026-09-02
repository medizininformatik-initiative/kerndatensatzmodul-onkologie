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
//   - code is fixed to SCT#399703000 "Integrated TNM category" — completes the
//     Typ-Achse (clinical/pathologic/integrated) and makes synthesized panels
//     queryable by code alone
// =============================================================================

Profile: MII_PR_Onko_TNM_Klassifikation_Synthetisiert
Parent: MII_PR_Onko_TNM_Klassifikation
Id: mii-pr-onko-tnm-klassifikation-synthetisiert
Title: "MII PR Onkologie TNM-Klassifikation (synthetisiert)"
Description: "Synthetisierte TNM-Klassifikation: Aggregat aus mehreren Meldungs-bezogenen TNM-Klassifikationen, das den Stand zum Entscheidungszeitpunkt (z. B. Tumorkonferenz) zusammenfasst. UICC-Regeln zur Stage-Auswahl (pTNM > cTNM, jüngste Bewertung innerhalb derselben Krankheitsphase, r-Präfix als Bruchpunkt) werden vom erzeugenden System angewendet. Provenienz wird über derivedFrom auf die Quell-Klassifikationen abgebildet."
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfileUK
* ^status = #active

// Integrated-Code: UICC nennt die c/p-Mischung fürs definitive Staging "integrated".
// SCT-Hierarchie-Hinweis siehe mii-vs-onko-tnm-klassifikation-typ.
* code = $SCT#399703000 "Integrated TNM category"

// Das Stadium ist der Zweck der Synthese: Erst hier werden T (z. B. Patho) +
// N (Patho) + M (Klinik) zusammengeführt und das Stadium berechenbar — am
// Meldungs-Panel bleibt value 0..1 (Patho-Meldungen liefern kein Stadium).
* value[x] 1..1

// TNM-Gesamtformel als generierte Darstellung (z. B. "ypT0 ypN0 cM0").
// MUSS mit den hasMember-Beobachtungen inkl. Präfix-Modifiern übereinstimmen und
// SOLL generiert werden (Referenzimplementierung: tnm-observation-to-text, GH #271) —
// niemals manuell gepflegt. Eigener Code wegen obs-7 (Observation.code ist 399703000).
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains tnmFormel 0..1 MS
* component[tnmFormel].code = MII_CS_Onko_TNM_Formel#tnm-formel "TNM-Formel"
* component[tnmFormel].value[x] only string
* component[tnmFormel] ^short = "Generierte TNM-Gesamtformel"
* component[tnmFormel] ^definition = "Zusammengeführte TNM-Gesamtformel als generierte Darstellung der gewinnenden Kategorie-Beobachtungen inklusive Präfixe (z. B. 'ypT0 ypN0 cM0'). Wird aus den hasMember-Referenzen abgeleitet und darf diesen nicht widersprechen."
* insert Translation(component[tnmFormel] ^short, de-DE, Generierte TNM-Gesamtformel)

// Erzeugendes System: Automatisierte Erzeugung (Skripte, ETL-Strecken) SOLL das
// System und dessen Version dokumentieren — leichtgewichtig über device→Device
// (Device.version = Algorithmusversion) und/oder vollständig über eine Provenance
// (activity = w3c#Derivation, agent.who = Device). Provenance ist optional (Audit).
* device MS
* device only Reference(Device)
* device ^short = "Erzeugendes System (bei automatisierter Synthese)"
* device ^definition = "Referenz auf das erzeugende System (Device) bei automatisierter Erzeugung. Die Algorithmus-/Softwareversion wird in Device.version dokumentiert; eine zusätzliche Provenance-Ressource (activity = Derivation) KANN für Audit-Anforderungen ergänzt werden."
* insert Translation(device ^short, de-DE, Erzeugendes System bei automatisierter Synthese)

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
