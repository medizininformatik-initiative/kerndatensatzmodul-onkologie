<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of the German original (input/translations/de/pagecontent/capability-statements.md) -->

### CapabilityStatement

To enable decentralized data analysis via the German Portal for Medical
Research Data (FDPG) of the Medical Informatics Initiative, the
[capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities)
MUST be supported, so that the FHIR server exposes a CapabilityStatement at
`[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated
which profiles (including version) and which search parameters are supported.

The following lists the content that MUST be declared in the
CapabilityStatement. In addition, conformance to the following
CapabilityStatement MUST be declared in the respective CapabilityStatement
instance via
[`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical:
`https://www.medizininformatik-initiative.de/fhir/modul-onko/CapabilityStatement/metadata`

Artifact page:
[CapabilityStatement of the Oncology module](CapabilityStatement-mii-cps-onko-capabilitystatement.html)

{% include CapabilityStatement-mii-cps-onko-capabilitystatement-html.xhtml %}
