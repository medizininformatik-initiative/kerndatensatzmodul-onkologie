// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-basis (main): input/fsh/rulesets/crmi.fsh
//
// CRMI (Canonical Resource Management Infrastructure) metadata rulesets. The IG
// itself claims the CRMI shareable/publishable/computable ImplementationGuide
// profiles in sushi-config.yaml (`meta.profile`); these rulesets make the
// individual artifacts claim the matching CRMI profiles and carry the same
// metadata. The hl7.fhir.uv.crmi dependency in sushi-config.yaml is what makes
// them resolvable.
//
// Use CARET paths (`^…`) for resources declared with a FSH keyword — Profile,
// Extension, Logical, ValueSet, CodeSystem. Use INSTANCE paths for `InstanceOf:`
// resources such as CapabilityStatement or Parameters; those RuleSets carry the
// `…Instance` suffix.
//
// basis literals replaced by this repository's placeholders:
//   "2019+ Medical Informatics Initiative (MII)" → "{{COPYRIGHT_START_YEAR}}+ …"
//   the basis artifact-author contact email      → {{MODULE_AUTHOR_EMAIL}}
// The approval date and the artifact topic stay RuleSet PARAMETERS (as in
// basis); pass {{APPROVAL_DATE}} / {{TOPIC_NCI_CODE}} at the call site.
// ─────────────────────────────────────────────────────────────────────────────

// ── Resource-independent version policy ──────────────────────────────────────

RuleSet: CRMIVersionPolicyStrict
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy"
* ^extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes#package "Package"

RuleSet: CRMIVersionPolicyStrictInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy"
* extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes#package "Package"

// ── Copyright label ──────────────────────────────────────────────────────────
// basis notes that there is currently no resource type in the module where
// artifact-copyrightLabel is useful (and that the R5 cross-version extension is
// preferable where applicable) — the RuleSets are kept so a module that needs
// them does not re-invent the wording.

RuleSet: CRMICopyrightLabel
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-copyrightLabel"
* ^extension[=].valueString = "2022+ Medical Informatics Initiative (MII)"

RuleSet: CRMICopyrightLabelInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-copyrightLabel"
* extension[=].valueString = "2022+ Medical Informatics Initiative (MII)"

// ── Approval date (StructureDefinition, CapabilityStatement, IG) ─────────────
// Call with the module's approval date, e.g. `insert CRMIApprovalDate({{APPROVAL_DATE}})`.

RuleSet: CRMIApprovalDate(approvalDate)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-approvalDate"
* ^extension[=].valueDate = "{approvalDate}"

RuleSet: CRMIApprovalDateInstance(approvalDate)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-approvalDate"
* extension[=].valueDate = "{approvalDate}"

// ── Artifact topic (StructureDefinition, CapabilityStatement, IG, CS, VS) ────
// MII codes module topics with the NCI Thesaurus. Call with the system and the
// module's topic code, e.g.
//   insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, {{TOPIC_NCI_CODE}})
// Repeat the insert for each topic of the module.

RuleSet: CRMIArtifactTopic(system, code)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-topic"
* ^extension[=].valueCodeableConcept.coding[+] = {system}#{code}

RuleSet: CRMIArtifactTopicInstance(system, code)
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-topic"
* extension[=].valueCodeableConcept.coding[+] = {system}#{code}

// ── Artifact contributors ────────────────────────────────────────────────────
// Author = the module author ({{MODULE_AUTHOR_EMAIL}}). Editor / reviewer /
// endorser are the MII-wide governance bodies and apply to every KDS module —
// the same values sushi-config.yaml sets on the IG resource. Adjust only if your
// module's governance differs.

RuleSet: CRMIArtifactContributors
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* ^extension[=].valueContactDetail.telecom[+].system = #email
* ^extension[=].valueContactDetail.telecom[=].value = "thomas.debertshaeuser@charite.de"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-editor"
* ^extension[=].valueContactDetail.name = "Taskforce Core Data Set"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-reviewer"
* ^extension[=].valueContactDetail.name = "Interoperability Working Group"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-reviewer"
* ^extension[=].valueContactDetail.name = "National Steering Committee"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-endorser"
* ^extension[=].valueContactDetail.name = "Interoperability Working Group"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-endorser"
* ^extension[=].valueContactDetail.name = "National Steering Committee"
* ^extension[=].valueContactDetail.telecom[+].system = #url
* ^extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"

RuleSet: CRMIArtifactContributorsInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-author"
* extension[=].valueContactDetail.telecom[+].system = #email
* extension[=].valueContactDetail.telecom[=].value = "thomas.debertshaeuser@charite.de"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-editor"
* extension[=].valueContactDetail.name = "Taskforce Core Data Set"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-reviewer"
* extension[=].valueContactDetail.name = "Interoperability Working Group"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-reviewer"
* extension[=].valueContactDetail.name = "National Steering Committee"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-endorser"
* extension[=].valueContactDetail.name = "Interoperability Working Group"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-endorser"
* extension[=].valueContactDetail.name = "National Steering Committee"
* extension[=].valueContactDetail.telecom[+].system = #url
* extension[=].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"

// ── StructureDefinition ──────────────────────────────────────────────────────

RuleSet: CRMIShareableStructureDefinition
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
// crmi-shareablestructuredefinition verlangt experimental 1..1 — ohne diese
// Zeile meldete der QA-Report 98x 'StructureDefinition.experimental: minimum
// required = 1'. Alle Conformance-Artefakte dieses Moduls sind produktiv
// gepflegt, daher pauschal false; ein einzelnes SD kann es nach dem insert
// ueberschreiben.
* ^experimental = false

RuleSet: CRMIPublishableStructureDefinition
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"

RuleSet: CRMIKnowledgeCapabilitiesStructureDefinition
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #publishable

RuleSet: CRMIArtifactUsageLogicalModel
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-usage"
* ^extension[=].valueMarkdown = "Use this logical model as the module-specific information model for the Medical Informatics Initiative core dataset. The model describes clinically or administratively relevant information in a domain-oriented form and provides a bridge between the conceptual content specification and the corresponding technical FHIR profiles. It is a pattern for describing the intended content model and is not intended to be exchanged as a concrete FHIR resource instance. Implementers should use it to understand the scope, semantics, and structure of the module before applying the related FHIR profiles and mappings."

RuleSet: CRMIArtifactUsageProfile
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-usage"
* ^extension[=].valueMarkdown = "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."

RuleSet: CRMIArtifactUsageExtension
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-usage"
* ^extension[=].valueMarkdown = "Use this extension to exchange data for content of the corresponding Medical Informatics Initiative logical model that is not represented in the FHIR core resource structure."

// ── CapabilityStatement ──────────────────────────────────────────────────────

RuleSet: CRMIShareableCapabilityStatement
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecapabilitystatement"

RuleSet: CRMIPublishableCapabilityStatement
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecapabilitystatement"

RuleSet: CRMIKnowledgeCapabilitiesCapabilityStatement
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable

RuleSet: CRMIArtifactUsageCapabilityStatement
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-usage"
* extension[=].valueMarkdown = "Use this CapabilityStatement to determine the minimum RESTful server capabilities required for a system that implements the corresponding module of the Medical Informatics Initiative core dataset. It lists the FHIR resource types and MII profiles that SHALL be supported, together with required interactions, supported formats, and search parameters for read and search access. Systems claiming conformance to the module are expected to implement the listed capabilities according to the stated conformance expectations."

// ── CodeSystem ───────────────────────────────────────────────────────────────

RuleSet: CRMIShareableCodeSystem
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem"

RuleSet: CRMIPublishableCodeSystem
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"

RuleSet: CRMIKnowledgeCapabilitiesCodeSystem
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #publishable

RuleSet: CRMIKnowledgeCapabilitiesCodeSystemPublishable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #publishable

// ── ValueSet ─────────────────────────────────────────────────────────────────

RuleSet: CRMIShareableValueSet
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset"

RuleSet: CRMIPublishableValueSet
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset"

RuleSet: CRMIComputableValueSet
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"

RuleSet: CRMIKnowledgeCapabilitiesValueSet
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #publishable
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* ^extension[=].valueCode = #computable

// ── Onko-Aggregate (beads pxy) ───────────────────────────────────────────────
// Ein Insert pro Artefakt-Deklaration. Parameter zentral festgelegt:
//   approvalDate 2026-01-03 = Freigabedatum Release v2026.0.0 (git-Tag);
//   Topic NCI C3262 "Neoplasm" (Gate-A-Entscheid Migration, 2026-08-27).
// Bei neuen Releases nur HIER das Datum nachziehen.

RuleSet: OnkoCRMIProfile
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIKnowledgeCapabilitiesStructureDefinition
* insert CRMIArtifactUsageProfile
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-01-03)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributors
* insert CRMIMetaLicenseAndSource
* insert CRMIVersionAlgorithm
* insert CRMIEffectivePeriod(2026)

