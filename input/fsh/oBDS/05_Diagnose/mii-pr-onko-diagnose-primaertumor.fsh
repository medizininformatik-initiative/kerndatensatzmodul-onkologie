Profile: MII_PR_Onko_Diagnose_Primaertumor
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Id: mii-pr-onko-diagnose-primaertumor
Title: "MII PR Onkologie Diagnose Primärtumor"
Description: "Dieses Profil beschreibt die Diagnose des Primärtumors (bzw. der primären hämatologisch-myeloneoplastischen Erkrankung) und basiert auf dem MII KDS Modul Diagnose."
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfileUK
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
* insert Translation(^title, de-DE, Onkologische Diagnose im Rahmen einer onkologischen Erkrankung)
* insert Translation(^description, de-DE, Diagnose des Primärtumors bzw. der primären hämatologisch-myeloneoplastischen Erkrankung im Rahmen einer onkologischen Erkrankung\, basierend auf dem MII KDS Modul Diagnose)
* meta.profile 0..* MS
// Tumor-ID (Tumoridentität) — bündelt alle Ressourcen eines Tumors, ermöglicht Zuordnung bei Mehrfachtumoren
* identifier 0..* MS
* identifier ^short = "Tumor-ID (Tumoridentität)"
* identifier ^definition = "Lokale Tumor-Identität zur Bündelung aller Ressourcen eines Tumors (Therapie/Verlauf via reasonReference/focus) und zur Unterscheidung bei Mehrfachtumoren. In Primärsystemen als Klartext-ID nutzbar; für die MII-Nutzung MUSS dieser Identifier ebenfalls pseudonymisiert werden (analog zur Patienten-Pseudonymisierung, MII Base). Der Wert ist NICHT bundesweit eindeutig — 'system' ist standort-/quellspezifisch zu vergeben."
* identifier.system 0..1 MS
* identifier.value 0..1 MS
* encounter 0..1 MS
* subject 1..1 MS
* subject only Reference(Patient)

// Krebsregister-Meldepflicht-Menge als Warning-Invariante (extensible-Semantik):
// Das required-Binding des Basis-Profils auf das volle ICD-10-GM-VS darf nicht
// abgeschwächt werden — die Invariante warnt bei Codes außerhalb von
// C00-C97 / D00-D09 / D32-D33 / D35.2-D35.4 / D37-D48, ohne hart zu invalidieren.
* code.coding[icd10-gm] obeys onko-icd-meldepflicht
* verificationStatus 0..1 MS 
* verificationStatus.coding ^slicing.discriminator.type = #pattern
* verificationStatus.coding ^slicing.discriminator.path = "$this"
* verificationStatus.coding ^slicing.rules = #open
* verificationStatus.coding contains
    condition-ver-status 0..1 MS and
    primaertumorDiagnosesicherung 0..1 MS
* verificationStatus.coding[condition-ver-status] ^patternCoding.system = $condition-ver-status
* verificationStatus.coding[condition-ver-status] from $verification-status-vs (required)
* verificationStatus.coding[primaertumorDiagnosesicherung] ^patternCoding.system = $mii-cs-onko-primaertumor-diagnosesicherung
* verificationStatus.coding[primaertumorDiagnosesicherung] from mii-vs-onko-primaertumor-diagnosesicherung (required)
* verificationStatus.coding[primaertumorDiagnosesicherung].code 1.. MS
* verificationStatus.coding[primaertumorDiagnosesicherung].system 1.. MS
* verificationStatus.coding[primaertumorDiagnosesicherung] ^short = "Diagnosesicherung gemäß oBDS"
* verificationStatus.coding[primaertumorDiagnosesicherung] ^definition = "Art der Diagnosesicherung nach 5.7 oBDS 2021"
* insert Translation(verificationStatus.coding[primaertumorDiagnosesicherung] ^short, de-DE, Diagnosesicherung gemäß oBDS )
* insert Translation(verificationStatus.coding[primaertumorDiagnosesicherung] ^definition, de-DE, Art der Diagnosesicherung nach 5.7 oBDS 2021 )

* bodySite.coding ^slicing.discriminator.type = #pattern
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains
    primaertumorSeitenlokalisation 0..1 MS and 
    icd-o-3 0..1 MS
