// DE Basisprofile
Alias: $DeOnkoRadiotherapy = http://fhir.de/onkologie/StructureDefinition/procedure-bestrahlung
Alias: $DeOnkoSurgery = http://fhir.de/onkologie/StructureDefinition/procedure-operation
Alias: $DeOnkoDiagnosis = http://fhir.de/onkologie/StructureDefinition/KrebsDiagnose
Alias: $DeOnkoSystemischeTherapie = http://fhir.de/onkologie/StructureDefinition/SystemischeTherapie
Alias: $DeTnmKlassifikation = http://fhir.de/onkologie/StructureDefinition/uicc-tnm
Alias: $DeOnkoResidualStatus = http://fhir.de/onkologie/CodeSystem/Residualstatus
Alias: $DeOnkoResidualStatusVS = http://fhir.de/onkologie/ValueSet/ResidualstatusVS
Alias: $DeOnkoOpComplications = http://fhir.de/onkologie/CodeSystem/OpKomplikationen
Alias: $DeOnkoOpComplicationsVS = http://fhir.de/onkologie/ValueSet/OpKomplikationenVS
Alias: $DeOnkoIntention = http://fhir.de/onkologie/StructureDefinition/Intention
Alias: $DeOnkoStellungOp = http://fhir.de/onkologie/StructureDefinition/StellungZurOp
Alias: $DeIcdSeitenlokalisation = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION
Alias: $DeIcdDiagnosesicherheit = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT
Alias: $DeIcdO3TopologieVS = http://fhir.de/onkologie/ValueSet/icd-o-3-topologie
Alias: $DeOnkoTumorstatusFernmetastasenVS = http://fhir.de/onkologie/ValueSet/TumorstatusFernmetastasenVS
Alias: $icd-seitenlokalisation = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION

// MII KDS
Alias: $mii-symptom-observation = https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-observation
Alias: $mii-procedure  = https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure 
//Alias: $mii-specimen =  // optional for later
//Alias: $mii-pathoreport =  // optional for later

// FHIR Core
Alias: $EventStatus = http://hl7.org/fhir/event-status
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $verification-status-vs = http://hl7.org/fhir/ValueSet/condition-ver-status
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $request-status = http://hl7.org/fhir/request-status
Alias: $request-intent = http://hl7.org/fhir/request-intent
Alias: $care-plan-activity-status = http://hl7.org/fhir/care-plan-activity-status

// Code Systems
Alias: $CTCAE = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl
Alias: $MDRAE = http://terminology.hl7.org/CodeSystem/MDRGER
Alias: $OPS = http://fhir.de/CodeSystem/bfarm/ops
Alias: $SCT = http://snomed.info/sct
Alias: $ICD10GM = http://fhir.de/CodeSystem/bfarm/icd-10-gm
Alias: $ICDO3 = http://terminology.hl7.org/CodeSystem/icd-o-3
Alias: $LOINC = http://loinc.org
Alias: $UICC = https://www.uicc.org/resources/tnm
Alias: $UCUM =  http://unitsofmeasure.org
Alias: $ATC_DE = http://fhir.de/CodeSystem/bfarm/atc

//MII Onko
//Allgemeines CodeSystem
Alias: $mii-cs-onko-intention = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention
Alias: $mii-cs-onko-therapie-stellung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-stellung
Alias: $mii-cs-onko-therapie-ende-grund = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende
Alias: $mii-cs-onko-therapie-typ = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ
Alias: $mii-cs-onko-residualstatus = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus

//05
Alias: $mii-cs-onko-primaertumor-diagnosesicherung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung
Alias: $mii-vs-onko-primaertumor-diagnosesicherung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-diagnosesicherung
Alias: $mii-cs-onko-primaertumor-seitenlokalisation = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-seitenlokalisation
Alias: $mii-vs-onko-primaertumor-seitenlokalisation = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-seitenlokalisation

//06
Alias: $mii-cs-onko-grading = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading
Alias: $mii-vs-onko-grading = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-grading
Alias: $mii-cs-onko-tnm-version = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version
Alias: $mii-vs-onko-tnm-version = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-version

