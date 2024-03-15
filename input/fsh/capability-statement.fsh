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
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/CapabilityStatement/metadata"
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

// Weitere Klassifikationen requirements
* insert SupportResource(WeitereKlassifikationen, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/WeitereKlassifikationen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/WeitereKlassifikationen, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Residualstatus requirements
* insert SupportResource(Residualstatus, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Residualstatus, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/Residualstatus, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Fernmetastasen requirements
* insert SupportResource(Fernmetastasen, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Fernmetastasen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/Fernmetastasen, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(fernmetastasen-body-site, http://hl7.org/fhir/SearchParameter/Fernmetastasen-body-site, #token, #SHALL)

// Allgemeiner Leistungszustand requirements
* insert SupportResource(AllgemeinerLeistungszustand, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/AllgemeinerLeistungszustand, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/AllgemeinerLeistungszustand, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Tod requirements
* insert SupportResource(Tod, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Tod, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/Tod, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(interpretation, http://hl7.org/fhir/SearchParameter/Tod-interpretation, #token, #SHALL)
