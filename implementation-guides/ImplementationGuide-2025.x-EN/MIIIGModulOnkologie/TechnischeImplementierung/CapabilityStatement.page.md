## {{page-title}}

To enable decentralized data analysis through the German Health Research Data Portal of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that a CapabilityStatement is exposed by the FHIR server at ```[BASE_URL]/metadata```. Within this CapabilityStatement, it MUST be specified which profiles, including version, and which search parameters are supported.

The following lists the contents that MUST be specified in the CapabilityStatement. Additionally, conformance to the following CapabilityStatement MUST be indicated in the respective CapabilityStatement instance under [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: ```https://www.medizininformatik-initiative.de/fhir/modul-onko/CapabilityStatement/metadata```

[Link Simplifier Profile Overview](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/modul-onko/CapabilityStatement/metadata&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2025.0.0)

{{render:https://www.medizininformatik-initiative.de/fhir/modul-onko/CapabilityStatement/metadata}}