* bodySite.coding[primaertumorSeitenlokalisation] from mii-vs-onko-seitenlokalisation
* bodySite.coding[primaertumorSeitenlokalisation].system 1.. MS
* bodySite.coding[primaertumorSeitenlokalisation].system = $mii-cs-onko-seitenlokalisation
* bodySite.coding[primaertumorSeitenlokalisation].code 1.. MS
* insert Label (bodySite.coding[primaertumorSeitenlokalisation], Seitenlokalisation des Primärtumors gemäß oBDS,Seitenlokalisation des Primärtumors nach 5.8 oBDS 2021)
* insert Translation(bodySite.coding[primaertumorSeitenlokalisation] ^short, de-DE, Seitenlokalisation des Primärtumors gemäß oBDS )
* insert Translation(bodySite.coding[primaertumorSeitenlokalisation] ^definition, de-DE, Seitenlokalisation des Primärtumors nach 5.8 oBDS 2021 )

* bodySite.coding[icd-o-3].system 1.. MS
* bodySite.coding[icd-o-3].system = $ICDO3
* bodySite.coding[icd-o-3].code 1.. MS
// Binding auf coding-Ebene (nicht .code): Bei nacktem code kann der Validator das
// System nicht bestimmen, sobald das VS mehrere Versions-Kanten hat (Union 2014+2019).
* bodySite.coding[icd-o-3] from MII_VS_Onko_ICDO3_Topographie (required)
* insert Label (bodySite.coding[icd-o-3], ICD-O-Topographie, Topographie des Primärtumors nach ICD-O-3 nach 5.4 oBDS 2021)
* insert Translation(bodySite.coding[icd-o-3] ^short, de-DE, ICD-O-Topographie )
* insert Translation(bodySite.coding[icd-o-3] ^definition, de-DE, Topographie des Primärtumors nach ICD-O-3 nach 5.4 oBDS 2021 )

* evidence 0..1 MS
* evidence.detail MS
* evidence.detail only Reference(MII_PR_Onko_Liste_Evidenz_Erstdiagnose)
* insert Label (evidence.detail, Evidenz für Erstdiagnose, Liste aller für die Erstdiagnose ausschlaggebenden Beobachtungen)
* insert Translation(evidence.detail ^short, de-DE, Evidenz für Erstdiagnose  )
* insert Translation(evidence.detail ^definition, de-DE, Liste aller für die Erstdiagnose ausschlaggebenden Beobachtungen)

* extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    MII_EX_Onko_Histology_Morphology_Behavior_ICDO3 named morphology-behavior-icdo3 0..* MS and
    http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing named occurredFollowing 0..* MS and
    http://hl7.org/fhir/StructureDefinition/condition-dueTo named dueTo 0..* MS and
    MII_EX_Onko_Transformation_Von named transformationVon 0..* MS
* insert Label (extension[morphology-behavior-icdo3], ICD-O-Morphologie, Morphologie des Primärtumors nach ICD-O-3 nach 6.3 oBDS)
* insert Translation(extension[morphology-behavior-icdo3] ^short, de-DE, ICD-O-Morphologie)
* insert Translation(extension[morphology-behavior-icdo3] ^definition, de-DE, Morphologie des Primärtumors nach ICD-O-3 nach 6.3 oBDS)
// Bewusste Asymmetrie (beads agi): an der Diagnose 0..* (gemischte Histologie,
// Re-Klassifikation im Verlauf); die Histologie-Observation dokumentiert dagegen
// je Befund genau EINE Morphologie (value 1..1) mit Specimen- und Datumskontext.
* extension[morphology-behavior-icdo3] ^comment = "An der Diagnose können mehrere Morphologie-Angaben stehen (0..*) — etwa bei gemischter Histologie oder Re-Klassifikation im Krankheitsverlauf. Befundbezogen wird jede Morphologie zusätzlich als Histologie-Observation (mii-pr-onko-histologie-icdo3) dokumentiert: dort genau eine Morphologie je Befund, mit Specimen- und Datumsbezug."