//13
Alias: $mii-cs-onko-operation-komplikation = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation
Alias: $mii-vs-onko-operation-komplikation = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-komplikation
Alias: $mii-cs-onko-operation-intention = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-intention
Alias: $mii-vs-onko-operation-intention = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-intention
Alias: $mii-cs-onko-operation-resektionsstatus = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-resektionsstatus
Alias: $mii-vs-onko-operation-resektionsstatus = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-resektionsstatus
Alias: $mii-vs-onko-beurteilung-lokaler-residualstatus = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-beurteilung-lokaler-residualstatus

//14
Alias: $mii-cs-onko-strahlentherapie-intention = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-intention
Alias: $mii-vs-onko-strahlentherapie-intention = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-intention
Alias: $mii-cs-onko-strahlentherapie-strahlenart = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart
Alias: $mii-vs-onko-strahlentherapie-strahlenart = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-strahlenart
Alias: $mii-cs-onko-strahlentherapie-applikationsart = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart
Alias: $mii-vs-onko-strahlentherapie-applikationsart = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-applikationsart
Alias: $mii-cs-onko-strahlentherapie-stellung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-stellung
Alias: $mii-vs-onko-strahlentherapie-stellung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-stellung
Alias: $mii-cs-onko-strahlentherapie-zielgebiet = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet
Alias: $mii-vs-onko-strahlentherapie-zielgebiet = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-zielgebiet
Alias: $mii-cs-onko-strahlentherapie-strahlungseinheit = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlungseinheit
Alias: $mii-vs-onko-strahlentherapie-strahlungseinheit = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-strahlungseinheit
Alias: $mii-cs-onko-strahlentherapie-boost = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost
Alias: $mii-ex-onko-strahlentherapie-intention = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention
Alias: $mii-ex-onko-strahlentherapie-bestrahlung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung
Alias: $mii-ex-onko-strahlentherapie-stellung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellung

//16
Alias: $mii-ex-onko-systemische-therapie-intention = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention
Alias: $mii-ex-onko-systemische-therapie-stellung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellung

//11
Alias: $mii-cs-onko-fernmetastasen = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen

//12
Alias: $mii-cs-onko-allgemeiner-leistungszustand = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand

//15
Alias: $mii-cs-onko-nebenwirkung-ctcae-grad = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-vs-onko-nebenwirkung-ctcae-grad
Alias: $mii-vs-onko-nebenwirkung-ctcae-grad = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-nebenwirkung-ctcae-grad
Alias: $mii-cs-onko-meddra-de = https://www.meddra.org
Alias: $mii-vs-onko-nebenwirkung-art = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-nebenwirkung-ctcae-art
Alias: $mii-vs-onko-nebenwirkung-ctcae-grad = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-nebenwirkung-ctcae-grad

//20
Alias: $mii-cs-onko-tod = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-ende-tod
Alias: $mii-vs-onko-tod = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-ende-tod

//18-19
Alias: $mii-cs-onko-therapieplanung-typ = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapieplanung-typ
Alias: $mii-vs-onko-therapieplanung-typ = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-therapieplanung-typ
Alias: $mii-cs-onko-therapieempfehlung-typ = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapieempfehlung-typ
Alias: $mii-vs-onko-therapieempfehlung-typ = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-therapieempfehlung-typ
Alias: $mii-cs-onko-therapieabweichung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapieabweichung
Alias: $mii-vs-onko-therapieabweichung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-vs-therapieabweichung

//17
Alias: $mii-cs-onko-verlauf-gesamtbeurteilung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung
Alias: $mii-vs-onko-verlauf-gesamtbeurteilung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-gesamtbeurteilung
Alias: $mii-cs-onko-verlauf-primaertumor = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor
Alias: $mii-vs-onko-verlauf-primaertumor = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-primaertumor
Alias: $mii-cs-onko-verlauf-lymphknoten = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten
Alias: $mii-vs-onko-verlauf-lymphknoten = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-lymphknoten
Alias: $mii-cs-onko-verlauf-fernmetastasen = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen
Alias: $mii-vs-onko-verlauf-fernmetastasen = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-fernmetastasen

//23
Alias: $mii-cs-onko-genetische-variante-auspraegung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-genetische-variante-auspraegung
Alias: $mii-vs-onko-genetische-variante-auspraegung = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-genetische-variante-auspraegung