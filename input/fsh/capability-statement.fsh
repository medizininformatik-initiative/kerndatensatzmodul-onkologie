Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-onko-capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-onko/CapabilityStatement/metadata"
* insert Version
* name = "MII_CPS_Onkology_CapabilityStatement"
* title = "MII CPS Onkology CapabilityStatement"
* status = #active
* experimental = false
* date = "2024-03-15"
* publisher = "Medizininformatik Initiative"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.medizininformatik-initiative.de"
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Onkologie der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* rest.mode = #server

// Condition requirements
* insert SupportResource(Condition, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Condition, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(verificationStatus, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-condition-verification-status, #token, #SHALL)
* insert SupportSearchParam(morphology-behavior-icdo3, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-condition-ext-morphology-behavior-icdo, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL) 
* insert SupportSearchParam(body-site, http://hl7.org/fhir/SearchParameter/Condition-body-site, #token, #SHALL) 
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Condition-subject, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
* insert SupportSearchParam(recorded-date, http://hl7.org/fhir/SearchParameter/Condition-recorded-date, #date, #SHALL)
* insert SupportSearchParam(evidence-detail, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-condition-evidence, #reference, #SHALL)

// Specimen requirements
* insert SupportResource(Specimen, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Specimen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(accession, http://hl7.org/fhir/SearchParameter/Specimen-accession, #token, #SHALL)
* insert SupportSearchParam(collected, http://hl7.org/fhir/SearchParameter/Specimen-collected, #date, #SHALL)	
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Specimen-subject, #reference, #SHALL)

// DiagnosticReport requirements
* insert SupportResource(DiagnosticReport, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/DiagnosticReport, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/DiagnosticReport-based-on, #reference, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/DiagnosticReport-subject, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL) 
* insert SupportSearchParam(specimen, http://hl7.org/fhir/SearchParameter/DiagnosticReport-specimen, #reference, #SHALL)
* insert SupportSearchParam(conclusion, http://hl7.org/fhir/SearchParameter/DiagnosticReport-conclusion, #token, #SHALL)

// Observation requirements
* insert SupportResource(Observation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Observation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-anzahl-befallene-lymphknoten, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-anzahl-untersuchte-lymphknoten, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-anzahl-befallene-sentinel-lymphknoten, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-grading, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-klassifikation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-t-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-n-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-m-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-a-symbol, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-m-symbol, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-l-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-pn-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-r-symbol, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-v-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-y-symbol, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tnm-s-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-weitere-klassifikationen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-residualstatus, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-fernmetastasen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-allgemeiner-leistungszustand, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-verlauf, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tod, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-genetische-variante, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme, #SHALL)

* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)

* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Observation-subject, #reference, #SHALL)
* insert SupportSearchParam(focus, http://hl7.org/fhir/SearchParameter/Observation-focus, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(value-quantity, http://hl7.org/fhir/SearchParameter/Observation-value-quantity, #quantity, #SHALL)
* insert SupportSearchParam(hasMember, http://hl7.org/fhir/SearchParameter/Observation-hasMember, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Observation-status, #token, #SHALL)
* insert SupportSearchParam(method, http://hl7.org/fhir/SearchParameter/Observation-method, #token, #SHALL)
* insert SupportSearchParam(part-of, http://hl7.org/fhir/SearchParameter/Observation-part-of, #token, #SHALL)
* insert SupportSearchParam(component-code, http://hl7.org/fhir/SearchParameter/Observation-component-code, #token, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(interpretation, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-observation-interpretation,  #token, #SHALL)
* insert SupportSearchParam(value-concept, http://hl7.org/fhir/SearchParameter/Observation-value-concept, #token, #SHALL)
* insert SupportSearchParam(note, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-observation-note, #string, #SHALL)

// List requirements
* insert SupportResource(List, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/List, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/List-status, #token, #SHALL)
* insert SupportSearchParam(mode, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-mode, #token, #SHALL)
* insert SupportSearchParam(title, http://hl7.org/fhir/SearchParameter/List-title, #string, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/List-subject, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL) 
* insert SupportSearchParam(flag, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-flag, #token, #SHALL)
* insert SupportSearchParam(item, http://hl7.org/fhir/SearchParameter/List-item, #reference, #SHALL) 

// Procedure requirements
* insert SupportResource(Procedure, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Procedure, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-operation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-strahlentherapie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-systemische-therapie, #SHALL)

* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)

* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(intention, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-intention, #token, #SHALL)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/Procedure-based-on, #reference, #SHALL)
* insert SupportSearchParam(part-of, http://hl7.org/fhir/SearchParameter/Procedure-part-of, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(performed, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(reason-reference, http://hl7.org/fhir/SearchParameter/Procedure-reason-reference, #date, #SHALL)
* insert SupportSearchParam(outcome, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-procedure-outcome, #token, #SHALL)
* insert SupportSearchParam(complication, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-procedure-complication, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Procedure-subject, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL) 
* insert SupportSearchParam(strahlentherapie-stellung, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-stellungzurop, #token, #SHALL)
* insert SupportSearchParam(bestrahlung-applikationsart,https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-applikationsart, #token, #SHALL)
* insert SupportSearchParam(bestrahlung-strahlenart, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-strahlenart, #token, #SHALL)
* insert SupportSearchParam(bestrahlung-zielgebiet, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-zielgebiet, #token, #SHALL)
* insert SupportSearchParam(bestrahlung-zielgebiet-lateralitaet, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-lateralitaet, #token, #SHALL)
* insert SupportSearchParam(bestrahlung-gesamtdosis, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis, #quantity, #SHALL)
* insert SupportSearchParam(bestrahlung-einzeldosis, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis, #quantity, #SHALL)
* insert SupportSearchParam(bestrahlung-boost, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-boost, #token, #SHALL)
* insert SupportSearchParam(systemischetherapie-stellung, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-systemischetherapie-stellungzurop, #token, #SHALL)

// AdverseEvent requirements
* insert SupportResource(AdverseEvent, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/AdverseEvent, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-nebenwirkung, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(event, http://hl7.org/fhir/SearchParameter/event, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/AdverseEvent-subject, #reference, #SHALL)
* insert SupportSearchParam(encounter, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-encounter, #reference, #SHALL)
* insert SupportSearchParam(severity, http://hl7.org/fhir/SearchParameter/severity, #token, #SHALL)
* insert SupportSearchParam(suspectEntity, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-instance, #reference, #SHALL)

// Medication Statement requirements
* insert SupportResource(MedicationStatement, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/MedicationStatement, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-systemische-therapie-medikation, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(based-on, https://www.medizininformatik-initiative.de/fhir/, #reference, #SHALL) // fromm mii
* insert SupportSearchParam(part-of, https://www.medizininformatik-initiative.de/fhir/, #reference, #SHALL) // from mii
* insert SupportSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/MedicationStatement-subject, #reference, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(note, https://www.medizininformatik-initiative.de/fhir/, #token, #SHALL) // from mii

// CarePlan requirements
* insert SupportResource(CarePlan, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/CarePlan, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-tumorkonferenz, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/CarePlan-status, #token, #SHALL)
* insert SupportSearchParam(intent, http://hl7.org/fhir/SearchParameter/CarePlan-intent, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/CarePlan-category, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/CarePlan-subject, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
* insert SupportSearchParam(created, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-careplan-created, #date, #SHALL)
* insert SupportSearchParam(addresses, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-careplan-addresses, #reference, #SHALL)
* insert SupportSearchParam(supportingInfo, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-careplan-supporting-info, #reference, #SHALL) 
* insert SupportSearchParam(activity-code, http://hl7.org/fhir/SearchParameter/activity-code, #token, #SHALL)