RuleSet: OnkoCRMIExtension
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIKnowledgeCapabilitiesStructureDefinition
* insert CRMIArtifactUsageExtension
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-01-03)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributors
* insert CRMIMetaLicenseAndSource
* insert CRMIVersionAlgorithm
* insert CRMIEffectivePeriod(2026)

RuleSet: OnkoCRMILogicalModel
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIKnowledgeCapabilitiesStructureDefinition
* insert CRMIArtifactUsageLogicalModel
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-01-03)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributors
* insert CRMIMetaLicenseAndSource
* insert CRMIVersionAlgorithm
* insert CRMIEffectivePeriod(2026)

RuleSet: OnkoCRMIValueSet
* insert CRMIShareableValueSet
* insert CRMIPublishableValueSet
* insert CRMIComputableValueSet
* insert CRMIKnowledgeCapabilitiesValueSet
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-01-03)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributors
* insert CRMIMetaLicenseAndSource
* insert CRMIVersionAlgorithm
* insert CRMIEffectivePeriod(2026)

RuleSet: OnkoCRMICodeSystem
* insert CRMIShareableCodeSystem
* insert CRMIPublishableCodeSystem
* insert CRMIKnowledgeCapabilitiesCodeSystem
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-01-03)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributors
* insert CRMIMetaLicenseAndSource
* insert CRMIVersionAlgorithm
* insert CRMIEffectivePeriod(2026)

RuleSet: OnkoCRMICapabilityStatement
* insert CRMIShareableCapabilityStatement
* insert CRMIPublishableCapabilityStatement
* insert CRMIKnowledgeCapabilitiesCapabilityStatement
* insert CRMIArtifactUsageCapabilityStatement
* insert CRMIVersionPolicyStrictInstance
* insert CRMIApprovalDateInstance(2026-01-03)
* insert CRMIArtifactTopicInstance(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributorsInstance

// URL-keyed-Varianten (beads pxy): SUSHI kollidiert bei ^extension[+]-Soft-
// Indexing, wenn das Parent-Profil bereits StructureDefinition.extension trägt
// (MII-Basis-Parents mit CRMI bzw. lokale Eltern). URL-Keying umgeht das.
RuleSet: CRMIMetadataStructureDefinitionUK(approvalDate, topicSystem, topicCode)
* ^extension[http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability][0].valueCode = #shareable
* ^extension[http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability][1].valueCode = #publishable
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes#package "Package"
* ^extension[http://hl7.org/fhir/StructureDefinition/resource-approvalDate].valueDate = "{approvalDate}"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-topic].valueCodeableConcept.coding[+] = {topicSystem}#{topicCode}
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-author].valueContactDetail.telecom[+].system = #email
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-author].valueContactDetail.telecom[=].value = "thomas.debertshaeuser@charite.de"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-editor].valueContactDetail.name = "Taskforce Core Data Set"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-reviewer][0].valueContactDetail.name = "Interoperability Working Group"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-reviewer][0].valueContactDetail.telecom[+].system = #url
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-reviewer][0].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-reviewer][1].valueContactDetail.name = "National Steering Committee"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-reviewer][1].valueContactDetail.telecom[+].system = #url
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-reviewer][1].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-endorser][0].valueContactDetail.name = "Interoperability Working Group"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-endorser][0].valueContactDetail.telecom[+].system = #url
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-endorser][0].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-endorser][1].valueContactDetail.name = "National Steering Committee"
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-endorser][1].valueContactDetail.telecom[+].system = #url
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-endorser][1].valueContactDetail.telecom[=].value = "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"

RuleSet: OnkoCRMIProfileUK
* insert CRMIShareableStructureDefinition
* insert CRMIPublishableStructureDefinition
* insert CRMIArtifactUsageProfileUK
* insert CRMIMetadataStructureDefinitionUK(2026-01-03, http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)

