# Guidance for Implementers - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Guidance for Implementers**

## Guidance for Implementers

### Context in the overall project — relationships to other modules

The CDS module Oncology makes extensive use of the MII base modules:

* The oncological primary diagnosis is based on the MII module [Diagnosis](https://simplifier.net/mii-basismodul-diagnose-2024).
* The therapy documentation of surgeries, radiotherapy and general information on systemic therapies is based on the MII module [Procedure](https://simplifier.net/mii-basismodul-prozedur-2024).
* The specific coding of active substances as part of systemic therapy is based on the MII module [Medication](https://simplifier.net/mii-basismodul-medikation-2024).

Since data collection for the oBDS is based on cancer registry reports, a representation via the above modules is only partially possible.

For further linkage of oncological registry data, the following CDS modules are particularly relevant:

* [Pathology report](https://simplifier.net/medizininformatikinitiative-modulpathologie)
* [Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank)
* [Molecular genetics report](https://simplifier.net/medizininformatikinitiative-modulomics)
* [Imaging](https://simplifier.net/Medizininformatik-Initiative-Modul-Bildgebung) (not yet implemented, integration planned for version 2027)
* [Document](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument) — for the document level, see the assignment of oncology-relevant KDL document classes in the [intro of the KDL value set](ValueSet-mii-vs-onko-kdl-dokumentklassen.md)

In the long term, close integration with these modules is planned. In the first versions it is entirely optional, mainly for one reason: generating FHIR resources of other modules partially requires data that is not part of the oBDS in this form (example: the Biosample module strictly requires the availability statement at creation). Since FHIR resources cannot yet be exported from primary systems across the board and not every DIC site can produce all CDS modules in ETL routes, the use of other MII modules is intended but optional.

The CDS module Oncology is furthermore the basis for the [CDS module Molecular Tumor Board](https://simplifier.net/mii-erweiterungsmodul-molekulares-tumorboard), which covers deeper oncological topics such as guideline-based treatment, next-generation sequencing and personalized therapies. Required adjustments were specified for the MTB module and adopted in version v2026.

### Profile relationships and references

The following overview shows the references between the resources:

#### Envisaged future integration of the Biobank, MolGen report and pathology report modules

### oBDS-SNOMED CT mapping: methodology

The ConceptMap artifacts of this module contain the results of a mapping of the oBDS answer lists to SNOMED CT, performed with the international SNOMED CT release of March 2024, supplemented by the UICC TNM and residual tumor concepts of March 2025.

1. The focus was on the answer lists defined in the oBDS. For mapping other national and international classifications and terminologies (ICD-10, ICD-O, OPS, ATC, …), BfArM is the responsible contact.
1. In addition to the answer lists, the data fields themselves are often also coded in SNOMED CT and/or LOINC (found as the`code`element on most resources).
1. Equivalence assessment: each code carries one of four values describing the relationship between source and target concept:
* `equivalent`: substantively (almost) identical, to be treated as equal
* `wider`: the target concept is more general than the source concept
* `narrower`: the target concept is more specific than the source concept
* `unmatched`: no adequately comparable target concept found

The individual mappings are documented as intro texts on the respective ConceptMap pages (see the [artifact overview](artifacts.md)).

#### Mapping overview (generated from the ConceptMaps)

The following tables are generated at build time via SQL directly from this IG's ConceptMap resources (the IG Publisher's `package.db`) — they therefore cannot diverge from the artifacts.

**Distribution of equivalence levels (all ConceptMaps):**

| | |
| :--- | :--- |
| Relationship | Count |
| equivalent | 1319 |
| source-is-narrower-than-target | 80 |
| source-is-broader-than-target | 60 |

**All mappings of the oBDS answer lists** (module-own code systems → SNOMED CT/LOINC; the year-versioned ATC/ICD-O transitions are described on [ATC](atc-terminologie.md) and [ICD-O](icd-o-terminologie.md)):

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| SourceSystem | SourceCode | Relationship | TargetSystem | TargetCode |
| oBDS-CS allgemeiner-leistungszustand-ecog | #0 | equivalent | LOINC | #LA9622-7 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #0 | equivalent | SNOMED CT | #425389002 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #1 | equivalent | LOINC | #LA9623-5 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #1 | equivalent | SNOMED CT | #422512005 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #2 | equivalent | LOINC | #LA9624-3 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #2 | equivalent | SNOMED CT | #422894000 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #3 | equivalent | LOINC | #LA9625-0 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #3 | equivalent | SNOMED CT | #423053003 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #4 | equivalent | LOINC | #LA9626-8 |
| oBDS-CS allgemeiner-leistungszustand-ecog | #4 | equivalent | SNOMED CT | #423237006 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #0% | equivalent | LOINC | #LA9627-6 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #10% | equivalent | LOINC | #LA29184-1 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #20% | equivalent | LOINC | #LA29183-3 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #30% | equivalent | LOINC | #LA29182-5 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #40% | equivalent | LOINC | #LA29181-7 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #50% | equivalent | LOINC | #LA29180-9 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #60% | equivalent | LOINC | #LA29179-1 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #70% | equivalent | LOINC | #LA29178-3 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #80% | equivalent | LOINC | #LA29177-5 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #90% | equivalent | LOINC | #LA29176-7 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | #100% | equivalent | LOINC | #LA29175-9 |
| oBDS-CS asa-obds | #1 | equivalent | LOINC | #LA28813-6 |
| oBDS-CS asa-obds | #2 | equivalent | LOINC | #LA28814-4 |
| oBDS-CS asa-obds | #3 | equivalent | LOINC | #LA28815-1 |
| oBDS-CS asa-obds | #4 | equivalent | LOINC | #LA28816-9 |
| oBDS-CS asa-obds | #5 | equivalent | LOINC | #LA28817-7 |
| oBDS-CS asa-obds | #6 | equivalent | LOINC | #LA28818-5 |
| oBDS-CS fernmetastasen | #ADR | equivalent | SNOMED CT | #258339009 |
| oBDS-CS fernmetastasen | #BRA | equivalent | SNOMED CT | #313367003 |
| oBDS-CS fernmetastasen | #GEN | equivalent | SNOMED CT | #405843009 |
| oBDS-CS fernmetastasen | #HEP | equivalent | SNOMED CT | #258334004 |
| oBDS-CS fernmetastasen | #LYM | equivalent | SNOMED CT | #258336002 |
| oBDS-CS fernmetastasen | #MAR | equivalent | SNOMED CT | #14016003 |
| oBDS-CS fernmetastasen | #OSS | equivalent | SNOMED CT | #258333005 |
| oBDS-CS fernmetastasen | #OTH | equivalent | SNOMED CT | #258348004 |
| oBDS-CS fernmetastasen | #PER | equivalent | SNOMED CT | #258338001 |
| oBDS-CS fernmetastasen | #PLE | equivalent | SNOMED CT | #258337006 |
| oBDS-CS fernmetastasen | #PUL | equivalent | SNOMED CT | #258332000 |
| oBDS-CS fernmetastasen | #SKI | equivalent | SNOMED CT | #258340006 |
| oBDS-CS genetische-variante-auspraegung | #M | equivalent | SNOMED CT | #55446002 |
| oBDS-CS genetische-variante-auspraegung | #N | equivalent | SNOMED CT | #1156316003 |
| oBDS-CS genetische-variante-auspraegung | #P | equivalent | SNOMED CT | #50334000 |
| oBDS-CS genetische-variante-auspraegung | #S | equivalent | SNOMED CT | #74964007 |
| oBDS-CS genetische-variante-auspraegung | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS genetische-variante-auspraegung | #W | equivalent | SNOMED CT | #412730000 |
| oBDS-CS grading | #0 | equivalent | SNOMED CT | #415175000 |
| oBDS-CS grading | #B | equivalent | SNOMED CT | #1268929003 |
| oBDS-CS grading | #H | equivalent | SNOMED CT | #1155707008 |
| oBDS-CS grading | #L | equivalent | SNOMED CT | #1155708003 |
| oBDS-CS grading | #M | equivalent | SNOMED CT | #1286893008 |
| oBDS-CS grading | #T | equivalent | SNOMED CT | #385432009 |
| oBDS-CS grading | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS grading | #X | equivalent | SNOMED CT | #1155705000 |
| oBDS-CS grading | #1 | equivalent | SNOMED CT | #373375007 |
| oBDS-CS grading | #2 | equivalent | SNOMED CT | #373377004 |
| oBDS-CS grading | #3 | equivalent | SNOMED CT | #373373000 |
| oBDS-CS grading | #4 | equivalent | SNOMED CT | #373374006 |
| oBDS-CS https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende | #E | equivalent | SNOMED CT | #385656004 |
| oBDS-CS https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende | #P | source-is-narrower-than-target | SNOMED CT | #419835002 |
| oBDS-CS https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende | #S | source-is-narrower-than-target | SNOMED CT | #74964007 |
| oBDS-CS https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende | #T | equivalent | SNOMED CT | #419099009 |
| oBDS-CS https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende | #V | equivalent | SNOMED CT | #183948000 |
| oBDS-CS intention | #D | equivalent | SNOMED CT | #261004008 |
| oBDS-CS intention | #K | equivalent | SNOMED CT | #373808002 |
| oBDS-CS intention | #O | source-is-narrower-than-target | SNOMED CT | #373808002 |
| oBDS-CS intention | #P | equivalent | SNOMED CT | #363676003 |
| oBDS-CS intention | #R | equivalent | SNOMED CT | #255231005 |
| oBDS-CS intention | #S | equivalent | SNOMED CT | #74964007 |
| oBDS-CS intention | #X | equivalent | SNOMED CT | #1287211007 |
| oBDS-CS krk-stoma-anzeichnung | #K | equivalent | SNOMED CT | #428119001 |
| oBDS-CS krk-stoma-anzeichnung | #N | equivalent | SNOMED CT | #262008008 |
| oBDS-CS krk-stoma-anzeichnung | #S | equivalent | SNOMED CT | #373068000 |
| oBDS-CS krk-stoma-anzeichnung | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS nebenwirkung-ctcae-grad | #K | equivalent | SNOMED CT | #260413007 |
| oBDS-CS nebenwirkung-ctcae-grad | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS nebenwirkung-ctcae-grad | #1 | equivalent | SNOMED CT | #255604002 |
| oBDS-CS nebenwirkung-ctcae-grad | #2 | equivalent | SNOMED CT | #1255665007 |
| oBDS-CS nebenwirkung-ctcae-grad | #3 | equivalent | SNOMED CT | #24484000 |
| oBDS-CS nebenwirkung-ctcae-grad | #4 | equivalent | SNOMED CT | #442452003 |
| oBDS-CS nebenwirkung-ctcae-grad | #5 | equivalent | SNOMED CT | #399166001 |
| oBDS-CS operation-komplikation |  | source-is-broader-than-target | SNOMED CT | #405950009 |
| oBDS-CS operation-komplikation |  | source-is-narrower-than-target | SNOMED CT | #128477000 |
| oBDS-CS operation-komplikation |  | equivalent | SNOMED CT | #236090001 |
| oBDS-CS operation-komplikation |  | source-is-broader-than-target | SNOMED CT | #60168000 |
| oBDS-CS operation-komplikation | #ABD | source-is-narrower-than-target | SNOMED CT | #128477000 |
| oBDS-CS operation-komplikation | #ABS | source-is-broader-than-target | SNOMED CT | #75100008 |
| oBDS-CS operation-komplikation | #AEP | equivalent | SNOMED CT | #8635005 |
| oBDS-CS operation-komplikation | #ALR | equivalent | SNOMED CT | #419076005 |
| oBDS-CS operation-komplikation | #ANI | equivalent | SNOMED CT | #723189000 |
| oBDS-CS operation-komplikation | #ANS | equivalent | SNOMED CT | #735173007 |
| oBDS-CS operation-komplikation | #API | equivalent | SNOMED CT | #230690007 |
| oBDS-CS operation-komplikation | #ASF | source-is-narrower-than-target | SNOMED CT | #128477000 |
| oBDS-CS operation-komplikation | #BIF | equivalent | SNOMED CT | #53206008 |
| oBDS-CS operation-komplikation | #BOG | equivalent | SNOMED CT | #37372002 |
| oBDS-CS operation-komplikation | #CHI | equivalent | SNOMED CT | #82403002 |
| oBDS-CS operation-komplikation | #DAI | source-is-broader-than-target | SNOMED CT | #236091002 |
| oBDS-CS operation-komplikation | #DEP | equivalent | SNOMED CT | #772133000 |
| oBDS-CS operation-komplikation | #DIC | equivalent | SNOMED CT | #67406007 |
| oBDS-CS operation-komplikation | #DLU | equivalent | SNOMED CT | #1163215007 |
| oBDS-CS operation-komplikation | #DPS | equivalent | SNOMED CT | #81060008 |
| oBDS-CS operation-komplikation | #DSI | equivalent | SNOMED CT | #236089005 |
| oBDS-CS operation-komplikation | #ENF | equivalent | SNOMED CT | #735426009 |
| oBDS-CS operation-komplikation | #GER | equivalent | SNOMED CT | #64779008 |
| oBDS-CS operation-komplikation | #HAE | equivalent | SNOMED CT | #355001 |
| oBDS-CS operation-komplikation | #HEM | equivalent | SNOMED CT | #8765009 |
| oBDS-CS operation-komplikation | #HFI | equivalent | SNOMED CT | #57243009 |
| oBDS-CS operation-komplikation | #HNA | equivalent | SNOMED CT | #73013002 |
| oBDS-CS operation-komplikation | #HNK | equivalent | SNOMED CT | #95347000 |
| oBDS-CS operation-komplikation | #HOP | equivalent | SNOMED CT | #2776000 |
| oBDS-CS operation-komplikation | #HRS | equivalent | SNOMED CT | #698247007 |
| oBDS-CS operation-komplikation | #HUR | equivalent | SNOMED CT | #34436003 |
| oBDS-CS operation-komplikation | #HYB | equivalent | SNOMED CT | #14783006 |
| oBDS-CS operation-komplikation | #HYF | equivalent | SNOMED CT | #126663003 |
| oBDS-CS operation-komplikation | #HZI | equivalent | SNOMED CT | #84114007 |
| oBDS-CS operation-komplikation | #IFV | equivalent | SNOMED CT | #234044007 |
| oBDS-CS operation-komplikation | #KAS | equivalent | SNOMED CT | #89138009 |
| oBDS-CS operation-komplikation | #KDS | equivalent | SNOMED CT | #26629001 |
| oBDS-CS operation-komplikation | #KIM | equivalent | SNOMED CT | #19220005 |
| oBDS-CS operation-komplikation | #KRA | equivalent | SNOMED CT | #91175000 |
| oBDS-CS operation-komplikation | #LEV | equivalent | SNOMED CT | #59927004 |
| oBDS-CS operation-komplikation | #LOE | equivalent | SNOMED CT | #19242006 |
| oBDS-CS operation-komplikation | #LYE | equivalent | SNOMED CT | #234109007 |
| oBDS-CS operation-komplikation | #LYF | equivalent | SNOMED CT | #234105001 |
| oBDS-CS operation-komplikation | #MAT | source-is-broader-than-target | SNOMED CT | #243410003 |
| oBDS-CS operation-komplikation | #MED | equivalent | SNOMED CT | #373409004 |
| oBDS-CS operation-komplikation | #MES | equivalent | SNOMED CT | #386211005 |
| oBDS-CS operation-komplikation | #MIL | equivalent | SNOMED CT | #46420000 |
| oBDS-CS operation-komplikation | #MYI | equivalent | SNOMED CT | #22298006 |
| oBDS-CS operation-komplikation | #N | equivalent | SNOMED CT | #373067005 |
| oBDS-CS operation-komplikation | #NAB | equivalent | SNOMED CT | #110265006 |
| oBDS-CS operation-komplikation | #OES | equivalent | SNOMED CT | #16761005 |
| oBDS-CS operation-komplikation | #OSM | source-is-broader-than-target | SNOMED CT | #274144001 |
| oBDS-CS operation-komplikation | #PAB | equivalent | SNOMED CT | #6072007 |
| oBDS-CS operation-komplikation | #PAE | equivalent | SNOMED CT | #59282003 |
| oBDS-CS operation-komplikation | #PAF | equivalent | SNOMED CT | #25803005 |
| oBDS-CS operation-komplikation | #PAV | equivalent | SNOMED CT | #399957001 |
| oBDS-CS operation-komplikation | #PDA | equivalent | SNOMED CT | #1162567000 |
| oBDS-CS operation-komplikation | #PER | equivalent | SNOMED CT | #48661000 |
| oBDS-CS operation-komplikation | #PEY | equivalent | SNOMED CT | #58554001 |
| oBDS-CS operation-komplikation | #PIT | equivalent | SNOMED CT | #75694006 |
| oBDS-CS operation-komplikation | #PLB | equivalent | SNOMED CT | #698817002 |
| oBDS-CS operation-komplikation | #PLE | equivalent | SNOMED CT | #60046008 |
| oBDS-CS operation-komplikation | #PMN | equivalent | SNOMED CT | #233604007 |
| oBDS-CS operation-komplikation | #PNT | equivalent | SNOMED CT | #36118008 |
| oBDS-CS operation-komplikation | #RIN | equivalent | SNOMED CT | #409623005 |
| oBDS-CS operation-komplikation | #RNB | equivalent | SNOMED CT | #308896002 |
| oBDS-CS operation-komplikation | #RPA | source-is-broader-than-target | SNOMED CT | #1052240009 |
| oBDS-CS operation-komplikation | #SES | equivalent | SNOMED CT | #76571007 |
| oBDS-CS operation-komplikation | #SFH | equivalent | SNOMED CT | #76314005 |
| oBDS-CS operation-komplikation | #SKI | source-is-narrower-than-target | SNOMED CT | #19220005 |
| oBDS-CS operation-komplikation | #STK | equivalent | SNOMED CT | #302918009 |
| oBDS-CS operation-komplikation | #TIA | equivalent | SNOMED CT | #266257000 |
| oBDS-CS operation-komplikation | #TRZ | equivalent | SNOMED CT | #82545002 |
| oBDS-CS operation-komplikation | #TZP | equivalent | SNOMED CT | #302215000 |
| oBDS-CS operation-komplikation | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS operation-komplikation | #WSS | equivalent | SNOMED CT | #271618001 |
| oBDS-CS operation-komplikation | #WUH | equivalent | SNOMED CT | #239160006 |
| oBDS-CS primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | #363680008 |
| oBDS-CS primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | #423827005 |
| oBDS-CS primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | #363679005 |
| oBDS-CS primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | #16310003 |
| oBDS-CS primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | #122458006 |
| oBDS-CS primaertumor-diagnosesicherung | #1 | equivalent | SNOMED CT | #373795004 |
| oBDS-CS primaertumor-diagnosesicherung | #2 | equivalent | SNOMED CT | #373796003 |
| oBDS-CS primaertumor-diagnosesicherung | #4 | equivalent | SNOMED CT | #373797007 |
| oBDS-CS primaertumor-diagnosesicherung | #5 | equivalent | SNOMED CT | #373798002 |
| oBDS-CS primaertumor-diagnosesicherung | #6 | equivalent | SNOMED CT | #373799005 |
| oBDS-CS primaertumor-diagnosesicherung | #7 | equivalent | SNOMED CT | #373800009 |
| oBDS-CS primaertumor-diagnosesicherung | #7.1 | equivalent | SNOMED CT | #373800009 |
| oBDS-CS primaertumor-diagnosesicherung | #7.2 | equivalent | SNOMED CT | #373799005 |
| oBDS-CS primaertumor-diagnosesicherung | #8 | equivalent | SNOMED CT | #394804000 |
| oBDS-CS primaertumor-diagnosesicherung | #9 | equivalent | SNOMED CT | #261665006 |
| oBDS-CS seitenlokalisation | #B | equivalent | SNOMED CT | #51440002 |
| oBDS-CS seitenlokalisation | #L | equivalent | SNOMED CT | #7771000 |
| oBDS-CS seitenlokalisation | #M | equivalent | SNOMED CT | #260528009 |
| oBDS-CS seitenlokalisation | #R | equivalent | SNOMED CT | #24028007 |
| oBDS-CS seitenlokalisation | #T | equivalent | SNOMED CT | #385432009 |
| oBDS-CS seitenlokalisation | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS strahlentherapie-applikationsart | #I | equivalent | SNOMED CT | #113120007 |
| oBDS-CS strahlentherapie-applikationsart | #IHDR | source-is-narrower-than-target | SNOMED CT | #113120007 |
| oBDS-CS strahlentherapie-applikationsart | #ILDR | source-is-narrower-than-target | SNOMED CT | #113120007 |
| oBDS-CS strahlentherapie-applikationsart | #IPDR | source-is-narrower-than-target | SNOMED CT | #113120007 |
| oBDS-CS strahlentherapie-applikationsart | #K | equivalent | SNOMED CT | #384692006 |
| oBDS-CS strahlentherapie-applikationsart | #KHDR | source-is-narrower-than-target | SNOMED CT | #384692006 |
| oBDS-CS strahlentherapie-applikationsart | #KLDR | source-is-narrower-than-target | SNOMED CT | #384692006 |
| oBDS-CS strahlentherapie-applikationsart | #KPDR | source-is-narrower-than-target | SNOMED CT | #384692006 |
| oBDS-CS strahlentherapie-applikationsart | #M | source-is-narrower-than-target | SNOMED CT | #399315003 |
| oBDS-CS strahlentherapie-applikationsart | #MRIT | equivalent | SNOMED CT | #118640001 |
| oBDS-CS strahlentherapie-applikationsart | #MRJT | equivalent | SNOMED CT | #64291000052106 |
| oBDS-CS strahlentherapie-applikationsart | #P | equivalent | SNOMED CT | #33195004 |
| oBDS-CS strahlentherapie-applikationsart | #P-4D | equivalent | SNOMED CT | #721061000124106 |
| oBDS-CS strahlentherapie-applikationsart | #P-ST | equivalent | SNOMED CT | #395096001 |
| oBDS-CS strahlentherapie-applikationsart | #S | equivalent | SNOMED CT | #74964007 |
| oBDS-CS strahlentherapie-boost | #J | equivalent | SNOMED CT | #445232009 |
| oBDS-CS strahlentherapie-boost | #KON | source-is-narrower-than-target | SNOMED CT | #445232009 |
| oBDS-CS strahlentherapie-boost | #N | equivalent | SNOMED CT | #373067005 |
| oBDS-CS strahlentherapie-boost | #SEQ | source-is-narrower-than-target | SNOMED CT | #445232009 |
| oBDS-CS strahlentherapie-boost | #SIB | source-is-narrower-than-target | SNOMED CT | #445232009 |
| oBDS-CS strahlentherapie-strahlenart | #Ac-225 | equivalent | SNOMED CT | #32059002 |
| oBDS-CS strahlentherapie-strahlenart | #Co-60 | equivalent | SNOMED CT | #5405008 |
| oBDS-CS strahlentherapie-strahlenart | #EL | equivalent | SNOMED CT | #46602004 |
| oBDS-CS strahlentherapie-strahlenart | #Ir-192 | equivalent | SNOMED CT | #48341001 |
| oBDS-CS strahlentherapie-strahlenart | #J-131 | equivalent | SNOMED CT | #1368003 |
| oBDS-CS strahlentherapie-strahlenart | #Lu-177 | equivalent | SNOMED CT | #447553000 |
| oBDS-CS strahlentherapie-strahlenart | #Lu-177 | source-is-broader-than-target | SNOMED CT | #1263784000 |
| oBDS-CS strahlentherapie-strahlenart | #NE | equivalent | SNOMED CT | #58607005 |
| oBDS-CS strahlentherapie-strahlenart | #PN | equivalent | SNOMED CT | #89177007 |
| oBDS-CS strahlentherapie-strahlenart | #RO | equivalent | SNOMED CT | #286630003 |
| oBDS-CS strahlentherapie-strahlenart | #Ra-223 | equivalent | SNOMED CT | #24853006 |
| oBDS-CS strahlentherapie-strahlenart | #SI | equivalent | SNOMED CT | #312253001 |
| oBDS-CS strahlentherapie-strahlenart | #SO | equivalent | SNOMED CT | #74964007 |
| oBDS-CS strahlentherapie-strahlenart | #SONU | equivalent | SNOMED CT | #89457008 |
| oBDS-CS strahlentherapie-strahlenart | #Sm-153 | equivalent | SNOMED CT | #419804008 |
| oBDS-CS strahlentherapie-strahlenart | #Sr-89 | equivalent | SNOMED CT | #7770004 |
| oBDS-CS strahlentherapie-strahlenart | #UH | equivalent | SNOMED CT | #290006006 |
| oBDS-CS strahlentherapie-strahlenart | #Y-90 | equivalent | SNOMED CT | #14691008 |
| oBDS-CS strahlentherapie-strahlenart | #Y-90 | source-is-broader-than-target | SNOMED CT | #764677008 |
| oBDS-CS strahlentherapie-zielgebiet | #1.1 | equivalent | SNOMED CT | #258335003 |
| oBDS-CS strahlentherapie-zielgebiet | #1.2 | equivalent | SNOMED CT | #119235005 |
| oBDS-CS strahlentherapie-zielgebiet | #1.3 | equivalent | SNOMED CT | #389079005 |
| oBDS-CS strahlentherapie-zielgebiet | #1.4 | equivalent | SNOMED CT | #56329008 |
| oBDS-CS strahlentherapie-zielgebiet | #1.5 | equivalent | SNOMED CT | #74964007 |
| oBDS-CS strahlentherapie-zielgebiet | #2.1 | equivalent | SNOMED CT | #81745001 |
| oBDS-CS strahlentherapie-zielgebiet | #2.10 | equivalent | SNOMED CT | #4596009 |
| oBDS-CS strahlentherapie-zielgebiet | #2.11 | equivalent | SNOMED CT | #69748006 |
| oBDS-CS strahlentherapie-zielgebiet | #2.12 | equivalent | SNOMED CT | #774007 |
| oBDS-CS strahlentherapie-zielgebiet | #2.2 | equivalent | SNOMED CT | #1286894002 |
| oBDS-CS strahlentherapie-zielgebiet | #2.3 | equivalent | SNOMED CT | #74262004 |
| oBDS-CS strahlentherapie-zielgebiet | #2.4 | equivalent | SNOMED CT | #117590005 |
| oBDS-CS strahlentherapie-zielgebiet | #2.5 | equivalent | SNOMED CT | #385294005 |
| oBDS-CS strahlentherapie-zielgebiet | #2.6 | equivalent | SNOMED CT | #54066008 |
| oBDS-CS strahlentherapie-zielgebiet | #2.7 | equivalent | SNOMED CT | #71836000 |
| oBDS-CS strahlentherapie-zielgebiet | #2.8 | equivalent | SNOMED CT | #31389004 |
| oBDS-CS strahlentherapie-zielgebiet | #2.9 | equivalent | SNOMED CT | #81502006 |
| oBDS-CS strahlentherapie-zielgebiet | #3.1 | equivalent | SNOMED CT | #181131000 |
| oBDS-CS strahlentherapie-zielgebiet | #3.2 | equivalent | SNOMED CT | #119184005 |
| oBDS-CS strahlentherapie-zielgebiet | #3.3 | equivalent | SNOMED CT | #78904004 |
| oBDS-CS strahlentherapie-zielgebiet | #3.4 | equivalent | SNOMED CT | #39607008 |
| oBDS-CS strahlentherapie-zielgebiet | #3.5 | equivalent | SNOMED CT | #32849002 |
| oBDS-CS strahlentherapie-zielgebiet | #3.6 | equivalent | SNOMED CT | #72410000 |
| oBDS-CS strahlentherapie-zielgebiet | #3.7 | equivalent | SNOMED CT | #9875009 |
| oBDS-CS strahlentherapie-zielgebiet | #3.8 | equivalent | SNOMED CT | #51185008 |
| oBDS-CS strahlentherapie-zielgebiet | #4.1 | equivalent | SNOMED CT | #69695003 |
| oBDS-CS strahlentherapie-zielgebiet | #4.10 | equivalent | SNOMED CT | #80581009 |
| oBDS-CS strahlentherapie-zielgebiet | #4.11 | equivalent | SNOMED CT | #28273000 |
| oBDS-CS strahlentherapie-zielgebiet | #4.12 | equivalent | SNOMED CT | #28231008 |
| oBDS-CS strahlentherapie-zielgebiet | #4.13 | equivalent | SNOMED CT | #818983003 |
| oBDS-CS strahlentherapie-zielgebiet | #4.2 | equivalent | SNOMED CT | #15776009 |
| oBDS-CS strahlentherapie-zielgebiet | #4.3 | source-is-narrower-than-target | SNOMED CT | #10200004 |
| oBDS-CS strahlentherapie-zielgebiet | #4.4 | equivalent | SNOMED CT | #78961009 |
| oBDS-CS strahlentherapie-zielgebiet | #4.5 | equivalent | SNOMED CT | #64033007 |
| oBDS-CS strahlentherapie-zielgebiet | #4.6 | equivalent | SNOMED CT | #23451007 |
| oBDS-CS strahlentherapie-zielgebiet | #4.7 | equivalent | SNOMED CT | #82849001 |
| oBDS-CS strahlentherapie-zielgebiet | #4.8 | equivalent | SNOMED CT | #87953007 |
| oBDS-CS strahlentherapie-zielgebiet | #4.9 | equivalent | SNOMED CT | #822992007 |
| oBDS-CS strahlentherapie-zielgebiet | #5.1 | equivalent | SNOMED CT | #34402009 |
| oBDS-CS strahlentherapie-zielgebiet | #5.10 | equivalent | SNOMED CT | #76784001 |
| oBDS-CS strahlentherapie-zielgebiet | #5.11 | equivalent | SNOMED CT | #3665003 |
| oBDS-CS strahlentherapie-zielgebiet | #5.12 | equivalent | SNOMED CT | #826984001 |
| oBDS-CS strahlentherapie-zielgebiet | #5.2 | equivalent | SNOMED CT | #53505006 |
| oBDS-CS strahlentherapie-zielgebiet | #5.3 | equivalent | SNOMED CT | #89837001 |
| oBDS-CS strahlentherapie-zielgebiet | #5.4 | equivalent | SNOMED CT | #41216001 |
| oBDS-CS strahlentherapie-zielgebiet | #5.5 | equivalent | SNOMED CT | #40689003 |
| oBDS-CS strahlentherapie-zielgebiet | #5.6 | equivalent | SNOMED CT | #18911002 |
| oBDS-CS strahlentherapie-zielgebiet | #5.7 | equivalent | SNOMED CT | #35039007 |
| oBDS-CS strahlentherapie-zielgebiet | #5.8 | equivalent | SNOMED CT | #71252005 |
| oBDS-CS strahlentherapie-zielgebiet | #5.9 | equivalent | SNOMED CT | #45292006 |
| oBDS-CS strahlentherapie-zielgebiet | #6.1 | equivalent | SNOMED CT | #89546000 |
| oBDS-CS strahlentherapie-zielgebiet | #6.10 | source-is-narrower-than-target | SNOMED CT | #896747000 |
| oBDS-CS strahlentherapie-zielgebiet | #6.11 | equivalent | SNOMED CT | #85050009 |
| oBDS-CS strahlentherapie-zielgebiet | #6.12 | equivalent | SNOMED CT | #299701004 |
| oBDS-CS strahlentherapie-zielgebiet | #6.13 | equivalent | SNOMED CT | #24097009 |
| oBDS-CS strahlentherapie-zielgebiet | #6.14 | equivalent | SNOMED CT | #12921003 |
| oBDS-CS strahlentherapie-zielgebiet | #6.15 | equivalent | SNOMED CT | #28254004 |
| oBDS-CS strahlentherapie-zielgebiet | #6.16 | equivalent | SNOMED CT | #71341001 |
| oBDS-CS strahlentherapie-zielgebiet | #6.17 | equivalent | SNOMED CT | #702468001 |
| oBDS-CS strahlentherapie-zielgebiet | #6.18 | equivalent | SNOMED CT | #84167007 |
| oBDS-CS strahlentherapie-zielgebiet | #6.19 | source-is-narrower-than-target | SNOMED CT | #74964007 |
| oBDS-CS strahlentherapie-zielgebiet | #6.2 | equivalent | SNOMED CT | #31467002 |
| oBDS-CS strahlentherapie-zielgebiet | #6.3 | equivalent | SNOMED CT | #363654007 |
| oBDS-CS strahlentherapie-zielgebiet | #6.4 | equivalent | SNOMED CT | #84667006 |
| oBDS-CS strahlentherapie-zielgebiet | #6.5 | equivalent | SNOMED CT | #35769007 |
| oBDS-CS strahlentherapie-zielgebiet | #6.6 | equivalent | SNOMED CT | #73903008 |
| oBDS-CS strahlentherapie-zielgebiet | #6.7 | equivalent | SNOMED CT | #699698002 |
| oBDS-CS strahlentherapie-zielgebiet | #6.8 | equivalent | SNOMED CT | #113197003 |
| oBDS-CS strahlentherapie-zielgebiet | #6.9 | equivalent | SNOMED CT | #56873002 |
| oBDS-CS strahlentherapie-zielgebiet | #7.1 | equivalent | SNOMED CT | #774007 |
| oBDS-CS strahlentherapie-zielgebiet | #7.2 | equivalent | SNOMED CT | #53120007 |
| oBDS-CS strahlentherapie-zielgebiet | #7.3 | equivalent | SNOMED CT | #61685007 |
| oBDS-CS strahlentherapie-zielgebiet | #7.4 | equivalent | SNOMED CT | #51185008 |
| oBDS-CS strahlentherapie-zielgebiet | #7.5 | equivalent | SNOMED CT | #302553009 |
| oBDS-CS strahlentherapie-zielgebiet | #7.6 | equivalent | SNOMED CT | #12921003 |
| oBDS-CS strahlentherapie-zielgebiet | #7.7 | equivalent | SNOMED CT | #1490004 |
| oBDS-CS strahlentherapie-zielgebiet | #7.8 | equivalent | SNOMED CT | #276825009 |
| oBDS-CS strahlentherapie-zielgebiet | #7.9 | source-is-narrower-than-target | SNOMED CT | #74964007 |
| oBDS-CS strahlentherapie-zielgebiet | #8.1 | equivalent | SNOMED CT | #181469002 |
| oBDS-CS strahlentherapie-zielgebiet | #8.2 | equivalent | SNOMED CT | #119181002 |
| oBDS-CS strahlentherapie-zielgebiet | #9.1 | equivalent | SNOMED CT | #81105003 |
| oBDS-CS strahlentherapie-zielgebiet | #9.10 | equivalent | SNOMED CT | #54268001 |
| oBDS-CS strahlentherapie-zielgebiet | #9.11 | equivalent | SNOMED CT | #8928004 |
| oBDS-CS strahlentherapie-zielgebiet | #9.13 | equivalent | SNOMED CT | #397440000 |
| oBDS-CS strahlentherapie-zielgebiet | #9.15 | source-is-narrower-than-target | SNOMED CT | #59441001 |
| oBDS-CS strahlentherapie-zielgebiet | #9.2 | equivalent | SNOMED CT | #9659009 |
| oBDS-CS strahlentherapie-zielgebiet | #9.3 | equivalent | SNOMED CT | #245269009 |
| oBDS-CS strahlentherapie-zielgebiet | #9.4 | source-is-broader-than-target | SNOMED CT | #245282001 |
| oBDS-CS strahlentherapie-zielgebiet | #9.5 | equivalent | SNOMED CT | #62683002 |
| oBDS-CS strahlentherapie-zielgebiet | #9.6 | equivalent | SNOMED CT | #264016003 |
| oBDS-CS strahlentherapie-zielgebiet | #9.7 | equivalent | SNOMED CT | #818991007 |
| oBDS-CS strahlentherapie-zielgebiet | #9.8 | source-is-broader-than-target | SNOMED CT | #245285004 |
| oBDS-CS strahlentherapie-zielgebiet | #9.9 | equivalent | SNOMED CT | #91394001 |
| oBDS-CS strahlentherapie-zielgebiet | #10.1 | source-is-narrower-than-target | SNOMED CT | #38266002 |
| oBDS-CS strahlentherapie-zielgebiet | #10.2 | equivalent | SNOMED CT | #309795001 |
| oBDS-CS strahlentherapie-zielgebiet | #10.3 | equivalent | SNOMED CT | #74964007 |
| oBDS-CS studienteilnahme | #J | equivalent | SNOMED CT | #373066001 |
| oBDS-CS studienteilnahme | #N | equivalent | SNOMED CT | #373067005 |
| oBDS-CS studienteilnahme | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS therapie-stellungzurop | #A | equivalent | SNOMED CT | #373846009 |
| oBDS-CS therapie-stellungzurop | #I | equivalent | SNOMED CT | #277671009 |
| oBDS-CS therapie-stellungzurop | #N | equivalent | SNOMED CT | #373847000 |
| oBDS-CS therapie-stellungzurop | #S | equivalent | SNOMED CT | #74964007 |
| oBDS-CS therapie-stellungzurop | #Z | equivalent | SNOMED CT | #260364009 |
| oBDS-CS therapie-typ |  | source-is-broader-than-target | SNOMED CT | #1255831008 |
| oBDS-CS therapie-typ |  | source-is-broader-than-target | SNOMED CT | #1255831008 |
| oBDS-CS therapie-typ | #AS | equivalent | SNOMED CT | #424313000 |
| oBDS-CS therapie-typ | #CH | equivalent | SNOMED CT | #367336001 |
| oBDS-CS therapie-typ | #CI | equivalent | SNOMED CT | #897713009 |
| oBDS-CS therapie-typ | #CIZ | source-is-broader-than-target | SNOMED CT | #897713009 |
| oBDS-CS therapie-typ | #CZ | equivalent | SNOMED CT | #1255831008 |
| oBDS-CS therapie-typ | #HO | equivalent | SNOMED CT | #169413002 |
| oBDS-CS therapie-typ | #IM | equivalent | SNOMED CT | #897713009 |
| oBDS-CS therapie-typ | #IZ | source-is-broader-than-target | SNOMED CT | #76334006 |
| oBDS-CS therapie-typ | #KW | equivalent | SNOMED CT | #897016006 |
| oBDS-CS therapie-typ | #OP | equivalent | SNOMED CT | #387713003 |
| oBDS-CS therapie-typ | #SO | equivalent | SNOMED CT | #74964007 |
| oBDS-CS therapie-typ | #ST | equivalent | SNOMED CT | #1287742003 |
| oBDS-CS therapie-typ | #SZ | equivalent | SNOMED CT | #1269349006 |
| oBDS-CS therapie-typ | #WS | equivalent | SNOMED CT | #310341009 |
| oBDS-CS therapie-typ | #WW | equivalent | SNOMED CT | #373818007 |
| oBDS-CS therapie-typ | #ZS | equivalent | SNOMED CT | #1255831008 |
| oBDS-CS therapieabweichung | #J | equivalent | SNOMED CT | #373066001 |
| oBDS-CS therapieabweichung | #N | equivalent | SNOMED CT | #373067005 |
| oBDS-CS therapieabweichung | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS therapieplanung-typ | #postop | source-is-narrower-than-target | SNOMED CT | #262061000 |
| oBDS-CS therapieplanung-typ | #postth | source-is-narrower-than-target | SNOMED CT | #303110006 |
| oBDS-CS therapieplanung-typ | #praeth | source-is-narrower-than-target | SNOMED CT | #307153007 |
| oBDS-CS tod | #J | source-is-narrower-than-target | SNOMED CT | #373066001 |
| oBDS-CS tod | #N | source-is-narrower-than-target | SNOMED CT | #373067005 |
| oBDS-CS tod | #U | source-is-narrower-than-target | SNOMED CT | #261665006 |
| oBDS-CS verlauf-fernmetastasen |  | source-is-broader-than-target | SNOMED CT | #263855007 |
| oBDS-CS verlauf-fernmetastasen | #F | equivalent | SNOMED CT | #64957009 |
| oBDS-CS verlauf-fernmetastasen | #K | equivalent | SNOMED CT | #261985008 |
| oBDS-CS verlauf-fernmetastasen | #N | equivalent | SNOMED CT | #260388006 |
| oBDS-CS verlauf-fernmetastasen | #P | equivalent | SNOMED CT | #255314001 |
| oBDS-CS verlauf-fernmetastasen | #R | source-is-broader-than-target | SNOMED CT | #7147002 |
| oBDS-CS verlauf-fernmetastasen | #T | equivalent | SNOMED CT | #65320000 |
| oBDS-CS verlauf-fernmetastasen | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS verlauf-fernmetastasen | #X | equivalent | SNOMED CT | #1287211007 |
| oBDS-CS verlauf-gesamtbeurteilung | #B | equivalent | SNOMED CT | #84190002 |
| oBDS-CS verlauf-gesamtbeurteilung | #K | equivalent | SNOMED CT | #260388006 |
| oBDS-CS verlauf-gesamtbeurteilung | #P | equivalent | SNOMED CT | #419835002 |
| oBDS-CS verlauf-gesamtbeurteilung | #R | source-is-narrower-than-target | SNOMED CT | #550991000124107 |
| oBDS-CS verlauf-gesamtbeurteilung | #T | equivalent | SNOMED CT | #551001000124108 |
| oBDS-CS verlauf-gesamtbeurteilung | #U | equivalent | SNOMED CT | #385432009 |
| oBDS-CS verlauf-gesamtbeurteilung | #V | equivalent | SNOMED CT | #550991000124107 |
| oBDS-CS verlauf-gesamtbeurteilung | #X | equivalent | SNOMED CT | #1287211007 |
| oBDS-CS verlauf-gesamtbeurteilung | #Y | equivalent | SNOMED CT | #1259237005 |
| oBDS-CS verlauf-lymphknoten | #F | equivalent | SNOMED CT | #64957009 |
| oBDS-CS verlauf-lymphknoten | #K | equivalent | SNOMED CT | #399647000 |
| oBDS-CS verlauf-lymphknoten | #N | equivalent | SNOMED CT | #260388006 |
| oBDS-CS verlauf-lymphknoten | #P | equivalent | SNOMED CT | #255314001 |
| oBDS-CS verlauf-lymphknoten | #R | equivalent | SNOMED CT | #263855007 |
| oBDS-CS verlauf-lymphknoten | #T | equivalent | SNOMED CT | #65320000 |
| oBDS-CS verlauf-lymphknoten | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS verlauf-lymphknoten | #X | equivalent | SNOMED CT | #1287211007 |
| oBDS-CS verlauf-primaertumor | #F | equivalent | SNOMED CT | #64957009 |
| oBDS-CS verlauf-primaertumor | #K | equivalent | SNOMED CT | #58899004 |
| oBDS-CS verlauf-primaertumor | #N | equivalent | SNOMED CT | #260388006 |
| oBDS-CS verlauf-primaertumor | #P | equivalent | SNOMED CT | #255314001 |
| oBDS-CS verlauf-primaertumor | #R | equivalent | SNOMED CT | #1259237005 |
| oBDS-CS verlauf-primaertumor | #T | equivalent | SNOMED CT | #65320000 |
| oBDS-CS verlauf-primaertumor | #U | equivalent | SNOMED CT | #261665006 |
| oBDS-CS verlauf-primaertumor | #X | equivalent | SNOMED CT | #1287211007 |

### References

The CDS module Oncology is based on the German oncology base dataset (oBDS) in the version published in the Federal Gazette in 2021. The content is publicly available:

* oBDS website with all relevant data fields, descriptions and answer options: [basisdatensatz.de/basisdatensatz](https://basisdatensatz.de/basisdatensatz)
* The oBDS XML schema (hierarchy, field IDs, data validation): [current version](https://basisdatensatz.de/xml/oBDS_v3.0.3.xsd), [older versions](https://basisdatensatz.de/xml/)
* Implementation guide of the §65c cancer registry platform on [Confluence](https://plattform65c.atlassian.net/wiki/spaces/UMK/overview), in particular the [data model](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532576/Datenmodell) and the [report contents](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532143/Meldungsinhalte)
* Older preparatory work on representing the oBDS as an information model on [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.62&conceptEffectiveDate=2018-06-06T06%3A13%3A32) (does not fully reflect the current state)

### Quality assurance and validation

> With the move to the HL7 IG Publisher, the authoritative QA report is generated automatically on every build (see `qa.html` in the published guide). The validation configuration with justified suppressions lives in [`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/dev/advisor.json); continuous validation runs via [GitHub Actions](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/actions).

The following state, last maintained manually for version 2026.0.0 (2025-12-16), is kept as historical documentation of the Simplifier era:

* **Actionable errors**: 9 · **Filtered messages**: ~700+ (via advisor.json)
* Filtered were in particular `Terminology_TX_NoValid_16` (~310, external TX-server limitation), `eld-20` (~294, validator limitation), `UNABLE_TO_INFER_CODESYSTEM` (~100), `MSG_DRAFT` (~14) and `dom-6`.
* Remaining error categories concerned, among others, breast receptor-status codes, the MedDRA binding of the AdverseEvent (proprietary terminology, external) and the TX-server availability of individual ICD-O morphology codes.

If you want to contribute to improving validation: check the current CI runs, download the validation artifacts and create an issue or pull request in the [GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie).

