## {{page-title}}

The following pages contain the results of an oBDS-SNOMED mapping to SNOMED, conducted with the international SNOMED-CT version March 2024.

1. The focus was on the response lists stored in the oBDS. For the mapping of other national and international classifications and terminologies (ICD-10, ICD-O, OPS, ATC, ...), the BfArM is the responsible contact.
2. In addition to the response lists, the data fields themselves are often also coded in SNOMED and/or LOINC (found as `code` element in most resources).
3. Equivalence Assessment: Each code is marked with one of four possible codings that describe the content relationship between the source and target concept:
    - `equivalent`: content is (almost) identical and should be treated as equivalent
    - `wider`: the target concept is broader than the source concept and may include other concepts
    - `narrower`: the target concept is more specific than the source concept and includes only specific manifestations
    - `unmatched`: no adequately comparable target concept was found.
4. Due to a copyright procedure, the TNM concepts, which are under the copyright of the American AJCC, were recently withdrawn from SNOMED. Therefore, there are currently no valid concepts to represent the R status.