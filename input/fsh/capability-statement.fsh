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

// Diagnose requirements
* insert SupportResource(Diagnose, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Diagnose, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Diagnose, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(verificationStatus, http://hl7.org/fhir/SearchParameter/Diagnose-verificationStatus, #token, #SHALL)

// Histologie requirements
* insert SupportResource(Specimen, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Specimen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Specimen, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(Befund, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Befund, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Befund, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(AnzahlBefalleneLymphknoten, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/anzahl-befallene-lymphknoten, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/anzahl-befallene-lymphknoten, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(AnzahlUntersuchteLymphknoten, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/anzahl-untersuchte-lymphknoten, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/anzahl-untersuchte-lymphknoten, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(AnzahlUntersuchteSentinelLymphknoten, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Ganzahl-untersuchte-sentinel-lymphknotenrading, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/anzahl-untersuchte-sentinel-lymphknoten, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(AnzahlBefalleneSentinelLymphknoten, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/anzahl-befallene-sentinel-lymphknoten, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/anzahl-befallene-sentinel-lymphknoten, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(Grading, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Grading, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Grading, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// TNM Klassifikation requirements
* insert SupportResource(TnmKlassifikation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-klassifikation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-klassifikation, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(hasMember, http://hl7.org/fhir/SearchParameter/TnmKlassifikation-hasMember, #reference, #SHALL)

* insert SupportResource(TnmTKategorie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-t-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-t-kategorie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmNKategorie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-n-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-n-kategorie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmMKategorie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-m-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-m-kategorie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmASymbol, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-a-symbol, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-a-symbol, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmMSymbol, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-m-symbol, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-m-symbol, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmLKategorie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-l-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-l-kategorie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmPNKategorie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-pn-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-pn-kategorie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmRSymbol, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-r-symbol, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-r-symbol, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmSKategorie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-s-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-s-kategorie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmVKategorie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-v-kategorie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-v-kategorie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

* insert SupportResource(TnmYSymbol, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/tnm-y-symbol, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/tnm-y-symbol, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)


// Weitere Klassifikationen requirements
* insert SupportResource(WeitereKlassifikationen, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/WeitereKlassifikationen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/WeitereKlassifikationen, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Residualstatus requirements
* insert SupportResource(Residualstatus, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Residualstatus, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Residualstatus, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Fernmetastasen requirements
* insert SupportResource(Fernmetastasen, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Fernmetastasen, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Fernmetastasen, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(body-site, http://hl7.org/fhir/SearchParameter/Fernmetastasen-body-site, #token, #SHALL)

// Allgemeiner Leistungszustand requirements
* insert SupportResource(AllgemeinerLeistungszustand, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/AllgemeinerLeistungszustand, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/AllgemeinerLeistungszustand, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Operation requirements
* insert SupportResource(Operation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Operation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Operation, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(intention, http://hl7.org/fhir/SearchParameter/Operation-intention, #token, #SHALL)
* insert SupportSearchParam(complication, http://hl7.org/fhir/SearchParameter/Operation-complication, #token, #SHALL)

// Strahlentherapie requirements
* insert SupportResource(Strahlentherapie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Strahlentherapie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Strahlentherapie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(stellung, http://hl7.org/fhir/SearchParameter/Strahlentherapie-stellung, #token, #SHALL)
* insert SupportSearchParam(applikationsart, http://hl7.org/fhir/SearchParameter/Strahlentherapie-applikationsart, #token, #SHALL)
* insert SupportSearchParam(strahlenart, http://hl7.org/fhir/SearchParameter/Strahlentherapie-strahlenart, #token, #SHALL)
* insert SupportSearchParam(zielgebiet, http://hl7.org/fhir/SearchParameter/Strahlentherapie-zielgebiet, #token, #SHALL)
* insert SupportSearchParam(zielgebiet-lateralitaet, http://hl7.org/fhir/SearchParameter/Strahlentherapie-zielgebiet-lateralitaet, #token, #SHALL)
* insert SupportSearchParam(gesamtdosis, http://hl7.org/fhir/SearchParameter/Strahlentherapie-gesamtdosis, #quantity, #SHALL)
* insert SupportSearchParam(einzeldosis, http://hl7.org/fhir/SearchParameter/Strahlentherapie-einzeldosis, #quantity, #SHALL)
* insert SupportSearchParam(boost, http://hl7.org/fhir/SearchParameter/Strahlentherapie-boost, #token, #SHALL)

// Nebenwirkung requirements
* insert SupportResource(Nebenwirkung, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Nebenwirkung, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Nebenwirkung, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(instance, http://hl7.org/fhir/SearchParameter/Nebenwirkung-suspectEntity_instance, #reference, #SHALL)

// Systemische Therapie requirements
* insert SupportResource(Systemische_Therapie, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Systemische_Therapie, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Systemische_Therapie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Verlauf requirements
* insert SupportResource(Verlauf, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Verlauf, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Verlauf, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)

// Tumorkonferenz requirements
* insert SupportResource(Tumorkonferenz, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Tumorkonferenz, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Tumorkonferenz, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(created, http://hl7.org/fhir/SearchParameter/Tumorkonferenz-created, #date, #SHALL)
* insert SupportSearchParam(contributor, http://hl7.org/fhir/SearchParameter/Tumorkonferenz-contributor, #reference, #SHALL)
* insert SupportSearchParam(addresses, http://hl7.org/fhir/SearchParameter/Tumorkonferenz-addresses, #reference, #SHALL)

// Tod requirements
* insert SupportResource(Tod, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Tod, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Tod, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(interpretation, http://hl7.org/fhir/SearchParameter/Tod-interpretation, #token, #SHALL)
* insert SupportSearchParam(focus, http://hl7.org/fhir/SearchParameter/Tod-focus, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/Tod-encounter, #reference, #SHALL)
* insert SupportSearchParam(derived-from, http://hl7.org/fhir/SearchParameter/Tod-derived-from, #reference, #SHALL)

// Genetische Variante requirements
* insert SupportResource(Genetische_Variante, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Genetische_Variante, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/modul-onko/StructureDefinition/Genetische_Variante, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)