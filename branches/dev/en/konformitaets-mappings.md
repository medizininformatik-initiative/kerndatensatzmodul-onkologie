# Concept Mappings: Overview and Review - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Code Systems**](code-systems.md)
* **Concept Mappings: Overview and Review**

## Concept Mappings: Overview and Review

### Purpose of this page

This page collects **all concept mappings of the module in one place** — for technical and clinical review. The tables are **not maintained by hand**: they are generated at build time with SQL queries against the package database of this IG (Liquid `sql` tag, see [IG SQL guidance](https://build.fhir.org/ig/FHIR/ig-guidance/sql.html)). They therefore always show the state of the artefacts actually built — an edit to a ConceptMap is visible here on the next build, with no duplicate maintenance.

Every individual ConceptMap also renders as its own page under [Artifacts](artifacts.md); this page is the cross-cutting view.

**Reliability differs by mapping.** Officially maintained mappings (e.g. the KDL→IHE-XDS map of the DVMD) are marked as such on the respective terminology page. All mappings whose source system is a module-internal CodeSystem, plus the MedDRA→SNOMED CT and ICD-O transition maps, are **project-side curations** — verified against a terminology server, but without any guarantee of completeness or correctness. Independent professional review is required before use in production systems. Details and version pins: see the linked terminology pages.

### Overview: mappings per source system

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Quellsystem | Mappings | Aequivalent | Enger | Weiter |
| MedDRA (CTCAE v4.03) | 708 | 638 | 42 | 28 |
| UICC TNM | 189 | 189 | 0 | 0 |
| ATC (BfArM) | [SNOMED CT to ICD-10-CM mappings for fracture of ulna](103) | [SNOMED CT to ICD-10-CM mappings for fracture of ulna](103) | 0 | 0 |
| oBDS-CS strahlentherapie-zielgebiet | 96 | 88 | 6 | 2 |
| oBDS-CS operation-komplikation | 77 | 66 | 4 | 7 |
| ICD-O-3 | 57 | 41 | 8 | 8 |
| oBDS-CS strahlentherapie-strahlenart | 19 | 17 | 0 | 2 |
| oBDS-CS therapie-typ | 18 | 14 | 0 | 4 |
| oBDS-CS strahlentherapie-applikationsart | 15 | 8 | 7 | 0 |
| oBDS-CS primaertumor-diagnosesicherung | 15 | 10 | 0 | 5 |
| oBDS-CS grading | 12 | 12 | 0 | 0 |
| oBDS-CS fernmetastasen | 12 | 12 | 0 | 0 |
| oBDS-CS allgemeiner-leistungszustand-karnofsky | 11 | 11 | 0 | 0 |
| oBDS-CS allgemeiner-leistungszustand-ecog | 11 | 11 | 0 | 0 |
| oBDS-CS verlauf-gesamtbeurteilung | 9 | 8 | 1 | 0 |
| oBDS-CS verlauf-fernmetastasen | 9 | 7 | 0 | 2 |
| oBDS-CS verlauf-primaertumor | 8 | 8 | 0 | 0 |
| oBDS-CS verlauf-lymphknoten | 8 | 8 | 0 | 0 |
| oBDS-CS nebenwirkung-ctcae-grad | 7 | 7 | 0 | 0 |
| oBDS-CS intention | 7 | 6 | 1 | 0 |
| oBDS-CS seitenlokalisation | 6 | 6 | 0 | 0 |
| oBDS-CS https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende | 6 | 4 | 2 | 0 |
| oBDS-CS genetische-variante-auspraegung | 6 | 6 | 0 | 0 |
| oBDS-CS asa-obds | 6 | 6 | 0 | 0 |
| oBDS-CS therapie-stellungzurop | 5 | 5 | 0 | 0 |
| oBDS-CS strahlentherapie-boost | 5 | 2 | 3 | 0 |
| [MII PR Onkologie Diagnose Primärtumor](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor) | 5 | 5 | 0 | 0 |
| oBDS-CS krk-stoma-anzeichnung | 4 | 4 | 0 | 0 |
| [MII PR Onkologie TNM-Klassifikation](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation) | 4 | 4 | 0 | 0 |
| [Unified Code for Units of Measure (UCUM)](http://unitsofmeasure.org) | 4 | 4 | 0 | 0 |
| oBDS-CS tod | 3 | 0 | 3 | 0 |
| oBDS-CS therapieplanung-typ | 3 | 0 | 3 | 0 |
| oBDS-CS therapieabweichung | 3 | 3 | 0 | 0 |
| oBDS-CS studienteilnahme | 3 | 3 | 0 | 0 |
| [https://www.medizininformatik-initiative.de/fhir/ext/modul-diagnose/StructureDefinition/Diagnose](https://www.medizininformatik-initiative.de/fhir/ext/modul-diagnose/StructureDefinition/Diagnose) | 2 | 0 | 0 | 2 |
| [MII PR Onkologie Grading](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-grading) | 1 | 1 | 0 | 0 |
| [MII PR Onkologie Allgemeiner Leistungszustand ECOG](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog) | 1 | 1 | 0 | 0 |

### oBDS code systems → SNOMED CT / LOINC

The semantic annotation of the oBDS value lists. Source codes are the module's own CodeSystems (`mii-cs-onko-*`), targets are international terminologies.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Quellsystem | Code | Beziehung | Zielsystem | Zielcode |
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

### MedDRA (CTCAE v4.03) → SNOMED CT

Curated assignment of the CTCAE adverse-event terms; see [`mii-cm-onko-nebenwirkung-meddra-sct`](ConceptMap-mii-cm-onko-nebenwirkung-meddra-sct.md) for the curation method, version pin and the disclaimer. Terms without a defensible SNOMED CT equivalent are deliberately absent here and remain MedDRA-only.

| | | |
| :--- | :--- | :--- |
| MedDRA | Beziehung | SNOMED |
| #10000060 | equivalent | #41931001 |
| #10000081 | equivalent | #21522001 |
| #10000486 | equivalent | #51387008 |
| #10000521 | equivalent | #77949003 |
| #10000636 | source-is-narrower-than-target | #409675001 |
| #10001367 | equivalent | #386584007 |
| #10001409 | equivalent | #67782005 |
| #10001497 | equivalent | #24199005 |
| #10001540 | equivalent | #285145004 |
| #10001551 | equivalent | #409673008 |
| #10001598 | equivalent | #102612005 |
| #10001675 | equivalent | #274770006 |
| #10001680 | equivalent | #21420006 |
| #10001718 | equivalent | #419076005 |
| #10001723 | equivalent | #61582004 |
| #10001760 | equivalent | #56317004 |
| #10001949 | equivalent | #48167000 |
| #10002156 | equivalent | #786878009 |
| #10002167 | equivalent | #68653001 |
| #10002176 | equivalent | #64153009 |
| #10002180 | equivalent | #20928004 |
| #10002218 | equivalent | #39579001 |
| #10002272 | equivalent | #271737000 |
| #10002544 | equivalent | #16114001 |
| #10002646 | equivalent | #79890006 |
| #10002652 | equivalent | #62607004 |
| #10002855 | equivalent | #48694002 |
| #10002899 | equivalent | #444036008 |
| #10002953 | equivalent | #441913003 |
| #10002972 | equivalent | #1023001 |
| #10003011 | equivalent | #74400008 |
| #10003012 | equivalent | #286967008 |
| #10003074 | equivalent | #8217007 |
| #10003162 | equivalent | #63043004 |
| #10003239 | equivalent | #57676002 |
| #10003246 | equivalent | #3723001 |
| #10003445 | equivalent | #389026000 |
| #10003481 | equivalent | #166669000 |
| #10003504 | equivalent | #68052005 |
| #10003586 | equivalent | #397829000 |
| #10003591 | equivalent | #20262006 |
| #10003598 | equivalent | #46621007 |
| #10003658 | equivalent | #49436004 |
| #10003662 | equivalent | #5370000 |
| #10003673 | equivalent | #27885002 |
| #10003674 | equivalent | #270492004 |
| #10003883 | equivalent | #48188009 |
| #10003988 | equivalent | #161891005 |
| #10004665 | equivalent | #53206008 |
| #10005047 | equivalent | #38822007 |
| #10005265 | equivalent | #116289008 |
| #10005329 | source-is-narrower-than-target | #414027002 |
| #10005364 | equivalent | #166612004 |
| #10005561 | source-is-broader-than-target | #131024003 |
| #10005778 | equivalent | #131007009 |
| #10005886 | equivalent | #111516008 |
| #10005901 | equivalent | #81917002 |
| #10006002 | equivalent | #12584003 |
| #10006179 | equivalent | #20897003 |
| #10006259 | equivalent | #198108005 |
| #10006298 | equivalent | #53430007 |
| #10006437 | equivalent | #233791001 |
| #10006440 | equivalent | #36925002 |
| #10006482 | equivalent | #4386001 |
| #10006504 | equivalent | #125667009 |
| #10006556 | equivalent | #7231009 |
| #10006634 | equivalent | #125666000 |
| #10007196 | equivalent | #87730004 |
| #10007515 | equivalent | #410429000 |
| #10007541 | source-is-narrower-than-target | #56265001 |
| #10007612 | equivalent | #444931001 |
| #10007613 | source-is-narrower-than-target | #1363512008 |
| #10007739 | equivalent | #193570009 |
| #10007810 | equivalent | #440653007 |
| #10008164 | equivalent | #230744007 |
| #10008330 | equivalent | #1340188003 |
| #10008417 | equivalent | #7847004 |
| #10008481 | equivalent | #426396005 |
| #10008496 | equivalent | #102588006 |
| #10008531 | equivalent | #43724002 |
| #10008612 | equivalent | #76581006 |
| #10008661 | equivalent | #13644009 |
| #10009845 | equivalent | #386806002 |
| #10009887 | equivalent | #64226004 |
| #10009995 | equivalent | #197250003 |
| #10009998 | equivalent | #95540002 |
| #10010000 | equivalent | #40650009 |
| #10010001 | equivalent | #50257008 |
| #10010004 | equivalent | #19132000 |
| #10010006 | equivalent | #46040000 |
| #10010250 | equivalent | #26329005 |
| #10010276 | equivalent | #44808001 |
| #10010300 | equivalent | #40917007 |
| #10010331 | source-is-narrower-than-target | #66091009 |
| #10010741 | equivalent | #9826008 |
| #10010742 | equivalent | #299699004 |
| #10010774 | equivalent | #14760008 |
| #10010783 | equivalent | #85598007 |
| #10011224 | equivalent | #49727002 |
| #10011268 | equivalent | #432352001 |
| #10011368 | equivalent | #166717003 |
| #10011655 | source-is-broader-than-target | #67967009 |
| #10011912 | equivalent | #276506001 |
| #10011914 | equivalent | #419620001 |
| #10012174 | equivalent | #34095006 |
| #10012205 | equivalent | #400003000 |
| #10012218 | equivalent | #2776000 |
| #10012260 | equivalent | #2073000 |
| #10012318 | equivalent | #80967001 |
| #10012373 | equivalent | #443371007 |
| #10012378 | equivalent | #35489007 |
| #10012727 | equivalent | #62315008 |
| #10013442 | equivalent | #67406007 |
| #10013573 | equivalent | #404640003 |
| #10013774 | equivalent | #162290004 |
| #10013781 | equivalent | #87715008 |
| #10013786 | equivalent | #52475004 |
| #10013828 | equivalent | #7780000 |
| #10013830 | equivalent | #95532008 |
| #10013832 | equivalent | #270909006 |
| #10013836 | equivalent | #51868009 |
| #10013887 | equivalent | #8011004 |
| #10013911 | equivalent | #271801002 |
| #10013934 | equivalent | #266599000 |
| #10013941 | equivalent | #71315007 |
| #10013946 | equivalent | #162031009 |
| #10013950 | equivalent | #40739000 |
| #10013951 | equivalent | #20301004 |
| #10013963 | equivalent | #267036007 |
| #10013993 | source-is-narrower-than-target | #25906001 |
| #10014020 | equivalent | #301354004 |
| #10014217 | equivalent | #2032001 |
| #10014222 | equivalent | #445088006 |
| #10014326 | equivalent | #386790008 |
| #10014383 | source-is-narrower-than-target | #111975006 |
| #10014594 | equivalent | #312215006 |
| #10014621 | equivalent | #721249007 |
| #10014625 | equivalent | #81308009 |
| #10014678 | equivalent | #233850007 |
| #10014698 | source-is-narrower-than-target | #362969004 |
| #10014801 | equivalent | #1847009 |
| #10014893 | equivalent | #43752006 |
| #10015090 | equivalent | #249366005 |
| #10015218 | equivalent | #36715001 |
| #10015277 | equivalent | #399992009 |
| #10015384 | equivalent | #15238002 |
| #10015387 | equivalent | #405247003 |
| #10015388 | equivalent | #102619001 |
| #10015448 | equivalent | #63305008 |
| #10015451 | equivalent | #30811009 |
| #10015453 | equivalent | #17709002 |
| #10015461 | equivalent | #16761005 |
| #10015533 | equivalent | #85949006 |
| #10015688 | equivalent | #416189003 |
| #10015829 | equivalent | #35158001 |
| #10015832 | equivalent | #76349003 |
| #10015919 | source-is-narrower-than-target | #371405004 |
| #10015929 | equivalent | #128351009 |
| #10015958 | equivalent | #41652007 |
| #10016059 | equivalent | #95668009 |
| #10016173 | equivalent | #161898004 |
| #10016241 | equivalent | #248315005 |
| #10016256 | equivalent | #84229001 |
| #10016288 | equivalent | #409089005 |
| #10016296 | equivalent | #72042002 |
| #10016479 | equivalent | #276507005 |
| #10016558 | equivalent | #386661006 |
| #10016596 | equivalent | #131177005 |
| #10016750 | equivalent | #247355005 |
| #10016757 | equivalent | #162277006 |
| #10016766 | equivalent | #249504006 |
| #10016778 | equivalent | #162278001 |
| #10016791 | equivalent | #95891005 |
| #10016825 | equivalent | #238810007 |
| #10016987 | equivalent | #46154005 |
| #10017076 | equivalent | #125605004 |
| #10017577 | equivalent | #22325002 |
| #10017631 | equivalent | #16957005 |
| #10017636 | equivalent | #75726005 |
| #10017638 | equivalent | #102628000 |
| #10017639 | equivalent | #25345001 |
| #10017789 | equivalent | #61401005 |
| #10017815 | equivalent | #235674005 |
| #10017822 | equivalent | #397825006 |
| #10017853 | equivalent | #4556007 |
| #10017877 | equivalent | #37831005 |
| #10017947 | source-is-narrower-than-target | #53619000 |
| #10017999 | equivalent | #301362007 |
| #10018043 | equivalent | #235675006 |
| #10018146 | equivalent | #300891008 |
| #10018286 | equivalent | #11114002 |
| #10018304 | equivalent | #23986001 |
| #10018748 | equivalent | #131004002 |
| #10018761 | equivalent | #444896005 |
| #10018801 | equivalent | #4754008 |
| #10019077 | equivalent | #7011001 |
| #10019211 | equivalent | #25064002 |
| #10019245 | equivalent | #15188001 |
| #10019279 | equivalent | #84114007 |
| #10019428 | equivalent | #385494008 |
| #10019450 | equivalent | #34436003 |
| #10019489 | equivalent | #68600005 |
| #10019491 | equivalent | #73320003 |
| #10019515 | equivalent | #111407006 |
| #10019611 | equivalent | #70153002 |
| #10019663 | equivalent | #59927004 |
| #10019678 | equivalent | #16763008 |
| #10019692 | equivalent | #87248009 |
| #10019705 | equivalent | #102626001 |
| #10019799 | equivalent | #3738000 |
| #10019805 | source-is-narrower-than-target | #1290917001 |
| #10020039 | equivalent | #65958008 |
| #10020100 | equivalent | #263225007 |
| #10020112 | equivalent | #399939002 |
| #10020201 | equivalent | #50219008 |
| #10020407 | source-is-narrower-than-target | #238810007 |
| #10020508 | equivalent | #230745008 |
| #10020587 | equivalent | #66931009 |
| #10020639 | equivalent | #80394007 |
| #10020642 | equivalent | #312230002 |
| #10020647 | equivalent | #14140009 |
| #10020670 | equivalent | #66978005 |
| #10020680 | equivalent | #771115008 |
| #10020705 | equivalent | #66999008 |
| #10020765 | equivalent | #77692006 |
| #10020772 | equivalent | #38341003 |
| #10020850 | equivalent | #34486009 |
| #10020864 | equivalent | #29966009 |
| #10020870 | equivalent | #302870006 |
| #10020907 | equivalent | #35885006 |
| #10020943 | equivalent | #119247004 |
| #10020949 | equivalent | #5291005 |
| #10021005 | equivalent | #302866003 |
| #10021013 | equivalent | #45004005 |
| #10021018 | equivalent | #43339004 |
| #10021028 | equivalent | #190855004 |
| #10021038 | equivalent | #89627008 |
| #10021041 | equivalent | #36976004 |
| #10021059 | equivalent | #4996001 |
| #10021097 | equivalent | #45007003 |
| #10021113 | equivalent | #386689009 |
| #10021114 | equivalent | #40930008 |
| #10021143 | equivalent | #389086002 |
| #10021305 | equivalent | #282068002 |
| #10021307 | equivalent | #355468491000132106 |
| #10021309 | equivalent | #50565005 |
| #10021328 | equivalent | #710572000 |
| #10021428 | source-is-narrower-than-target | #414029004 |
| #10021881 | source-is-narrower-than-target | #40733004 |
| #10021918 | equivalent | #29689003 |
| #10022161 | equivalent | #6956001 |
| #10022213 | equivalent | #56515006 |
| #10022356 | equivalent | #38261007 |
| #10022402 | equivalent | #313341008 |
| #10022437 | equivalent | #193462001 |
| #10022763 | equivalent | #1386000 |
| #10022992 | equivalent | #80182007 |
| #10022998 | equivalent | #55929007 |
| #10023030 | equivalent | #287731003 |
| #10023174 | equivalent | #282060009 |
| #10023176 | equivalent | #903952141000132105 |
| #10023177 | equivalent | #54822007 |
| #10023215 | equivalent | #387637008 |
| #10023216 | equivalent | #363162000 |
| #10023332 | equivalent | #5888003 |
| #10023424 | equivalent | #129128006 |
| #10023509 | equivalent | #414564002 |
| #10023838 | equivalent | #51599000 |
| #10023862 | equivalent | #75547007 |
| #10023874 | equivalent | #45913009 |
| #10023891 | equivalent | #406444002 |
| #10024264 | equivalent | #214264003 |
| #10024378 | equivalent | #111583006 |
| #10024382 | equivalent | #22811006 |
| #10024419 | equivalent | #8357008 |
| #10024421 | equivalent | #58436003 |
| #10024561 | equivalent | #36269003 |
| #10024574 | equivalent | #432034007 |
| #10024842 | equivalent | #61960001 |
| #10025182 | equivalent | #301360004 |
| #10025233 | equivalent | #234097001 |
| #10025256 | equivalent | #1156294003 |
| #10025258 | equivalent | #418010004 |
| #10025476 | equivalent | #32230006 |
| #10025482 | equivalent | #367391008 |
| #10026749 | equivalent | #231494001 |
| #10027175 | equivalent | #386807006 |
| #10027198 | equivalent | #70784009 |
| #10027199 | equivalent | #7180009 |
| #10027308 | equivalent | #289903006 |
| #10027313 | equivalent | #386692008 |
| #10027433 | source-is-narrower-than-target | #75934005 |
| #10027786 | equivalent | #28189009 |
| #10027787 | equivalent | #54016002 |
| #10028041 | equivalent | #267078001 |
| #10028130 | equivalent | #61170000 |
| #10028154 | equivalent | #57653000 |
| #10028395 | source-is-narrower-than-target | #928000 |
| #10028411 | equivalent | #68962001 |
| #10028524 | equivalent | #41370002 |
| #10028533 | equivalent | #109995007 |
| #10028596 | equivalent | #22298006 |
| #10028606 | equivalent | #50920009 |
| #10028653 | equivalent | #26889001 |
| #10028691 | equivalent | #89077005 |
| #10028735 | equivalent | #68235000 |
| #10028813 | equivalent | #422587007 |
| #10028836 | equivalent | #81680005 |
| #10029104 | source-is-narrower-than-target | #55342001 |
| #10029205 | source-is-narrower-than-target | #118940003 |
| #10029223 | equivalent | #16269008 |
| #10029366 | equivalent | #165517008 |
| #10029404 | equivalent | #65194006 |
| #10029864 | equivalent | #563001 |
| #10029883 | equivalent | #414916001 |
| #10029957 | source-is-broader-than-target | #244815007 |
| #10030300 | equivalent | #88311004 |
| #10030980 | equivalent | #22490002 |
| #10031009 | equivalent | #102616008 |
| #10031282 | equivalent | #64859006 |
| #10033072 | equivalent | #3135009 |
| #10033078 | equivalent | #65363002 |
| #10033279 | equivalent | #88294009 |
| #10033314 | equivalent | #43548008 |
| #10033371 | equivalent | #22253000 |
| #10033425 | equivalent | #90834002 |
| #10033474 | equivalent | #301364008 |
| #10033557 | equivalent | #80313002 |
| #10033626 | equivalent | #95562002 |
| #10033645 | equivalent | #75694006 |
| #10033703 | equivalent | #423488006 |
| #10033987 | equivalent | #91019004 |
| #10034016 | equivalent | #71906005 |
| #10034040 | equivalent | #195069001 |
| #10034263 | equivalent | #30473006 |
| #10034310 | equivalent | #285375003 |
| #10034405 | equivalent | #37439003 |
| #10034474 | equivalent | #373945007 |
| #10034484 | equivalent | #3238004 |
| #10034536 | equivalent | #2556008 |
| #10034578 | equivalent | #233958001 |
| #10034580 | equivalent | #95663000 |
| #10034620 | equivalent | #789588003 |
| #10034719 | equivalent | #102943000 |
| #10034825 | equivalent | #232413009 |
| #10034835 | equivalent | #405737000 |
| #10034844 | equivalent | #162397003 |
| #10034879 | equivalent | #61599003 |
| #10034960 | equivalent | #409668002 |
| #10034966 | equivalent | #90128006 |
| #10035528 | equivalent | #415116008 |
| #10035598 | equivalent | #60046008 |
| #10035623 | equivalent | #2237002 |
| #10035742 | equivalent | #205237003 |
| #10035759 | equivalent | #36118008 |
| #10036200 | equivalent | #34742003 |
| #10036206 | equivalent | #17920008 |
| #10036402 | equivalent | #75803007 |
| #10036595 | equivalent | #282020008 |
| #10036601 | equivalent | #373717006 |
| #10036653 | equivalent | #427461000 |
| #10036774 | equivalent | #3951002 |
| #10036790 | equivalent | #28743005 |
| #10036968 | equivalent | #36729000 |
| #10037032 | equivalent | #29738008 |
| #10037087 | equivalent | #418363000 |
| #10037175 | source-is-narrower-than-target | #74732009 |
| #10037234 | equivalent | #69322001 |
| #10037375 | equivalent | #19242006 |
| #10037383 | equivalent | #51615001 |
| #10037400 | equivalent | #70995007 |
| #10037549 | equivalent | #387778001 |
| #10037767 | equivalent | #403644004 |
| #10037847 | equivalent | #402644006 |
| #10037868 | equivalent | #247471006 |
| #10037888 | source-is-broader-than-target | #1251376007 |
| #10038062 | equivalent | #80736008 |
| #10038064 | equivalent | #12063002 |
| #10038072 | equivalent | #77880009 |
| #10038073 | equivalent | #10825001 |
| #10038079 | equivalent | #25730006 |
| #10038080 | equivalent | #54609002 |
| #10038130 | equivalent | #42998008 |
| #10038359 | source-is-narrower-than-target | #128606002 |
| #10038385 | equivalent | #95570007 |
| #10038419 | equivalent | #7093002 |
| #10038463 | equivalent | #95571006 |
| #10038604 | source-is-narrower-than-target | #362968007 |
| #10038695 | equivalent | #409622000 |
| #10038738 | source-is-narrower-than-target | #50043002 |
| #10038743 | equivalent | #162221009 |
| #10038748 | equivalent | #415295002 |
| #10038848 | equivalent | #42059000 |
| #10038897 | equivalent | #95690009 |
| #10038901 | equivalent | #57534004 |
| #10038921 | equivalent | #773537001 |
| #10038923 | equivalent | #29555009 |
| #10038981 | equivalent | #95549001 |
| #10039411 | equivalent | #75260002 |
| #10039413 | source-is-narrower-than-target | #42982001 |
| #10039722 | equivalent | #298382003 |
| #10039757 | equivalent | #20502007 |
| #10039906 | equivalent | #91175000 |
| #10040047 | equivalent | #91302008 |
| #10040102 | equivalent | #715068009 |
| #10040139 | equivalent | #275739007 |
| #10040400 | source-is-broader-than-target | #403608009 |
| #10040639 | equivalent | #36083008 |
| #10040741 | equivalent | #49710005 |
| #10040747 | equivalent | #4969004 |
| #10040752 | equivalent | #11092001 |
| #10040753 | equivalent | #36971009 |
| #10040785 | source-is-narrower-than-target | #95320005 |
| #10040799 | equivalent | #400190005 |
| #10040865 | equivalent | #49765009 |
| #10040868 | equivalent | #23006000 |
| #10040872 | equivalent | #19824006 |
| #10040947 | equivalent | #46742003 |
| #10040975 | equivalent | #73430006 |
| #10041101 | equivalent | #281255004 |
| #10041103 | equivalent | #235741002 |
| #10041133 | equivalent | #235710003 |
| #10041232 | equivalent | #76067001 |
| #10041349 | equivalent | #271782001 |
| #10041367 | equivalent | #267102003 |
| #10041416 | equivalent | #221360009 |
| #10041569 | equivalent | #50448004 |
| #10041633 | equivalent | #51244008 |
| #10042033 | equivalent | #73442001 |
| #10042112 | equivalent | #271681002 |
| #10042127 | equivalent | #16121001 |
| #10042241 | equivalent | #70407001 |
| #10042244 | equivalent | #230690007 |
| #10042435 | equivalent | #26636000 |
| #10042458 | equivalent | #6471006 |
| #10042464 | equivalent | #82313006 |
| #10042554 | equivalent | #2477008 |
| #10042569 | equivalent | #63363004 |
| #10042604 | equivalent | #6456007 |
| #10042772 | equivalent | #271594007 |
| #10043189 | equivalent | #247479008 |
| #10043306 | equivalent | #64910008 |
| #10043345 | equivalent | #63901009 |
| #10043565 | equivalent | #371039008 |
| #10043648 | equivalent | #78129009 |
| #10043882 | equivalent | #60862001 |
| #10044030 | equivalent | #371136004 |
| #10044031 | equivalent | #278679009 |
| #10044055 | equivalent | #27355003 |
| #10044223 | equivalent | #768962006 |
| #10044291 | equivalent | #73342002 |
| #10044302 | equivalent | #62994001 |
| #10044391 | equivalent | #266257000 |
| #10044565 | equivalent | #26079004 |
| #10044684 | equivalent | #87866006 |
| #10045152 | equivalent | #277605001 |
| #10045271 | equivalent | #61564002 |
| #10045542 | equivalent | #83074005 |
| #10046300 | equivalent | #54150009 |
| #10046539 | equivalent | #162116003 |
| #10046543 | equivalent | #165232002 |
| #10046555 | equivalent | #267064002 |
| #10046571 | equivalent | #68566005 |
| #10046593 | equivalent | #75088002 |
| #10046628 | equivalent | #167239007 |
| #10046735 | equivalent | #126485001 |
| #10046789 | equivalent | #44991000119100 |
| #10046809 | equivalent | #289669005 |
| #10046810 | equivalent | #7395000 |
| #10046851 | equivalent | #128473001 |
| #10046901 | equivalent | #271939006 |
| #10046904 | equivalent | #31908003 |
| #10046912 | equivalent | #289530006 |
| #10046914 | equivalent | #237091009 |
| #10046916 | equivalent | #30800001 |
| #10046937 | equivalent | #38343000 |
| #10046947 | equivalent | #79012001 |
| #10047065 | source-is-narrower-than-target | #27550009 |
| #10047115 | equivalent | #31996006 |
| #10047166 | source-is-broader-than-target | #398665005 |
| #10047228 | equivalent | #64583005 |
| #10047281 | equivalent | #44103008 |
| #10047290 | equivalent | #71908006 |
| #10047302 | equivalent | #25569003 |
| #10047340 | equivalent | #399153001 |
| #10047386 | equivalent | #20425006 |
| #10047488 | equivalent | #15160007 |
| #10047580 | source-is-broader-than-target | #165040003 |
| #10047656 | equivalent | #31341008 |
| #10047681 | equivalent | #16617009 |
| #10047700 | equivalent | #422400008 |
| #10047848 | equivalent | #193982009 |
| #10047896 | equivalent | #262286000 |
| #10047900 | equivalent | #262285001 |
| #10047924 | equivalent | #56018004 |
| #10048015 | equivalent | #74390002 |
| #10048031 | equivalent | #225553008 |
| #10048038 | equivalent | #76844004 |
| #10048049 | equivalent | #1303397005 |
| #10048293 | source-is-broader-than-target | #762315004 |
| #10048492 | equivalent | #91514001 |
| #10048580 | equivalent | #416995001 |
| #10048642 | equivalent | #234109007 |
| #10048677 | equivalent | #279043006 |
| #10048706 | equivalent | #70733008 |
| #10048762 | equivalent | #427898007 |
| #10048994 | equivalent | #249297006 |
| #10049182 | equivalent | #419188005 |
| #10049192 | equivalent | #25803005 |
| #10049281 | equivalent | #247492006 |
| #10049468 | source-is-broader-than-target | #805616441000119104 |
| #10050028 | equivalent | #232408005 |
| #10050068 | equivalent | #424372002 |
| #10050094 | equivalent | #73120006 |
| #10050457 | equivalent | #235980000 |
| #10050458 | equivalent | #235940009 |
| #10050528 | source-is-broader-than-target | #863932003 |
| #10050662 | equivalent | #1371408008 |
| #10050816 | equivalent | #11296007 |
| #10050823 | source-is-narrower-than-target | #19471005 |
| #10051228 | equivalent | #83035003 |
| #10051272 | equivalent | #95666008 |
| #10051341 | equivalent | #43030007 |
| #10051472 | source-is-broader-than-target | #109245003 |
| #10051592 | equivalent | #394659003 |
| #10051746 | equivalent | #87763006 |
| #10051837 | equivalent | #34319007 |
| #10051886 | equivalent | #235683000 |
| #10052015 | equivalent | #710027002 |
| #10052298 | equivalent | #236681009 |
| #10052426 | equivalent | #9414007 |
| #10053481 | equivalent | #233793003 |
| #10053496 | equivalent | #37914004 |
| #10053565 | equivalent | #35304003 |
| #10053661 | equivalent | #60750009 |
| #10053662 | equivalent | #398925009 |
| #10054382 | source-is-narrower-than-target | #473004000 |
| #10054482 | source-is-narrower-than-target | #301777002 |
| #10054520 | source-is-broader-than-target | #1202021001 |
| #10054524 | equivalent | #403638003 |
| #10054541 | equivalent | #49563000 |
| #10054692 | source-is-narrower-than-target | #153821000119103 |
| #10054746 | equivalent | #22033007 |
| #10055005 | equivalent | #280516007 |
| #10055026 | equivalent | #4127004 |
| #10055078 | equivalent | #233795005 |
| #10055226 | equivalent | #6072007 |
| #10055242 | equivalent | #95533003 |
| #10055287 | equivalent | #95535005 |
| #10055291 | equivalent | #443826006 |
| #10055298 | equivalent | #213261000 |
| #10055300 | equivalent | #712509002 |
| #10055315 | equivalent | #324618004 |
| #10055319 | equivalent | #31892009 |
| #10055322 | equivalent | #110265006 |
| #10055325 | equivalent | #44843000 |
| #10055347 | equivalent | #77708008 |
| #10055356 | equivalent | #37372002 |
| #10055472 | equivalent | #23387001 |
| #10055599 | equivalent | #131141003 |
| #10056238 | equivalent | #710110008 |
| #10056388 | equivalent | #68982002 |
| #10056519 | equivalent | #128070006 |
| #10056522 | equivalent | #235859005 |
| #10056627 | source-is-broader-than-target | #77910001 |
| #10056681 | equivalent | #41569004 |
| #10056910 | equivalent | #274782002 |
| #10057066 | source-is-narrower-than-target | #40915004 |
| #10057262 | equivalent | #129129003 |
| #10057483 | equivalent | #312157006 |
| #10058084 | equivalent | #400179000 |
| #10058096 | equivalent | #1835003 |
| #10058597 | equivalent | #473365008 |
| #10058674 | equivalent | #203230004 |
| #10058720 | equivalent | #301867009 |
| #10058804 | equivalent | #235600000 |
| #10059094 | source-is-narrower-than-target | #236131001 |
| #10059446 | equivalent | #111372003 |
| #10059639 | equivalent | #61169001 |
| #10059827 | equivalent | #275496003 |
| #10059895 | equivalent | #718403007 |
| #10060602 | equivalent | #78095005 |
| #10060640 | equivalent | #51551000 |
| #10060890 | equivalent | #64309007 |
| #10060929 | equivalent | #84759007 |
| #10061017 | equivalent | #111253001 |
| #10061103 | equivalent | #49084001 |
| #10061145 | source-is-narrower-than-target | #60113004 |
| #10061149 | equivalent | #85059005 |
| #10061185 | equivalent | #80962007 |
| #10061212 | equivalent | #24777009 |
| #10061229 | equivalent | #128601007 |
| #10061261 | equivalent | #35046003 |
| #10061304 | equivalent | #238408000 |
| #10061322 | equivalent | #77157004 |
| #10061339 | equivalent | #225565007 |
| #10061351 | source-is-broader-than-target | #58554001 |
| #10061389 | equivalent | #20721001 |
| #10061403 | equivalent | #73765005 |
| #10061457 | equivalent | #422426003 |
| #10061461 | equivalent | #860914002 |
| #10061510 | equivalent | #33064008 |
| #10061532 | equivalent | #11851006 |
| #10061541 | equivalent | #76267008 |
| #10061574 | equivalent | #7163005 |
| #10061589 | equivalent | #8722008 |
| #10061640 | source-is-broader-than-target | #371568002 |
| #10061664 | equivalent | #85828009 |
| #10061695 | equivalent | #846685008 |
| #10061788 | equivalent | #312428002 |
| #10061912 | equivalent | #309090002 |
| #10061928 | equivalent | #82473003 |
| #10061970 | equivalent | #55860008 |
| #10062112 | equivalent | #721239009 |
| #10062156 | equivalent | #371413003 |
| #10062169 | source-is-broader-than-target | #398158001 |
| #10062225 | equivalent | #247382002 |
| #10062233 | equivalent | #301775005 |
| #10062244 | equivalent | #7393007 |
| #10062255 | equivalent | #95880003 |
| #10062263 | equivalent | #1162577003 |
| #10062283 | equivalent | #271768001 |
| #10062315 | equivalent | #238893005 |
| #10062466 | equivalent | #274724004 |
| #10062501 | equivalent | #274668005 |
| #10062548 | equivalent | #233783005 |
| #10062570 | equivalent | #40046003 |
| #10062572 | equivalent | #1137501002 |
| #10062872 | equivalent | #279079003 |
| #10063524 | equivalent | #79877004 |
| #10063575 | equivalent | #262909002 |
| #10063636 | equivalent | #46251005 |
| #10063761 | equivalent | #450886002 |
| #10064658 | equivalent | #1231151009 |
| #10064687 | equivalent | #473047000 |
| #10064774 | equivalent | #95384003 |
| #10064848 | equivalent | #709044004 |
| #10065368 | equivalent | #57243009 |
| #10065417 | equivalent | #3548001 |
| #10065703 | equivalent | #235972007 |
| #10065712 | source-is-narrower-than-target | #236121008 |
| #10065713 | equivalent | #235671002 |
| #10065719 | equivalent | #304371002 |
| #10065720 | equivalent | #20674003 |
| #10065728 | source-is-narrower-than-target | #235734008 |
| #10065735 | equivalent | #45913009 |
| #10065738 | source-is-broader-than-target | #300261000119100 |
| #10065744 | source-is-narrower-than-target | #52089001 |
| #10065745 | equivalent | #45168341000119100 |
| #10065746 | source-is-broader-than-target | #78144005 |
| #10065747 | equivalent | #711441008 |
| #10065748 | source-is-broader-than-target | #16751421000119105 |
| #10065749 | equivalent | #82872004 |
| #10065755 | equivalent | #737187008 |
| #10065759 | equivalent | #249467000 |
| #10065762 | equivalent | #33878005 |
| #10065765 | equivalent | #721254003 |
| #10065766 | equivalent | #1177010008 |
| #10065772 | source-is-narrower-than-target | #63144007 |
| #10065773 | equivalent | #234104002 |
| #10065776 | equivalent | #1137412000 |
| #10065780 | equivalent | #278287000 |
| #10065783 | source-is-broader-than-target | #40668007 |
| #10065785 | source-is-broader-than-target | #792886009 |
| #10065787 | equivalent | #233778002 |
| #10065789 | equivalent | #237143006 |
| #10065791 | equivalent | #280504001 |
| #10065794 | equivalent | #278286009 |
| #10065795 | equivalent | #249937002 |
| #10065796 | equivalent | #304344002 |
| #10065798 | equivalent | #445156001 |
| #10065800 | equivalent | #304352004 |
| #10065802 | source-is-narrower-than-target | #276869002 |
| #10065803 | source-is-narrower-than-target | #276869002 |
| #10065805 | source-is-broader-than-target | #198065008 |
| #10065811 | equivalent | #77408009 |
| #10065813 | equivalent | #45135002 |
| #10065814 | source-is-narrower-than-target | #276869002 |
| #10065815 | source-is-narrower-than-target | #276869002 |
| #10065817 | source-is-broader-than-target | #737178004 |
| #10065822 | equivalent | #298135000 |
| #10065823 | equivalent | #237469008 |
| #10065825 | source-is-broader-than-target | #1290696007 |
| #10065826 | equivalent | #1375944001 |
| #10065827 | source-is-broader-than-target | #713203006 |
| #10065830 | source-is-broader-than-target | #213267001 |
| #10065836 | source-is-broader-than-target | #20610004 |
| #10065837 | equivalent | #3135009 |
| #10065838 | equivalent | #65363002 |
| #10065845 | equivalent | #1375936001 |
| #10065847 | equivalent | #711366008 |
| #10065848 | equivalent | #1375937005 |
| #10065849 | source-is-broader-than-target | #76019006 |
| #10065851 | equivalent | #30873000 |
| #10065879 | equivalent | #236085004 |
| #10065883 | source-is-narrower-than-target | #236131001 |
| #10065885 | source-is-narrower-than-target | #236119003 |
| #10065891 | equivalent | #236091002 |
| #10065892 | equivalent | #236090001 |
| #10065893 | equivalent | #236087007 |
| #10065895 | equivalent | #713512009 |
| #10065898 | equivalent | #1086781000119103 |
| #10065961 | equivalent | #236086003 |
| #10065973 | equivalent | #60737008 |
| #10066480 | equivalent | #397758007 |
| #10066874 | equivalent | #235595009 |
| #10069339 | equivalent | #14669001 |
| #10069501 | equivalent | #134401001 |

### UICC TNM → SNOMED CT

Clinical and pathological TNM categories as pre-coordinated SNOMED CT qualifier values; see [TNM](StructureDefinition-mii-pr-onko-tnm-klassifikation.md).

| | | |
| :--- | :--- | :--- |
| UICC | Beziehung | SNOMED |
| #0 | equivalent | #1352916008 |
| #0 | equivalent | #1352916008 |
| #0a | equivalent | #1352825003 |
| #0a | equivalent | #1352825003 |
| #0is | equivalent | #1352895007 |
| #0is | equivalent | #1352895007 |
| #I | equivalent | #1352927005 |
| #I | equivalent | #1352927005 |
| #IA1 | equivalent | #1352890002 |
| #IA1 | equivalent | #1352890002 |
| #IA2 | equivalent | #1352945005 |
| #IA2 | equivalent | #1352945005 |
| #IA3 | equivalent | #1352854009 |
| #IA3 | equivalent | #1352854009 |
| #IB | equivalent | #1352911003 |
| #IB | equivalent | #1352911003 |
| #IB1 | equivalent | #1352816009 |
| #IB1 | equivalent | #1352816009 |
| #IB2 | equivalent | #1352864000 |
| #IB2 | equivalent | #1352864000 |
| #IC | equivalent | #1352919001 |
| #IC | equivalent | #1352919001 |
| #II | equivalent | #1352944009 |
| #II | equivalent | #1352944009 |
| #IIA | equivalent | #1352856006 |
| #IIA | equivalent | #1352856006 |
| #IIA1 | equivalent | #1352829009 |
| #IIA1 | equivalent | #1352829009 |
| #IIA2 | equivalent | #1352892005 |
| #IIA2 | equivalent | #1352892005 |
| #IIB | equivalent | #1352861008 |
| #IIB | equivalent | #1352861008 |
| #IIC | equivalent | #1352831000 |
| #IIC | equivalent | #1352831000 |
| #III | equivalent | #1352871005 |
| #III | equivalent | #1352871005 |
| #IIIA | equivalent | #1352915007 |
| #IIIA | equivalent | #1352915007 |
| #IIIA1 | equivalent | #1352935008 |
| #IIIA1 | equivalent | #1352935008 |
| #IIIA2 | equivalent | #1352882002 |
| #IIIA2 | equivalent | #1352882002 |
| #IIIB | equivalent | #1352896008 |
| #IIIB | equivalent | #1352896008 |
| #IIIC | equivalent | #1352848008 |
| #IIIC | equivalent | #1352848008 |
| #IIIC1 | equivalent | #1352862001 |
| #IIIC1 | equivalent | #1352862001 |
| #IIIC2 | equivalent | #1352833002 |
| #IIIC2 | equivalent | #1352833002 |
| #IS | equivalent | #1352880005 |
| #IS | equivalent | #1352880005 |
| #IV | equivalent | #1352913000 |
| #IV | equivalent | #1352913000 |
| #IVA | equivalent | #1352822000 |
| #IVA | equivalent | #1352822000 |
| #IVB | equivalent | #1352836005 |
| #IVB | equivalent | #1352836005 |
| #IVC | equivalent | #1352921006 |
| #IVC | equivalent | #1352921006 |
| #M0 | equivalent | #1352512001 |
| #M1 | equivalent | #1352513006 |
| #M1 | equivalent | #1352583000 |
| #M1a | equivalent | #1352517007 |
| #M1a | equivalent | #1352573004 |
| #M1b | equivalent | #1352514000 |
| #M1b | equivalent | #1352578008 |
| #M1c | equivalent | #1352516003 |
| #M1c | equivalent | #1352574005 |
| #M1d | equivalent | #1352510009 |
| #M1d | equivalent | #1352580002 |
| #N0 | equivalent | #1353041009 |
| #N0 | equivalent | #1352621009 |
| #N1 | equivalent | #1353043007 |
| #N1 | equivalent | #1352614009 |
| #N1a | equivalent | #1353046004 |
| #N1a | equivalent | #1352619004 |
| #N1b | equivalent | #1353048003 |
| #N1b | equivalent | #1352616006 |
| #N1c | equivalent | #1353044001 |
| #N1c | equivalent | #1352617002 |
| #N1mi | equivalent | #1352620005 |
| #N2 | equivalent | #1353047008 |
| #N2 | equivalent | #1352610000 |
| #N2a | equivalent | #1353050006 |
| #N2a | equivalent | #1352608002 |
| #N2b | equivalent | #1353055001 |
| #N2b | equivalent | #1352612008 |
| #N2c | equivalent | #1353049006 |
| #N2c | equivalent | #1352613003 |
| #N3 | equivalent | #1353053008 |
| #N3 | equivalent | #1352622002 |
| #N3a | equivalent | #1353057009 |
| #N3a | equivalent | #1352618007 |
| #N3b | equivalent | #1353054002 |
| #N3b | equivalent | #1352623007 |
| #N3c | equivalent | #1353051005 |
| #N3c | equivalent | #1352606003 |
| #NX | equivalent | #1353039008 |
| #NX | equivalent | #1352605004 |
| #R0 | equivalent | #1352526005 |
| #R1 | equivalent | #1352529003 |
| #R2 | equivalent | #1352528006 |
| #RX | equivalent | #1352527001 |
| #T0 | equivalent | #1352986003 |
| #T0 | equivalent | #1352552004 |
| #T1 | equivalent | #1352996007 |
| #T1 | equivalent | #1352559008 |
| #T1a | equivalent | #1352983006 |
| #T1a | equivalent | #1352560003 |
| #T1a1 | equivalent | #1352959003 |
| #T1a1 | equivalent | #1352550007 |
| #T1a2 | equivalent | #1352988002 |
| #T1a2 | equivalent | #1352566009 |
| #T1b | equivalent | #1352968001 |
| #T1b | equivalent | #1352543008 |
| #T1b1 | equivalent | #1352985004 |
| #T1b1 | equivalent | #1352536002 |
| #T1b2 | equivalent | #1352992009 |
| #T1b2 | equivalent | #1352554003 |
| #T1c | equivalent | #1352973007 |
| #T1c | equivalent | #1352537006 |
| #T1c1 | equivalent | #1352995006 |
| #T1c1 | equivalent | #1352544002 |
| #T1c2 | equivalent | #1352977008 |
| #T1c2 | equivalent | #1352541005 |
| #T1c3 | equivalent | #1352958006 |
| #T1c3 | equivalent | #1352549007 |
| #T1d | equivalent | #1352978003 |
| #T1d | equivalent | #1352568005 |
| #T1mi | equivalent | #1352979006 |
| #T1mi | equivalent | #1352562006 |
| #T2 | equivalent | #1352993004 |
| #T2 | equivalent | #1352545001 |
| #T2a | equivalent | #1352962000 |
| #T2a | equivalent | #1352564007 |
| #T2a1 | equivalent | #1352990001 |
| #T2a1 | equivalent | #1352546000 |
| #T2a2 | equivalent | #1352967006 |
| #T2a2 | equivalent | #1352567000 |
| #T2b | equivalent | #1352972002 |
| #T2b | equivalent | #1352547009 |
| #T2c | equivalent | #1352969009 |
| #T2c | equivalent | #1352569002 |
| #T2d | equivalent | #1352971009 |
| #T2d | equivalent | #1352548004 |
| #T3 | equivalent | #1352966002 |
| #T3 | equivalent | #1352533005 |
| #T3a | equivalent | #1352989005 |
| #T3a | equivalent | #1352551006 |
| #T3b | equivalent | #1352991002 |
| #T3b | equivalent | #1352534004 |
| #T3c | equivalent | #1352976004 |
| #T3c | equivalent | #1352556001 |
| #T3d | equivalent | #1352994005 |
| #T3d | equivalent | #1352531007 |
| #T3e | equivalent | #1352974001 |
| #T4 | equivalent | #1352997003 |
| #T4 | equivalent | #1352553009 |
| #T4a | equivalent | #1352982001 |
| #T4a | equivalent | #1352538001 |
| #T4b | equivalent | #1352960008 |
| #T4b | equivalent | #1352561004 |
| #T4c | equivalent | #1352980009 |
| #T4c | equivalent | #1352540006 |
| #T4d | equivalent | #1352963005 |
| #T4d | equivalent | #1352557005 |
| #T4e | equivalent | #1352981008 |
| #T4e | equivalent | #1352542003 |
| #TX | equivalent | #1352975000 |
| #TX | equivalent | #1352532000 |
| #Ta | equivalent | #1352961007 |
| #Ta | equivalent | #1352539009 |
| #Tis | equivalent | #1352984000 |
| #Tis | equivalent | #1352558000 |
| #Tis(DCIS) | equivalent | #1352965003 |
| #Tis(DCIS) | equivalent | #1352535003 |
| #Tis(LAMN) | equivalent | #1352964004 |
| #Tis(LAMN) | equivalent | #1352555002 |
| #Tis(LCIS) | equivalent | #1351846009 |
| #Tis(LCIS) | equivalent | #1351847000 |
| #Tis(Paget) | equivalent | #1352987007 |
| #Tis(Paget) | equivalent | #1352563001 |
| #a | equivalent | #421426001 |
| #a | equivalent | #421426001 |
| #r | equivalent | #421188008 |
| #r | equivalent | #421188008 |
| #y | equivalent | #421755005 |
| #y | equivalent | #421755005 |

### Version transitions (ATC, ICD-O-3)

Transition maps between annual/revision states — the tool for migrating legacy data. Background and rules: [ATC](atc-terminologie.md) and [ICD-O](icd-o-terminologie.md).

| | | | |
| :--- | :--- | :--- | :--- |
| Katalog | Von | Beziehung | Nach |
| ATC | #L01EG02 | equivalent | #L04AH02 |
| ATC | #L01EX17 | equivalent | #L01EP01 |
| ATC | #L01EX21 | equivalent | #L01EP02 |
| ATC | #L01FA02 | equivalent | #L04AG12 |
| ATC | #L01FX24 | equivalent | #L01FX25 |
| ATC | #L01XC02 | equivalent | #L01FA01 |
| ATC | #L01XC03 | equivalent | #L01FD01 |
| ATC | #L01XC06 | equivalent | #L01FE01 |
| ATC | #L01XC07 | equivalent | #L01FG01 |
| ATC | #L01XC08 | equivalent | #L01FE02 |
| ATC | #L01XC11 | equivalent | #L01FX04 |
| ATC | #L01XC12 | equivalent | #L01FX05 |
| ATC | #L01XC13 | equivalent | #L01FD02 |
| ATC | #L01XC14 | equivalent | #L01FD03 |
| ATC | #L01XC15 | equivalent | #L01FA03 |
| ATC | #L01XC17 | equivalent | #L01FF01 |
| ATC | #L01XC18 | equivalent | #L01FF02 |
| ATC | #L01XC19 | equivalent | #L01FX07 |
| ATC | #L01XC21 | equivalent | #L01FG02 |
| ATC | #L01XC24 | equivalent | #L01FC01 |
| ATC | #L01XC26 | equivalent | #L01FB01 |
| ATC | #L01XC27 | equivalent | #L01FX10 |
| ATC | #L01XC28 | equivalent | #L01FF03 |
| ATC | #L01XC31 | equivalent | #L01FF04 |
| ATC | #L01XC32 | equivalent | #L01FF05 |
| ATC | #L01XE01 | equivalent | #L01EA01 |
| ATC | #L01XE02 | equivalent | #L01EB01 |
| ATC | #L01XE03 | equivalent | #L01EB02 |
| ATC | #L01XE04 | equivalent | #L01EX01 |
| ATC | #L01XE05 | equivalent | #L01EX02 |
| ATC | #L01XE06 | equivalent | #L01EA02 |
| ATC | #L01XE07 | equivalent | #L01EH01 |
| ATC | #L01XE08 | equivalent | #L01EA03 |
| ATC | #L01XE09 | equivalent | #L01EG01 |
| ATC | #L01XE10 | equivalent | #L01EG02 |
| ATC | #L01XE12 | equivalent | #L01EX04 |
| ATC | #L01XE13 | equivalent | #L01EB03 |
| ATC | #L01XE14 | equivalent | #L01EA04 |
| ATC | #L01XE15 | equivalent | #L01EC01 |
| ATC | #L01XE16 | equivalent | #L01ED01 |
| ATC | #L01XE17 | equivalent | #L01EK01 |
| ATC | #L01XE18 | equivalent | #L01EJ01 |
| ATC | #L01XE21 | equivalent | #L01EX05 |
| ATC | #L01XE23 | equivalent | #L01EC02 |
| ATC | #L01XE24 | equivalent | #L01EA05 |
| ATC | #L01XE25 | equivalent | #L01EE01 |
| ATC | #L01XE26 | equivalent | #L01EX07 |
| ATC | #L01XE27 | equivalent | #L01EL01 |
| ATC | #L01XE28 | equivalent | #L01ED02 |
| ATC | #L01XE29 | equivalent | #L01EX08 |
| ATC | #L01XE31 | equivalent | #L01EX09 |
| ATC | #L01XE33 | equivalent | #L01EF01 |
| ATC | #L01XE34 | equivalent | #L01EK03 |
| ATC | #L01XE35 | equivalent | #L01EB04 |
| ATC | #L01XE36 | equivalent | #L01ED03 |
| ATC | #L01XE38 | equivalent | #L01EE02 |
| ATC | #L01XE39 | equivalent | #L01EX10 |
| ATC | #L01XE41 | equivalent | #L01EE03 |
| ATC | #L01XE42 | equivalent | #L01EF02 |
| ATC | #L01XE43 | equivalent | #L01ED04 |
| ATC | #L01XE44 | equivalent | #L01ED05 |
| ATC | #L01XE45 | equivalent | #L01EH02 |
| ATC | #L01XE46 | equivalent | #L01EC03 |
| ATC | #L01XE50 | equivalent | #L01EF03 |
| ATC | #L01XE51 | equivalent | #L01EL02 |
| ATC | #L01XE52 | equivalent | #L01EX11 |
| ATC | #L01XE53 | equivalent | #L01EX12 |
| ATC | #L01XE54 | equivalent | #L01EX13 |
| ATC | #L01XX14 | equivalent | #L01XF01 |
| ATC | #L01XX17 | equivalent | #L01CE01 |
| ATC | #L01XX19 | equivalent | #L01CE02 |
| ATC | #L01XX22 | equivalent | #L01XF02 |
| ATC | #L01XX25 | equivalent | #L01XF03 |
| ATC | #L01XX32 | equivalent | #L01XG01 |
| ATC | #L01XX38 | equivalent | #L01XH01 |
| ATC | #L01XX39 | equivalent | #L01XH02 |
| ATC | #L01XX42 | equivalent | #L01XH03 |
| ATC | #L01XX43 | equivalent | #L01XJ01 |
| ATC | #L01XX45 | equivalent | #L01XG02 |
| ATC | #L01XX46 | equivalent | #L01XK01 |
| ATC | #L01XX47 | equivalent | #L01EM01 |
| ATC | #L01XX49 | equivalent | #L01XH04 |
| ATC | #L01XX50 | equivalent | #L01XG03 |
| ATC | #L01XX51 | equivalent | #L01XL02 |
| ATC | #L01XX54 | equivalent | #L01XK02 |
| ATC | #L01XX59 | equivalent | #L01XM01 |
| ATC | #L01XX60 | equivalent | #L01XK04 |
| ATC | #L01XX61 | equivalent | #L01EM02 |
| ATC | #L01XX62 | equivalent | #L01XM02 |
| ATC | #L01XX63 | equivalent | #L01XJ03 |
| ATC | #L01XX70 | equivalent | #L01XL03 |
| ATC | #L01XX71 | equivalent | #L01XL04 |
| ATC | #L01XY02 | equivalent | #L01FY01 |
| ATC | #L01XY03 | equivalent | #L01FY02 |
| ATC | #L04AA02 | equivalent | #L04AG01 |
| ATC | #L04AA10 | equivalent | #L04AH01 |
| ATC | #L04AA13 | equivalent | #L04AK01 |
| ATC | #L04AA21 | equivalent | #L04AG02 |
| ATC | #L04AA23 | equivalent | #L04AG03 |
| ATC | #L04AA25 | equivalent | #L04AJ01 |
| ATC | #L04AA26 | equivalent | #L04AG04 |
| ATC | #L04AA27 | equivalent | #L04AE01 |
| ATC | #L04AA34 | equivalent | #L04AG06 |
| ICD-O-3 | #8120/1 | source-is-broader-than-target | #8120/0 |
| ICD-O-3 | #8120/1 | source-is-broader-than-target | #8120/2 |
| ICD-O-3 | #8120/1 | source-is-broader-than-target | #8120/3 |
| ICD-O-3 | #8150/1 | source-is-broader-than-target | #8150/0 |
| ICD-O-3 | #8150/1 | source-is-broader-than-target | #8150/3 |
| ICD-O-3 | #8151/0 | equivalent | #8151/3 |
| ICD-O-3 | #8152/1 | equivalent | #8152/3 |
| ICD-O-3 | #8153/1 | equivalent | #8153/3 |
| ICD-O-3 | #8156/1 | equivalent | #8156/3 |
| ICD-O-3 | #8158/1 | source-is-broader-than-target | #8158/3 |
| ICD-O-3 | #8240/1 | equivalent | #8240/3 |
| ICD-O-3 | #8242/1 | equivalent | #8242/3 |
| ICD-O-3 | #8336/0 | equivalent | #8336/1 |
| ICD-O-3 | #8408/1 | source-is-broader-than-target | #8408/0 |
| ICD-O-3 | #8408/1 | source-is-broader-than-target | #8408/3 |
| ICD-O-3 | #8444/1 | equivalent | #8313/1 |
| ICD-O-3 | #8460/0 | source-is-narrower-than-target | #8441/0 |
| ICD-O-3 | #8462/1 | source-is-narrower-than-target | #8442/1 |
| ICD-O-3 | #8463/1 | source-is-narrower-than-target | #8442/1 |
| ICD-O-3 | #8471/0 | source-is-narrower-than-target | #8470/0 |
| ICD-O-3 | #8471/3 | source-is-narrower-than-target | #8470/3 |
| ICD-O-3 | #8473/1 | source-is-narrower-than-target | #8472/1 |
| ICD-O-3 | #8581/1 | equivalent | #8581/3 |
| ICD-O-3 | #8582/1 | equivalent | #8582/3 |
| ICD-O-3 | #8583/1 | equivalent | #8583/3 |
| ICD-O-3 | #8584/1 | equivalent | #8584/3 |
| ICD-O-3 | #8585/1 | equivalent | #8585/3 |
| ICD-O-3 | #8680/0 | equivalent | #8680/3 |
| ICD-O-3 | #8680/1 | equivalent | #8680/3 |
| ICD-O-3 | #8681/1 | equivalent | #8681/3 |
| ICD-O-3 | #8682/1 | equivalent | #8682/3 |
| ICD-O-3 | #8690/1 | equivalent | #8690/3 |
| ICD-O-3 | #8691/1 | equivalent | #8691/3 |
| ICD-O-3 | #8692/1 | equivalent | #8692/3 |
| ICD-O-3 | #8693/1 | equivalent | #8693/3 |
| ICD-O-3 | #8700/0 | equivalent | #8700/3 |
| ICD-O-3 | #8833/3 | equivalent | #8833/1 |
| ICD-O-3 | #8841/1 | equivalent | #8841/0 |
| ICD-O-3 | #8936/0 | equivalent | #8936/3 |
| ICD-O-3 | #8936/1 | equivalent | #8936/3 |
| ICD-O-3 | #9055/1 | equivalent | #9055/0 |
| ICD-O-3 | #9133/1 | equivalent | #9133/3 |
| ICD-O-3 | #9150/0 | equivalent | #8815/0 |
| ICD-O-3 | #9150/1 | equivalent | #8815/1 |
| ICD-O-3 | #9150/3 | equivalent | #8815/3 |
| ICD-O-3 | #9230/0 | equivalent | #9230/1 |
| ICD-O-3 | #9260/3 | equivalent | #9364/3 |
| ICD-O-3 | #9341/1 | equivalent | #9341/3 |
| ICD-O-3 | #9670/3 | equivalent | #9823/3 |
| ICD-O-3 | #9725/3 | equivalent | #9725/1 |
| ICD-O-3 | #9728/3 | equivalent | #9811/3 |
| ICD-O-3 | #9729/3 | equivalent | #9837/3 |
| ICD-O-3 | #9826/3 | equivalent | #9687/3 |
| ICD-O-3 | #9836/3 | equivalent | #9811/3 |
| ICD-O-3 | #9971/3 | equivalent | #9971/1 |
| ICD-O-3 | #9991/3 | source-is-narrower-than-target | #9980/3 |
| ICD-O-3 | #9992/3 | source-is-narrower-than-target | #9980/3 |