// Zwei orthogonale Achsen (beads 14w.9):
// occurredFollowing = rein ZEITLICH "trat auf nach" — Ziel kann eine registrierte
// Onko-Diagnose ODER eine nur textlich bekannte frühere Tumorerkrankung sein.
// transformationVon = KAUSAL "ist Transformation von" (gleiche Tumor-Linie),
// NUR wenn das Register-Regelwerk eine neue Entität führt (MDS→AML, ZNS /0→/3).
// CUP-Auflösung (Best-Of) ist KEINE zweite Diagnose: dieselbe Condition wird
// aktualisiert (Tumor-ID/Datum bleiben) — Ziel nur registrierte Onko-Diagnose.
* extension[occurredFollowing] ^short = "Frühere Tumorerkrankungen (zeitliche Abfolge)"
* extension[occurredFollowing] ^definition = "Verweis auf frühere Tumorerkrankungen, nach denen die aktuelle Diagnose aufgetreten ist — als registrierte onkologische Diagnose oder als nur anamnestisch bekannte frühere Tumorerkrankung. Rein zeitliche Abfolge; für Transformationen derselben Tumor-Linie ist die Extension transformationVon zu verwenden."
* extension[occurredFollowing].valueReference only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_Onko_Fruehere_Tumorerkrankung)
// dueTo = KAUSAL "wurde verursacht durch" (HL7-Standard): therapieassoziierte
// Sekundärmalignome (t-AML nach Chemotherapie, radiogenes Sarkom nach Radiatio).
// NICHT Teil des oBDS — über die Registermeldung hinausgehender FHIR-Mehrwert,
// daher ohne oBDS-Mapping.
* extension[dueTo] ^short = "Verursacht durch (therapieassoziierte Sekundärmalignome)"
* extension[dueTo] ^definition = "Verursachung dieser Diagnose durch eine frühere Erkrankung oder Therapie (HL7-Standardextension condition-dueTo) — z. B. therapiebedingte myeloische Neoplasie (9920/3) nach Chemotherapie (Verweis auf MedicationStatement) oder radiogenes Sarkom nach Strahlentherapie (Verweis auf Procedure). Nicht Teil des oBDS; Abgrenzung zu transformationVon (Linien-Kontinuität) siehe IG-Seite."
* insert Translation(extension[dueTo] ^short, de-DE, Verursacht durch — therapieassoziierte Sekundärmalignome)
* extension[dueTo].valueReference only Reference(MII_PR_Onko_Strahlentherapie or MII_PR_Onko_Systemische_Therapie or MII_PR_Onko_Systemische_Therapie_Medikation or MII_PR_Onko_Diagnose_Primaertumor or MII_PR_Onko_Fruehere_Tumorerkrankung)
* extension[transformationVon] ^short = "Transformation aus registriertem Primärtumor"
* extension[transformationVon] ^definition = "Kennzeichnet diese Diagnose als Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie — für Konstellationen, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Die CUP-Auflösung nach der Best-Of-Regel (Manual Kap. 6.2) ist davon abzugrenzen: Dort wird dieselbe Entität aktualisiert (Tumor-ID und Diagnosedatum bleiben erhalten), es entsteht keine zweite Diagnose-Ressource."
* insert Translation(extension[transformationVon] ^short, de-DE, Transformation aus registriertem Primärtumor)

* extension[Feststellungsdatum] 1..1 MS


Mapping: FHIR-oBDS-Diagnose
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Diagnose_Primaertumor
* -> "5" "Diagnose"
* code.coding[icd10-gm].code -> "5.1" "Primärtumor Tumordiagnose ICD Code"
* code.coding[icd10-gm].version -> "5.2" "Primärtumor Tumordiagnose ICD-Version"
* code.text -> "5.3" "Primärtumor Tumordiagnose Text"
* bodySite.coding[icd-o-3].code -> "5.4" "Primärtumor Topographie ICD-O"
* bodySite.coding[icd-o-3].version -> "5.5" "Primärtumor Topographie ICD-O-Version"
* extension[Feststellungsdatum] -> "5.6" "Primärtumor Diagnosedatum"
* verificationStatus.coding[primaertumorDiagnosesicherung].code -> "5.7" "Primärtumor Diagnosesicherung"
* bodySite.coding[primaertumorSeitenlokalisation].code -> "5.8" "Primärtumor Seitenlokalisation"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.code -> "6.3" "Morphologie-Code"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version -> "6.4" "Morphologie ICD-O/Blue Book Version"
* extension[morphology-behavior-icdo3].valueCodeableConcept.text -> "6.5" "Morphologie-Freitext"
* extension[occurredFollowing].valueReference -> "5.9" "Frühere Tumorerkrankungen"