RuleSet: CRMIArtifactUsageProfileUK
* ^extension[http://hl7.org/fhir/StructureDefinition/artifact-usage].valueMarkdown = "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."

// ── Nachgepflegt aus base 2027.0.0-ballot.rc1 (User 2026-09-01) ───────────────
// Vier Bausteine, die base setzt und dem Modul bisher fehlten:
// crmi-license + package-source (beide in meta.extension), artifact-versionAlgorithm
// und resource-effectivePeriod. Die effectivePeriod nennt das Jahr der Ausgabe,
// die das Artefakt traegt — bei base 2027.

RuleSet: CRMIMetaLicenseAndSource
* ^meta.extension[+].url = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license"
* ^meta.extension[=].valueCode = #CC-BY-4.0
* ^meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
* ^meta.extension[=].extension[+].url = "packageId"
* ^meta.extension[=].extension[=].valueId = "de.medizininformatikinitiative.kerndatensatz.onkologie"
// ACHTUNG: Versionsliteral — bei /release-prepare mitziehen (steht nicht in
// version.fsh; beim Sprung auf 2027.0.0-ballot.rc1 wurde es hier vergessen).
* ^meta.extension[=].extension[+].url = "version"
* ^meta.extension[=].extension[=].valueString = "2027.0.0-ballot.rc1"
* ^meta.extension[=].extension[+].url = "uri"
* ^meta.extension[=].extension[=].valueUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"

RuleSet: CRMIMetaLicenseAndSourceInstance
* meta.extension[+].url = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license"
* meta.extension[=].valueCode = #CC-BY-4.0
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
* meta.extension[=].extension[+].url = "packageId"
* meta.extension[=].extension[=].valueId = "de.medizininformatikinitiative.kerndatensatz.onkologie"
// QA-Befund (60x 'Extension.url must be an absolute URL'): hier stand
// meta.extension[+].url = "version" — das [+] legte eine NEUE Top-Level-
// Extension mit relativem URL an, statt die zweite SUB-Extension der
// package-source zu werden. Nesting korrigiert und die in der Caret-Variante
// vorhandene uri-Sub-Extension nachgezogen. Versionsliteral: bei
// /release-prepare mitziehen.
* meta.extension[=].extension[+].url = "version"
* meta.extension[=].extension[=].valueString = "2027.0.0-ballot.rc1"
* meta.extension[=].extension[+].url = "uri"
* meta.extension[=].extension[=].valueUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"

RuleSet: CRMIVersionAlgorithm
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* ^extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"

RuleSet: CRMIEffectivePeriod(jahr)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[=].valuePeriod.start = "{jahr}"

// ── ConceptMap und SearchParameter (User 2026-09-01) ──────────────────────────
// Beides sind Konformitaetsressourcen mit eigenen CRMI-Profilen; sie werden als
// FSH-Instanzen deklariert, daher Instance-Pfade (ohne Caret).

RuleSet: OnkoCRMIConceptMap
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableconceptmap"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableconceptmap"
* insert CRMIMetaLicenseAndSourceInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* insert CRMIVersionPolicyStrictInstance
* insert CRMIApprovalDateInstance(2026-01-03)
* insert CRMIArtifactTopicInstance(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributorsInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension[=].valuePeriod.start = "2026"

RuleSet: OnkoCRMISearchParameter
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablesearchparameter"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablesearchparameter"
* insert CRMIMetaLicenseAndSourceInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* insert CRMIVersionPolicyStrictInstance
* insert CRMIApprovalDateInstance(2026-01-03)
* insert CRMIArtifactContributorsInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"

RuleSet: OnkoCRMILibrary
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablelibrary"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablelibrary"
* insert CRMIMetaLicenseAndSourceInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #shareable
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
* extension[=].valueCode = #publishable
* insert CRMIVersionPolicyStrictInstance
* insert CRMIApprovalDateInstance(2026-01-03)
* insert CRMIArtifactTopicInstance(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributorsInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm"
* extension[=].valueCoding = http://hl7.org/fhir/version-algorithm#semver "SemVer"

// Variante fuer CodeSystems mit FREMDEM Inhalt unter fremder Kanonical-URL
// (aktuell: UICC-TNM). Wie OnkoCRMICodeSystem, aber OHNE crmi-license — die
// Lizenz des Inhalts liegt beim Herausgeber der Klassifikation, nicht bei uns;
// der Rechtehinweis steht im copyright-Feld (RuleSet UICCCopyright).
RuleSet: OnkoCRMICodeSystemFremdinhalt
* insert CRMIShareableCodeSystem
* insert CRMIPublishableCodeSystem
* insert CRMIKnowledgeCapabilitiesCodeSystem
* insert CRMIVersionPolicyStrict
* insert CRMIApprovalDate(2026-01-03)
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C3262)
* insert CRMIArtifactContributors
* insert CRMIVersionAlgorithm
* insert CRMIEffectivePeriod(2026)
