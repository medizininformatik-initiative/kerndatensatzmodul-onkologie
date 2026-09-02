# Search Parameters - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* **Search Parameters**

## Search Parameters

### Search parameters

The module defines its own SearchParameters (including those for the TNM prefix extensions `tnm-cp-praefix`, `tnm-y-praefix` and `tnm-r-praefix`, and further extension-based searches). The complete, automatically generated list can be found in the [artifact overview](artifacts.md); which search parameters a server MUST support is defined by the module's [CapabilityStatement](capability-statements.md).

> The profile pages of the Simplifier guide carried a search-parameter section with GET examples per profile. These sections were page-spanning identical boilerplate with partially broken examples (wrong resource types, broken code fences) and were deliberately **consolidated here** during migration instead of being repeated on every profile page. The normative core statements:

* Servers MUST support the search parameters listed in the CapabilityStatement per resource type (including `_profile`, `status`, `code`, `subject`, `date`/`effective` and reference-based parameters such as `part-of`).
* Search examples follow the FHIR base specification ([Search](http://hl7.org/fhir/R4/search.html)); token search on codings uses the form `[system]|[code]` (e.g. `GET [base]/MedicationStatement?code=http://fhir.de/CodeSystem/bfarm/atc|L01AA01`).
* For the extension-based searches (TNM prefixes), the module's SearchParameter artifacts are authoritative.

