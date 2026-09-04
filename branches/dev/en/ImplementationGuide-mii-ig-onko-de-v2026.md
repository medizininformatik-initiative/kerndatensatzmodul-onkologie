# MII ImplementationGuide Resource - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **MII ImplementationGuide Resource**

## MII ImplementationGuide Resource

This ImplementationGuide resource defines the technical details of this publication, including dependencies and publishing parameters.

* [XML](../ImplementationGuide-mii-ig-onko-de-v2026.xml)
* [JSON](../ImplementationGuide-mii-ig-onko-de-v2026.json)

### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (de.medizininformatikinitiative.kerndatensatz.onkologie.r4)](../package.r4.tgz) and [R4B (de.medizininformatikinitiative.kerndatensatz.onkologie.r4b)](../package.r4b.tgz) are available.

### IG Dependencies

This IG contains the following dependencies on other IGs.
























> **Where the versions come from.** Every package in the table is pinned directly in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/main/sushi-config.yaml) (`dependencies:`) — including `hl7.terminology.r4` (THO) and `hl7.fhir.uv.extensions.r4`, and those two deliberately so: the IG Publisher's [automatic-packages rule](https://build.fhir.org/ig/FHIR/ig-guidance/versions.html#automatic-packages) consults only this guide's **own** dependency list, so without a direct pin every build would silently inject the latest THO/extensions release — a version pinned by the MII meta package alone cannot control the build (verified in the publisher source at the pinned release). A weekly check warns when these two pins drift from what the pinned meta package ships, and the exact versions a concrete build used are recorded in its `qa-versions.json` output.

### Global Profiles

This IG declares the following global profiles — profiles that apply to every instance of their resource type exchanged under this guide. An empty table means this module declares none.

*There are no Global profiles defined*

### Copyrights

This publication includes IP covered under the following statements.

* BfArM - Bundesinstitut für Arzneimittel und Medizinprodukte

* [ATC](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=http://fhir.de/CodeSystem/bfarm/atc): [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md), [MII_PR_Onko_Systemische_Therapie_Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)... Show 36 more, [MII_PR_Onko_Therapieempfehlung_Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md), [MII_VS_Onko_Systemische_Therapie_Substanzen](ValueSet-mii-vs-onko-systemische-therapie-substanzen.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2018](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2018.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2019](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2019.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2020](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2020.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2021](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2021.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2022](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2022.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2023](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2023.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2024](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2024.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2025](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2025.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2026](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2026.md), [MedicationRequest/mii-exa-onko-cdk46-class-medication](MedicationRequest-mii-exa-onko-cdk46-class-medication.md), [MedicationRequest/mii-exa-onko-folfox-5fu-request](MedicationRequest-mii-exa-onko-folfox-5fu-request.md), [MedicationRequest/mii-exa-onko-folfox-leucovorin-request](MedicationRequest-mii-exa-onko-folfox-leucovorin-request.md), [MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request](MedicationRequest-mii-exa-onko-folfox-oxaliplatin-request.md), [MedicationRequest/mii-exa-onko-modification-5fu-request](MedicationRequest-mii-exa-onko-modification-5fu-request.md), [MedicationRequest/mii-exa-onko-modification-leucovorin-request](MedicationRequest-mii-exa-onko-modification-leucovorin-request.md), [MedicationRequest/mii-exa-onko-modification-oxaliplatin-request](MedicationRequest-mii-exa-onko-modification-oxaliplatin-request.md), [MedicationRequest/mii-exa-onko-tdm1-option](MedicationRequest-mii-exa-onko-tdm1-option.md), [MedicationRequest/mii-exa-onko-tucatinib-option](MedicationRequest-mii-exa-onko-tucatinib-option.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1a](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1a.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1b](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1b.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-2a](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2a.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-2b](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2b.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-3](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-3.md), [MedicationStatement/mii-exa-onko-folfox-5fu-statement](MedicationStatement-mii-exa-onko-folfox-5fu-statement.md), [MedicationStatement/mii-exa-onko-folfox-leucovorin-statement](MedicationStatement-mii-exa-onko-folfox-leucovorin-statement.md), [MedicationStatement/mii-exa-onko-folfox-oxaliplatin-statement](MedicationStatement-mii-exa-onko-folfox-oxaliplatin-statement.md), [MedicationStatement/mii-exa-onko-medikation-imatinib-atc-version-transition](MedicationStatement-mii-exa-onko-medikation-imatinib-atc-version-transition.md), [MedicationStatement/mii-exa-onko-modification-5fu-phase1](MedicationStatement-mii-exa-onko-modification-5fu-phase1.md), [MedicationStatement/mii-exa-onko-modification-5fu-phase2](MedicationStatement-mii-exa-onko-modification-5fu-phase2.md), [MedicationStatement/mii-exa-onko-modification-leucovorin-phase1](MedicationStatement-mii-exa-onko-modification-leucovorin-phase1.md), [MedicationStatement/mii-exa-onko-modification-leucovorin-phase2](MedicationStatement-mii-exa-onko-modification-leucovorin-phase2.md), [MedicationStatement/mii-exa-onko-modification-oxaliplatin-phase1](MedicationStatement-mii-exa-onko-modification-oxaliplatin-phase1.md), [MedicationStatement/mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.md) and [MedicationStatement/mii-exa-onko-systemische-therapie-medikation2](MedicationStatement-mii-exa-onko-systemische-therapie-medikation2.md)


* BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [Alpha-ID](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=http://fhir.de/CodeSystem/bfarm/alpha-id): [MII_PR_Onko_Diagnose_Primaertumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [OPS](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=http://fhir.de/CodeSystem/bfarm/ops): [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md), [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md)... Show 56 more, [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [Bundle/mii-exa-onko-prostata-example-bundle-1](Bundle-mii-exa-onko-prostata-example-bundle-1.md), [MII_PR_Onko_KRK_Operation](StructureDefinition-mii-pr-onko-krk-operation.md), [MII_PR_Onko_KRK_Stoma_Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md), [MII_PR_Onko_Mamma_Operation](StructureDefinition-mii-pr-onko-mamma-operation.md), [MII_PR_Onko_Mamma_Sozialdienst](StructureDefinition-mii-pr-onko-mamma-sozialdienst.md), [MII_PR_Onko_Melanom_Exzision](StructureDefinition-mii-pr-onko-melanom-exzision.md), [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md), [MII_PR_Onko_Prostata_Operation](StructureDefinition-mii-pr-onko-prostata-operation.md), [MII_PR_Onko_Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md), [MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md), [MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md), [MII_PR_Onko_Systemische_Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md), [MII_VS_Onko_Mamma_Operation_OPS](ValueSet-mii-vs-onko-mamma-operation-ops.md), [MII_VS_Onko_OPS_Nuklearmedizin](ValueSet-mii-vs-onko-ops-nuklearmedizin.md), [MII_VS_Onko_OPS_Strahlentherapie](ValueSet-mii-vs-onko-ops-strahlentherapie.md), [Procedure/PatientKimMusterperson-Procedure-1](Procedure-PatientKimMusterperson-Procedure-1.md), [Procedure/PatientKimMusterperson-Procedure-2](Procedure-PatientKimMusterperson-Procedure-2.md), [Procedure/PatientKimMusterperson-Procedure-3](Procedure-PatientKimMusterperson-Procedure-3.md), [Procedure/PatientKimMusterperson-Procedure-4a](Procedure-PatientKimMusterperson-Procedure-4a.md), [Procedure/PatientKimMusterperson-Procedure-4b](Procedure-PatientKimMusterperson-Procedure-4b.md), [Procedure/PatientKimMusterperson-Procedure-4c](Procedure-PatientKimMusterperson-Procedure-4c.md), [Procedure/PatientKimMusterperson-Procedure-4d](Procedure-PatientKimMusterperson-Procedure-4d.md), [Procedure/PatientKimMusterperson-SystemicTherapy-1](Procedure-PatientKimMusterperson-SystemicTherapy-1.md), [Procedure/PatientKimMusterperson-SystemicTherapy-2](Procedure-PatientKimMusterperson-SystemicTherapy-2.md), [Procedure/PatientKimMusterperson-SystemicTherapy-3](Procedure-PatientKimMusterperson-SystemicTherapy-3.md), [Procedure/mii-exa-onko-folfox-phase1](Procedure-mii-exa-onko-folfox-phase1.md), [Procedure/mii-exa-onko-folfox-procedure](Procedure-mii-exa-onko-folfox-procedure.md), [Procedure/mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.md), [Procedure/mii-exa-onko-lv5fu2-phase2](Procedure-mii-exa-onko-lv5fu2-phase2.md), [Procedure/mii-exa-onko-melanom-exzision-oberarm](Procedure-mii-exa-onko-melanom-exzision-oberarm.md), [Procedure/mii-exa-onko-melanom-exzision-ruecken](Procedure-mii-exa-onko-melanom-exzision-ruecken.md), [Procedure/mii-exa-onko-operation-1](Procedure-mii-exa-onko-operation-1.md), [Procedure/mii-exa-onko-palbociclib-therapie](Procedure-mii-exa-onko-palbociclib-therapie.md), [Procedure/mii-exa-onko-pertuzumab-therapie](Procedure-mii-exa-onko-pertuzumab-therapie.md), [Procedure/mii-exa-onko-prostata-operation-prostatektomie](Procedure-mii-exa-onko-prostata-operation-prostatektomie.md), [Procedure/mii-exa-onko-prostata-operation-turp](Procedure-mii-exa-onko-prostata-operation-turp.md), [Procedure/mii-exa-onko-prostata-surgery-1](Procedure-mii-exa-onko-prostata-surgery-1.md), [Procedure/mii-exa-onko-prostata-surgery-2](Procedure-mii-exa-onko-prostata-surgery-2.md), [Procedure/mii-exa-onko-right-hemicolectomy](Procedure-mii-exa-onko-right-hemicolectomy.md), [Procedure/mii-exa-onko-sigmoid-resection](Procedure-mii-exa-onko-sigmoid-resection.md), [Procedure/mii-exa-onko-sigmoid-resection-part1](Procedure-mii-exa-onko-sigmoid-resection-part1.md), [Procedure/mii-exa-onko-sigmoid-resection-part2](Procedure-mii-exa-onko-sigmoid-resection-part2.md), [Procedure/mii-exa-onko-sigmoid-resection-part3](Procedure-mii-exa-onko-sigmoid-resection-part3.md), [Procedure/mii-exa-onko-strahlentherapie-2014-mamma-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-mamma-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2014-prostata-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-prostata-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-primaer](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.md), [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1.md), [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc.md), [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1.md), [Procedure/mii-exa-onko-strahlentherapie-nuklearmedizin-1](Procedure-mii-exa-onko-strahlentherapie-nuklearmedizin-1.md), [Procedure/mii-exa-onko-strahlentherapie-pci-sclc](Procedure-mii-exa-onko-strahlentherapie-pci-sclc.md), [Procedure/mii-exa-onko-strahlentherapie-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.md), [Procedure/mii-exa-onko-systemische-therapie-1](Procedure-mii-exa-onko-systemische-therapie-1.md) and [Procedure/mii-exa-onko-trastuzumab-therapie](Procedure-mii-exa-onko-trastuzumab-therapie.md)


* Die TNM-Klassifikation maligner Tumoren ist urheberrechtlich geschuetzt: TNM Classification of Malignant Tumours © Union for International Cancer Control (UICC). Die hier gefuehrten Codes sind eine Zusammenstellung der im MII-Kerndatensatzmodul Onkologie verwendeten TNM-Kategorien und -Werte zum Zweck der FHIR-Validierung; sie ersetzen nicht die amtliche UICC-Ausgabe und begruenden keine eigenen Rechte an der Klassifikation. Nutzende benoetigen fuer den produktiven Einsatz die entsprechende UICC-Berechtigung.

* [MII CS Onkologie TNM UICC](CodeSystem-mii-cs-onko-tnm-uicc.md): [Bundle/mii-exa-onko-cup-bundle](Bundle-mii-exa-onko-cup-bundle.md), [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md)... Show 113 more, [Bundle/mii-exa-onko-kim-musterperson-synthesized](Bundle-mii-exa-onko-kim-musterperson-synthesized.md), [Bundle/mii-exa-onko-tnm-bundle](Bundle-mii-exa-onko-tnm-bundle.md), [Bundle/mii-exa-onko-tnm-bundle-legacy](Bundle-mii-exa-onko-tnm-bundle-legacy.md), [Bundle/mii-exa-onko-tnm-bundle-synthesized](Bundle-mii-exa-onko-tnm-bundle-synthesized.md), [MII_EX_Onko_TNM_ITC_Suffix](StructureDefinition-mii-ex-onko-tnm-itc-suffix.md), [MII_EX_Onko_TNM_SN_Suffix](StructureDefinition-mii-ex-onko-tnm-sn-suffix.md), [MII_EX_Onko_TNM_a_Praefix](StructureDefinition-mii-ex-onko-tnm-a-praefix.md), [MII_EX_Onko_TNM_cp_Praefix](StructureDefinition-mii-ex-onko-tnm-cp-praefix.md), [MII_EX_Onko_TNM_r_Praefix](StructureDefinition-mii-ex-onko-tnm-r-praefix.md), [MII_EX_Onko_TNM_y_Praefix](StructureDefinition-mii-ex-onko-tnm-y-praefix.md), [MII_PR_Onko_TNM_Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md), [MII_PR_Onko_TNM_L_Kategorie](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md), [MII_PR_Onko_TNM_M_Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md), [MII_PR_Onko_TNM_N_Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md), [MII_PR_Onko_TNM_Pn_Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md), [MII_PR_Onko_TNM_S_Kategorie](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md), [MII_PR_Onko_TNM_T_Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md), [MII_PR_Onko_TNM_V_Kategorie](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md), [MII_PR_Onko_TNM_m_Symbol](StructureDefinition-mii-pr-onko-tnm-m-symbol.md), [MII_VS_Onko_TNM_ITC_Suffix](ValueSet-mii-vs-onko-tnm-itc-suffix.md), [MII_VS_Onko_TNM_L_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-l-kategorie-werte.md), [MII_VS_Onko_TNM_M_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-m-kategorie-werte.md), [MII_VS_Onko_TNM_N_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-n-kategorie-werte.md), [MII_VS_Onko_TNM_Pn_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-pn-kategorie-werte.md), [MII_VS_Onko_TNM_SN_Suffix](ValueSet-mii-vs-onko-tnm-sn-suffix.md), [MII_VS_Onko_TNM_S_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-s-kategorie-werte.md), [MII_VS_Onko_TNM_T_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-t-kategorie-werte.md), [MII_VS_Onko_TNM_UICC_Stadium](ValueSet-mii-vs-onko-tnm-uicc-stadium.md), [MII_VS_Onko_TNM_V_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-v-kategorie-werte.md), [MII_VS_Onko_TNM_cp_Praefix](ValueSet-mii-vs-onko-tnm-cp-praefix.md), [MII_VS_Onko_TNM_m_Symbol](ValueSet-mii-vs-onko-tnm-m-symbol.md), [Observation/TNM-L-Observation-2](Observation-TNM-L-Observation-2.md), [Observation/TNM-M-Observation-2](Observation-TNM-M-Observation-2.md), [Observation/TNM-Pn-Observation-2](Observation-TNM-Pn-Observation-2.md), [Observation/TNM-T-Observation-2](Observation-TNM-T-Observation-2.md), [Observation/TNM-V-Observation-2](Observation-TNM-V-Observation-2.md), [Observation/mii-exa-onko-ascending-colon-tnm](Observation-mii-exa-onko-ascending-colon-tnm.md), [Observation/mii-exa-onko-ascending-colon-tnm-m](Observation-mii-exa-onko-ascending-colon-tnm-m.md), [Observation/mii-exa-onko-ascending-colon-tnm-n](Observation-mii-exa-onko-ascending-colon-tnm-n.md), [Observation/mii-exa-onko-ascending-colon-tnm-t](Observation-mii-exa-onko-ascending-colon-tnm-t.md), [Observation/mii-exa-onko-colorectal-tnm](Observation-mii-exa-onko-colorectal-tnm.md), [Observation/mii-exa-onko-colorectal-tnm-m](Observation-mii-exa-onko-colorectal-tnm-m.md), [Observation/mii-exa-onko-colorectal-tnm-n](Observation-mii-exa-onko-colorectal-tnm-n.md), [Observation/mii-exa-onko-colorectal-tnm-t](Observation-mii-exa-onko-colorectal-tnm-t.md), [Observation/mii-exa-onko-cup-tnm-m-cM1](Observation-mii-exa-onko-cup-tnm-m-cM1.md), [Observation/mii-exa-onko-cup-tnm-n-cNX](Observation-mii-exa-onko-cup-tnm-n-cNX.md), [Observation/mii-exa-onko-cup-tnm-t-cTX](Observation-mii-exa-onko-cup-tnm-t-cTX.md), [Observation/mii-exa-onko-kim-klass1](Observation-mii-exa-onko-kim-klass1.md), [Observation/mii-exa-onko-kim-klass1-cM1](Observation-mii-exa-onko-kim-klass1-cM1.md), [Observation/mii-exa-onko-kim-klass1-cN1](Observation-mii-exa-onko-kim-klass1-cN1.md), [Observation/mii-exa-onko-kim-klass1-cT3c](Observation-mii-exa-onko-kim-klass1-cT3c.md), [Observation/mii-exa-onko-kim-klass2](Observation-mii-exa-onko-kim-klass2.md), [Observation/mii-exa-onko-kim-klass2-ycM1b](Observation-mii-exa-onko-kim-klass2-ycM1b.md), [Observation/mii-exa-onko-kim-klass2-ycN1](Observation-mii-exa-onko-kim-klass2-ycN1.md), [Observation/mii-exa-onko-kim-klass2-ycT3c](Observation-mii-exa-onko-kim-klass2-ycT3c.md), [Observation/mii-exa-onko-kim-klass3](Observation-mii-exa-onko-kim-klass3.md), [Observation/mii-exa-onko-kim-klass3-L1](Observation-mii-exa-onko-kim-klass3-L1.md), [Observation/mii-exa-onko-kim-klass3-Pn0](Observation-mii-exa-onko-kim-klass3-Pn0.md), [Observation/mii-exa-onko-kim-klass3-V0](Observation-mii-exa-onko-kim-klass3-V0.md), [Observation/mii-exa-onko-kim-klass3-ypM1b](Observation-mii-exa-onko-kim-klass3-ypM1b.md), [Observation/mii-exa-onko-kim-klass3-ypT3c](Observation-mii-exa-onko-kim-klass3-ypT3c.md), [Observation/mii-exa-onko-kim-synth1](Observation-mii-exa-onko-kim-synth1.md), [Observation/mii-exa-onko-kim-synth2](Observation-mii-exa-onko-kim-synth2.md), [Observation/mii-exa-onko-kim-synth3](Observation-mii-exa-onko-kim-synth3.md), [Observation/mii-exa-onko-kim-synth4](Observation-mii-exa-onko-kim-synth4.md), [Observation/mii-exa-onko-tnm-biopsy-cT4cN1cM0](Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.md), [Observation/mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0](Observation-mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0](Observation-mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-m-cM0](Observation-mii-exa-onko-tnm-bundle-legacy-m-cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-n-cN3](Observation-mii-exa-onko-tnm-bundle-legacy-n-cN3.md), [Observation/mii-exa-onko-tnm-bundle-legacy-t-cT2](Observation-mii-exa-onko-tnm-bundle-legacy-t-cT2.md), [Observation/mii-exa-onko-tnm-bundle-m-kategorie-cM0](Observation-mii-exa-onko-tnm-bundle-m-kategorie-cM0.md), [Observation/mii-exa-onko-tnm-bundle-n-kategorie-cN3](Observation-mii-exa-onko-tnm-bundle-n-kategorie-cN3.md), [Observation/mii-exa-onko-tnm-bundle-t-kategorie-cT2](Observation-mii-exa-onko-tnm-bundle-t-kategorie-cT2.md), [Observation/mii-exa-onko-tnm-clinical-cT3cN1cM0](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.md), [Observation/mii-exa-onko-tnm-journey-l-kategorie-L0](Observation-mii-exa-onko-tnm-journey-l-kategorie-L0.md), [Observation/mii-exa-onko-tnm-journey-pn-kategorie-Pn0](Observation-mii-exa-onko-tnm-journey-pn-kategorie-Pn0.md), [Observation/mii-exa-onko-tnm-journey-v-kategorie-V0](Observation-mii-exa-onko-tnm-journey-v-kategorie-V0.md), [Observation/mii-exa-onko-tnm-klassifikation-TisN0M0](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.md), [Observation/mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.md), [Observation/mii-exa-onko-tnm-l-kategorie-L](Observation-mii-exa-onko-tnm-l-kategorie-L.md), [Observation/mii-exa-onko-tnm-l-kategorie-L1](Observation-mii-exa-onko-tnm-l-kategorie-L1.md), [Observation/mii-exa-onko-tnm-m-kategorie-M0](Observation-mii-exa-onko-tnm-m-kategorie-M0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM0](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM1](Observation-mii-exa-onko-tnm-m-kategorie-cM1.md), [Observation/mii-exa-onko-tnm-m-kategorie-rcM1](Observation-mii-exa-onko-tnm-m-kategorie-rcM1.md), [Observation/mii-exa-onko-tnm-n-kategorie-N0](Observation-mii-exa-onko-tnm-n-kategorie-N0.md), [Observation/mii-exa-onko-tnm-n-kategorie-cN1](Observation-mii-exa-onko-tnm-n-kategorie-cN1.md), [Observation/mii-exa-onko-tnm-n-kategorie-pN0i-sn](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.md), [Observation/mii-exa-onko-tnm-n-kategorie-rcN1](Observation-mii-exa-onko-tnm-n-kategorie-rcN1.md), [Observation/mii-exa-onko-tnm-n-kategorie-ycN0](Observation-mii-exa-onko-tnm-n-kategorie-ycN0.md), [Observation/mii-exa-onko-tnm-n-kategorie-ypN0](Observation-mii-exa-onko-tnm-n-kategorie-ypN0.md), [Observation/mii-exa-onko-tnm-pn-kategorie-Pn1](Observation-mii-exa-onko-tnm-pn-kategorie-Pn1.md), [Observation/mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0](Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.md), [Observation/mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0](Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.md), [Observation/mii-exa-onko-tnm-recurrence-rcT2cN1cM1](Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.md), [Observation/mii-exa-onko-tnm-s-kategorie-S1](Observation-mii-exa-onko-tnm-s-kategorie-S1.md), [Observation/mii-exa-onko-tnm-synth-klassifikation](Observation-mii-exa-onko-tnm-synth-klassifikation.md), [Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation](Observation-mii-exa-onko-tnm-synth-meldung1-klassifikation.md), [Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0](Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.md), [Observation/mii-exa-onko-tnm-synth-meldung1-n-cN2](Observation-mii-exa-onko-tnm-synth-meldung1-n-cN2.md), [Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3](Observation-mii-exa-onko-tnm-synth-meldung1-t-cT3.md), [Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation](Observation-mii-exa-onko-tnm-synth-meldung2-klassifikation.md), [Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1](Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.md), [Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2](Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-Tis](Observation-mii-exa-onko-tnm-t-kategorie-Tis.md), [Observation/mii-exa-onko-tnm-t-kategorie-cT3](Observation-mii-exa-onko-tnm-t-kategorie-cT3.md), [Observation/mii-exa-onko-tnm-t-kategorie-cT4](Observation-mii-exa-onko-tnm-t-kategorie-cT4.md), [Observation/mii-exa-onko-tnm-t-kategorie-rcT2](Observation-mii-exa-onko-tnm-t-kategorie-rcT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-uT2a2](Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.md), [Observation/mii-exa-onko-tnm-t-kategorie-ycT2](Observation-mii-exa-onko-tnm-t-kategorie-ycT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-ypT0](Observation-mii-exa-onko-tnm-t-kategorie-ypT0.md) and [Observation/mii-exa-onko-tnm-v-kategorie-V1](Observation-mii-exa-onko-tnm-v-kategorie-V1.md)


* IFA GmbH

* [PZN](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=http://fhir.de/CodeSystem/ifa/pzn): [MII_PR_Onko_Systemische_Therapie_Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) and [MII_PR_Onko_Therapieempfehlung_Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [ConceptMap/mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor](ConceptMap-mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor.md), [ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc.md)... Show 326 more, [ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc.md), [ConceptMap/mii-cm-onko-krk-stoma-obds-sct](ConceptMap-mii-cm-onko-krk-stoma-obds-sct.md), [MII CM Onko Clincal TNM UICC SCT Mapping](ConceptMap-mii-cm-onko-tnm-uicc-sct-clinical.md), [MII CM Onko Genetische Variante Auspraegung SCT Mapping](ConceptMap-mii-cm-onko-genetische-variante-auspraegung-sct.md), [MII CM Onko Grading SCT Mapping](ConceptMap-mii-cm-onko-grading-sct.md), [MII CM Onko Intention SNOMED Mapping](ConceptMap-mii-cm-onko-intention-sct.md), [MII CM Onko Nebenwirkung SCT Mapping](ConceptMap-mii-cm-onko-nebenwirkung-sct.md), [MII CM Onko Operation Komplikation SCT Mapping](ConceptMap-mii-cm-onko-operation-komplikation-sct.md), [MII CM Onko Pathological TNM UICC SCT Mapping](ConceptMap-mii-cm-onko-tnm-uicc-sct-pathological.md), [MII CM Onko Primaertumor Diagnosesicherung SCT Mapping](ConceptMap-mii-cm-onko-primaertumor-diagnosesicherung-sct.md), [MII CM Onko Residualstatus UICC SCT Mapping](ConceptMap-mii-cm-onko-residualstatus-uicc-sct.md), [MII CM Onko Seitenlokalisation SNOMED Mapping](ConceptMap-mii-cm-onko-seitenlokalisation-sct.md), [MII CM Onko Strahlentherapie Applikationsart SCT Mapping](ConceptMap-mii-cm-onko-strahlentherapie-applikationsart-sct.md), [MII CM Onko Strahlentherapie Boost SCT Mapping](ConceptMap-mii-cm-onko-strahlentherapie-boost-sct.md), [MII CM Onko Strahlentherapie Strahlenart SCT Mapping](ConceptMap-mii-cm-onko-strahlentherapie-strahlenart-sct.md), [MII CM Onko Strahlentherapie Strahleneinheit SCT Mapping](ConceptMap-mii-cm-onko-strahlentherapie-strahleneinheit-sct.md), [MII CM Onko Strahlentherapie Zielstellung SCT Mapping](ConceptMap-mii-cm-onko-strahlentherapie-zielgebiet-sct.md), [MII CM Onko Studienteilnahme SCT Mapping](ConceptMap-mii-cm-onko-studienteilnahme-sct.md), [MII CM Onko Therapie Ende SNOMED Mapping](ConceptMap-mii-cm-onko-therapie-ende-sct.md), [MII CM Onko Therapie Stellung SNOMED Mapping](ConceptMap-mii-cm-onko-therapie-stellung-sct.md), [MII CM Onko Therapie Typ SNOMED Mapping](ConceptMap-mii-cm-onko-therapie-typ-sct.md), [MII CM Onko Therapieabweichung SCT Mappingg](ConceptMap-mii-cm-onko-therapieabweichung-sct.md), [MII CM Onko Therapieplanung SCT Mapping](ConceptMap-mii-cm-onko-therapieplanung-sct.md), [MII CM Onko Tod SCT Mapping](ConceptMap-mii-cm-onko-tod-sct.md), [MII CM Onko Verlauf Fernmetastasen SCT Mapping](ConceptMap-mii-cm-onko-verlauf-fernmetastasen-sct.md), [MII CM Onko Verlauf Gesamtbeurteilung SCT Mapping](ConceptMap-mii-cm-onko-verlauf-gesamtbeurteilung-sct.md), [MII CM Onko Verlauf Lymphknoten SCT Mapping](ConceptMap-mii-cm-onko-verlauf-lymphknoten-sct.md), [MII CM Onko Verlauf Primaertumor SCT Mapping](ConceptMap-mii-cm-onko-verlauf-primaertumor-sct.md), [MIIOnkoSynthesizeTNM](Library-mii-lib-onko-synthesize-tnm.md), [MII_CM_MVGenomSeq_Onkologie](ConceptMap-mii-cm-onkologie-to-mvgenomseq.md), [MII_CM_Onko_ASA_oBDS_LOINC](ConceptMap-mii-cm-onko-asa-obds-loinc.md), [MII_CM_Onko_ATC_Transitions_2021](ConceptMap-mii-cm-onko-atc-transitions-2021.md), [MII_CM_Onko_ATC_Transitions_2022](ConceptMap-mii-cm-onko-atc-transitions-2022.md), [MII_CM_Onko_ATC_Transitions_2023](ConceptMap-mii-cm-onko-atc-transitions-2023.md), [MII_CM_Onko_ATC_Transitions_2024](ConceptMap-mii-cm-onko-atc-transitions-2024.md), [MII_CM_Onko_ATC_Transitions_2025](ConceptMap-mii-cm-onko-atc-transitions-2025.md), [MII_CM_Onko_ATC_Transitions_2026](ConceptMap-mii-cm-onko-atc-transitions-2026.md), [MII_CM_Onko_ICDO3_Transitions_2019](ConceptMap-mii-cm-onko-icdo3-transitions-2019.md), [MII_CM_Onko_Nebenwirkung_MedDRA_SCT](ConceptMap-mii-cm-onko-nebenwirkung-meddra-sct.md), [MII_CPS_Onkology_CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md), [MII_CS_Onko_ASA_oBDS](CodeSystem-mii-cs-onko-asa-obds.md), [MII_CS_Onko_Allgemeiner_Leistungszustand_ECOG](CodeSystem-mii-cs-onko-allgemeiner-leistungszustand-ecog.md), [MII_CS_Onko_Allgemeiner_Leistungszustand_Karnofsky](CodeSystem-mii-cs-onko-allgemeiner-leistungszustand-karnofsky.md), [MII_CS_Onko_Fernmetastasen](CodeSystem-mii-cs-onko-fernmetastasen.md), [MII_CS_Onko_Genetische_Variante_Auspraegung](CodeSystem-mii-cs-onko-genetische-variante-auspraegung.md), [MII_CS_Onko_Grading](CodeSystem-mii-cs-onko-grading.md), [MII_CS_Onko_Intention](CodeSystem-mii-cs-onko-intention.md), [MII_CS_Onko_KRK_Anastomoseninsuffizienz](CodeSystem-mii-cs-onko-krk-anastomoseninsuffizienz.md), [MII_CS_Onko_KRK_MRT_Mesorektale_Faszie_Status](CodeSystem-mii-cs-onko-krk-mrt-mesorektale-faszie-status.md), [MII_CS_Onko_KRK_Operationstyp](CodeSystem-mii-cs-onko-krk-operationstyp.md), [MII_CS_Onko_KRK_Stoma_Anzeichnung](CodeSystem-mii-cs-onko-krk-stoma-anzeichnung.md), [MII_CS_Onko_KRK_TME_Qualitaet](CodeSystem-mii-cs-onko-krk-tme-qualitaet.md), [MII_CS_Onko_Mamma_Her2neu_Status_Leitlinie](CodeSystem-mii-cs-onko-mamma-her2neu-status-leitlinie.md), [MII_CS_Onko_Mamma_Her2neu_Status_oBDS](CodeSystem-mii-cs-onko-mamma-her2neu-status-obds.md), [MII_CS_Onko_Mamma_Rezeptorstatus_Leitlinie](CodeSystem-mii-cs-onko-mamma-rezeptorstatus-leitlinie.md), [MII_CS_Onko_Melanom_Ulzeration](CodeSystem-mii-cs-onko-melanom-ulzeration.md), [MII_CS_Onko_Nebenwirkung_CTCAE_Grad](CodeSystem-mii-cs-onko-nebenwirkung-ctcae-grad.md), [MII_CS_Onko_Nebenwirkung_CTCAE_Version](CodeSystem-mii-cs-onko-nebenwirkung-ctcae-version.md), [MII_CS_Onko_Nebenwirkung_MedDRA_DE](CodeSystem-mii-cs-onko-nebenwirkung-meddra-de.md), [MII_CS_Onko_Operation_Komplikationen](CodeSystem-mii-cs-onko-operation-komplikation.md), [MII_CS_Onko_Operation_Urgency](CodeSystem-mii-cs-onko-operation-urgency.md), [MII_CS_Onko_Primaertumor_Diagnosesicherung](CodeSystem-mii-cs-onko-primaertumor-diagnosesicherung.md), [MII_CS_Onko_Prostata_Postsurgical_Complications](CodeSystem-mii-cs-onko-prostata-postsurgical-complications.md), [MII_CS_Onko_Residualstatus](CodeSystem-mii-cs-onko-residualstatus.md), [MII_CS_Onko_Seitenlokalisation](CodeSystem-mii-cs-onko-seitenlokalisation.md), [MII_CS_Onko_Strahlentherapie_Applikationsart](CodeSystem-mii-cs-onko-strahlentherapie-applikationsart.md), [MII_CS_Onko_Strahlentherapie_Boost](CodeSystem-mii-cs-onko-strahlentherapie-boost.md), [MII_CS_Onko_Strahlentherapie_Strahlenart](CodeSystem-mii-cs-onko-strahlentherapie-strahlenart.md), [MII_CS_Onko_Strahlentherapie_Zielgebiet](CodeSystem-mii-cs-onko-strahlentherapie-zielgebiet.md), [MII_CS_Onko_Strahlentherapie_Zielgebiet_2014](CodeSystem-mii-cs-onko-strahlentherapie-zielgebiet-2014.md), [MII_CS_Onko_Systemische_Therapie_Protokolle](CodeSystem-mii-cs-onko-systemische-therapie-protokolle.md), [MII_CS_Onko_TNM_Formel](CodeSystem-mii-cs-onko-tnm-formel.md), [MII_CS_Onko_TNM_UICC](CodeSystem-mii-cs-onko-tnm-uicc.md), [MII_CS_Onko_TNM_Version](CodeSystem-mii-cs-onko-tnm-version.md), [MII_CS_Onko_Therapie_Ende_Grund](CodeSystem-mii-cs-onko-therapie-ende-grund.md), [MII_CS_Onko_Therapie_StellungZurOp](CodeSystem-mii-cs-onko-therapie-stellungzurop.md), [MII_CS_Onko_Therapie_Typ](CodeSystem-mii-cs-onko-therapie-typ.md), [MII_CS_Onko_Therapieabweichung](CodeSystem-mii-cs-onko-therapieabweichung.md), [MII_CS_Onko_Therapieplanung_Typ](CodeSystem-mii-cs-onko-therapieplanung-typ.md), [MII_CS_Onko_Tod](CodeSystem-mii-cs-onko-tod.md), [MII_CS_Onko_Verlauf_Fernmetastasen](CodeSystem-mii-cs-onko-verlauf-fernmetastasen.md), [MII_CS_Onko_Verlauf_Gesamtbeurteilung](CodeSystem-mii-cs-onko-verlauf-gesamtbeurteilung.md), [MII_CS_Onko_Verlauf_Lymphknoten](CodeSystem-mii-cs-onko-verlauf-lymphknoten.md), [MII_CS_Onko_Verlauf_Primaertumor](CodeSystem-mii-cs-onko-verlauf-primaertumor.md), [MII_CS_Onko_Weitere_Klassifikationen_OBDS](CodeSystem-mii-cs-onko-weitere-klassifikationen-obds.md), [MII_EX_Onko_Histology_Morphology_Behavior_ICDO3](StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.md), [MII_EX_Onko_Nebenwirkung_CTCAE_Version](StructureDefinition-mii-ex-onko-nebenwirkung-ctcae-version.md), [MII_EX_Onko_Operation_Intention](StructureDefinition-mii-ex-onko-operation-intention.md), [MII_EX_Onko_Operation_Urgency](StructureDefinition-mii-ex-onko-operation-urgency.md), [MII_EX_Onko_Strahlentherapie_Bestrahlung_Boost](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost.md), [MII_EX_Onko_Strahlentherapie_Bestrahlung_Einzeldosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.md), [MII_EX_Onko_Strahlentherapie_Bestrahlung_Gesamtdosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis.md), [MII_EX_Onko_Strahlentherapie_Bestrahlung_Seitenlokalisation](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation.md), [MII_EX_Onko_Strahlentherapie_Intention](StructureDefinition-mii-ex-onko-strahlentherapie-intention.md), [MII_EX_Onko_Strahlentherapie_StellungZurOp](StructureDefinition-mii-ex-onko-strahlentherapie-stellungzurop.md), [MII_EX_Onko_Systemische_Therapie_Intention](StructureDefinition-mii-ex-onko-systemische-therapie-intention.md), [MII_EX_Onko_Systemische_Therapie_StellungZurOp](StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop.md), [MII_EX_Onko_TNM_ITC_Suffix](StructureDefinition-mii-ex-onko-tnm-itc-suffix.md), [MII_EX_Onko_TNM_SN_Suffix](StructureDefinition-mii-ex-onko-tnm-sn-suffix.md), [MII_EX_Onko_TNM_a_Praefix](StructureDefinition-mii-ex-onko-tnm-a-praefix.md), [MII_EX_Onko_TNM_cp_Praefix](StructureDefinition-mii-ex-onko-tnm-cp-praefix.md), [MII_EX_Onko_TNM_r_Praefix](StructureDefinition-mii-ex-onko-tnm-r-praefix.md), [MII_EX_Onko_TNM_y_Praefix](StructureDefinition-mii-ex-onko-tnm-y-praefix.md), [MII_EX_Onko_Transformation_Von](StructureDefinition-mii-ex-onko-transformation-von.md), [MII_IG_Onko_DE](index.md), [MII_LM_MVGenomSeq_Onkologie](StructureDefinition-mii-lm-mvgenomseq-onkologie.md), [MII_LM_Onko](StructureDefinition-mii-lm-onko.md), [MII_LM_Onko_Organspezifische_Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md), [MII_PR_Onko_ASA_Klassifikation](StructureDefinition-mii-pr-onko-asa-klassifikation.md), [MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.md), [MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md), [MII_PR_Onko_Anzahl_Befallene_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md), [MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md), [MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md), [MII_PR_Onko_Anzahl_Untersuchte_Sentinel_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md), [MII_PR_Onko_Befund](StructureDefinition-mii-pr-onko-befund.md), [MII_PR_Onko_Diagnose_Primaertumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md), [MII_PR_Onko_Fernmetastasen](StructureDefinition-mii-pr-onko-fernmetastasen.md), [MII_PR_Onko_Fruehere_Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md), [MII_PR_Onko_Genetische_Variante](StructureDefinition-mii-pr-onko-genetische-variante.md), [MII_PR_Onko_Grading](StructureDefinition-mii-pr-onko-grading.md), [MII_PR_Onko_Histologie_ICDO3](StructureDefinition-mii-pr-onko-histologie-icdo3.md), [MII_PR_Onko_KRK_Abstand_Aboral](StructureDefinition-mii-pr-onko-krk-abstand-aboral.md), [MII_PR_Onko_KRK_Abstand_Anokutan](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.md), [MII_PR_Onko_KRK_Abstand_Circumferelle_Resektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.md), [MII_PR_Onko_KRK_Anastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.md), [MII_PR_Onko_KRK_MRT_Mesorektale_Faszie](StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.md), [MII_PR_Onko_KRK_Operation](StructureDefinition-mii-pr-onko-krk-operation.md), [MII_PR_Onko_KRK_Specimen](StructureDefinition-mii-pr-onko-krk-specimen.md), [MII_PR_Onko_KRK_Stoma_Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md), [MII_PR_Onko_Liste_Evidenz_Erstdiagnose](StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.md), [MII_PR_Onko_Mamma_Her2neu_Status](StructureDefinition-mii-pr-onko-mamma-her2neu-status.md), [MII_PR_Onko_Mamma_Menopausenstatus](StructureDefinition-mii-pr-onko-mamma-menopause-status.md), [MII_PR_Onko_Mamma_Operation](StructureDefinition-mii-pr-onko-mamma-operation.md), [MII_PR_Onko_Mamma_Praeoperative_Markierung](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.md), [MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md), [MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md), [MII_PR_Onko_Mamma_Sozialdienst](StructureDefinition-mii-pr-onko-mamma-sozialdienst.md), [MII_PR_Onko_Melanom_Breslow_Tiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.md), [MII_PR_Onko_Melanom_Exzision](StructureDefinition-mii-pr-onko-melanom-exzision.md), [MII_PR_Onko_Melanom_LDH](StructureDefinition-mii-pr-onko-melanom-ldh.md), [MII_PR_Onko_Melanom_Sicherheitsabstand](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.md), [MII_PR_Onko_Melanom_Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.md), [MII_PR_Onko_Nebenwirkung_Adverse_Event](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md), [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md), [MII_PR_Onko_Prostata_Anzahl_Positive_Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.md), [MII_PR_Onko_Prostata_Anzahl_Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.md), [MII_PR_Onko_Prostata_CA_Befall_Stanze](StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.md), [MII_PR_Onko_Prostata_Clavien_Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md), [MII_PR_Onko_Prostata_Gleason_Grade_Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md), [MII_PR_Onko_Prostata_Gleason_Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md), [MII_PR_Onko_Prostata_Gleason_Score_Gesamt](StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.md), [MII_PR_Onko_Prostata_Operation](StructureDefinition-mii-pr-onko-prostata-operation.md), [MII_PR_Onko_Prostata_PSA](StructureDefinition-mii-pr-onko-prostate-psa.md), [MII_PR_Onko_Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md), [MII_PR_Onko_Specimen](StructureDefinition-mii-pr-onko-specimen.md), [MII_PR_Onko_Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md), [MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md), [MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md), [MII_PR_Onko_Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.md), [MII_PR_Onko_Systemische_Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md), [MII_PR_Onko_Systemische_Therapie_Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md), [MII_PR_Onko_TNM_Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md), [MII_PR_Onko_TNM_Klassifikation_Synthetisiert](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md), [MII_PR_Onko_TNM_L_Kategorie](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md), [MII_PR_Onko_TNM_M_Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md), [MII_PR_Onko_TNM_N_Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md), [MII_PR_Onko_TNM_Pn_Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md), [MII_PR_Onko_TNM_S_Kategorie](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md), [MII_PR_Onko_TNM_T_Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md), [MII_PR_Onko_TNM_V_Kategorie](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md), [MII_PR_Onko_TNM_a_Symbol](StructureDefinition-mii-pr-onko-tnm-a-symbol.md), [MII_PR_Onko_TNM_m_Symbol](StructureDefinition-mii-pr-onko-tnm-m-symbol.md), [MII_PR_Onko_TNM_r_Symbol](StructureDefinition-mii-pr-onko-tnm-r-symbol.md), [MII_PR_Onko_TNM_y_Symbol](StructureDefinition-mii-pr-onko-tnm-y-symbol.md), [MII_PR_Onko_Therapieempfehlung_Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md), [MII_PR_Onko_Therapieempfehlung_Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md), [MII_PR_Onko_Therapieempfehlung_Operation](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.md), [MII_PR_Onko_Tod](StructureDefinition-mii-pr-onko-tod.md), [MII_PR_Onko_Tumorgroesse](StructureDefinition-mii-pr-onko-tumorgroesse.md), [MII_PR_Onko_Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md), [MII_PR_Onko_Tumormarker](StructureDefinition-mii-pr-onko-tumormarker.md), [MII_PR_Onko_Verlauf](StructureDefinition-mii-pr-onko-verlauf.md), [MII_PR_Onko_Weitere_Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md), [MII_SP_Condition_Extension_Morphology_Behavior_ICD-O-3](SearchParameter-mii-sp-onko-condition-ext-morphology-behavior-icdo3.md), [MII_SP_Observation_Extension_TNM_N_ITC](SearchParameter-mii-sp-onko-observation-ext-tnm-n-itc.md), [MII_SP_Observation_Extension_TNM_N__SN_Suffix](SearchParameter-mii-sp-onko-observation-ext-tnm-n-sn-suffix.md), [MII_SP_Observation_TNM_cp_Praefix](SearchParameter-mii-sp-onko-observation-tnm-cp-praefix.md), [MII_SP_Observation_TNM_r_Praefix](SearchParameter-mii-sp-onko-observation-tnm-r-praefix.md), [MII_SP_Observation_TNM_y_Praefix](SearchParameter-mii-sp-onko-observation-tnm-y-praefix.md), [MII_SP_Procedure_Extension_Operation_Intention](SearchParameter-mii-sp-onko-procedure-ext-operation-intention.md), [MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Boost](SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-boost.md), [MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Einzeldosis](SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis.md), [MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Gesamtdosis](SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis.md), [MII_SP_Procedure_Extension_Strahlentherapie_Intention](SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-intention.md), [MII_SP_Procedure_Extension_Strahlentherapie_StellungZurOp](SearchParameter-mii-sp-onko-ext-strahlentherapie-stellungzurop.md), [MII_SP_Procedure_Extension_Systemischetherapie_Intention](SearchParameter-mii-sp-onko-procedure-ext-systemischetherapie-intention.md), [MII_SP_Procedure_Extension_Systemischetherapie_StellungZurOp](SearchParameter-mii-sp-onko-ext-systemischetherapie-stellungzurop.md), [MII_SP_Procedure_Strahlentherapie_Applikationsart](SearchParameter-mii-sp-onko-procedure-strahlentherapie-applikationsart.md), [MII_SP_Procedure_Strahlentherapie_Lateralitaet](SearchParameter-mii-sp-onko-procedure-strahlentherapie-lateralitaet.md), [MII_SP_Procedure_Strahlentherapie_Strahlenart](SearchParameter-mii-sp-onko-procedure-strahlentherapie-strahlenart.md), [MII_VS_Onko_ASA_LOINC](ValueSet-mii-vs-onko-asa-loinc.md), [MII_VS_Onko_ASA_oBDS](ValueSet-mii-vs-onko-asa-obds.md), [MII_VS_Onko_Allgemeiner_Leistungszustand_ECOG](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog.md), [MII_VS_Onko_Allgemeiner_Leistungszustand_ECOG_LOINC](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog-loinc.md), [MII_VS_Onko_Allgemeiner_Leistungszustand_Karnofsky](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-karnofsky.md), [MII_VS_Onko_Allgemeiner_Leistungszustand_Karnofsky_LOINC](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc.md), [MII_VS_Onko_Beurteilung_Lokaler_Residualstatus](ValueSet-mii-vs-onko-beurteilung-lokaler-residualstatus.md), [MII_VS_Onko_Fernmetastasen](ValueSet-mii-vs-onko-fernmetastasen.md), [MII_VS_Onko_Genetische_Variante_Auspraegung](ValueSet-mii-vs-onko-genetische-variante-auspraegung.md), [MII_VS_Onko_Gesamtbeurteilung_Residualstatus](ValueSet-mii-vs-onko-gesamtbeurteilung-residualstatus.md), [MII_VS_Onko_Grading](ValueSet-mii-vs-onko-grading.md), [MII_VS_Onko_ICD10_Meldepflichtige_Tumoren](ValueSet-mii-vs-onko-icd10-meldepflichtige-tumoren.md), [MII_VS_Onko_ICDO3_Morphologie](ValueSet-mii-vs-onko-icdo3-morphologie.md), [MII_VS_Onko_ICDO3_Morphologie_2014](ValueSet-mii-vs-onko-icdo3-morphologie-2014.md), [MII_VS_Onko_ICDO3_Morphologie_2019](ValueSet-mii-vs-onko-icdo3-morphologie-2019.md), [MII_VS_Onko_ICDO3_Topographie](ValueSet-mii-vs-onko-icdo3-topographie.md), [MII_VS_Onko_ICDO3_Topographie_2014](ValueSet-mii-vs-onko-icdo3-topographie-2014.md), [MII_VS_Onko_ICDO3_Topographie_2019](ValueSet-mii-vs-onko-icdo3-topographie-2019.md), [MII_VS_Onko_IGHV_Gensegmente_HGNC](ValueSet-mii-vs-onko-ighv-gensegmente-hgnc.md), [MII_VS_Onko_KDL_Dokumentklassen](ValueSet-mii-vs-onko-kdl-dokumentklassen.md), [MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand](ValueSet-mii-vs-onko-krk-abstand-circumferelle-resektionsrand.md), [MII_VS_Onko_KRK_Abstand_Resektionslinie_Aboral](ValueSet-mii-vs-onko-krk-abstand-resektionslinie-aboral.md), [MII_VS_Onko_KRK_Anastomoseninsuffizienz](ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.md), [MII_VS_Onko_KRK_MRT_Mesorektale_Faszie_Status](ValueSet-mii-vs-onko-krk-mrt-mesorektale-faszie-status.md), [MII_VS_Onko_KRK_Stoma_Anzeichnung](ValueSet-mii-vs-onko-krk-stoma-anzeichnung.md), [MII_VS_Onko_KRK_Stoma_Status_Reason](ValueSet-mii-vs-onko-krk-stoma-status-reason.md), [MII_VS_Onko_KRK_TME_Qualitaet](ValueSet-mii-vs-onko-krk-tme-qualitaet.md), [MII_VS_Onko_Koerperstruktur_SCT](ValueSet-mii-vs-onko-koerperstruktur-sct.md), [MII_VS_Onko_Mamma_Faerbeintensitaet](ValueSet-mii-vs-onko-mamma-faerbeintensitaet.md), [MII_VS_Onko_Mamma_Her2neu_IHC_Score](ValueSet-mii-vs-onko-mamma-her2neu-ihc-score.md), [MII_VS_Onko_Mamma_Her2neu_Status_Leitlinie](ValueSet-mii-vs-onko-mamma-her2neu-status-leitlinie.md), [MII_VS_Onko_Mamma_Her2neu_Status_oBDS](ValueSet-mii-vs-onko-mamma-her2neu-status-obds.md), [MII_VS_Onko_Mamma_ISH_Ergebnis](ValueSet-mii-vs-onko-mamma-ish-ergebnis.md), [MII_VS_Onko_Mamma_Intraoperatives_Imaging_Praeparat](ValueSet-mii-vs-onko-mamma-intraoperatives-imaging-praeparat.md), [MII_VS_Onko_Mamma_Menopause_Status](ValueSet-mii-vs-onko-mamma-menopause-status.md), [MII_VS_Onko_Mamma_Operation_OPS](ValueSet-mii-vs-onko-mamma-operation-ops.md), [MII_VS_Onko_Mamma_Operation_SCT](ValueSet-mii-vs-onko-mamma-operation-sct.md), [MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet](ValueSet-mii-vs-onko-mamma-praeoperative-markierung-modalitaet.md), [MII_VS_Onko_Mamma_Rezeptorstatus_Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.md), [MII_VS_Onko_Mamma_Rezeptorstatus_oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.md), [MII_VS_Onko_Marker_Gene_HGNC](ValueSet-mii-vs-onko-marker-gene-hgnc.md), [MII_VS_Onko_Melanom_Exzision_SNOMEDCT](ValueSet-mii-vs-onko-melanom-exzision-snomedct.md), [MII_VS_Onko_Melanom_LDH](ValueSet-mii-vs-onko-melanom-ldh.md), [MII_VS_Onko_Melanom_Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.md), [MII_VS_Onko_Nebenwirkung_Art](ValueSet-mii-vs-onko-nebenwirkung-art.md), [MII_VS_Onko_Nebenwirkung_CTCAE_Grad](ValueSet-mii-vs-onko-nebenwirkung-ctcae-grad.md), [MII_VS_Onko_Nebenwirkung_CTCAE_Version](ValueSet-mii-vs-onko-nebenwirkung-ctcae-version.md), [MII_VS_Onko_OPS_Nuklearmedizin](ValueSet-mii-vs-onko-ops-nuklearmedizin.md), [MII_VS_Onko_OPS_Strahlentherapie](ValueSet-mii-vs-onko-ops-strahlentherapie.md), [MII_VS_Onko_Operation_Intention](ValueSet-mii-vs-onko-operation-intention.md), [MII_VS_Onko_Operation_Komplikation](ValueSet-mii-vs-onko-operation-komplikation.md), [MII_VS_Onko_Operation_Urgency](ValueSet-mii-vs-onko-operation-urgency.md), [MII_VS_Onko_Praedispositionsgene_HGNC](ValueSet-mii-vs-onko-praedispositionsgene-hgnc.md), [MII_VS_Onko_Praedispositionssyndrome_ORPHA](ValueSet-mii-vs-onko-praedispositionssyndrome-orpha.md), [MII_VS_Onko_Primaertumor_Diagnosesicherung](ValueSet-mii-vs-onko-primaertumor-diagnosesicherung.md), [MII_VS_Onko_Prostata_Clavien_Dindo](ValueSet-mii-vs-onko-prostata-clavien-dindo.md), [MII_VS_Onko_Prostata_Gleason_Pattern_LOINC](ValueSet-mii-vs-onko-prostata-gleason-pattern-loinc.md), [MII_VS_Onko_Prostata_Gleason_Patterns](ValueSet-mii-vs-onko-prostata-gleason-patterns.md), [MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary](ValueSet-mii-vs-onko-prostata-gleason-primary-secondary-tertiary.md), [MII_VS_Onko_Prostata_Gleason_Score](ValueSet-mii-vs-onko-prostata-gleason-score.md), [MII_VS_Onko_Prostata_Gleason_Score_Gesamt](ValueSet-mii-vs-onko-prostata-gleason-score-gesamt.md), [MII_VS_Onko_Prostata_Operation_SNOMEDCT](ValueSet-mii-vs-onko-prostata-operation-snomedct.md), [MII_VS_Onko_Prostata_PSA_LOINC](ValueSet-mii-vs-onko-prostata-psa-loinc.md), [MII_VS_Onko_Prostata_Postsurgical_Complications](ValueSet-mii-vs-onko-prostata-postsurgical-complications.md), [MII_VS_Onko_Seitenlokalisation](ValueSet-mii-vs-onko-seitenlokalisation.md), [MII_VS_Onko_Strahlentherapie_Applikationsart](ValueSet-mii-vs-onko-strahlentherapie-applikationsart.md), [MII_VS_Onko_Strahlentherapie_Boosts](ValueSet-mii-vs-onko-strahlentherapie-boost.md), [MII_VS_Onko_Strahlentherapie_Ende_Grund](ValueSet-mii-vs-onko-strahlentherapie-ende-grund.md), [MII_VS_Onko_Strahlentherapie_Intention](ValueSet-mii-vs-onko-strahlentherapie-intention.md), [MII_VS_Onko_Strahlentherapie_StellungZurOp](ValueSet-mii-vs-onko-strahlentherapie-stellungzurop.md), [MII_VS_Onko_Strahlentherapie_Strahlenart](ValueSet-mii-vs-onko-strahlentherapie-strahlenart.md), [MII_VS_Onko_Strahlentherapie_Strahlungseinheit](ValueSet-mii-vs-onko-strahlentherapie-strahlungseinheit.md), [MII_VS_Onko_Strahlentherapie_Zielgebiet](ValueSet-mii-vs-onko-strahlentherapie-zielgebiet.md), [MII_VS_Onko_Studienteilnahme](ValueSet-mii-vs-onko-studienteilnahme.md), [MII_VS_Onko_Systemische_Therapie_Art](ValueSet-mii-vs-onko-systemische-therapie-art.md), [MII_VS_Onko_Systemische_Therapie_Ende_Grund](ValueSet-mii-vs-onko-systemische-therapie-ende-grund.md), [MII_VS_Onko_Systemische_Therapie_Intention](ValueSet-mii-vs-onko-systemische-therapie-intention.md), [MII_VS_Onko_Systemische_Therapie_Protokolle](ValueSet-mii-vs-onko-systemische-therapie-protokolle.md), [MII_VS_Onko_Systemische_Therapie_StellungZurOp](ValueSet-mii-vs-onko-systemische-therapie-stellungzurop.md), [MII_VS_Onko_Systemische_Therapie_Substanzen](ValueSet-mii-vs-onko-systemische-therapie-substanzen.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2018](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2018.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2019](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2019.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2020](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2020.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2021](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2021.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2022](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2022.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2023](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2023.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2024](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2024.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2025](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2025.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_2026](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2026.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_UNII](ValueSet-mii-vs-onko-systemische-therapie-substanzen-unii.md), [MII_VS_Onko_TNM_ITC_Suffix](ValueSet-mii-vs-onko-tnm-itc-suffix.md), [MII_VS_Onko_TNM_Klassifikation_Typ](ValueSet-mii-vs-onko-tnm-klassifikation-typ.md), [MII_VS_Onko_TNM_L_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-l-kategorie-werte.md), [MII_VS_Onko_TNM_M_Kategorie](ValueSet-mii-vs-onko-tnm-m-kategorie.md), [MII_VS_Onko_TNM_M_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-m-kategorie-werte.md), [MII_VS_Onko_TNM_M_Kategorie_Werte_SCT](ValueSet-mii-vs-onko-tnm-m-kategorie-werte-sct.md), [MII_VS_Onko_TNM_N_Kategorie](ValueSet-mii-vs-onko-tnm-n-kategorie.md), [MII_VS_Onko_TNM_N_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-n-kategorie-werte.md), [MII_VS_Onko_TNM_N_Kategorie_Werte_SCT](ValueSet-mii-vs-onko-tnm-n-kategorie-werte-sct.md), [MII_VS_Onko_TNM_Pn_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-pn-kategorie-werte.md), [MII_VS_Onko_TNM_SN_Suffix](ValueSet-mii-vs-onko-tnm-sn-suffix.md), [MII_VS_Onko_TNM_S_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-s-kategorie-werte.md), [MII_VS_Onko_TNM_T_Kategorie](ValueSet-mii-vs-onko-tnm-t-kategorie.md), [MII_VS_Onko_TNM_T_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-t-kategorie-werte.md), [MII_VS_Onko_TNM_T_Kategorie_Werte_SCT](ValueSet-mii-vs-onko-tnm-t-kategorie-werte-sct.md), [MII_VS_Onko_TNM_UICC_Stadium](ValueSet-mii-vs-onko-tnm-uicc-stadium.md), [MII_VS_Onko_TNM_V_Kategorie_Werte](ValueSet-mii-vs-onko-tnm-v-kategorie-werte.md), [MII_VS_Onko_TNM_Version](ValueSet-mii-vs-onko-tnm-version.md), [MII_VS_Onko_TNM_cp_Praefix](ValueSet-mii-vs-onko-tnm-cp-praefix.md), [MII_VS_Onko_TNM_m_Symbol](ValueSet-mii-vs-onko-tnm-m-symbol.md), [MII_VS_Onko_Therapieabweichung](ValueSet-mii-vs-onko-therapieabweichung.md), [MII_VS_Onko_Therapieempfehlung_Typ](ValueSet-mii-vs-onko-therapieempfehlung-typ.md), [MII_VS_Onko_Therapieplanung_Typ](ValueSet-mii-vs-onko-therapieplanung-typ.md), [MII_VS_Onko_Tod](ValueSet-mii-vs-onko-tod.md), [MII_VS_Onko_Tumormarker_LOINC](ValueSet-mii-vs-onko-tumormarker-loinc.md), [MII_VS_Onko_Verlauf_Fernmetastasen](ValueSet-mii-vs-onko-verlauf-fernmetastasen.md), [MII_VS_Onko_Verlauf_Gesamtbeurteilung](ValueSet-mii-vs-onko-verlauf-gesamtbeurteilung.md), [MII_VS_Onko_Verlauf_Lymphknoten](ValueSet-mii-vs-onko-verlauf-lymphknoten.md), [MII_VS_Onko_Verlauf_Primaertumor](ValueSet-mii-vs-onko-verlauf-primaertumor.md), [MII_VS_Onko_Weitere_Klassifikationen](ValueSet-mii-vs-onko-weitere-klassifikationen.md), [MII_VS_Onko_Weitere_Klassifikationen_Auspraegungen](ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.md), [RadElement](CodeSystem-radelement.md), [Studienteilnahme](CodeSystem-mii-cs-onko-studienteilnahme.md), [mii-cm-onko-allgemeiner-leistungszustand-sct](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-sct.md) and [mii-cm-onko-fernmetastasen-sct-mapping](ConceptMap-mii-cm-onko-fernmetastasen-sct.md)


* Please see [[https://www.meddra.org/legal-mentions](https://www.meddra.org/legal-mentions)](https://www.meddra.org/legal-mentions) . For information about special licensing, see [[https://www.meddra.org/subscription/special-licences](https://www.meddra.org/subscription/special-licences)](https://www.meddra.org/subscription/special-licences) 

* [Medical Dictionary for Regulatory Activities](http://terminology.hl7.org/6.5.0/CodeSystem-mdr.html): [AdverseEvent/mii-exa-onko-nebenwirkung-anaemie-grad3](AdverseEvent-mii-exa-onko-nebenwirkung-anaemie-grad3.md), [AdverseEvent/mii-exa-onko-nebenwirkung-crs-grad4](AdverseEvent-mii-exa-onko-nebenwirkung-crs-grad4.md)... Show 6 more, [AdverseEvent/mii-exa-onko-nebenwirkung-rektale-mukositis-grad2](AdverseEvent-mii-exa-onko-nebenwirkung-rektale-mukositis-grad2.md), [AdverseEvent/mii-exa-onko-oxaliplatin-neuropathy](AdverseEvent-mii-exa-onko-oxaliplatin-neuropathy.md), [AdverseEvent/mii-pr-onko-nebenwirkung-0](AdverseEvent-mii-pr-onko-nebenwirkung-0.md), [MII_CS_Onko_Nebenwirkung_MedDRA_DE](CodeSystem-mii-cs-onko-nebenwirkung-meddra-de.md), [MII_PR_Onko_Nebenwirkung_Adverse_Event](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md) and [MII_VS_Onko_Nebenwirkung_Art](ValueSet-mii-vs-onko-nebenwirkung-art.md)


* RadElement Common Data Elements © Radiological Society of North America (RSNA).

* [RSNA RadElement Common Data Elements (Fragment)](CodeSystem-radelement.md): [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md), [MII_PR_Onko_KRK_MRT_Mesorektale_Faszie](StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.md) and [Observation/mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md), [Bundle/mii-exa-onko-mamma-example-bundle-1](Bundle-mii-exa-onko-mamma-example-bundle-1.md)... Show 25 more, [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [MII_EX_Onko_Strahlentherapie_Bestrahlung_Einzeldosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.md), [MII_EX_Onko_Strahlentherapie_Bestrahlung_Gesamtdosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis.md), [MII_PR_Onko_Therapieempfehlung_Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md), [MII_VS_Onko_Strahlentherapie_Strahlungseinheit](ValueSet-mii-vs-onko-strahlentherapie-strahlungseinheit.md), [Observation/mii-exa-onko-anzahl-befallene-lymphknoten-0](Observation-mii-exa-onko-anzahl-befallene-lymphknoten-0.md), [Observation/mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0](Observation-mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0.md), [Observation/mii-exa-onko-anzahl-untersuchte-lymphknoten-23](Observation-mii-exa-onko-anzahl-untersuchte-lymphknoten-23.md), [Observation/mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0](Observation-mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0.md), [Observation/mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.md), [Observation/mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.md), [Observation/mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.md), [Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.md), [Observation/mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.md), [Observation/mii-exa-onko-mamma-rezeptorstatus-progesteron-1](Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.md), [Observation/mii-exa-onko-mamma-tumorgroesse-1](Observation-mii-exa-onko-mamma-tumorgroesse-1.md), [Observation/mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.md), [Observation/mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.md), [Observation/mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.md), [Observation/mii-exa-onko-tumorgroesse](Observation-mii-exa-onko-tumorgroesse.md), [Observation/mii-exa-onko-tumormarker-cea](Observation-mii-exa-onko-tumormarker-cea.md), [Procedure/mii-exa-onko-strahlentherapie-2014-mamma-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-mamma-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2014-prostata-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-prostata-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten.md) and [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-primaer](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Bundle/mii-exa-onko-kim-musterperson-synthesized](Bundle-mii-exa-onko-kim-musterperson-synthesized.md), [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md)... Show 86 more, [Bundle/mii-exa-onko-mamma-example-bundle-1](Bundle-mii-exa-onko-mamma-example-bundle-1.md), [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [Bundle/mii-exa-onko-prostata-example-bundle-1](Bundle-mii-exa-onko-prostata-example-bundle-1.md), [DiagnosticReport/PatientKimMusterperson-PathoReport-1](DiagnosticReport-PatientKimMusterperson-PathoReport-1.md), [DiagnosticReport/mii-exa-onko-befund-1](DiagnosticReport-mii-exa-onko-befund-1.md), [MII_LM_Onko](StructureDefinition-mii-lm-onko.md), [MII_PR_Onko_ASA_Klassifikation](StructureDefinition-mii-pr-onko-asa-klassifikation.md), [MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.md), [MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md), [MII_PR_Onko_Anzahl_Befallene_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md), [MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md), [MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md), [MII_PR_Onko_Anzahl_Untersuchte_Sentinel_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md), [MII_PR_Onko_Befund](StructureDefinition-mii-pr-onko-befund.md), [MII_PR_Onko_Genetische_Variante](StructureDefinition-mii-pr-onko-genetische-variante.md), [MII_PR_Onko_Grading](StructureDefinition-mii-pr-onko-grading.md), [MII_PR_Onko_Histologie_ICDO3](StructureDefinition-mii-pr-onko-histologie-icdo3.md), [MII_PR_Onko_KRK_Abstand_Aboral](StructureDefinition-mii-pr-onko-krk-abstand-aboral.md), [MII_PR_Onko_KRK_Abstand_Anokutan](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.md), [MII_PR_Onko_KRK_Abstand_Circumferelle_Resektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.md), [MII_PR_Onko_Mamma_Her2neu_Status](StructureDefinition-mii-pr-onko-mamma-her2neu-status.md), [MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md), [MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md), [MII_PR_Onko_Melanom_LDH](StructureDefinition-mii-pr-onko-melanom-ldh.md), [MII_PR_Onko_Prostata_Anzahl_Positive_Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.md), [MII_PR_Onko_Prostata_Anzahl_Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.md), [MII_PR_Onko_Prostata_CA_Befall_Stanze](StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.md), [MII_PR_Onko_Prostata_Gleason_Grade_Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md), [MII_PR_Onko_Prostata_Gleason_Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md), [MII_PR_Onko_Prostata_Gleason_Score_Gesamt](StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.md), [MII_PR_Onko_Prostata_PSA](StructureDefinition-mii-pr-onko-prostate-psa.md), [MII_PR_Onko_Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md), [MII_PR_Onko_TNM_T_Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md), [MII_PR_Onko_TNM_a_Symbol](StructureDefinition-mii-pr-onko-tnm-a-symbol.md), [MII_PR_Onko_TNM_m_Symbol](StructureDefinition-mii-pr-onko-tnm-m-symbol.md), [MII_PR_Onko_TNM_r_Symbol](StructureDefinition-mii-pr-onko-tnm-r-symbol.md), [MII_PR_Onko_TNM_y_Symbol](StructureDefinition-mii-pr-onko-tnm-y-symbol.md), [MII_PR_Onko_Tumorgroesse](StructureDefinition-mii-pr-onko-tumorgroesse.md), [MII_PR_Onko_Tumormarker](StructureDefinition-mii-pr-onko-tumormarker.md), [MII_VS_Onko_ASA_LOINC](ValueSet-mii-vs-onko-asa-loinc.md), [MII_VS_Onko_Allgemeiner_Leistungszustand_ECOG_LOINC](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog-loinc.md), [MII_VS_Onko_Allgemeiner_Leistungszustand_Karnofsky_LOINC](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc.md), [MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand](ValueSet-mii-vs-onko-krk-abstand-circumferelle-resektionsrand.md), [MII_VS_Onko_KRK_Abstand_Resektionslinie_Aboral](ValueSet-mii-vs-onko-krk-abstand-resektionslinie-aboral.md), [MII_VS_Onko_Mamma_Faerbeintensitaet](ValueSet-mii-vs-onko-mamma-faerbeintensitaet.md), [MII_VS_Onko_Mamma_Her2neu_IHC_Score](ValueSet-mii-vs-onko-mamma-her2neu-ihc-score.md), [MII_VS_Onko_Mamma_ISH_Ergebnis](ValueSet-mii-vs-onko-mamma-ish-ergebnis.md), [MII_VS_Onko_Mamma_Rezeptorstatus_oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.md), [MII_VS_Onko_Melanom_LDH](ValueSet-mii-vs-onko-melanom-ldh.md), [MII_VS_Onko_Prostata_Gleason_Pattern_LOINC](ValueSet-mii-vs-onko-prostata-gleason-pattern-loinc.md), [MII_VS_Onko_Prostata_PSA_LOINC](ValueSet-mii-vs-onko-prostata-psa-loinc.md), [MII_VS_Onko_Tumormarker_LOINC](ValueSet-mii-vs-onko-tumormarker-loinc.md), [Observation/TNM-y-Symbol-Observation-2](Observation-TNM-y-Symbol-Observation-2.md), [Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md), [Observation/mii-exa-onko-allgemeiner-leistungszustand-karnofsky](Observation-mii-exa-onko-allgemeiner-leistungszustand-karnofsky.md), [Observation/mii-exa-onko-anzahl-befallene-lymphknoten-0](Observation-mii-exa-onko-anzahl-befallene-lymphknoten-0.md), [Observation/mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0](Observation-mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0.md), [Observation/mii-exa-onko-anzahl-untersuchte-lymphknoten-23](Observation-mii-exa-onko-anzahl-untersuchte-lymphknoten-23.md), [Observation/mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0](Observation-mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0.md), [Observation/mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.md), [Observation/mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.md), [Observation/mii-exa-onko-grading-1](Observation-mii-exa-onko-grading-1.md), [Observation/mii-exa-onko-histologie-icdo3](Observation-mii-exa-onko-histologie-icdo3.md), [Observation/mii-exa-onko-kim-klass2-ysym](Observation-mii-exa-onko-kim-klass2-ysym.md), [Observation/mii-exa-onko-kim-klass3-ysym](Observation-mii-exa-onko-kim-klass3-ysym.md), [Observation/mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.md), [Observation/mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.md), [Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.md), [Observation/mii-exa-onko-mamma-her2neu-status](Observation-mii-exa-onko-mamma-her2neu-status.md), [Observation/mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.md), [Observation/mii-exa-onko-mamma-rezeptorstatus-progesteron-1](Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.md), [Observation/mii-exa-onko-mamma-tumorgroesse-1](Observation-mii-exa-onko-mamma-tumorgroesse-1.md), [Observation/mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.md), [Observation/mii-exa-onko-prostata-anzahl-positiver-stanzen-1](Observation-mii-exa-onko-prostata-anzahl-positiver-stanzen-1.md), [Observation/mii-exa-onko-prostata-anzahl-stanzen-1](Observation-mii-exa-onko-prostata-anzahl-stanzen-1.md), [Observation/mii-exa-onko-prostata-ca-befall-stanze-1](Observation-mii-exa-onko-prostata-ca-befall-stanze-1.md), [Observation/mii-exa-onko-prostata-gleason-pattern-grade-group-1](Observation-mii-exa-onko-prostata-gleason-pattern-grade-group-1.md), [Observation/mii-exa-onko-prostata-gleason-pattern-primary-1](Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.md), [Observation/mii-exa-onko-prostata-gleason-pattern-secondary-1](Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.md), [Observation/mii-exa-onko-prostata-gleason-score-gesamt-1](Observation-mii-exa-onko-prostata-gleason-score-gesamt-1.md), [Observation/mii-exa-onko-prostata-psa-diagnose-1](Observation-mii-exa-onko-prostata-psa-diagnose-1.md), [Observation/mii-exa-onko-prostata-psa-verlauf-1](Observation-mii-exa-onko-prostata-psa-verlauf-1.md), [Observation/mii-exa-onko-residualstatus-1](Observation-mii-exa-onko-residualstatus-1.md), [Observation/mii-exa-onko-tnm-journey-residualstatus-R0](Observation-mii-exa-onko-tnm-journey-residualstatus-R0.md), [Observation/mii-exa-onko-tumorgroesse](Observation-mii-exa-onko-tumorgroesse.md) and [Observation/mii-exa-onko-tumormarker-cea](Observation-mii-exa-onko-tumormarker-cea.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [AdverseEvent/mii-exa-onko-nebenwirkung-anaemie-grad3](AdverseEvent-mii-exa-onko-nebenwirkung-anaemie-grad3.md), [AdverseEvent/mii-exa-onko-nebenwirkung-crs-grad4](AdverseEvent-mii-exa-onko-nebenwirkung-crs-grad4.md)... Show 281 more, [AdverseEvent/mii-pr-onko-nebenwirkung-0](AdverseEvent-mii-pr-onko-nebenwirkung-0.md), [Bundle/mii-exa-onko-cup-bundle](Bundle-mii-exa-onko-cup-bundle.md), [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md), [Bundle/mii-exa-onko-kim-musterperson-synthesized](Bundle-mii-exa-onko-kim-musterperson-synthesized.md), [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md), [Bundle/mii-exa-onko-mamma-example-bundle-1](Bundle-mii-exa-onko-mamma-example-bundle-1.md), [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [Bundle/mii-exa-onko-prostata-example-bundle-1](Bundle-mii-exa-onko-prostata-example-bundle-1.md), [Bundle/mii-exa-onko-tnm-bundle](Bundle-mii-exa-onko-tnm-bundle.md), [Bundle/mii-exa-onko-tnm-bundle-legacy](Bundle-mii-exa-onko-tnm-bundle-legacy.md), [Bundle/mii-exa-onko-tnm-bundle-synthesized](Bundle-mii-exa-onko-tnm-bundle-synthesized.md), [Condition/PatientKimMusterperson-Diagnosis-1](Condition-PatientKimMusterperson-Diagnosis-1.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md), [Condition/mii-exa-onko-colorectal-cancer-diagnosis](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md), [Condition/mii-exa-onko-cup-diagnose](Condition-mii-exa-onko-cup-diagnose.md), [Condition/mii-exa-onko-cup-diagnose-aufgeloest](Condition-mii-exa-onko-cup-diagnose-aufgeloest.md), [Condition/mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md), [Condition/mii-exa-onko-diagnose-aml-transformation](Condition-mii-exa-onko-diagnose-aml-transformation.md), [Condition/mii-exa-onko-diagnose-angiosarkom-nach-radiatio](Condition-mii-exa-onko-diagnose-angiosarkom-nach-radiatio.md), [Condition/mii-exa-onko-diagnose-mds](Condition-mii-exa-onko-diagnose-mds.md), [Condition/mii-exa-onko-diagnose-meningeom-benigne](Condition-mii-exa-onko-diagnose-meningeom-benigne.md), [Condition/mii-exa-onko-diagnose-meningeom-maligne-transformation](Condition-mii-exa-onko-diagnose-meningeom-maligne-transformation.md), [Condition/mii-exa-onko-diagnose-taml-nach-chemo](Condition-mii-exa-onko-diagnose-taml-nach-chemo.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md), [Condition/mii-exa-onko-kim-synth-diagnose](Condition-mii-exa-onko-kim-synth-diagnose.md), [Condition/mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.md), [Condition/mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.md), [Condition/mii-exa-onko-melanom-diagnose](Condition-mii-exa-onko-melanom-diagnose.md), [Condition/mii-exa-onko-prostata-diagnose](Condition-mii-exa-onko-prostata-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-diagnose](Condition-mii-exa-onko-tnm-bundle-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-legacy-diagnose](Condition-mii-exa-onko-tnm-bundle-legacy-diagnose.md), [Condition/mii-exa-onko-tnm-synth-diagnose](Condition-mii-exa-onko-tnm-synth-diagnose.md), [Condition/primaertumor-example](Condition-primaertumor-example.md), [MII_LM_Onko](StructureDefinition-mii-lm-onko.md), [MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.md), [MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md), [MII_PR_Onko_Anzahl_Befallene_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md), [MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md), [MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md), [MII_PR_Onko_Anzahl_Untersuchte_Sentinel_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md), [MII_PR_Onko_Diagnose_Primaertumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md), [MII_PR_Onko_Fernmetastasen](StructureDefinition-mii-pr-onko-fernmetastasen.md), [MII_PR_Onko_Fruehere_Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md), [MII_PR_Onko_Grading](StructureDefinition-mii-pr-onko-grading.md), [MII_PR_Onko_KRK_Anastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.md), [MII_PR_Onko_KRK_Operation](StructureDefinition-mii-pr-onko-krk-operation.md), [MII_PR_Onko_KRK_Stoma_Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md), [MII_PR_Onko_Mamma_Menopausenstatus](StructureDefinition-mii-pr-onko-mamma-menopause-status.md), [MII_PR_Onko_Mamma_Operation](StructureDefinition-mii-pr-onko-mamma-operation.md), [MII_PR_Onko_Mamma_Praeoperative_Markierung](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.md), [MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md), [MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md), [MII_PR_Onko_Mamma_Sozialdienst](StructureDefinition-mii-pr-onko-mamma-sozialdienst.md), [MII_PR_Onko_Melanom_Breslow_Tiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.md), [MII_PR_Onko_Melanom_Exzision](StructureDefinition-mii-pr-onko-melanom-exzision.md), [MII_PR_Onko_Melanom_Sicherheitsabstand](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.md), [MII_PR_Onko_Melanom_Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.md), [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md), [MII_PR_Onko_Prostata_Clavien_Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md), [MII_PR_Onko_Prostata_Gleason_Grade_Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md), [MII_PR_Onko_Prostata_Gleason_Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md), [MII_PR_Onko_Prostata_Gleason_Score_Gesamt](StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.md), [MII_PR_Onko_Prostata_Operation](StructureDefinition-mii-pr-onko-prostata-operation.md), [MII_PR_Onko_Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md), [MII_PR_Onko_Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md), [MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md), [MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md), [MII_PR_Onko_Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.md), [MII_PR_Onko_Systemische_Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md), [MII_PR_Onko_Systemische_Therapie_Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md), [MII_PR_Onko_TNM_Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md), [MII_PR_Onko_TNM_Klassifikation_Synthetisiert](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md), [MII_PR_Onko_TNM_L_Kategorie](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md), [MII_PR_Onko_TNM_M_Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md), [MII_PR_Onko_TNM_N_Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md), [MII_PR_Onko_TNM_Pn_Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md), [MII_PR_Onko_TNM_S_Kategorie](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md), [MII_PR_Onko_TNM_T_Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md), [MII_PR_Onko_TNM_V_Kategorie](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md), [MII_PR_Onko_TNM_a_Symbol](StructureDefinition-mii-pr-onko-tnm-a-symbol.md), [MII_PR_Onko_TNM_r_Symbol](StructureDefinition-mii-pr-onko-tnm-r-symbol.md), [MII_PR_Onko_TNM_y_Symbol](StructureDefinition-mii-pr-onko-tnm-y-symbol.md), [MII_PR_Onko_Therapieempfehlung_Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md), [MII_PR_Onko_Tod](StructureDefinition-mii-pr-onko-tod.md), [MII_PR_Onko_Tumorgroesse](StructureDefinition-mii-pr-onko-tumorgroesse.md), [MII_PR_Onko_Verlauf](StructureDefinition-mii-pr-onko-verlauf.md), [MII_PR_Onko_Weitere_Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md), [MII_VS_Onko_KRK_Stoma_Status_Reason](ValueSet-mii-vs-onko-krk-stoma-status-reason.md), [MII_VS_Onko_Koerperstruktur_SCT](ValueSet-mii-vs-onko-koerperstruktur-sct.md), [MII_VS_Onko_Mamma_Intraoperatives_Imaging_Praeparat](ValueSet-mii-vs-onko-mamma-intraoperatives-imaging-praeparat.md), [MII_VS_Onko_Mamma_Menopause_Status](ValueSet-mii-vs-onko-mamma-menopause-status.md), [MII_VS_Onko_Mamma_Operation_SCT](ValueSet-mii-vs-onko-mamma-operation-sct.md), [MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet](ValueSet-mii-vs-onko-mamma-praeoperative-markierung-modalitaet.md), [MII_VS_Onko_Melanom_Exzision_SNOMEDCT](ValueSet-mii-vs-onko-melanom-exzision-snomedct.md), [MII_VS_Onko_Prostata_Clavien_Dindo](ValueSet-mii-vs-onko-prostata-clavien-dindo.md), [MII_VS_Onko_Prostata_Gleason_Patterns](ValueSet-mii-vs-onko-prostata-gleason-patterns.md), [MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary](ValueSet-mii-vs-onko-prostata-gleason-primary-secondary-tertiary.md), [MII_VS_Onko_Prostata_Gleason_Score](ValueSet-mii-vs-onko-prostata-gleason-score.md), [MII_VS_Onko_Prostata_Gleason_Score_Gesamt](ValueSet-mii-vs-onko-prostata-gleason-score-gesamt.md), [MII_VS_Onko_Prostata_Operation_SNOMEDCT](ValueSet-mii-vs-onko-prostata-operation-snomedct.md), [MII_VS_Onko_TNM_Klassifikation_Typ](ValueSet-mii-vs-onko-tnm-klassifikation-typ.md), [MII_VS_Onko_TNM_M_Kategorie](ValueSet-mii-vs-onko-tnm-m-kategorie.md), [MII_VS_Onko_TNM_M_Kategorie_Werte_SCT](ValueSet-mii-vs-onko-tnm-m-kategorie-werte-sct.md), [MII_VS_Onko_TNM_N_Kategorie](ValueSet-mii-vs-onko-tnm-n-kategorie.md), [MII_VS_Onko_TNM_N_Kategorie_Werte_SCT](ValueSet-mii-vs-onko-tnm-n-kategorie-werte-sct.md), [MII_VS_Onko_TNM_T_Kategorie](ValueSet-mii-vs-onko-tnm-t-kategorie.md), [MII_VS_Onko_TNM_T_Kategorie_Werte_SCT](ValueSet-mii-vs-onko-tnm-t-kategorie-werte-sct.md), [MII_VS_Onko_Weitere_Klassifikationen](ValueSet-mii-vs-onko-weitere-klassifikationen.md), [MII_VS_Onko_Weitere_Klassifikationen_Auspraegungen](ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.md), [MedicationRequest/mii-exa-onko-modification-oxaliplatin-request](MedicationRequest-mii-exa-onko-modification-oxaliplatin-request.md), [MedicationStatement/mii-exa-onko-modification-oxaliplatin-phase1](MedicationStatement-mii-exa-onko-modification-oxaliplatin-phase1.md), [Observation/PatientKimMusterperson-Verlauf-2022-01-22](Observation-PatientKimMusterperson-Verlauf-2022-01-22.md), [Observation/TNM-Klassifikation-Observation-2](Observation-TNM-Klassifikation-Observation-2.md), [Observation/TNM-L-Observation-2](Observation-TNM-L-Observation-2.md), [Observation/TNM-M-Observation-2](Observation-TNM-M-Observation-2.md), [Observation/TNM-Pn-Observation-2](Observation-TNM-Pn-Observation-2.md), [Observation/TNM-T-Observation-2](Observation-TNM-T-Observation-2.md), [Observation/TNM-V-Observation-2](Observation-TNM-V-Observation-2.md), [Observation/TNM-y-Symbol-Observation-2](Observation-TNM-y-Symbol-Observation-2.md), [Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md), [Observation/mii-exa-onko-allgemeiner-leistungszustand-karnofsky](Observation-mii-exa-onko-allgemeiner-leistungszustand-karnofsky.md), [Observation/mii-exa-onko-ascending-colon-tnm](Observation-mii-exa-onko-ascending-colon-tnm.md), [Observation/mii-exa-onko-ascending-colon-tnm-m](Observation-mii-exa-onko-ascending-colon-tnm-m.md), [Observation/mii-exa-onko-ascending-colon-tnm-n](Observation-mii-exa-onko-ascending-colon-tnm-n.md), [Observation/mii-exa-onko-ascending-colon-tnm-t](Observation-mii-exa-onko-ascending-colon-tnm-t.md), [Observation/mii-exa-onko-colorectal-tnm](Observation-mii-exa-onko-colorectal-tnm.md), [Observation/mii-exa-onko-colorectal-tnm-m](Observation-mii-exa-onko-colorectal-tnm-m.md), [Observation/mii-exa-onko-colorectal-tnm-n](Observation-mii-exa-onko-colorectal-tnm-n.md), [Observation/mii-exa-onko-colorectal-tnm-t](Observation-mii-exa-onko-colorectal-tnm-t.md), [Observation/mii-exa-onko-cup-fernmetastase-hep](Observation-mii-exa-onko-cup-fernmetastase-hep.md), [Observation/mii-exa-onko-cup-fernmetastase-pul](Observation-mii-exa-onko-cup-fernmetastase-pul.md), [Observation/mii-exa-onko-cup-tnm-klassifikation](Observation-mii-exa-onko-cup-tnm-klassifikation.md), [Observation/mii-exa-onko-cup-tnm-m-cM1](Observation-mii-exa-onko-cup-tnm-m-cM1.md), [Observation/mii-exa-onko-cup-tnm-n-cNX](Observation-mii-exa-onko-cup-tnm-n-cNX.md), [Observation/mii-exa-onko-cup-tnm-t-cTX](Observation-mii-exa-onko-cup-tnm-t-cTX.md), [Observation/mii-exa-onko-fernmetastasen-1](Observation-mii-exa-onko-fernmetastasen-1.md), [Observation/mii-exa-onko-folfox-verlauf-6months](Observation-mii-exa-onko-folfox-verlauf-6months.md), [Observation/mii-exa-onko-kim-klass1](Observation-mii-exa-onko-kim-klass1.md), [Observation/mii-exa-onko-kim-klass1-cM1](Observation-mii-exa-onko-kim-klass1-cM1.md), [Observation/mii-exa-onko-kim-klass1-cN1](Observation-mii-exa-onko-kim-klass1-cN1.md), [Observation/mii-exa-onko-kim-klass1-cT3c](Observation-mii-exa-onko-kim-klass1-cT3c.md), [Observation/mii-exa-onko-kim-klass2](Observation-mii-exa-onko-kim-klass2.md), [Observation/mii-exa-onko-kim-klass2-ycM1b](Observation-mii-exa-onko-kim-klass2-ycM1b.md), [Observation/mii-exa-onko-kim-klass2-ycN1](Observation-mii-exa-onko-kim-klass2-ycN1.md), [Observation/mii-exa-onko-kim-klass2-ycT3c](Observation-mii-exa-onko-kim-klass2-ycT3c.md), [Observation/mii-exa-onko-kim-klass2-ysym](Observation-mii-exa-onko-kim-klass2-ysym.md), [Observation/mii-exa-onko-kim-klass3](Observation-mii-exa-onko-kim-klass3.md), [Observation/mii-exa-onko-kim-klass3-L1](Observation-mii-exa-onko-kim-klass3-L1.md), [Observation/mii-exa-onko-kim-klass3-Pn0](Observation-mii-exa-onko-kim-klass3-Pn0.md), [Observation/mii-exa-onko-kim-klass3-V0](Observation-mii-exa-onko-kim-klass3-V0.md), [Observation/mii-exa-onko-kim-klass3-ypM1b](Observation-mii-exa-onko-kim-klass3-ypM1b.md), [Observation/mii-exa-onko-kim-klass3-ypT3c](Observation-mii-exa-onko-kim-klass3-ypT3c.md), [Observation/mii-exa-onko-kim-klass3-ysym](Observation-mii-exa-onko-kim-klass3-ysym.md), [Observation/mii-exa-onko-kim-synth1](Observation-mii-exa-onko-kim-synth1.md), [Observation/mii-exa-onko-kim-synth2](Observation-mii-exa-onko-kim-synth2.md), [Observation/mii-exa-onko-kim-synth3](Observation-mii-exa-onko-kim-synth3.md), [Observation/mii-exa-onko-kim-synth4](Observation-mii-exa-onko-kim-synth4.md), [Observation/mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.md), [Observation/mii-exa-onko-mamma-menopause-status-1](Observation-mii-exa-onko-mamma-menopause-status-1.md), [Observation/mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.md), [Observation/mii-exa-onko-mamma-rezeptorstatus-progesteron-1](Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.md), [Observation/mii-exa-onko-mamma-tumorgroesse-1](Observation-mii-exa-onko-mamma-tumorgroesse-1.md), [Observation/mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.md), [Observation/mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.md), [Observation/mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.md), [Observation/mii-exa-onko-modification-verlauf-6months](Observation-mii-exa-onko-modification-verlauf-6months.md), [Observation/mii-exa-onko-prostata-gleason-pattern-grade-group-1](Observation-mii-exa-onko-prostata-gleason-pattern-grade-group-1.md), [Observation/mii-exa-onko-prostata-gleason-pattern-primary-1](Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.md), [Observation/mii-exa-onko-prostata-gleason-pattern-secondary-1](Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.md), [Observation/mii-exa-onko-prostata-gleason-score-gesamt-1](Observation-mii-exa-onko-prostata-gleason-score-gesamt-1.md), [Observation/mii-exa-onko-prostata-surgical-complication-1](Observation-mii-exa-onko-prostata-surgical-complication-1.md), [Observation/mii-exa-onko-studienteilnahme](Observation-mii-exa-onko-studienteilnahme.md), [Observation/mii-exa-onko-studienteilnahme-prob](Observation-mii-exa-onko-studienteilnahme-prob.md), [Observation/mii-exa-onko-tnm-biopsy-cT4cN1cM0](Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.md), [Observation/mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0](Observation-mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0](Observation-mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-m-cM0](Observation-mii-exa-onko-tnm-bundle-legacy-m-cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-n-cN3](Observation-mii-exa-onko-tnm-bundle-legacy-n-cN3.md), [Observation/mii-exa-onko-tnm-bundle-legacy-t-cT2](Observation-mii-exa-onko-tnm-bundle-legacy-t-cT2.md), [Observation/mii-exa-onko-tnm-bundle-m-kategorie-cM0](Observation-mii-exa-onko-tnm-bundle-m-kategorie-cM0.md), [Observation/mii-exa-onko-tnm-bundle-n-kategorie-cN3](Observation-mii-exa-onko-tnm-bundle-n-kategorie-cN3.md), [Observation/mii-exa-onko-tnm-bundle-t-kategorie-cT2](Observation-mii-exa-onko-tnm-bundle-t-kategorie-cT2.md), [Observation/mii-exa-onko-tnm-clinical-cT3cN1cM0](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.md), [Observation/mii-exa-onko-tnm-journey-l-kategorie-L0](Observation-mii-exa-onko-tnm-journey-l-kategorie-L0.md), [Observation/mii-exa-onko-tnm-journey-pn-kategorie-Pn0](Observation-mii-exa-onko-tnm-journey-pn-kategorie-Pn0.md), [Observation/mii-exa-onko-tnm-journey-v-kategorie-V0](Observation-mii-exa-onko-tnm-journey-v-kategorie-V0.md), [Observation/mii-exa-onko-tnm-klassifikation-TisN0M0](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.md), [Observation/mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.md), [Observation/mii-exa-onko-tnm-l-kategorie-L](Observation-mii-exa-onko-tnm-l-kategorie-L.md), [Observation/mii-exa-onko-tnm-l-kategorie-L1](Observation-mii-exa-onko-tnm-l-kategorie-L1.md), [Observation/mii-exa-onko-tnm-m-kategorie-M0](Observation-mii-exa-onko-tnm-m-kategorie-M0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM0](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM1](Observation-mii-exa-onko-tnm-m-kategorie-cM1.md), [Observation/mii-exa-onko-tnm-m-kategorie-rcM1](Observation-mii-exa-onko-tnm-m-kategorie-rcM1.md), [Observation/mii-exa-onko-tnm-n-kategorie-N0](Observation-mii-exa-onko-tnm-n-kategorie-N0.md), [Observation/mii-exa-onko-tnm-n-kategorie-cN1](Observation-mii-exa-onko-tnm-n-kategorie-cN1.md), [Observation/mii-exa-onko-tnm-n-kategorie-pN0i-sn](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.md), [Observation/mii-exa-onko-tnm-n-kategorie-rcN1](Observation-mii-exa-onko-tnm-n-kategorie-rcN1.md), [Observation/mii-exa-onko-tnm-n-kategorie-ycN0](Observation-mii-exa-onko-tnm-n-kategorie-ycN0.md), [Observation/mii-exa-onko-tnm-n-kategorie-ypN0](Observation-mii-exa-onko-tnm-n-kategorie-ypN0.md), [Observation/mii-exa-onko-tnm-pn-kategorie-Pn1](Observation-mii-exa-onko-tnm-pn-kategorie-Pn1.md), [Observation/mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0](Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.md), [Observation/mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0](Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.md), [Observation/mii-exa-onko-tnm-recurrence-rcT2cN1cM1](Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.md), [Observation/mii-exa-onko-tnm-s-kategorie-S1](Observation-mii-exa-onko-tnm-s-kategorie-S1.md), [Observation/mii-exa-onko-tnm-synth-klassifikation](Observation-mii-exa-onko-tnm-synth-klassifikation.md), [Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation](Observation-mii-exa-onko-tnm-synth-meldung1-klassifikation.md), [Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0](Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.md), [Observation/mii-exa-onko-tnm-synth-meldung1-n-cN2](Observation-mii-exa-onko-tnm-synth-meldung1-n-cN2.md), [Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3](Observation-mii-exa-onko-tnm-synth-meldung1-t-cT3.md), [Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation](Observation-mii-exa-onko-tnm-synth-meldung2-klassifikation.md), [Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1](Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.md), [Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2](Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-Tis](Observation-mii-exa-onko-tnm-t-kategorie-Tis.md), [Observation/mii-exa-onko-tnm-t-kategorie-cT3](Observation-mii-exa-onko-tnm-t-kategorie-cT3.md), [Observation/mii-exa-onko-tnm-t-kategorie-cT4](Observation-mii-exa-onko-tnm-t-kategorie-cT4.md), [Observation/mii-exa-onko-tnm-t-kategorie-rcT2](Observation-mii-exa-onko-tnm-t-kategorie-rcT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-uT2a2](Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.md), [Observation/mii-exa-onko-tnm-t-kategorie-ycT2](Observation-mii-exa-onko-tnm-t-kategorie-ycT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-ypT0](Observation-mii-exa-onko-tnm-t-kategorie-ypT0.md), [Observation/mii-exa-onko-tnm-v-kategorie-V1](Observation-mii-exa-onko-tnm-v-kategorie-V1.md), [Observation/mii-exa-onko-tod-j](Observation-mii-exa-onko-tod-j.md), [Observation/mii-exa-onko-tod-n](Observation-mii-exa-onko-tod-n.md), [Observation/mii-exa-onko-tod-u](Observation-mii-exa-onko-tod-u.md), [Observation/mii-exa-onko-tumorgroesse](Observation-mii-exa-onko-tumorgroesse.md), [Observation/mii-exa-onko-verlauf-journey-post-chemo](Observation-mii-exa-onko-verlauf-journey-post-chemo.md), [Observation/mii-exa-onko-verlauf-journey-post-surgery](Observation-mii-exa-onko-verlauf-journey-post-surgery.md), [Observation/mii-exa-onko-verlauf-journey-recurrence](Observation-mii-exa-onko-verlauf-journey-recurrence.md), [Observation/mii-exa-onko-verlauf-tumor](Observation-mii-exa-onko-verlauf-tumor.md), [Observation/mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.md), [Observation/mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.md), [Observation/mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.md), [Procedure/PatientKimMusterperson-Procedure-1](Procedure-PatientKimMusterperson-Procedure-1.md), [Procedure/PatientKimMusterperson-Procedure-2](Procedure-PatientKimMusterperson-Procedure-2.md), [Procedure/PatientKimMusterperson-Procedure-3](Procedure-PatientKimMusterperson-Procedure-3.md), [Procedure/PatientKimMusterperson-Procedure-4](Procedure-PatientKimMusterperson-Procedure-4.md), [Procedure/PatientKimMusterperson-Procedure-4a](Procedure-PatientKimMusterperson-Procedure-4a.md), [Procedure/PatientKimMusterperson-Procedure-4b](Procedure-PatientKimMusterperson-Procedure-4b.md), [Procedure/PatientKimMusterperson-Procedure-4c](Procedure-PatientKimMusterperson-Procedure-4c.md), [Procedure/PatientKimMusterperson-Procedure-4d](Procedure-PatientKimMusterperson-Procedure-4d.md), [Procedure/PatientKimMusterperson-SystemicTherapy-1](Procedure-PatientKimMusterperson-SystemicTherapy-1.md), [Procedure/PatientKimMusterperson-SystemicTherapy-2](Procedure-PatientKimMusterperson-SystemicTherapy-2.md), [Procedure/PatientKimMusterperson-SystemicTherapy-3](Procedure-PatientKimMusterperson-SystemicTherapy-3.md), [Procedure/mii-exa-onko-folfox-phase1](Procedure-mii-exa-onko-folfox-phase1.md), [Procedure/mii-exa-onko-folfox-procedure](Procedure-mii-exa-onko-folfox-procedure.md), [Procedure/mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.md), [Procedure/mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.md), [Procedure/mii-exa-onko-lv5fu2-phase2](Procedure-mii-exa-onko-lv5fu2-phase2.md), [Procedure/mii-exa-onko-mamma-praeoperative-markierung-1](Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.md), [Procedure/mii-exa-onko-melanom-exzision-oberarm](Procedure-mii-exa-onko-melanom-exzision-oberarm.md), [Procedure/mii-exa-onko-melanom-exzision-ruecken](Procedure-mii-exa-onko-melanom-exzision-ruecken.md), [Procedure/mii-exa-onko-operation-1](Procedure-mii-exa-onko-operation-1.md), [Procedure/mii-exa-onko-palbociclib-therapie](Procedure-mii-exa-onko-palbociclib-therapie.md), [Procedure/mii-exa-onko-pertuzumab-therapie](Procedure-mii-exa-onko-pertuzumab-therapie.md), [Procedure/mii-exa-onko-prostata-operation-prostatektomie](Procedure-mii-exa-onko-prostata-operation-prostatektomie.md), [Procedure/mii-exa-onko-prostata-operation-turp](Procedure-mii-exa-onko-prostata-operation-turp.md), [Procedure/mii-exa-onko-prostata-surgery-1](Procedure-mii-exa-onko-prostata-surgery-1.md), [Procedure/mii-exa-onko-prostata-surgery-2](Procedure-mii-exa-onko-prostata-surgery-2.md), [Procedure/mii-exa-onko-right-hemicolectomy](Procedure-mii-exa-onko-right-hemicolectomy.md), [Procedure/mii-exa-onko-sigmoid-resection](Procedure-mii-exa-onko-sigmoid-resection.md), [Procedure/mii-exa-onko-sigmoid-resection-part1](Procedure-mii-exa-onko-sigmoid-resection-part1.md), [Procedure/mii-exa-onko-sigmoid-resection-part2](Procedure-mii-exa-onko-sigmoid-resection-part2.md), [Procedure/mii-exa-onko-sigmoid-resection-part3](Procedure-mii-exa-onko-sigmoid-resection-part3.md), [Procedure/mii-exa-onko-strahlentherapie-2014-mamma-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-mamma-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2014-prostata-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-prostata-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-primaer](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.md), [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1.md), [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc.md), [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1.md), [Procedure/mii-exa-onko-strahlentherapie-nuklearmedizin-1](Procedure-mii-exa-onko-strahlentherapie-nuklearmedizin-1.md), [Procedure/mii-exa-onko-strahlentherapie-pci-sclc](Procedure-mii-exa-onko-strahlentherapie-pci-sclc.md), [Procedure/mii-exa-onko-strahlentherapie-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.md), [Procedure/mii-exa-onko-systemische-therapie-1](Procedure-mii-exa-onko-systemische-therapie-1.md), [Procedure/mii-exa-onko-trastuzumab-therapie](Procedure-mii-exa-onko-trastuzumab-therapie.md), [ResearchStudy/mii-exa-onko-studie-prob](ResearchStudy-mii-exa-onko-studie-prob.md), [ServiceRequest/mii-exa-onko-molecular-surgery-request](ServiceRequest-mii-exa-onko-molecular-surgery-request.md) and [Specimen/mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [AdverseEventCausalityAssessment](http://terminology.hl7.org/7.3.0/CodeSystem-adverse-event-causality-assess.html): [AdverseEvent/mii-exa-onko-oxaliplatin-neuropathy](AdverseEvent-mii-exa-onko-oxaliplatin-neuropathy.md)
* [AdverseEventSeriousness](http://terminology.hl7.org/7.3.0/CodeSystem-adverse-event-seriousness.html): [AdverseEvent/mii-exa-onko-oxaliplatin-neuropathy](AdverseEvent-mii-exa-onko-oxaliplatin-neuropathy.md)
* [AdverseEventSeverity](http://terminology.hl7.org/7.3.0/CodeSystem-adverse-event-severity.html): [AdverseEvent/mii-exa-onko-oxaliplatin-neuropathy](AdverseEvent-mii-exa-onko-oxaliplatin-neuropathy.md)
* [Condition Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-condition-category.html): [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md), [Condition/mii-exa-onko-ascending-colon-cancer-diagnosis](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md) and [Condition/mii-exa-onko-colorectal-cancer-diagnosis](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.3.0/CodeSystem-condition-clinical.html): [Bundle/mii-exa-onko-cup-bundle](Bundle-mii-exa-onko-cup-bundle.md), [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md)... Show 35 more, [Bundle/mii-exa-onko-kim-musterperson-synthesized](Bundle-mii-exa-onko-kim-musterperson-synthesized.md), [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md), [Bundle/mii-exa-onko-mamma-example-bundle-1](Bundle-mii-exa-onko-mamma-example-bundle-1.md), [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [Bundle/mii-exa-onko-prostata-example-bundle-1](Bundle-mii-exa-onko-prostata-example-bundle-1.md), [Bundle/mii-exa-onko-tnm-bundle](Bundle-mii-exa-onko-tnm-bundle.md), [Bundle/mii-exa-onko-tnm-bundle-legacy](Bundle-mii-exa-onko-tnm-bundle-legacy.md), [Bundle/mii-exa-onko-tnm-bundle-synthesized](Bundle-mii-exa-onko-tnm-bundle-synthesized.md), [Condition/PatientKimMusterperson-Diagnosis-1](Condition-PatientKimMusterperson-Diagnosis-1.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md), [Condition/mii-exa-onko-ascending-colon-cancer-diagnosis](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md), [Condition/mii-exa-onko-colorectal-cancer-diagnosis](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md), [Condition/mii-exa-onko-cup-diagnose](Condition-mii-exa-onko-cup-diagnose.md), [Condition/mii-exa-onko-cup-diagnose-aufgeloest](Condition-mii-exa-onko-cup-diagnose-aufgeloest.md), [Condition/mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md), [Condition/mii-exa-onko-diagnose-aml-transformation](Condition-mii-exa-onko-diagnose-aml-transformation.md), [Condition/mii-exa-onko-diagnose-angiosarkom-nach-radiatio](Condition-mii-exa-onko-diagnose-angiosarkom-nach-radiatio.md), [Condition/mii-exa-onko-diagnose-mds](Condition-mii-exa-onko-diagnose-mds.md), [Condition/mii-exa-onko-diagnose-meningeom-benigne](Condition-mii-exa-onko-diagnose-meningeom-benigne.md), [Condition/mii-exa-onko-diagnose-meningeom-maligne-transformation](Condition-mii-exa-onko-diagnose-meningeom-maligne-transformation.md), [Condition/mii-exa-onko-diagnose-taml-nach-chemo](Condition-mii-exa-onko-diagnose-taml-nach-chemo.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md), [Condition/mii-exa-onko-kim-synth-diagnose](Condition-mii-exa-onko-kim-synth-diagnose.md), [Condition/mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.md), [Condition/mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.md), [Condition/mii-exa-onko-melanom-diagnose](Condition-mii-exa-onko-melanom-diagnose.md), [Condition/mii-exa-onko-prostata-diagnose](Condition-mii-exa-onko-prostata-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-diagnose](Condition-mii-exa-onko-tnm-bundle-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-legacy-diagnose](Condition-mii-exa-onko-tnm-bundle-legacy-diagnose.md), [Condition/mii-exa-onko-tnm-synth-diagnose](Condition-mii-exa-onko-tnm-synth-diagnose.md), [Condition/primaertumor-example](Condition-primaertumor-example.md) and [MII_PR_Onko_Fruehere_Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.3.0/CodeSystem-condition-ver-status.html): [Bundle/mii-exa-onko-cup-bundle](Bundle-mii-exa-onko-cup-bundle.md), [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md)... Show 35 more, [Bundle/mii-exa-onko-kim-musterperson-synthesized](Bundle-mii-exa-onko-kim-musterperson-synthesized.md), [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md), [Bundle/mii-exa-onko-mamma-example-bundle-1](Bundle-mii-exa-onko-mamma-example-bundle-1.md), [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [Bundle/mii-exa-onko-prostata-example-bundle-1](Bundle-mii-exa-onko-prostata-example-bundle-1.md), [Bundle/mii-exa-onko-tnm-bundle](Bundle-mii-exa-onko-tnm-bundle.md), [Bundle/mii-exa-onko-tnm-bundle-legacy](Bundle-mii-exa-onko-tnm-bundle-legacy.md), [Bundle/mii-exa-onko-tnm-bundle-synthesized](Bundle-mii-exa-onko-tnm-bundle-synthesized.md), [Condition/PatientKimMusterperson-Diagnosis-1](Condition-PatientKimMusterperson-Diagnosis-1.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md), [Condition/mii-exa-onko-ascending-colon-cancer-diagnosis](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md), [Condition/mii-exa-onko-colorectal-cancer-diagnosis](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md), [Condition/mii-exa-onko-cup-diagnose](Condition-mii-exa-onko-cup-diagnose.md), [Condition/mii-exa-onko-cup-diagnose-aufgeloest](Condition-mii-exa-onko-cup-diagnose-aufgeloest.md), [Condition/mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md), [Condition/mii-exa-onko-diagnose-aml-transformation](Condition-mii-exa-onko-diagnose-aml-transformation.md), [Condition/mii-exa-onko-diagnose-angiosarkom-nach-radiatio](Condition-mii-exa-onko-diagnose-angiosarkom-nach-radiatio.md), [Condition/mii-exa-onko-diagnose-mds](Condition-mii-exa-onko-diagnose-mds.md), [Condition/mii-exa-onko-diagnose-meningeom-benigne](Condition-mii-exa-onko-diagnose-meningeom-benigne.md), [Condition/mii-exa-onko-diagnose-meningeom-maligne-transformation](Condition-mii-exa-onko-diagnose-meningeom-maligne-transformation.md), [Condition/mii-exa-onko-diagnose-taml-nach-chemo](Condition-mii-exa-onko-diagnose-taml-nach-chemo.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md), [Condition/mii-exa-onko-kim-synth-diagnose](Condition-mii-exa-onko-kim-synth-diagnose.md), [Condition/mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.md), [Condition/mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.md), [Condition/mii-exa-onko-melanom-diagnose](Condition-mii-exa-onko-melanom-diagnose.md), [Condition/mii-exa-onko-prostata-diagnose](Condition-mii-exa-onko-prostata-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-diagnose](Condition-mii-exa-onko-tnm-bundle-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-legacy-diagnose](Condition-mii-exa-onko-tnm-bundle-legacy-diagnose.md), [Condition/mii-exa-onko-tnm-synth-diagnose](Condition-mii-exa-onko-tnm-synth-diagnose.md), [Condition/primaertumor-example](Condition-primaertumor-example.md), [MII_PR_Onko_Diagnose_Primaertumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) and [MII_PR_Onko_Fruehere_Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md)
* [LibraryType](http://terminology.hl7.org/7.3.0/CodeSystem-library-type.html): [MIIOnkoSynthesizeTNM](Library-mii-lib-onko-synthesize-tnm.md)
* [Observation Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-observation-category.html): [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [MII_PR_Onko_Anzahl_Befallene_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md)... Show 14 more, [MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md), [MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md), [MII_PR_Onko_Anzahl_Untersuchte_Sentinel_Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md), [MII_PR_Onko_Genetische_Variante](StructureDefinition-mii-pr-onko-genetische-variante.md), [MII_PR_Onko_Grading](StructureDefinition-mii-pr-onko-grading.md), [MII_PR_Onko_Melanom_LDH](StructureDefinition-mii-pr-onko-melanom-ldh.md), [MII_PR_Onko_Tumormarker](StructureDefinition-mii-pr-onko-tumormarker.md), [Observation/mii-exa-onko-anzahl-befallene-lymphknoten-0](Observation-mii-exa-onko-anzahl-befallene-lymphknoten-0.md), [Observation/mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0](Observation-mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0.md), [Observation/mii-exa-onko-anzahl-untersuchte-lymphknoten-23](Observation-mii-exa-onko-anzahl-untersuchte-lymphknoten-23.md), [Observation/mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0](Observation-mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0.md), [Observation/mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.md), [Observation/mii-exa-onko-grading-1](Observation-mii-exa-onko-grading-1.md) and [Observation/mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.md)
* [Provenance participant type](http://terminology.hl7.org/7.3.0/CodeSystem-provenance-participant-type.html): [Bundle/mii-exa-onko-kim-musterperson-synthesized](Bundle-mii-exa-onko-kim-musterperson-synthesized.md) and [Provenance/mii-exa-onko-kim-synthesis-provenance](Provenance-mii-exa-onko-kim-synthesis-provenance.md)
* [ResearchStudyPrimaryPurposeType](http://terminology.hl7.org/7.3.0/CodeSystem-research-study-prim-purp-type.html): [ResearchStudy/mii-exa-onko-studie-prob](ResearchStudy-mii-exa-onko-studie-prob.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0074.html): [MII_PR_Onko_Genetische_Variante](StructureDefinition-mii-pr-onko-genetische-variante.md) and [Observation/mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.md)
* [identifierType](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0203.html): [MII_PR_Onko_Tumormarker](StructureDefinition-mii-pr-onko-tumormarker.md) and [Observation/mii-exa-onko-tumormarker-cea](Observation-mii-exa-onko-tumormarker-cea.md)
* [ActCode](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html): [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md), [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md)... Show 15 more, [Bundle/mii-exa-onko-mamma-example-bundle-1](Bundle-mii-exa-onko-mamma-example-bundle-1.md), [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [Bundle/mii-exa-onko-prostata-example-bundle-1](Bundle-mii-exa-onko-prostata-example-bundle-1.md), [Encounter/example](Encounter-example.md), [Encounter/example-chemo-phase1](Encounter-example-chemo-phase1.md), [Encounter/example-chemo-phase2](Encounter-example-chemo-phase2.md), [Encounter/example-diagnosis-modification](Encounter-example-diagnosis-modification.md), [Encounter/example-surgery-modification](Encounter-example-surgery-modification.md), [Encounter/mii-exa-onko-folfox-encounter-chemo](Encounter-mii-exa-onko-folfox-encounter-chemo.md), [Encounter/mii-exa-onko-folfox-encounter-diagnosis](Encounter-mii-exa-onko-folfox-encounter-diagnosis.md), [Encounter/mii-exa-onko-folfox-encounter-surgery](Encounter-mii-exa-onko-folfox-encounter-surgery.md), [Encounter/mii-exa-onko-krk-bundle-encounter](Encounter-mii-exa-onko-krk-bundle-encounter.md), [Encounter/mii-exa-onko-mamma-bundle-encounter](Encounter-mii-exa-onko-mamma-bundle-encounter.md), [Encounter/mii-exa-onko-melanom-bundle-encounter](Encounter-mii-exa-onko-melanom-bundle-encounter.md) and [Encounter/mii-exa-onko-prostata-bundle-encounter](Encounter-mii-exa-onko-prostata-bundle-encounter.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ObservationInterpretation.html): [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md) and [Observation/mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.md)


* Unless otherwise noted, the contents of the FDA website (www.fda.gov) — both text and graphics — are not copyrighted. They are in the public domain and may be republished, reprinted and otherwise used freely by anyone without the need to obtain permission from FDA. Credit to the U.S. Food and Drug Administration as the source is appreciated but not required.

* [Unique Ingredient Identifier (UNII)](http://terminology.hl7.org/6.5.0/CodeSystem-UNII.html): [MII_PR_Onko_Systemische_Therapie_Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md), [MII_PR_Onko_Therapieempfehlung_Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md), [MII_VS_Onko_Systemische_Therapie_Substanzen_UNII](ValueSet-mii-vs-onko-systemische-therapie-substanzen-unii.md) and [MedicationStatement/mii-exa-onko-medikation-iberdomide-unii](MedicationStatement-mii-exa-onko-medikation-iberdomide-unii.md)


* WHO, BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [ICD-10-GM](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=http://fhir.de/CodeSystem/bfarm/icd-10-gm): [Bundle/mii-exa-onko-cup-bundle](Bundle-mii-exa-onko-cup-bundle.md), [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md)... Show 40 more, [Bundle/mii-exa-onko-kim-musterperson-synthesized](Bundle-mii-exa-onko-kim-musterperson-synthesized.md), [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md), [Bundle/mii-exa-onko-mamma-example-bundle-1](Bundle-mii-exa-onko-mamma-example-bundle-1.md), [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [Bundle/mii-exa-onko-prostata-example-bundle-1](Bundle-mii-exa-onko-prostata-example-bundle-1.md), [Bundle/mii-exa-onko-tnm-bundle](Bundle-mii-exa-onko-tnm-bundle.md), [Bundle/mii-exa-onko-tnm-bundle-legacy](Bundle-mii-exa-onko-tnm-bundle-legacy.md), [Bundle/mii-exa-onko-tnm-bundle-synthesized](Bundle-mii-exa-onko-tnm-bundle-synthesized.md), [Condition/PatientKimMusterperson-Diagnosis-1](Condition-PatientKimMusterperson-Diagnosis-1.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md), [Condition/mii-exa-onko-ascending-colon-cancer-diagnosis](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md), [Condition/mii-exa-onko-colorectal-cancer-diagnosis](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md), [Condition/mii-exa-onko-cup-diagnose](Condition-mii-exa-onko-cup-diagnose.md), [Condition/mii-exa-onko-cup-diagnose-aufgeloest](Condition-mii-exa-onko-cup-diagnose-aufgeloest.md), [Condition/mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md), [Condition/mii-exa-onko-diagnose-aml-transformation](Condition-mii-exa-onko-diagnose-aml-transformation.md), [Condition/mii-exa-onko-diagnose-angiosarkom-nach-radiatio](Condition-mii-exa-onko-diagnose-angiosarkom-nach-radiatio.md), [Condition/mii-exa-onko-diagnose-mds](Condition-mii-exa-onko-diagnose-mds.md), [Condition/mii-exa-onko-diagnose-meningeom-benigne](Condition-mii-exa-onko-diagnose-meningeom-benigne.md), [Condition/mii-exa-onko-diagnose-meningeom-maligne-transformation](Condition-mii-exa-onko-diagnose-meningeom-maligne-transformation.md), [Condition/mii-exa-onko-diagnose-taml-nach-chemo](Condition-mii-exa-onko-diagnose-taml-nach-chemo.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md), [Condition/mii-exa-onko-kim-synth-diagnose](Condition-mii-exa-onko-kim-synth-diagnose.md), [Condition/mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.md), [Condition/mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.md), [Condition/mii-exa-onko-melanom-diagnose](Condition-mii-exa-onko-melanom-diagnose.md), [Condition/mii-exa-onko-prostata-diagnose](Condition-mii-exa-onko-prostata-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-diagnose](Condition-mii-exa-onko-tnm-bundle-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-legacy-diagnose](Condition-mii-exa-onko-tnm-bundle-legacy-diagnose.md), [Condition/mii-exa-onko-tnm-synth-diagnose](Condition-mii-exa-onko-tnm-synth-diagnose.md), [Condition/primaertumor-example](Condition-primaertumor-example.md), [MII_PR_Onko_Diagnose_Primaertumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md), [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md), [MII_PR_Onko_Tod](StructureDefinition-mii-pr-onko-tod.md), [MII_VS_Onko_ICD10_Meldepflichtige_Tumoren](ValueSet-mii-vs-onko-icd10-meldepflichtige-tumoren.md), [Observation/mii-exa-onko-tod-j](Observation-mii-exa-onko-tod-j.md), [Observation/mii-exa-onko-tod-n](Observation-mii-exa-onko-tod-n.md) and [Observation/mii-exa-onko-tod-u](Observation-mii-exa-onko-tod-u.md)


### IG Parameter Settings and Expansion Parameters

Expansion parameters are query parameters that can be passed to a `ValueSet` `$expand` operation to control how the ValueSet is expanded — that is, how the full list of codes is generated from the ValueSet definition. The [IG Parameters](https://hl7.org/fhir/tools/en/CodeSystem-ig-parameters.html) used for this IG are declared in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/main/sushi-config.yaml) (`parameters:`). A module that pins its expansion parameters through a CRMI manifest additionally links the generated `Parameters` resource from here (see the commented manifest blocks in `sushi-config.yaml` and the Metadata Overview page, if the module keeps it).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "mii-ig-onko-de-v2026",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-implementationguide"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-03-27"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "packageId",
      "valueId" : "de.medizininformatikinitiative.kerndatensatz.onkologie"
    },
    {
      "url" : "version",
      "valueString" : "2027.0.0-ballot.rc1"
    },
    {
      "url" : "uri",
      "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-expansionParameters",
    "valueReference" : {
      "reference" : "Parameters/mii-param-onko-manifest"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this ImplementationGuide resource as a computable definition of all the parts of the corresponding module of the Medical Informatics Initiative core data set."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-purpose",
    "valueMarkdown" : "Provide the computable publication unit for the MII Core Dataset Oncology module, enabling implementers to discover, validate, version, and apply the specification consistently."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ImplementationGuide/mii-ig-onko-de-v2026",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_IG_Onko_DE",
  "title" : "MII IG Kerndatensatz-Modul Onkologie",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "MII IG Kerndatensatz-Modul Onkologie"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "FHIR profiles for representing oncological data based on the German oBDS (Onkologischer Basisdatensatz) specification, part of the MII core dataset.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "packageId" : "de.medizininformatikinitiative.kerndatensatz.onkologie",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "de_basisprofil_r4",
    "uri" : "http://fhir.org/packages/de.basisprofil.r4/ImplementationGuide/de.basisprofil.r4",
    "packageId" : "de.basisprofil.r4",
    "version" : "1.6.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_meta",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/ImplementationGuide/mii-ig-meta",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.meta",
    "version" : "2027.0.0-ballot.rc3"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  },
  {
    "id" : "hl7_fhir_uv_crmi",
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "2.0.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_base",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-base/ImplementationGuide/mii-ig-base",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.base",
    "version" : "2027.0.0-ballot.rc1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_biobank",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.biobank/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.biobank",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.biobank",
    "version" : "2027.0.0-ballot.rc2"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_laborbefund",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.laborbefund/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.laborbefund",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.laborbefund",
    "version" : "2027.0.0-ballot.rc3"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_medikation",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ImplementationGuide/mii-ig-medikation",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.medikation",
    "version" : "2026.0.1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_molgen",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.molgen/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.molgen",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.molgen",
    "version" : "2026.0.4"
  },
  {
    "id" : "hl7_fhir_uv_genomics_reporting",
    "uri" : "http://hl7.org/fhir/uv/genomics-reporting/ImplementationGuide/hl7.fhir.uv.genomics-reporting",
    "packageId" : "hl7.fhir.uv.genomics-reporting",
    "version" : "3.0.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_studie",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/ImplementationGuide/mii-ig-studie",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.studie",
    "version" : "2027.0.0-ballot.rc1"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2022+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ballot"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-onko-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://radelement.org"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.uicc.org/resources/tnm"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2022+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ballot"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-onko-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://radelement.org"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.uicc.org/resources/tnm"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-modification-5fu-phase1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-modification-5fu-phase1"
      },
      "name" : "5-FU Phase 1 (Zyklen 1-6)",
      "description" : "Fluorouracil administered during FOLFOX4 phase",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-modification-5fu-phase2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-modification-5fu-phase2"
      },
      "name" : "5-FU Phase 2 (Zyklen 7-12)",
      "description" : "Fluorouracil continued for cycles 7-12 as part of modified LV5FU2 protocol",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-2014-mamma-mit-lk.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-2014-mamma-mit-lk"
      },
      "name" : "Beispiel Strahlentherapie oBDS 2014 - Mamma mit Lymphknoten (3.1.+)",
      "description" : "oBDS 2014: Ein Bestrahlungsverfahren für Mamma inklusive Lymphknoten als kombinierter Code",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten"
      },
      "name" : "Beispiel Strahlentherapie oBDS 2021 - Axilläre Lymphknoten",
      "description" : "oBDS 2021: Bestrahlung der axillären Lymphknoten (entspricht 2014 '3.1.+' Lymphknotenanteil)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-2021-mamma-primaer"
      },
      "name" : "Beispiel Strahlentherapie oBDS 2021 - Mamma Primärzielgebiet",
      "description" : "oBDS 2021: Bestrahlung der Mamma als Primärzielgebiet (entspricht 2014 '3.1.+' Organanteil)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-example.html"
      }],
      "reference" : {
        "reference" : "Encounter/example"
      },
      "name" : "Beispiel-Kontakt (Anker)",
      "description" : "Minimaler Anker-Kontakt für die generischen Referenzen Encounter/example.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-example-chemo-phase1.html"
      }],
      "reference" : {
        "reference" : "Encounter/example-chemo-phase1"
      },
      "name" : "Beispiel-Kontakt Chemotherapie Phase 1 (Anker)",
      "description" : "Minimaler Anker-Kontakt für Encounter/example-chemo-phase1.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-example-chemo-phase2.html"
      }],
      "reference" : {
        "reference" : "Encounter/example-chemo-phase2"
      },
      "name" : "Beispiel-Kontakt Chemotherapie Phase 2 (Anker)",
      "description" : "Minimaler Anker-Kontakt für Encounter/example-chemo-phase2.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-example-diagnosis-modification.html"
      }],
      "reference" : {
        "reference" : "Encounter/example-diagnosis-modification"
      },
      "name" : "Beispiel-Kontakt Diagnosestellung FOLFOX-Modifikation (Anker)",
      "description" : "Minimaler Anker-Kontakt für Encounter/example-diagnosis-modification.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-example-surgery-modification.html"
      }],
      "reference" : {
        "reference" : "Encounter/example-surgery-modification"
      },
      "name" : "Beispiel-Kontakt Operation FOLFOX-Modifikation (Anker)",
      "description" : "Minimaler Anker-Kontakt für Encounter/example-surgery-modification.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-example.html"
      }],
      "reference" : {
        "reference" : "Patient/example"
      },
      "name" : "Beispiel-Patient (Anker)",
      "description" : "Minimaler Anker-Patient für die generischen Referenzen Patient/example in den Beispielen des Moduls.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-example-modification.html"
      }],
      "reference" : {
        "reference" : "Patient/example-modification"
      },
      "name" : "Beispiel-Patient FOLFOX-Modifikation (Anker)",
      "description" : "Minimaler Anker-Patient für das FOLFOX-Modifikations-Szenario (Patient/example-modification).",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-systemische-therapie-medikation1"
      },
      "name" : "Example chemotherapy 1",
      "description" : "Example for the FHIR profile systemic therapy based on German",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-systemische-therapie-medikation2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-systemische-therapie-medikation2"
      },
      "name" : "Example chemotherapy 2",
      "description" : "Example for the FHIR profile systemic therapy based on German",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-primaertumor-example.html"
      }],
      "reference" : {
        "reference" : "Condition/primaertumor-example"
      },
      "name" : "Example Primaertumor Condition for Extended Examples",
      "description" : "Minimal primaertumor condition for referencing in molecular tumor board examples",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-nuklearmedizin-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-nuklearmedizin-1"
      },
      "name" : "Example radiation therapy",
      "description" : "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-strahlentherapie-1"
      },
      "name" : "Example radiation therapy",
      "description" : "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-operation-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-operation-1"
      },
      "name" : "Example surgical therapy",
      "description" : "Example surgical therapy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-systemische-therapie-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-systemische-therapie-1"
      },
      "name" : "Example systemic therapy",
      "description" : "Example systemic therapy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-folfox-5fu-request.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-folfox-5fu-request"
      },
      "name" : "FOLFOX - Fluorouracil MedicationRequest",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-folfox-5fu-statement.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-folfox-5fu-statement"
      },
      "name" : "FOLFOX - Fluorouracil tatsächlich verabreicht",
      "description" : "5-Fluorouracil medication statement as part of FOLFOX4 protocol",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-folfox-leucovorin-request.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-folfox-leucovorin-request"
      },
      "name" : "FOLFOX - Folinsäure MedicationRequest",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-folfox-leucovorin-statement.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-folfox-leucovorin-statement"
      },
      "name" : "FOLFOX - Folinsäure tatsächlich verabreicht",
      "description" : "Folinic acid (Leucovorin) medication statement as part of FOLFOX4 protocol",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-folfox-oxaliplatin-request.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request"
      },
      "name" : "FOLFOX - Oxaliplatin MedicationRequest",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-folfox-oxaliplatin-statement.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-folfox-oxaliplatin-statement"
      },
      "name" : "FOLFOX - Oxaliplatin tatsächlich verabreicht",
      "description" : "Oxaliplatin medication statement as part of FOLFOX4 protocol",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-onko-folfox-encounter-chemo.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-chemo"
      },
      "name" : "FOLFOX Kontakt Chemotherapie",
      "description" : "Ambulanter Kontakt, unter dem die FOLFOX-Chemotherapie appliziert wurde",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-onko-folfox-encounter-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-diagnosis"
      },
      "name" : "FOLFOX Kontakt Diagnosestellung",
      "description" : "Ambulanter Kontakt, in dem die Kolonkarzinom-Diagnose gestellt und gestaged wurde",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-onko-folfox-encounter-surgery.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-surgery"
      },
      "name" : "FOLFOX Kontakt Sigmaresektion",
      "description" : "Stationärer Kontakt der Sigmaresektion samt zugehöriger Teilprozeduren",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-folfox-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "name" : "FOLFOX Patient - 65-jähriger mit Kolonkarzinom",
      "description" : "Patient for FOLFOX colorectal cancer treatment example",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-folfox-procedure.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-folfox-procedure"
      },
      "name" : "FOLFOX Systemische Therapie (tatsächlich durchgeführt)",
      "description" : "Actual FOLFOX chemotherapy given, linked back to tumor board recommendation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RequestGroup"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RequestGroup-mii-exa-onko-folfox-requestgroup.html"
      }],
      "reference" : {
        "reference" : "RequestGroup/mii-exa-onko-folfox-requestgroup"
      },
      "name" : "FOLFOX Therapieempfehlung (RequestGroup)",
      "description" : "Tumor board recommendation for FOLFOX protocol with therapy type and protocol coding",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-folfox-workflow-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-folfox-workflow-bundle"
      },
      "name" : "FOLFOX Workflow Bundle - Komplettes Beispiel von Tumorkonferenz bis Therapie",
      "description" : "Comprehensive Bundle demonstrating complete FOLFOX workflow from tumor board recommendation through actual treatment, with all resources for reference resolution validation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-folfox-phase1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-folfox-phase1"
      },
      "name" : "FOLFOX4 Therapie - Phase 1 (Zyklen 1-6)",
      "description" : "First phase: Full FOLFOX4 protocol for 6 cycles before dose modification",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RequestGroup"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RequestGroup-mii-exa-onko-folfox-requestgroup-modification.html"
      }],
      "reference" : {
        "reference" : "RequestGroup/mii-exa-onko-folfox-requestgroup-modification"
      },
      "name" : "FOLFOX4 Therapieempfehlung",
      "description" : "Original tumor board recommendation for FOLFOX4 protocol (later modified due to toxicity)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-modification-leucovorin-phase1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-modification-leucovorin-phase1"
      },
      "name" : "Folinsäure Phase 1 (Zyklen 1-6)",
      "description" : "Leucovorin administered during FOLFOX4 phase",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-modification-leucovorin-phase2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-modification-leucovorin-phase2"
      },
      "name" : "Folinsäure Phase 2 (Zyklen 7-12)",
      "description" : "Leucovorin continued for cycles 7-12 as part of modified LV5FU2 protocol",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-fruehere-tumorerkrankung-cervix"
      },
      "name" : "Frühere Tumorerkrankung Cervix in situ",
      "description" : "Beispiel einer früheren Tumorerkrankung (Carcinoma in situ der Cervix uteri) aus dem Jahr 2013",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-fruehere-tumorerkrankung-mamma"
      },
      "name" : "Frühere Tumorerkrankung Mamma",
      "description" : "Beispiel einer früheren Tumorerkrankung (Mammakarzinom links) aus dem Jahr 2013",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-fruehere-tumorerkrankung-freetext"
      },
      "name" : "Frühere Tumorerkrankung nur Freitext",
      "description" : "Beispiel einer früheren Tumorerkrankung mit nur Freitextangabe, ohne ICD-10-GM Kodierung (typisch bei anamnestischen Angaben)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-fruehere-tumorerkrankung-prostata"
      },
      "name" : "Frühere Tumorerkrankung Prostata",
      "description" : "Beispiel einer früheren Tumorerkrankung (Prostatakarzinom) aus dem Jahr 2018",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
      },
      "name" : "Hauptprocedure: Komplexe abdominale Tumorchirurgie",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-right-hemicolectomy.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-right-hemicolectomy"
      },
      "name" : "Hemikolektomie rechts",
      "description" : "Laparoscopic right hemicolectomy with lymph node dissection",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-colorectal-cancer-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      },
      "name" : "Kolonkarzinom Primärdiagnose",
      "description" : "Stage III sigmoid colon adenocarcinoma, diagnosed January 2024",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
      },
      "name" : "Kolonkarzinom Primärdiagnose - Colon ascendens",
      "description" : "Stage III ascending colon adenocarcinoma, diagnosed January 2024",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "List"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "List-mii-exa-onko-liste-evidenz-erstdiagnose-1.html"
      }],
      "reference" : {
        "reference" : "List/mii-exa-onko-liste-evidenz-erstdiagnose-1"
      },
      "name" : "Liste der Evidenz zum Erstdiagnosezeitpunkt",
      "description" : "Eine Beispielliste, welche Observations zur Diagnosestellung präsent waren",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-lv5fu2-phase2.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-lv5fu2-phase2"
      },
      "name" : "LV5FU2 Therapie - Phase 2 (Zyklen 7-12)",
      "description" : "Second phase: Modified protocol with 5-FU + Leucovorin only (no Oxaliplatin) for remaining 6 cycles",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc"
      },
      "name" : "Mapping oBDS ECOG zu LOINC",
      "description" : "Mapping der oBDS-Codes für ECOG Performance Status zu LOINC Answer List LL529-9",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc"
      },
      "name" : "Mapping oBDS Karnofsky zu LOINC",
      "description" : "Mapping der oBDS-Codes für Karnofsky Performance Status zu LOINC Answer List LL4986-7",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-krk-stoma-obds-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-krk-stoma-obds-sct"
      },
      "name" : "Mapping oBDS Stoma-Anzeichnung zu SNOMED CT",
      "description" : "Mapping der oBDS-Codes für präoperative Stoma-Anzeichnung zu SNOMED CT",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-modification-5fu-request.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-modification-5fu-request"
      },
      "name" : "MedicationRequest - Fluorouracil (vollständig verabreicht)",
      "description" : "Fluorouracil recommendation - completed for all 12 cycles",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-modification-leucovorin-request.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-modification-leucovorin-request"
      },
      "name" : "MedicationRequest - Folinsäure (vollständig verabreicht)",
      "description" : "Leucovorin recommendation - completed for all 12 cycles",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-modification-oxaliplatin-request.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-modification-oxaliplatin-request"
      },
      "name" : "MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie)",
      "description" : "Oxaliplatin recommendation - stopped after cycle 6 due to grade 3 peripheral neuropathy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-medikation-iberdomide-unii.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-medikation-iberdomide-unii"
      },
      "name" : "Medikation Iberdomide (UNII)",
      "description" : "Beispiel einer systemischen Therapie Medikation mit UNII-Code für experimentellen Wirkstoff ohne ATC-Code",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-medikation-imatinib-atc-version-transition.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-medikation-imatinib-atc-version-transition"
      },
      "name" : "Medikation Imatinib (ATC Versionsübergang)",
      "description" : "Beispiel einer systemischen Therapie Medikation mit Imatinib, das 2021 von L01XE01 nach L01EA01 umklassifiziert wurde. Zeigt beide ATC-Codes mit ihren jeweiligen Versionen.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-melanom-exzision-oberarm.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-melanom-exzision-oberarm"
      },
      "name" : "Melanom Exzision Oberarm Beispiel",
      "description" : "Beispiel einer Melanom-Exzision am linken Oberarm mit Sicherheitsabstand",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-exzision"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-melanom-exzision-ruecken.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-melanom-exzision-ruecken"
      },
      "name" : "Melanom Exzision Rücken Beispiel",
      "description" : "Beispiel einer Melanom-Nachexzision am oberen Rücken",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-exzision"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-2014-prostata-mit-lk.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-2014-prostata-mit-lk"
      },
      "name" : "Migration Beispiel: Prostata mit Lymphknoten (oBDS 2014 → 2021)",
      "description" : "Zeigt Migration von 2014 '5.4.+' zu 2021 separaten Prozeduren",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-sct"
      },
      "name" : "MII CM Onko Allgemeiner Leistungszustand SNOMED Mapping",
      "description" : "Mapping Allgemeiner Leistungszustand Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-atc-transitions-2021.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-atc-transitions-2021"
      },
      "name" : "MII CM Onko ATC Code Changes 2020 to 2021",
      "description" : "Diese ConceptMap dokumentiert ausschließlich die ATC-Code-Änderungen von 2020 zu 2021. Im Jahr 2021 erfolgte eine umfassende Reorganisation der ATC-Klassifikation für onkologische Substanzen mit Umkodierung von über 60 Wirkstoffen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-atc-transitions-2022.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-atc-transitions-2022"
      },
      "name" : "MII CM Onko ATC Code Changes 2021 to 2022",
      "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2021 zu 2022. In diesem Jahr erfolgte die größte Reklassifikation der onkologischen ATC-Systematik: die monoklonalen Antikörper wurden aus der Sammelgruppe L01XC in die neue, nach Zielstruktur gegliederte Gruppe L01F überführt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-atc-transitions-2023.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-atc-transitions-2023"
      },
      "name" : "MII CM Onko ATC Code Changes 2022 to 2023",
      "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2022 zu 2023. In diesem Jahr wurden CAR-T-Zelltherapien und onkolytische Viren in neue spezifische ATC-Kategorien umklassifiziert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-atc-transitions-2024.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-atc-transitions-2024"
      },
      "name" : "MII CM Onko ATC Code Changes 2023 to 2024",
      "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2023 zu 2024. Mehrere immunmodulatorische Substanzen wurden in neue Kategorien umklassifiziert, und Kombinationspräparate erhielten neue Codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-atc-transitions-2025.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-atc-transitions-2025"
      },
      "name" : "MII CM Onko ATC Code Changes 2024 to 2025",
      "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2024 zu 2025. IDH-Inhibitoren wurden in eine neue spezifische Kategorie umklassifiziert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-atc-transitions-2026.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-atc-transitions-2026"
      },
      "name" : "MII CM Onko ATC Code Changes 2025 to 2026",
      "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2025 zu 2026. c-MET-Kinase-Inhibitoren wurden in die neue Untergruppe L01EP umklassifiziert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-tnm-uicc-sct-clinical.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-tnm-uicc-sct-clinical"
      },
      "name" : "MII CM Onko Clincal TNM UICC SNOMED",
      "description" : "Mapping clincal TNM UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-fernmetastasen-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-fernmetastasen-sct"
      },
      "name" : "MII CM Onko Fernmetastasen SCT Mapping",
      "description" : "Mapping der Fernmetastasen-Codesystems  auf SNOMED",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-genetische-variante-auspraegung-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-genetische-variante-auspraegung-sct"
      },
      "name" : "MII CM Onko Genetische Variante Auspraegung SNOMED Mapping",
      "description" : "Mapping Therapieabweichung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-grading-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-grading-sct"
      },
      "name" : "MII CM Onko Grading SNOMED Mapping",
      "description" : "Mapping Grading Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-icdo3-transitions-2019.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-icdo3-transitions-2019"
      },
      "name" : "MII CM Onko ICD-O-3 Code Changes 2014 to 2019",
      "description" : "Diese ConceptMap dokumentiert die Morphologie-Code-Änderungen der ICD-O-3 von der Ersten Revision (deutsche Ausgabe 2014, ICD-O-3.1) zur Zweiten Revision (2019, ICD-O-3.2): Dignitäts-Neubewertungen (z. B. GIST, Phäochromozytom, Thymome, Paragangliome), Entitäts-Zusammenlegungen (z. B. Ewing-Sarkom, Hämangioperizytom in solitärer fibröser Tumor) und entfallene Konzepte. Werkzeug für die Migration von Krebsregister-Bestandsdaten.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-intention-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-intention-sct"
      },
      "name" : "MII CM Onko Intention SNOMED Mapping",
      "description" : "Mapping Intention Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-nebenwirkung-meddra-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-nebenwirkung-meddra-sct"
      },
      "name" : "MII CM Onko Nebenwirkung MedDRA zu SNOMED CT (CTCAE v4.03)",
      "description" : "Kuratierte Zuordnung der MedDRA-Codes der CTCAE-v4.03-Nebenwirkungsterme zu SNOMED CT für die optionale SNOMED-Zweitkodierung in AdverseEvent.event (Profil mii-pr-onko-nebenwirkung-adverse-event). WICHTIGE HINWEISE: (1) Es existiert eine offizielle, lizenzpflichtige MedDRA-SNOMED-CT-Map (MedDRA MSSO / SNOMED International); diese ConceptMap ist eine davon unabhängige, projektseitig kuratierte Zuordnung und ersetzt die offizielle Map nicht. (2) Die Zuordnungen wurden automatisiert erstellt und stichproben- bzw. einzelfallkuratiert; für Vollständigkeit und Korrektheit wird KEINE GEWÄHR übernommen. Vor einer Nutzung in Produktivsystemen ist eine eigenverantwortliche fachliche Prüfung erforderlich. (3) Nicht jeder CTCAE-/MedDRA-Term hat ein SNOMED-CT-Äquivalent — solche Terme sind als unmatched gekennzeichnet und verbleiben MedDRA-only.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-nebenwirkung-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-nebenwirkung-sct"
      },
      "name" : "MII CM Onko Nebenwirkung SNOMED Mapping",
      "description" : "Mapping Nebenwirkung CTCAE Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-operation-komplikation-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-operation-komplikation-sct"
      },
      "name" : "MII CM Onko Operation Komplikation SNOMED Mapping",
      "description" : "Mapping Operation Komplikation Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-tnm-uicc-sct-pathological.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-tnm-uicc-sct-pathological"
      },
      "name" : "MII CM Onko Pathological TNM UICC SNOMED",
      "description" : "Mapping pathological TNM UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-primaertumor-diagnosesicherung-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-primaertumor-diagnosesicherung-sct"
      },
      "name" : "MII CM Onko Primaertumor Diagnosesicherung SNOMED Mapping",
      "description" : "Mapping Primärtumor Diagnosesicherung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-residualstatus-uicc-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-residualstatus-uicc-sct"
      },
      "name" : "MII CM Onko Residualstatus UICC SNOMED",
      "description" : "Mapping Residualstatus UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-seitenlokalisation-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-seitenlokalisation-sct"
      },
      "name" : "MII CM Onko Seitenlokalisation SNOMED Mapping",
      "description" : "Mapping Seitenlokalisation Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-strahlentherapie-applikationsart-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-strahlentherapie-applikationsart-sct"
      },
      "name" : "MII CM Onko Strahlentherapie Applikationsart SNOMED Mapping",
      "description" : "Mapping Strahlentherapie Applikationsart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-strahlentherapie-boost-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-strahlentherapie-boost-sct"
      },
      "name" : "MII CM Onko Strahlentherapie Boost SNOMED Mapping",
      "description" : "Mapping Strahlentherapie Boost Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-strahlentherapie-strahlenart-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-strahlentherapie-strahlenart-sct"
      },
      "name" : "MII CM Onko Strahlentherapie Strahlenart SNOMED Mapping",
      "description" : "Mapping Strahlentherapie Strahlenart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-strahlentherapie-strahleneinheit-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-strahlentherapie-strahleneinheit-sct"
      },
      "name" : "MII CM Onko Strahlentherapie Strahleneinheit SNOMED Mapping",
      "description" : "Mapping Strahlentherapie Strahleneinheit Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-strahlentherapie-zielgebiet-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-strahlentherapie-zielgebiet-sct"
      },
      "name" : "MII CM Onko Strahlentherapie Zielgebiet SNOMED Mapping",
      "description" : "Mapping Strahlentherapie Zielgebiet Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-studienteilnahme-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-studienteilnahme-sct"
      },
      "name" : "MII CM Onko Studienteilnahme SNOMED Mapping",
      "description" : "Mapping Studienteilnahme Status Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-therapie-ende-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-therapie-ende-sct"
      },
      "name" : "MII CM Onko Therapie Ende SNOMED Mapping",
      "description" : "Mapping Therapie Ende Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-therapie-stellung-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-therapie-stellung-sct"
      },
      "name" : "MII CM Onko Therapie Stellung SNOMED Mapping",
      "description" : "Mapping Therapie Stellung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-therapie-typ-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-therapie-typ-sct"
      },
      "name" : "MII CM Onko Therapie Typ SNOMED Mapping",
      "description" : "Mapping Therapie Typ Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-therapieabweichung-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-therapieabweichung-sct"
      },
      "name" : "MII CM Onko Therapieabweichung SNOMED Mapping",
      "description" : "Mapping Therapieabweichung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-therapieplanung-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-therapieplanung-sct"
      },
      "name" : "MII CM Onko Therapieplanung SNOMED Mapping",
      "description" : "Mapping Therapieplanung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-tod-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-tod-sct"
      },
      "name" : "MII CM Onko Tod SNOMED Mapping",
      "description" : "Mapping Tod Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-verlauf-fernmetastasen-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-verlauf-fernmetastasen-sct"
      },
      "name" : "MII CM Onko Verlauf Fernmetastasen SNOMED Mapping",
      "description" : "Mapping Verlauf Fernmetastasen Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-verlauf-gesamtbeurteilung-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-verlauf-gesamtbeurteilung-sct"
      },
      "name" : "MII CM Onko Verlauf Gesamtbeurteilung SNOMED Mapping",
      "description" : "Mapping Gesamtbeurteilung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-verlauf-lymphknoten-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-verlauf-lymphknoten-sct"
      },
      "name" : "MII CM Onko Verlauf Lymphknoten SNOMED Mapping",
      "description" : "Mapping Lymphknoten Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-verlauf-primaertumor-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-verlauf-primaertumor-sct"
      },
      "name" : "MII CM Onko Verlauf Primaertumor SNOMED Mapping",
      "description" : "Mapping Verlauf-Primaertumor Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onko-asa-obds-loinc.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onko-asa-obds-loinc"
      },
      "name" : "MII CM Onkologie ASA oBDS zu LOINC",
      "description" : "Mapping von oBDS ASA-Klassifikation (ursprünglich KR9, generalisiert für alle onkologischen Indikationen) zu LOINC ASA Physical Status",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-weitere-klassifikationen-obds.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-weitere-klassifikationen-obds"
      },
      "name" : "MII CodeSystem Onkologie - Weitere Klassifikationen oBDS",
      "description" : "oBDS-specific classification systems and scoring systems not yet covered by international terminologies (SNOMED CT, NCI Thesaurus). These codes supplement the existing ValueSet for additional classifications. Research required: Check if SNOMED CT or LOINC codes exist for these scoring systems before using oBDS-specific codes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-onkologie-to-mvgenomseq.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-onkologie-to-mvgenomseq"
      },
      "name" : "MII Concept Map Modellvorhaben Genomsequenzierung Onkologie",
      "description" : "MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-mii-cps-onko-capabilitystatement.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/mii-cps-onko-capabilitystatement"
      },
      "name" : "MII CPS Onkology CapabilityStatement",
      "description" : "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Onkologie der Medizininformatik Initiative zu implementieren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-nebenwirkung-meddra-de.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-nebenwirkung-meddra-de"
      },
      "name" : "MII CS Onko Nebenwirkung MedDRA Deutsch (Supplement)",
      "description" : "Deutschsprachiges CodeSystem-Supplement für MedDRA-Codes der CTCAE v4.03 Nebenwirkungen. Quelle: §65c-Plattform / Krebsregister-Liste (Deutsche Übersetzung CTCAE Version 4).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-nebenwirkung-ctcae-grad.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad"
      },
      "name" : "MII CS Onko Nebenwirkung nach CTCAE-Grad",
      "description" : "Gibt an, zu welchem Schweregrad von Nebenwirkungen es bei der Bestrahlung oder der systemischen Therapie gekommen ist.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-therapie-typ.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-therapie-typ"
      },
      "name" : "MII CS Onko Therapie Typ",
      "description" : "Typ der Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-allgemeiner-leistungszustand-ecog.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog"
      },
      "name" : "MII CS Onkologie Allgemeiner Leistungszustand ECOG",
      "description" : "oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach ECOG",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-allgemeiner-leistungszustand-karnofsky.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky"
      },
      "name" : "MII CS Onkologie Allgemeiner Leistungszustand Karnofsky",
      "description" : "oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach Karnofsky",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-asa-obds.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-asa-obds"
      },
      "name" : "MII CS Onkologie ASA-Klassifikation oBDS",
      "description" : "oBDS-basiertes CodeSystem für ASA-Klassifikation (ursprünglich KR9 aus Kolorektales Karzinom Modul, generalisiert für alle onkologischen Indikationen)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-fernmetastasen.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-fernmetastasen"
      },
      "name" : "MII CS Onkologie Fernmetastasen",
      "description" : "oBDS-spezifisches Codesystem für Fernmetastasen, basierend auf Spezifikation durch TNM-Klassifikation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-genetische-variante-auspraegung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-genetische-variante-auspraegung"
      },
      "name" : "MII CS Onkologie Genetische Variante Ausprägung",
      "description" : "oBDS-spezifisches Codesystem Konsequenz der genetischen Variante Ausprägung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-grading.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-grading"
      },
      "name" : "MII CS Onkologie Grading",
      "description" : "Codes für Histologie Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-intention.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-intention"
      },
      "name" : "MII CS Onkologie Intention",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP, der Strahlentherapie und der Systemischen Therapie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-krk-anastomoseninsuffizienz.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-krk-anastomoseninsuffizienz"
      },
      "name" : "MII CS Onkologie KRK Anastomoseninsuffizienz",
      "description" : "oBDS-spezifisches Codesystem für Anastomoseninsuffizienz beim Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-krk-mrt-mesorektale-faszie-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-krk-mrt-mesorektale-faszie-status"
      },
      "name" : "MII CS Onkologie KRK MRT Mesorektale Faszie Status",
      "description" : "oBDS-basiertes Codesystem für den Status der MRT/CT Untersuchung zur mesorektalen Faszie beim Kolorektalen Karzinom (KR5)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-krk-operationstyp.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-krk-operationstyp"
      },
      "name" : "MII CS Onkologie KRK Operationstyp",
      "description" : "oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-krk-stoma-anzeichnung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-krk-stoma-anzeichnung"
      },
      "name" : "MII CS Onkologie KRK Stoma Anzeichnung",
      "description" : "oBDS-basiertes Codesystem für die präoperative Anzeichnung der Stoma-Position beim Rektumkarzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-mamma-her2neu-status-leitlinie.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-mamma-her2neu-status-leitlinie"
      },
      "name" : "MII CS Onkologie Mamma Her2neu Status Leitlinie",
      "description" : "Codesystem für Her2neu Status basierend auf der S3-Leitlinie Mammakarzinom und ASCO/CAP Guidelines mit erweiterten Klassifikationen (HER2-low, HER2-ultralow)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-mamma-her2neu-status-obds.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-mamma-her2neu-status-obds"
      },
      "name" : "MII CS Onkologie Mamma Her2neu Status oBDS",
      "description" : "oBDS-spezifisches Codesystem für Her2neu Status gemäß oBDS Feld M4 (243)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-mamma-rezeptorstatus-leitlinie.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-mamma-rezeptorstatus-leitlinie"
      },
      "name" : "MII CS Onkologie Mamma Rezeptorstatus",
      "description" : "oBDS-spezifisches Codesystem Mamma-Rezeptorstatus, basierend auf der S3-Leitlinie Mammakarzinom v5.02 Abschnitt 4.5.4",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-melanom-ulzeration.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-melanom-ulzeration"
      },
      "name" : "MII CS Onkologie Melanom Ulzeration",
      "description" : "Codes für die Ulzeration beim Malignen Melanom der Haut nach oBDS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-nebenwirkung-ctcae-version.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-nebenwirkung-ctcae-version"
      },
      "name" : "MII CS Onkologie Nebenwirkung CTCAE-Version",
      "description" : "Versionsbezeichnungen des CTCAE-Katalogs nach oBDS 15.3. Werte gemaess oBDS-XML-Schema (Nebenwirkung/Version).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-operation-komplikation.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-operation-komplikation"
      },
      "name" : "MII CS Onkologie Operation Komplikationen",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation von Komplikationen während der OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-operation-urgency.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-operation-urgency"
      },
      "name" : "MII CS Onkologie Operation Urgency",
      "description" : "oBDS-basiertes Codesystem für die Modalität der Eingriffsdurchführung (Art des Eingriffs KR6)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-primaertumor-diagnosesicherung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung"
      },
      "name" : "MII CS Onkologie Primärtumor Diagnosesicherung",
      "description" : "Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-seitenlokalisation.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-seitenlokalisation"
      },
      "name" : "MII CS Onkologie Primärtumor Seitenlokalisation",
      "description" : "Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-prostata-postsurgical-complications.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-prostata-postsurgical-complications"
      },
      "name" : "MII CS Onkologie Prostata Postoperative Komplikationen",
      "description" : "CodeSystem zur Darstellung des Vorhandenseins von postoperativen Komplikationen nach Prostatektomie in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-residualstatus.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-residualstatus"
      },
      "name" : "MII CS Onkologie Residualstatus",
      "description" : "oBDS-spezifisches Codesystem für R-Klassifikation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-strahlentherapie-applikationsart.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-strahlentherapie-applikationsart"
      },
      "name" : "MII CS Onkologie Strahlentherapie Applikationsart",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-strahlentherapie-boost.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-strahlentherapie-boost"
      },
      "name" : "MII CS Onkologie Strahlentherapie Boost",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation von Strahlentherapie-Boosts",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-therapie-ende-grund.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-therapie-ende-grund"
      },
      "name" : "MII CS Onkologie Strahlentherapie Ende Grund",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation des Grundes der Beendigung der Strahlentherapie oder der systemischen Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-strahlentherapie-strahlenart.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-strahlentherapie-strahlenart"
      },
      "name" : "MII CS Onkologie Strahlentherapie Strahlenart",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation von eingesetzter Strahlenart",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-strahlentherapie-zielgebiet.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet"
      },
      "name" : "MII CS Onkologie Strahlentherapie Zielgebiet",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation von Zielgebiet von Strahlentherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-strahlentherapie-zielgebiet-2014.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet-2014"
      },
      "name" : "MII CS Onkologie Strahlentherapie Zielgebiet oBDS 2014 (Legacy)",
      "description" : "oBDS 2014 Legacy-Codesystem für Klassifikation von Zielgebiet von Strahlentherapie - nur für Datenimport und Migration",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-studienteilnahme.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-studienteilnahme"
      },
      "name" : "MII CS Onkologie Studienteilnahme",
      "description" : "oBDS-spezifisches Codesystem den Status der Studienteilnahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-systemische-therapie-protokolle.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
      },
      "name" : "MII CS Onkologie Systemische Therapie Protokolle",
      "description" : "oBDS-spezifisches Codesystem für Protokolle systemischer Therapien",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-therapie-stellungzurop.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-therapie-stellungzurop"
      },
      "name" : "MII CS Onkologie Therapie Stellung",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation von Stellung zur OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-therapieabweichung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-therapieabweichung"
      },
      "name" : "MII CS Onkologie Therapieabweichung",
      "description" : "oBDS-spezifisches Codesystem für die Therapieabweichung auf Wunsch des Patients.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-therapieplanung-typ.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-therapieplanung-typ"
      },
      "name" : "MII CS Onkologie Therapieplanung Typ",
      "description" : "oBDS-spezifisches Codesystem für den Therapieplanungstyp",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-krk-tme-qualitaet.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-krk-tme-qualitaet"
      },
      "name" : "MII CS Onkologie TME Qualität",
      "description" : "oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-tnm-formel.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-tnm-formel"
      },
      "name" : "MII CS Onkologie TNM Formel",
      "description" : "Codes für die Darstellung der zusammengeführten TNM-Gesamtformel als Component der synthetisierten TNM-Klassifikation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-tnm-uicc.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-tnm-uicc"
      },
      "name" : "MII CS Onkologie TNM UICC",
      "description" : "Codes für TNM UICC Ausprägungen. HINWEIS zur Auflagen-Versionierung: Dieses CodeSystem ist bewusst eine auflagen-übergreifende Union (8. Auflage + Ergänzungen der 9. Auflage, z.B. T1b3/M1c1/M1c2); die verwendete Auflage wird als eigenes Datenelement (TNM-Version, oBDS 8.2) dokumentiert. Eine formal strengere, auflagen-versionierte Validierung (je Auflage ein CS-/VS-Stand nach dem Muster der ATC-/ICD-O-Jahresversionen) ist als spätere Ausbaustufe vorgesehen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-tnm-version.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-tnm-version"
      },
      "name" : "MII CS Onkologie TNM Version",
      "description" : "Codes für TNM Version/Auflage nach welcher Version des TNM klassifiziert wird.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-tod.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-tod"
      },
      "name" : "MII CS Onkologie Tod",
      "description" : "oBDS-spezifisches Codesystem tumorbedingter Tod",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-verlauf-fernmetastasen.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-verlauf-fernmetastasen"
      },
      "name" : "MII CS Onkologie Verlauf Fernmetastasen",
      "description" : "oBDS-spezifisches Codesystem für die Beurteilung von Fernmetastasen im Behandlungsverlauf",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-verlauf-gesamtbeurteilung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung"
      },
      "name" : "MII CS Onkologie Verlauf Gesamtbeurteilung",
      "description" : "oBDS-spezifisches Codesystem für die Gesamtbeurteilung im Behandlungsverlauf",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-verlauf-lymphknoten.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-verlauf-lymphknoten"
      },
      "name" : "MII CS Onkologie Verlauf Lymphknoten",
      "description" : "oBDS-spezifisches Codesystem für die Beurteilung von Lymphknoten im Behandlungsverlauf",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-onko-verlauf-primaertumor.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-onko-verlauf-primaertumor"
      },
      "name" : "MII CS Onkologie Verlauf Primärtumor",
      "description" : "oBDS-spezifisches Codesystem für die Beurteilung des Primärtumors im Behandlungsverlauf",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3"
      },
      "name" : "MII EX Onko Histology Morphology Behavior ICDO3",
      "description" : "Extension zur Erfassung von ICDO3 da Morphology nicht als Condition.code. Orientiert sich an mcode-stu3.0.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-operation-intention.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-operation-intention"
      },
      "name" : "MII EX Onko Operation Intention",
      "description" : "Intention der Operation im Rahmen des oBDS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-operation-urgency.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-operation-urgency"
      },
      "name" : "MII EX Onko Operation Urgency",
      "description" : "Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost"
      },
      "name" : "MII EX Onko Strahlentherapie Bestrahlung Boost",
      "description" : "Strahlentherapie: Boost einer Bestrahlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis"
      },
      "name" : "MII EX Onko Strahlentherapie Bestrahlung Einzeldosis",
      "description" : "Strahlentherapie: Einzeldosis einer Bestrahlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis"
      },
      "name" : "MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis",
      "description" : "Strahlentherapie: Gesamtdosis einer Bestrahlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation"
      },
      "name" : "MII EX Onko Strahlentherapie Bestrahlung Seitenlokalisation",
      "description" : "Strahlentherapie: Seitenlokalisation einer Bestrahlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-strahlentherapie-intention.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-strahlentherapie-intention"
      },
      "name" : "MII EX Onko Strahlentherapie Intention",
      "description" : "Strahlentherapie Intention",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-strahlentherapie-stellungzurop.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-strahlentherapie-stellungzurop"
      },
      "name" : "MII EX Onko Strahlentherapie Stellung zur OP",
      "description" : "Strahlentherapie Stellung zur OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-systemische-therapie-intention.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-systemische-therapie-intention"
      },
      "name" : "MII EX Onko Systemische Therapie Intention",
      "description" : "Systemische Therapie Intention",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop"
      },
      "name" : "MII EX Onko Systemische Therapie Stellung zur OP",
      "description" : "Systemische Therapie Stellung zur OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-nebenwirkung-ctcae-version.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-nebenwirkung-ctcae-version"
      },
      "name" : "MII EX Onkologie Nebenwirkung CTCAE-Version",
      "description" : "Version des CTCAE-Katalogs, aus dem die Nebenwirkungsart stammt (oBDS 15.3). Nicht zu verwechseln mit der MedDRA-Version in event.coding[meddra].version: Die CTCAE fuehrt ihre Terme mit MedDRA-Codes, CTCAE v4.03 basiert auf MedDRA v12.0.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-tnm-a-praefix.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-tnm-a-praefix"
      },
      "name" : "MII EX Onkologie TNM a-Präfix",
      "description" : "Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung erst im Rahmen einer Autopsie erfolgte (UICC a-Präfix). Als modifierExtension zu verwenden, da das a-Präfix die Interpretation des Kategorie-Wertes verändert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-tnm-cp-praefix.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-tnm-cp-praefix"
      },
      "name" : "MII EX Onkologie TNM c/p Präfix",
      "description" : "Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-tnm-itc-suffix.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-tnm-itc-suffix"
      },
      "name" : "MII EX Onkologie TNM ITC Suffix",
      "description" : "Die Extension verleiht TNM N- und M-Kategorien isolierte Tumorzellen (ITC) Suffixe.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-tnm-r-praefix.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-tnm-r-praefix"
      },
      "name" : "MII EX Onkologie TNM r-Präfix",
      "description" : "Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung zur Beurteilung eines Rezidivs erfolgte (UICC r-Präfix, z. B. rcT2). Als modifierExtension zu verwenden, da das r-Präfix die Interpretation des Kategorie-Wertes verändert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-tnm-sn-suffix.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-tnm-sn-suffix"
      },
      "name" : "MII EX Onkologie TNM SN Suffix",
      "description" : "Die Extension verleiht der TNM N-Kategorie das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-tnm-y-praefix.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-tnm-y-praefix"
      },
      "name" : "MII EX Onkologie TNM y-Präfix",
      "description" : "Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung während oder nach initialer multimodaler Therapie erfolgte (UICC y-Präfix, z. B. ycT2, ypN0). Als modifierExtension zu verwenden, da das y-Präfix die Interpretation des Kategorie-Wertes verändert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-onko-transformation-von.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-onko-transformation-von"
      },
      "name" : "MII EX Onkologie Transformation von",
      "description" : "Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist — für Fälle, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen) und von der CUP-Auflösung nach der Best-Of-Regel, bei der dieselbe Entität aktualisiert wird (keine zweite Ressource).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-kim-musterperson-synthesized.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-kim-musterperson-synthesized"
      },
      "name" : "MII EXA Onko Kim Musterperson — Multi-CarePlan TNM Synthese",
      "description" : "Vollständige Multi-Tumorkonferenz-Demo am Beispiel Kim Musterperson (Ovarial-CA, Intervalldebulking). Drei Source-Klassifikationen über die Zeit (Diagnose 2021-06-22, post-Chemo 2021-09-15, post-OP 2021-10-15), vier Tumorkonferenzen mit jeweils eigener synthetisierter TNM-Stage, Provenance pinnt Algorithmus auf mii-lib-onko-synthesize-tnm v1.0.0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-krk-abstand-circumferelle-resektionsebene"
      },
      "name" : "MII EXA Onko KRK Abstand Circumferelle Resektionsebene",
      "description" : "Beispiel für den minimalen Abstand des Tumorrandes zur circumferellen Dissektionslinie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-krk-abstand-mesorektale-fascie"
      },
      "name" : "MII EXA Onko KRK Abstand Mesorektale Fascie",
      "description" : "Beispiel für den Abstand des Tumors zur mesorektalen Faszie bei MRT-Untersuchung",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-mrt-mesorektale-faszie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-krk-abstand-resektionsrand-aboral"
      },
      "name" : "MII EXA Onko KRK Abstand Resektionsrand Aboral",
      "description" : "Beispiel für den minimalen Abstand des Tumorrandes zur aboralen Dissektionslinie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-aboral"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie"
      },
      "name" : "MII EXA Onko KRK Abstand Tumor Anokutanlinie",
      "description" : "Beispiel für den Abstand des Tumorunterrandes zur Anokutanlinie beim Rektumkarzinom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-anokutan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-krk-anastomoseninsuffizienz.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-krk-anastomoseninsuffizienz"
      },
      "name" : "MII EXA Onko KRK Anastomoseninsuffizienz",
      "description" : "Beispiel für die Bewertung einer Anastomoseninsuffizienz beim Kolorektalen Karzinom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-anastomoseninsuffizienz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-krk-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-krk-bundle"
      },
      "name" : "MII EXA Onko KRK Bundle",
      "description" : "Beispiel-Bundle für Kolorektales Karzinom mit allen spezifischen Profilen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-krk-operation.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-krk-operation"
      },
      "name" : "MII EXA Onko KRK Operation",
      "description" : "Beispiel für eine Operation beim Kolorektalen Karzinom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-mii-exa-onko-krk-specimen.html"
      }],
      "reference" : {
        "reference" : "Specimen/mii-exa-onko-krk-specimen"
      },
      "name" : "MII EXA Onko KRK Specimen",
      "description" : "Beispiel für ein Histologie-Specimen beim Kolorektalen Karzinom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-krk-stoma-markierung.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-krk-stoma-markierung"
      },
      "name" : "MII EXA Onko KRK Stoma-Markierung",
      "description" : "Beispiel für eine präoperative Stoma-Markierung beim Kolorektalen Karzinom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-mamma-example-bundle-1.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-mamma-example-bundle-1"
      },
      "name" : "MII EXA Onko Mamma Bundle",
      "description" : "Beispiel-Bundle für Mamma-Karzinom mit allen spezifischen Profilen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-mamma-her2neu-status.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-mamma-her2neu-status"
      },
      "name" : "MII EXA Onko Mamma Her2neu Status",
      "description" : "Beispiel für Her2neu Status bei Mammakarzinom - HER2-positiv (IHC 3+)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-her2neu-status"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-melanom-breslow-tiefe.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-melanom-breslow-tiefe"
      },
      "name" : "MII EXA Onko Melanom Breslow Tiefe",
      "description" : "Beispiel für die Messung der Breslow-Tumordicke beim Malignen Melanom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-breslow-tiefe"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-melanom-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-melanom-bundle"
      },
      "name" : "MII EXA Onko Melanom Bundle",
      "description" : "Beispiel-Bundle für Malignes Melanom mit allen spezifischen Profilen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-melanom-ldh.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-melanom-ldh"
      },
      "name" : "MII EXA Onko Melanom LDH",
      "description" : "Beispiel für einen LDH Laborwert beim Malignen Melanom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ldh"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-melanom-sicherheitsabstand.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-melanom-sicherheitsabstand"
      },
      "name" : "MII EXA Onko Melanom Sicherheitsabstand",
      "description" : "Beispiel für die Messung des Sicherheitsabstands beim Malignen Melanom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-melanom-ulzeration.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-melanom-ulzeration"
      },
      "name" : "MII EXA Onko Melanom Ulzeration",
      "description" : "Beispiel für die Bestimmung der Ulzeration beim Malignen Melanom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ulzeration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-prostata-example-bundle-1.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-prostata-example-bundle-1"
      },
      "name" : "MII EXA Onko Prostata Bundle",
      "description" : "Beispiel-Bundle für Prostata-Karzinom mit allen spezifischen Profilen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-prostata-surgery-2.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-prostata-surgery-2"
      },
      "name" : "MII EXA Onko Prostata Operation",
      "description" : "Beispiel für eine Prostatektomie in der Onkologie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-tnm-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-tnm-bundle"
      },
      "name" : "MII EXA Onko TNM Bundle (cT2 cN3 cM0)",
      "description" : "Beispiel-Bundle: ein TNM-Staging-Ereignis (cT2 cN3 cM0, UICC IIIB), zusammengehalten durch die TNM-Klassifikation als hasMember-Grouper. Demonstriert, wie T und N eindeutig demselben Staging zugeordnet werden können.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-tnm-bundle-synthesized.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-tnm-bundle-synthesized"
      },
      "name" : "MII EXA Onko TNM Bundle (synthesized stage at Tumorkonferenz)",
      "description" : "Beispiel-Bundle: zwei Meldungs-bezogene TNM-Klassifikationen (Diagnose-Meldung cT3cN2cM0, OP-Meldung pT2pN1) plus eine synthetisierte Klassifikation pT2 pN1 cM0 (Stadium IIIA) zum Zeitpunkt der postoperativen Tumorkonferenz. Die Tumorkonferenz verlinkt die synthetisierte Klassifikation via supportingInfo.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-tnm-bundle-legacy.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-tnm-bundle-legacy"
      },
      "name" : "MII EXA Onko TNM Bundle Legacy (cT2 cN3 cM0, UICC-only)",
      "description" : "Beispiel-Bundle in der Legacy-Form (vor SNOMED-CT-Dual-Coding): ein TNM-Staging-Ereignis (cT2 cN3 cM0, UICC IIIB), zusammengehalten durch die TNM-Klassifikation als hasMember-Grouper. Demonstriert, dass die Grouper-zentrierte Suchlogik unabhängig vom Wertcoding funktioniert.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc"
      },
      "name" : "MII EXA Onkologie Bestrahlung PCI Ganzhirn (Zielgebiet 1.1)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-onko-cup-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-onko-cup-bundle"
      },
      "name" : "MII EXA Onkologie CUP Bundle (cTX cNX cM1)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-diagnose-meningeom-benigne.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-diagnose-meningeom-benigne"
      },
      "name" : "MII EXA Onkologie Diagnose benignes Meningeom (Ursprungsdiagnose)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-cup-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-cup-diagnose"
      },
      "name" : "MII EXA Onkologie Diagnose CUP (C80.0)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-cup-diagnose-aufgeloest.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-cup-diagnose-aufgeloest"
      },
      "name" : "MII EXA Onkologie Diagnose CUP aufgelöst → Pankreaskarzinom (Zustand nach Update derselben Ressource)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-diagnose-meningeom-maligne-transformation.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-diagnose-meningeom-maligne-transformation"
      },
      "name" : "MII EXA Onkologie Diagnose malignes Meningeom (Transformation /0 → /3)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-diagnose-mds.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-diagnose-mds"
      },
      "name" : "MII EXA Onkologie Diagnose MDS (Ursprungsdiagnose)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-diagnose-angiosarkom-nach-radiatio.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-diagnose-angiosarkom-nach-radiatio"
      },
      "name" : "MII EXA Onkologie Diagnose radiogenes Angiosarkom nach Strahlentherapie (dueTo)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-diagnose-aml-transformation.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-diagnose-aml-transformation"
      },
      "name" : "MII EXA Onkologie Diagnose sekundäre AML (Transformation aus MDS)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-diagnose-taml-nach-chemo.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-diagnose-taml-nach-chemo"
      },
      "name" : "MII EXA Onkologie Diagnose t-AML nach Chemotherapie (dueTo)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-mii-exa-onko-nebenwirkung-anaemie-grad3.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/mii-exa-onko-nebenwirkung-anaemie-grad3"
      },
      "name" : "MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3",
      "description" : "Anämie CTCAE Grad 3 (MedDRA 10002272, deutsches Display aus dem Supplement) unter systemischer Therapie — mit SNOMED-CT-Zweitkodierung aus der ConceptMap.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-mii-exa-onko-nebenwirkung-crs-grad4.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/mii-exa-onko-nebenwirkung-crs-grad4"
      },
      "name" : "MII EXA Onkologie Nebenwirkung Cytokine-Release-Syndrom CTCAE Grad 4",
      "description" : "Cytokine-Release-Syndrom CTCAE Grad 4 (MedDRA 10052015) unter medikamentöser systemischer Therapie — SNOMED-Zweitkodierung gemäß ConceptMap gegen die im Expansions-Manifest gepinnte SNOMED-Version (International 20250701).",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-mii-exa-onko-nebenwirkung-rektale-mukositis-grad2.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/mii-exa-onko-nebenwirkung-rektale-mukositis-grad2"
      },
      "name" : "MII EXA Onkologie Nebenwirkung Rektale Mukositis CTCAE Grad 2 (MedDRA-only)",
      "description" : "Rektale Mukositis CTCAE Grad 2 (MedDRA 10063190) nach Strahlentherapie — Beispiel für einen Term OHNE SNOMED-CT-Äquivalent (in der ConceptMap als unmatched geführt): Die Kodierung bleibt MedDRA-only, der optionale snomed-Slice entfällt.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-mii-exa-onko-prostata-specimen-stanze.html"
      }],
      "reference" : {
        "reference" : "Specimen/mii-exa-onko-prostata-specimen-stanze"
      },
      "name" : "MII EXA Onkologie Prostata Stanzbiopsie Specimen",
      "description" : "Gewebeprobe einer Prostata-Stanzbiopsie, auf die sich die Befunde zum Karzinombefall der Stanze beziehen.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-pci-sclc.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-pci-sclc"
      },
      "name" : "MII EXA Onkologie Strahlentherapie PCI bei SCLC (prophylaktisch)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-cup-tnm-klassifikation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-cup-tnm-klassifikation"
      },
      "name" : "MII EXA Onkologie TNM Klassifikation CUP (cTX cNX cM1, ohne Stadium)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tumormarker-cea.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tumormarker-cea"
      },
      "name" : "MII EXA Onkologie Tumormarker CEA",
      "description" : "CEA-Bestimmung im Rahmen einer onkologischen Erkrankung. Zeigt das Identifier-Muster <LOINC>_<Meldungs-ID> für Registerdaten ohne Labor-Auftragsnummer sowie den Diagnosebezug über focus.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-mvgenomseq-onkologie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-mvgenomseq-onkologie"
      },
      "name" : "MII LM Modellvorhaben Genomsequenzierung Onkologie",
      "description" : "MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-onko.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-onko"
      },
      "name" : "MII LM Onkologie",
      "description" : "MII LogicalModel Modul Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-onko-organspezifische-zusatzmodule"
      },
      "name" : "MII LM Onkologie Organspezifische Zusatzmodule",
      "description" : "Logisches Modell für die organspezifischen Zusatzmodule des oBDS. Feldnummern und Struktur folgen dem amtlichen oBDS-XML-Schema (oBDS v3.0.5, Modul_Mamma/Darm/Prostata/Malignes_Melanom/Allgemein) sowie dem Feldkatalog auf basisdatensatz.de.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Library"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Library-mii-lib-onko-synthesize-tnm.html"
      }],
      "reference" : {
        "reference" : "Library/mii-lib-onko-synthesize-tnm"
      },
      "name" : "MII Onkologie TNM-Synthese Algorithmus",
      "description" : "Deterministischer Algorithmus zur Synthese einer TNM-Klassifikation aus mehreren Meldungs-bezogenen Quell-Klassifikationen. Implementiert UICC General Rules nach Manual der Krebsregistrierung Kap. 6 (Stegmaier 2019). Drei Phasen: primary (kein y/r), post-neoadjuvant (y), recurrence (r). Symbol-Lesen aus hasMember (mii-pr-onko-tnm-{y,r,a,m}-symbol). Pre-therapeutic intentional NICHT Phase: nicht aus TNM-Daten ableitbar (Biopsien können pTNM ergeben), gehört in Workflow-Kontext (Tumorkonferenz.category=praeth).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-melanom-exzision.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-melanom-exzision"
      },
      "name" : "MII PR Onko Melanom Exzision",
      "description" : "Melanom-spezifische Exzision. Dieses Profil spezialisiert die allgemeine onkologische Operation für Melanom-Exzisionen mit einem präferierten ValueSet basierend auf SNOMED CT Codes für Hautexzisionen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostata-operation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostata-operation"
      },
      "name" : "MII PR Onko Prostata Operation",
      "description" : "Prostata-spezifische Operation. Dieses Profil spezialisiert die allgemeine onkologische Operation für Prostata-spezifische Eingriffe mit einem required Binding zu einem ValueSet basierend auf SNOMED CT 118877007 und dessen Kindern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-krk-abstand-aboral.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-krk-abstand-aboral"
      },
      "name" : "MII PR Onkologie Abstand Aboral",
      "description" : "Dieses Profil beschreibt den minimalen Abstand des Tumorrandes zur aboralen Dissektionlinie im Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-krk-abstand-anokutan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-krk-abstand-anokutan"
      },
      "name" : "MII PR Onkologie Abstand Anokutan",
      "description" : "Dieses Profil beschreibt den Abstand des Tumorunterrandes zur Anokutanlinie im Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene"
      },
      "name" : "MII PR Onkologie Abstand Circumferelle Resektionsebene",
      "description" : "Dieses Profil beschreibt den minimalen Abstand des Tumorrandes zur circumferellen Dissektionlinie beim Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog"
      },
      "name" : "MII PR Onkologie Allgemeiner Leistungszustand ECOG",
      "description" : "OBDS Beschreibung des allgemeines Leistungszustandes nach ECOG",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky"
      },
      "name" : "MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky",
      "description" : "OBDS Beschreibung des allgemeines Leistungszustandes nach Karnofsky",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-anzahl-befallene-lymphknoten"
      },
      "name" : "MII PR Onkologie Anzahl der befallenen Lymphknoten",
      "description" : "Histologie: Anzahl der befallenen Lymphknoten. Gibt an, wie viele Lymphknoten befallen sind (einschließlich Sentinel).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-anzahl-befallene-sentinel-lymphknoten"
      },
      "name" : "MII PR Onkologie Anzahl der befallenen Sentinel-Lymphknoten",
      "description" : "Histologie: Anzahl der befallenen Sentinel-Lymphknoten. Gibt an, wie viele Sentinel-Lymphknoten befallen sind.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-anzahl-untersuchte-lymphknoten"
      },
      "name" : "MII PR Onkologie Anzahl der untersuchten Lymphknoten",
      "description" : "Histologie: Anzahl der untersuchten Lymphknoten. Gibt an, wie viele Lymphknoten untersucht wurden (einschließlich Sentinel).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten"
      },
      "name" : "MII PR Onkologie Anzahl der untersuchten Sentinel-Lymphknoten",
      "description" : "Histologie: Anzahl der untersuchten Sentinel-Lymphknoten. Gibt an, wie viele Sentinel-Lymphknoten untersucht wurden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-asa-klassifikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-asa-klassifikation"
      },
      "name" : "MII PR Onkologie ASA-Klassifikation",
      "description" : "Dieses Profil beschreibt die ASA-Klassifikation (American Society of Anesthesiologists Physical Status Classification) in der Onkologie. Die ASA-Klassifikation dient primär der präoperativen Risikobewertung, kann aber auch als Komorbidätsindex für systemische Therapieentscheidungen verwendet werden. Ursprünglich aus oBDS KR9 (Kolorektales Karzinom), nun generalisiert für alle onkologischen Indikationen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-befund.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-befund"
      },
      "name" : "MII PR Onkologie Befund",
      "description" : "Histologie: Befund. Vollständiger Befundbericht des Pathologen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostate-ca-befall-stanze"
      },
      "name" : "MII PR Onkologie Ca-Befall Stanze",
      "description" : "Dieses Profil beschreibt den prozentualen Befall der am stärksten befallenen Stanze einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostate-clavien-dindo.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostate-clavien-dindo"
      },
      "name" : "MII PR Onkologie Clavien Dindo",
      "description" : "Dieses Profil beschreibt den Clavien-Dindo-Score für die Prostatektomie in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-diagnose-primaertumor.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-diagnose-primaertumor"
      },
      "name" : "MII PR Onkologie Diagnose Primärtumor",
      "description" : "Dieses Profil beschreibt die Diagnose des Primärtumors (bzw. der primären hämatologisch-myeloneoplastischen Erkrankung) und basiert auf dem MII KDS Modul Diagnose.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose"
      },
      "name" : "MII PR Onkologie Evidenz Diagnose Primärtumor",
      "description" : "Dieses Profil beschreibt eine Liste, die alle Observationen und Berichte enthält, die für eine Erstdiagnostik relevant waren.  (synchrone Observationen im Sinne der Krebsregister)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-fernmetastasen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-fernmetastasen"
      },
      "name" : "MII PR Onkologie Fernmetastasen",
      "description" : "OBDS Beschreibung von Fernmetastasen (Lokalisation und Datum)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"
      },
      "name" : "MII PR Onkologie Frühere Tumorerkrankung",
      "description" : "Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-genetische-variante.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-genetische-variante"
      },
      "name" : "MII PR Onkologie Genetische Variante",
      "description" : "Genetische Variante wie im oBDS beschrieben",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-grading.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-grading"
      },
      "name" : "MII PR Onkologie Grading",
      "description" : "Histologie: Tumor Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-mamma-her2neu-status.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-mamma-her2neu-status"
      },
      "name" : "MII PR Onkologie Her2neu Status",
      "description" : "Dieses Profil beschreibt den Her2neu Status einer pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-histologie-icdo3.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-histologie-icdo3"
      },
      "name" : "MII PR Onkologie Histologie ICD-O-3",
      "description" : "Histologie-Kodierung nach ICD-0 für die Verwendung von Folgediagnostik. Bei der histologischen Beurteilung des Primärtumors sind die histologischen Informationen direkt über die Condition-Ressource abzubilden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-krk-anastomoseninsuffizienz"
      },
      "name" : "MII PR Onkologie KRK Anastomoseninsuffizienz",
      "description" : "Dieses Profil beschreibt die Bewertung der Anastomoseninsuffizienz nach einer Operation beim Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-krk-mrt-mesorektale-faszie"
      },
      "name" : "MII PR Onkologie KRK MRT/CT Abstand Mesorektale Faszie",
      "description" : "Dieses Profil beschreibt den Abstand des Tumors zur mesorektalen Faszie bei MRT oder Dünnschicht-CT Untersuchung beim Kolorektalen Karzinom (oBDS KR5)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-krk-stoma-markierung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-krk-stoma-markierung"
      },
      "name" : "MII PR Onkologie KRK Stoma-Markierung",
      "description" : "Dieses Profil beschreibt die präoperative Markierung der geplanten Stoma-Position beim Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-mamma-operation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-mamma-operation"
      },
      "name" : "MII PR Onkologie Mamma Operation",
      "description" : "Das vorliegende Profil beschreibt operative Eingriffe an der Brust im Rahmen der Mammakarzinom-Behandlung. Es erweitert das allgemeine Operationsprofil um Mamma-spezifische Aspekte und ermöglicht die detaillierte Erfassung von brustchirurgischen Verfahren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-melanom-breslow-tiefe"
      },
      "name" : "MII PR Onkologie Melanom Breslow Tiefe",
      "description" : "Dieses Profil beschreibt die Breslow-Tumordicke beim Malignen Melanom der Haut",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-melanom-ldh.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-melanom-ldh"
      },
      "name" : "MII PR Onkologie Melanom LDH",
      "description" : "Dieses Profil beschreibt die Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand"
      },
      "name" : "MII PR Onkologie Melanom Sicherheitsabstand",
      "description" : "Dieses Profil beschreibt den minimalen Sicherheitsabstand zum Primärtumor beim Malignen Melanom basierend auf oBDS Feld MM1. Bei nicht beurteilbaren Fällen (oBDS Wert -1) wird dataAbsentReason verwendet statt valueQuantity.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-melanom-ulzeration.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-melanom-ulzeration"
      },
      "name" : "MII PR Onkologie Melanom Ulzeration",
      "description" : "Dieses Profil beschreibt die Ulzeration beim Malignen Melanom der Haut",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-mamma-menopause-status.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-mamma-menopause-status"
      },
      "name" : "MII PR Onkologie Menopausenstatus Mamma",
      "description" : "Dieses Profil beschreibt den (prätherapeutischen) Menopausenstatus einer Patientin mit Mamma-Karzinom in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"
      },
      "name" : "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie",
      "description" : "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-operation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-operation"
      },
      "name" : "MII PR Onkologie Operation",
      "description" : "Operation nach OPS inklusive Intention, Datum und Komplikationen:",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen"
      },
      "name" : "MII PR Onkologie Prostata Anzahl positiver Stanzen",
      "description" : "Dieses Profil beschreibt die Anzahl positiver Stanzen einer Prostata-Biopsie in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen"
      },
      "name" : "MII PR Onkologie Prostata Anzahl Stanzen",
      "description" : "Dieses Profil beschreibt die Anzahl Stanzen einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostate-gleason-grade-group"
      },
      "name" : "MII PR Onkologie Prostata Gleason Grade Group",
      "description" : "Dieses Profil beschreibt einen Gleasonscore in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostate-gleason-patterns.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
      },
      "name" : "MII PR Onkologie Prostata Gleason Pattern",
      "description" : "Dieses Profil beschreibt ein Gleason Pattern in der Onkologie. Es wird für das primäre, das sekundäre und das tertiäre Pattern gleichermaßen verwendet; welches Pattern gemeint ist, ergibt sich aus Observation.code.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostate-gleason-score-gesamt"
      },
      "name" : "MII PR Onkologie Prostata Gleason Score Gesamt",
      "description" : "Dieses Profil beschreibt den Gleason-Gesamtscore als Summe aus primärem und sekundärem Pattern. Es wird verwendet, wenn im Befund nur das Score-Ergebnis dokumentiert ist und keine Aufschlüsselung in Primär-/Sekundär-Pattern und keine ISUP Grade Group vorliegt. Für die detaillierte Dokumentation mit Grade Group ist MII_PR_Onko_Prostata_Gleason_Grade_Group zu verwenden, für die einzelnen Patterns MII_PR_Onko_Prostata_Gleason_Pattern.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-krk-operation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-krk-operation"
      },
      "name" : "MII PR Onkologie Präoperative Drahtmarkierung Mamma",
      "description" : "Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels  der Brust. Dabei können verschiedene Methoden gewählt werden. Die",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-mamma-sozialdienst.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-mamma-sozialdienst"
      },
      "name" : "MII PR Onkologie Präoperative Drahtmarkierung Mamma",
      "description" : "Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels  der Brust. Dabei können verschiedene Methoden gewählt werden. Die",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-mamma-praeoperative-markierung"
      },
      "name" : "MII PR Onkologie Präoperative Markierung Mamma",
      "description" : "Das vorliegende Profil beschreibt eine präoperativ durchgeführte Markierung von Tumorgewebe in der Brust. Dabei können verschiedene Markierungsmodalitäten gewählt werden, wie z.B. Drahtmarkierungen, Seed-Markierungen oder andere Lokalisationstechniken.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-prostate-psa.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-prostate-psa"
      },
      "name" : "MII PR Onkologie PSA-Wert",
      "description" : "Dieses Profil beschreibt den PSA-Wert sowohl beim Monitoring als auch in der Verlaufskontrolle in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-residualstatus.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-residualstatus"
      },
      "name" : "MII PR Onkologie Residualstatus",
      "description" : "Umfang eines Residualtumors nach einer Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-estrogen"
      },
      "name" : "MII PR Onkologie Rezeptorstatus Estrogen",
      "description" : "Dieses Profil beschreibt den diagnostischen Estrogen-Rezeptorstatus eines pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-progesteron"
      },
      "name" : "MII PR Onkologie Rezeptorstatus Progesteron",
      "description" : "Dieses Profil beschreibt den diagnostischen Progesteron-Rezeptorstatus eines pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-specimen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-specimen"
      },
      "name" : "MII PR Onkologie Specimen",
      "description" : "Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-krk-specimen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-krk-specimen"
      },
      "name" : "MII PR Onkologie Specimen",
      "description" : "Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"
      },
      "name" : "MII PR Onkologie Strahlentherapie",
      "description" : "Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-strahlentherapie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-strahlentherapie"
      },
      "name" : "MII PR Onkologie Strahlentherapie",
      "description" : "Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin"
      },
      "name" : "MII PR Onkologie Strahlentherapie Nuklearmedizin",
      "description" : "Strahlentherapie. Dieses Profil beschreibt eine Nuklearmedizinische  in der Onkologie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-studienteilnahme.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-studienteilnahme"
      },
      "name" : "MII PR Onkologie Studienteilnahme",
      "description" : "Dieses Profil beschreibt Studienteilnahmen in der Onkologie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-systemische-therapie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-systemische-therapie"
      },
      "name" : "MII PR Onkologie Systemische Therapie",
      "description" : "Systemische Therapie. Dieses Profil beschreibt eine Systemische Therapie für den oBDS. Da die Granularität der Anforderungen des oBDS nicht deckungsgleich mit den FHIR-Profilen für Medikation sind, wurde die Systemische Therapie als Prozedur umgesetzt",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
      },
      "name" : "MII PR Onkologie Systemische Therapie Medikation",
      "description" : "Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden.  Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie"
      },
      "name" : "MII PR Onkologie Therapieempfehlung Kombinationstherapie",
      "description" : "Dieses Profil beschreibt eine Empfehlung für eine Kombinationstherapie im Rahmen der Tumorkonferenz",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
      },
      "name" : "MII PR Onkologie Therapieempfehlung Medikation",
      "description" : "Dieses Profil beschreibt eine Medikations-Tumorempfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-therapieempfehlung-operation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-therapieempfehlung-operation"
      },
      "name" : "MII PR Onkologie Therapieempfehlung Operation",
      "description" : "Dieses Profil beschreibt eine Empfehlung für eine Operation im Rahmen der Tumorkonferenz",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-a-symbol.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-a-symbol"
      },
      "name" : "MII PR Onkologie TNM a-Symbol",
      "description" : "DEPRECATED seit v2027: Die eigenständigen Symbol-Profile sind abgelöst — das a-Symbol wird als modifierExtension an den T-/N-/M-Kategorien erfasst (oBDS 8.3–8.5). Dieses Profil bleibt zum Lesen von Bestandsdaten definiert. — TNM-Klassifikation: TNM a-Symbol. Gibt an, ob die Klassifikation aus Anlass einer Autopsie erfolgte.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-l-kategorie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-l-kategorie"
      },
      "name" : "MII PR Onkologie TNM L-Kategorie",
      "description" : "TNM-Klassifikation: TNM L-Kategorie. Lymphgefäßinvasion.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-m-kategorie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-m-kategorie"
      },
      "name" : "MII PR Onkologie TNM M-Kategorie",
      "description" : "TNM-Klassifikation: TNM M-Kategorie. Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-m-symbol.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-m-symbol"
      },
      "name" : "MII PR Onkologie TNM m-Symbol",
      "description" : "DEPRECATED seit v2027: Die Angabe multipler Primärtumoren (UICC-m-Suffix, oBDS 8.10) erfolgt jetzt als Component multipleTumoren an der T-Kategorie (mii-pr-onko-tnm-t-kategorie) — das Suffix ist T-exklusiv und gehört an die Kategorie, nicht als eigene Observation daneben. Bestandsdaten bleiben lesbar; für Neuimplementierungen ist die Component zu verwenden. Ursprüngliche Beschreibung: TNM-Klassifikation: TNM m-Symbol. Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-n-kategorie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-n-kategorie"
      },
      "name" : "MII PR Onkologie TNM N-Kategorie",
      "description" : "TNM-Klassifikation: TNM N-Kategorie. Ausbreitung von regionären Lymphknotenmetastasen, erfolgt gemäß Tumorentität nach TNM.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-pn-kategorie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-pn-kategorie"
      },
      "name" : "MII PR Onkologie TNM Pn-Kategorie",
      "description" : "TNM-Klassifikation: TNM Pn-Kategorie. Perineuralinvasion.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-r-symbol.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-r-symbol"
      },
      "name" : "MII PR Onkologie TNM r-Symbol",
      "description" : "DEPRECATED seit v2027: Die eigenständigen Symbol-Profile sind abgelöst — das r-Symbol wird als modifierExtension an den T-/N-/M-Kategorien erfasst (oBDS 8.3–8.5). Dieses Profil bleibt zum Lesen von Bestandsdaten definiert. — TNM-Klassifikation: TNM r-Symbol. Gibt an, ob die Klassifikation ein Rezidiv beurteilt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-s-kategorie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-s-kategorie"
      },
      "name" : "MII PR Onkologie TNM S-Kategorie",
      "description" : "TNM-Klassifikation: TNM S-Kategorie. Serumtumormarker.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-t-kategorie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-t-kategorie"
      },
      "name" : "MII PR Onkologie TNM T-Kategorie",
      "description" : "TNM-Klassifikation: TNM T-Kategorie. Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-v-kategorie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-v-kategorie"
      },
      "name" : "MII PR Onkologie TNM V-Kategorie",
      "description" : "TNM-Klassifikation: TNM V-Kategorie. Veneninvasion.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-y-symbol.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-y-symbol"
      },
      "name" : "MII PR Onkologie TNM y-Symbol",
      "description" : "DEPRECATED seit v2027: Die eigenständigen Symbol-Profile sind abgelöst — das y-Symbol wird als modifierExtension an den T-/N-/M-Kategorien erfasst (oBDS 8.3–8.5). Dieses Profil bleibt zum Lesen von Bestandsdaten definiert. — TNM-Klassifikation: TNM y-Symbol. Gibt an, ob die Klassifikation während oder nach initialer multimodaler Therapie erfolgte.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-klassifikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-klassifikation"
      },
      "name" : "MII PR Onkologie TNM-Klassifikation",
      "description" : "TNM-Klassifikation: Grouper-Profil für Komponenten der TNM-Klassifikation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert"
      },
      "name" : "MII PR Onkologie TNM-Klassifikation (synthetisiert)",
      "description" : "Synthetisierte TNM-Klassifikation: Aggregat aus mehreren Meldungs-bezogenen TNM-Klassifikationen, das den Stand zum Entscheidungszeitpunkt (z. B. Tumorkonferenz) zusammenfasst. UICC-Regeln zur Stage-Auswahl (pTNM > cTNM, jüngste Bewertung innerhalb derselben Krankheitsphase, r-Präfix als Bruchpunkt) werden vom erzeugenden System angewendet. Provenienz wird über derivedFrom auf die Quell-Klassifikationen abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tod.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tod"
      },
      "name" : "MII PR Onkologie Tod",
      "description" : "Tumorbedingter Tod",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tumorgroesse.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tumorgroesse"
      },
      "name" : "MII PR Onkologie Tumorgröße",
      "description" : "Tumorgröße in mm. Gibt die Größe des Tumors in der größten Dimension an. Basierend auf dem oBDS-Modul Mamma.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tumorkonferenz.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tumorkonferenz"
      },
      "name" : "MII PR Onkologie Tumorkonferenz",
      "description" : "Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-tumormarker.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-tumormarker"
      },
      "name" : "MII PR Onkologie Tumormarker",
      "description" : "Tumormarker-Bestimmung im Rahmen einer onkologischen Erkrankung. Das Profil leitet vom Laboruntersuchungs-Profil des KDS-Moduls Laborbefund ab und schraenkt den LOINC-Code auf die kuratierte Tumormarker-Liste ein (extensible). Fachlicher Hintergrund und die Zuordnung Marker zu zulaessiger ICD-O-Morphologie nach ENCR Table 4: siehe IG-Seite Tumormarker.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-verlauf.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-verlauf"
      },
      "name" : "MII PR Onkologie Verlauf",
      "description" : "Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-onko-weitere-klassifikationen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-onko-weitere-klassifikationen"
      },
      "name" : "MII PR Onkologie Weitere Klassifikationen",
      "description" : "Weitere Tumor Staging Klassifikation neben TMN (Hämatoonkologische und sonstige Klassifikationen)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-weitere-klassifikationen.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-weitere-klassifikationen"
      },
      "name" : "MII Value Set Onkologie - Weitere Klassifikationen",
      "description" : "Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-weitere-klassifikationen-auspraegungen"
      },
      "name" : "MII Value Set Onkologie - Weitere Klassifikationen - Auspraegungen",
      "description" : "Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-melanom-exzision-snomedct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-melanom-exzision-snomedct"
      },
      "name" : "MII VS Onko Melanom Exzision SNOMED CT",
      "description" : "Value Set für Melanom-spezifische Exzisionen basierend auf SNOMED CT. Enthält den Code für Melanom-Exzision. Weitere anatomische Details können über bodySite kodiert werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-operation-snomedct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-operation-snomedct"
      },
      "name" : "MII VS Onko Prostata Operation SNOMED CT",
      "description" : "Value Set für Prostata-spezifische Operationen basierend auf SNOMED CT. Enthält alle Kinder von 118877007 |Procedure on prostate (procedure)|",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-psa-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-psa-loinc"
      },
      "name" : "MII VS Onko Prostata PSA LOINC",
      "description" : "Value Set für Prostata-spezifisches Antigen (PSA) LOINC Codes. Enthält LOINC Codes für Total-PSA und freies PSA, exkludiert gebundenes PSA Messungen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog-loinc"
      },
      "name" : "MII VS Onkologie Allgemeiner Leistungszustand ECOG LOINC",
      "description" : "LOINC-Answer-Codes für den ECOG Performance Status. Enumerierte Fassung der LOINC-Answer-List LL529-9.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc"
      },
      "name" : "MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC",
      "description" : "LOINC-Answer-Codes für den Karnofsky Performance Status. Enumerierte Fassung der LOINC-Answer-List LL4986-7.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog"
      },
      "name" : "MII VS Onkologie Allgemeiner Leistungszustand nach ECOG",
      "description" : "Value Set für oBDS-Codes für den Allgemeinen Leistungszustand nach ECOG",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-allgemeiner-leistungszustand-karnofsky.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky"
      },
      "name" : "MII VS Onkologie Allgemeiner Leistungszustand nach Karnofsky",
      "description" : "Value Set für oBDS-Codes für den Allgemeinen Leistungszustand nach Karnofsky",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-asa-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-asa-loinc"
      },
      "name" : "MII VS Onkologie ASA LOINC",
      "description" : "Value Set für LOINC ASA Physical Status Classification (generalisiert für alle onkologischen Indikationen)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-asa-obds.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-asa-obds"
      },
      "name" : "MII VS Onkologie ASA oBDS",
      "description" : "Value Set für oBDS ASA-Klassifikation (ursprünglich KR9 aus Kolorektales Karzinom Modul, generalisiert für alle onkologischen Indikationen)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-beurteilung-lokaler-residualstatus.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-beurteilung-lokaler-residualstatus"
      },
      "name" : "MII VS Onkologie Beurteilung des lokalen Residualstatus",
      "description" : "Value Set für oBDS-Codes für die Beurteilung des lokalen Residualstatus",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-fernmetastasen.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-fernmetastasen"
      },
      "name" : "MII VS Onkologie Fernmetastasen",
      "description" : "Value Set für oBDS-Codes für Fernmetastasen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-gesamtbeurteilung-residualstatus.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-gesamtbeurteilung-residualstatus"
      },
      "name" : "MII VS Onkologie Gesamtbeurteilung des Residualstatus",
      "description" : "Value Set für oBDS-Codes für die Gesamtbeurteilung des Residualstatus",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-grading.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-grading"
      },
      "name" : "MII VS Onkologie Grading",
      "description" : "Codes für Histologie Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-icd10-meldepflichtige-tumoren.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-icd10-meldepflichtige-tumoren"
      },
      "name" : "MII VS Onkologie ICD-10-GM Meldepflichtige Tumoren",
      "description" : "ICD-10-GM-Codes der nach KFRG/§65c krebsregister-meldepflichtigen Neubildungen: bösartige Neubildungen (C00-C97), In-situ-Neubildungen (D00-D09), gutartige Neubildungen der Meningen, des Gehirns/ZNS und intrakranieller endokriner Strukturen (D32, D33, D35.2-D35.4) sowie Neubildungen unsicheren oder unbekannten Verhaltens (D37-D48, einschließlich hämatologischer Entitäten D45-D47).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-icdo3-morphologie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-icdo3-morphologie"
      },
      "name" : "MII VS Onkologie ICD-O-3 Morphologie",
      "description" : "Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-icdo3-morphologie-2014.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-icdo3-morphologie-2014"
      },
      "name" : "MII VS Onkologie ICD-O-3 Morphologie 2014",
      "description" : "Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung gemäß ICD-O-3 Erste Revision (deutsche Ausgabe 2014).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-icdo3-morphologie-2019.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-icdo3-morphologie-2019"
      },
      "name" : "MII VS Onkologie ICD-O-3 Morphologie 2019",
      "description" : "Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung gemäß ICD-O-3 Zweite Revision (deutsche Ausgabe 2019).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-icdo3-topographie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-icdo3-topographie"
      },
      "name" : "MII VS Onkologie ICD-O-3 Topographie",
      "description" : "Codes für Topographie einer neoplastischen Veränderung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-icdo3-topographie-2014.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-icdo3-topographie-2014"
      },
      "name" : "MII VS Onkologie ICD-O-3 Topographie 2014",
      "description" : "Codes für die Topographie einer neoplastischen Veränderung gemäß ICD-O-3 Erste Revision (deutsche Ausgabe 2014).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-icdo3-topographie-2019.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-icdo3-topographie-2019"
      },
      "name" : "MII VS Onkologie ICD-O-3 Topographie 2019",
      "description" : "Codes für die Topographie einer neoplastischen Veränderung gemäß ICD-O-3 Zweite Revision (deutsche Ausgabe 2019).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-ighv-gensegmente-hgnc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-ighv-gensegmente-hgnc"
      },
      "name" : "MII VS Onkologie IGHV-Gensegmente HGNC",
      "description" : "Alle IGHV-Gensegmente (Immunglobulin-Schwerketten-V-Region) als HGNC-Gen-IDs. Auswahlunterstuetzung fuer die Angabe des rearrangierten V-Segments in Observation.component:gene-studied — insbesondere bei der chronischen lymphatischen Leukaemie, wo einzelne Segmente wie IGHV3-21 eigene prognostische Bedeutung haben. Ob das Segment mutiert oder unmutiert ist, wird nicht hier, sondern ueber die Auspraegung der Varianten-Observation abgebildet (oBDS M = Mutation, W = Wildtyp).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-kdl-dokumentklassen.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-kdl-dokumentklassen"
      },
      "name" : "MII VS Onkologie KDL Dokumentklassen",
      "description" : "Kuratierte Auswahl der KDL-Dokumentklassen (KDL 2025) entlang des onkologischen Behandlungspfads (oBDS-Kapitel: Diagnose/Pathologie, Staging-Bildgebung, Tumorkonferenz, Operation, Strahlentherapie, Systemische Therapie, Verlauf/Labor, Tod, Studien, übergreifende Dokumente) als Begleitartefakt für DocumentReference.type. Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument; deprecated-Klassen sind ausgeschlossen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-praedispositionsgene-hgnc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-praedispositionsgene-hgnc"
      },
      "name" : "MII VS Onkologie Krebsprädispositionsgene HGNC",
      "description" : "Krebsprädispositionsgene der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als HGNC-Gen-IDs, inkl. Expansion der Sammel-Einträge (FANCA-FANCW, IDH1/2, XP-Komplementationsgruppen). Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker). Zytogenetische Aberrationen der Quell-Liste (11p13/11p15, Trisomien, ETV-RUNX1-Fusion) sind keine Gene und hier nicht enthalten. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-praedispositionssyndrome-orpha.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-praedispositionssyndrome-orpha"
      },
      "name" : "MII VS Onkologie Krebsprädispositionssyndrome ORPHA",
      "description" : "Krebsprädispositionssyndrome der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als Orphanet-Codes. Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker); 15 genspezifische Prädispositionen der Quell-Liste haben kein Orphanet-Konzept und sind über das Gen-ValueSet mii-vs-onko-praedispositionsgene-hgnc adressierbar. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-krk-abstand-circumferelle-resektionsrand.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-krk-abstand-circumferelle-resektionsrand"
      },
      "name" : "MII VS Onkologie KRK Abstand Circumferelle Resektionsrand",
      "description" : "Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur circumferellen Resektionsrand im Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-krk-abstand-resektionslinie-aboral.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-krk-abstand-resektionslinie-aboral"
      },
      "name" : "MII VS Onkologie KRK Abstand Resektionslinie Aboral",
      "description" : "Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur aboralen Resektionslinie im Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-krk-anastomoseninsuffizienz"
      },
      "name" : "MII VS Onkologie KRK Anastomoseninsuffizienz",
      "description" : "Value Set für die Bewertung der Anastomoseninsuffizienz beim Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-krk-mrt-mesorektale-faszie-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-krk-mrt-mesorektale-faszie-status"
      },
      "name" : "MII VS Onkologie KRK MRT Mesorektale Faszie Status",
      "description" : "Value Set für semantische Kodierung des oBDS-Status der MRT/CT Untersuchung zur mesorektalen Faszie beim Kolorektalen Karzinom (KR5)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-krk-stoma-anzeichnung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-krk-stoma-anzeichnung"
      },
      "name" : "MII VS Onkologie KRK Stoma Anzeichnung",
      "description" : "Value Set für semantische Kodierung der oBDS-präoperativen Stoma-Anzeichnung beim Rektumkarzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-krk-stoma-status-reason.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-krk-stoma-status-reason"
      },
      "name" : "MII VS Onkologie KRK Stoma Status Reason",
      "description" : "Value Set für SNOMED CT Codes zur Begründung des Status der präoperativen Stoma-Anzeichnung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-krk-tme-qualitaet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-krk-tme-qualitaet"
      },
      "name" : "MII VS Onkologie KRK TME Qualität",
      "description" : "Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur aboralen Resektionslinie im Kolorektalen Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-koerperstruktur-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-koerperstruktur-sct"
      },
      "name" : "MII VS Onkologie Körperstruktur (SNOMED CT)",
      "description" : "SNOMED CT Körperstrukturen (Body structure) zur optionalen exakten Lokalisationsangabe (z.B. bei Fernmetastasen).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-faerbeintensitaet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-faerbeintensitaet"
      },
      "name" : "MII VS Onkologie Mamma Färbeintensität",
      "description" : "Färbeintensität der immunhistochemischen Rezeptorbestimmung (Weak, Moderate, Strong). Enumerierte Fassung der LOINC-Answer-List LL4358-9.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-her2neu-ihc-score.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-her2neu-ihc-score"
      },
      "name" : "MII VS Onkologie Mamma Her2neu IHC Score",
      "description" : "HER2-Score der Immunhistochemie (0, 1+, 2+, 3+, Indeterminate). Enumerierte Fassung der LOINC-Answer-List LL4396-9.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-her2neu-status-leitlinie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-her2neu-status-leitlinie"
      },
      "name" : "MII VS Onkologie Mamma Her2neu Status Leitlinie",
      "description" : "Value Set für Her2neu Status nach S3-Leitlinie und ASCO/CAP Guidelines",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-her2neu-status-obds.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-her2neu-status-obds"
      },
      "name" : "MII VS Onkologie Mamma Her2neu Status oBDS",
      "description" : "Value Set für Her2neu Status nach oBDS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-intraoperatives-imaging-praeparat.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-intraoperatives-imaging-praeparat"
      },
      "name" : "MII VS Onkologie Mamma Intraoperatives Imaging Präparat",
      "description" : "Value Set für intraoperatives Imaging des Präparats nach Exzision bei Mamma-Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-ish-ergebnis.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-ish-ergebnis"
      },
      "name" : "MII VS Onkologie Mamma ISH Ergebnis",
      "description" : "Ergebnis der In-situ-Hybridisierung (ISH/FISH): Positive, Negative, Equivocal (LOINC-Answer-Codes).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-menopause-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-menopause-status"
      },
      "name" : "MII VS Onkologie Mamma Menopause Status",
      "description" : "Value Set für (prätherapeutischen) Status der Menopause Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-operation-ops.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-operation-ops"
      },
      "name" : "MII VS Onkologie Mamma Operation OPS",
      "description" : "Value Set für Mamma-Operationen basierend auf OPS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-operation-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-operation-sct"
      },
      "name" : "MII VS Onkologie Mamma Operation SNOMED CT",
      "description" : "Value Set für Mamma-Operationen basierend auf SNOMED CT",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-praeoperative-markierung-modalitaet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-praeoperative-markierung-modalitaet"
      },
      "name" : "MII VS Onkologie Mamma Präoperative Markierung Modalität",
      "description" : "Value Set für Imagingmodalität der präoperativen Markierung bei Mamma-Karzinom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-rezeptorstatus-leitlinie"
      },
      "name" : "MII VS Onkologie Mamma Rezeptorstatus Leitlinie",
      "description" : "Value Set für oBDS-Rezeptorstatus Mamma",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-mamma-rezeptorstatus-obds"
      },
      "name" : "MII VS Onkologie Mamma Rezeptorstatus oBDS",
      "description" : "Value Set für oBDS-Rezeptorstatus Mamma",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-marker-gene-hgnc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-marker-gene-hgnc"
      },
      "name" : "MII VS Onkologie Marker-Gene HGNC",
      "description" : "Gensymbole der onkologisch gebraeuchlichen Marker-Gene aus der Genetik-Markerliste der §65c-Plattform, als HGNC-Gen-IDs. Auswahlunterstuetzung fuer Observation.component:gene-studied im Profil MII_PR_Onko_Genetische_Variante (extensible gebunden — weitere Gene sind zulaessig). Nicht-Gene der Quellliste (IHC-Marker, zytogenetische Aberrationen) sind bewusst ausgeschlossen; siehe die Kommentare in der FSH-Quelle und die IG-Seite zu den Variantentypen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-melanom-ldh.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-melanom-ldh"
      },
      "name" : "MII VS Onkologie Melanom LDH",
      "description" : "Value Set für Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-melanom-ulzeration.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-melanom-ulzeration"
      },
      "name" : "MII VS Onkologie Melanom Ulzeration",
      "description" : "Codes für die Ulzeration beim Malignen Melanom der Haut",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-nebenwirkung-ctcae-version.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-nebenwirkung-ctcae-version"
      },
      "name" : "MII VS Onkologie Nebenwirkung CTCAE-Version",
      "description" : "Versionsbezeichnungen des CTCAE-Katalogs nach oBDS 15.3.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-nebenwirkung-art.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-nebenwirkung-art"
      },
      "name" : "MII VS Onkologie Nebenwirkung nach CTCAE Art",
      "description" : "Alle MedDRA-Codes der CTCAE v4.03 (Art der Nebenwirkung). Deutsche/englische Displays via CodeSystem-Supplements mii-cs-onko-nebenwirkung-meddra-de/-en.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-nebenwirkung-ctcae-grad.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-nebenwirkung-ctcae-grad"
      },
      "name" : "MII VS Onkologie Nebenwirkung nach CTCAE Grad",
      "description" : "oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE-Grad",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-operation-intention.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-operation-intention"
      },
      "name" : "MII VS Onkologie Operation Intention",
      "description" : "Value Set für oBDS-Codes für Klassifikation von Intention der OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-operation-komplikation.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-operation-komplikation"
      },
      "name" : "MII VS Onkologie Operation Komplikationen",
      "description" : "Value Set für oBDS-Codes für Klassifikation von Komplikationen während der OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-operation-urgency.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-operation-urgency"
      },
      "name" : "MII VS Onkologie Operation Urgency",
      "description" : "Value Set für semantische Kodierung der oBDS-Modalität der Eingriffsdurchführung (Art des Eingriffs KR6)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-ops-nuklearmedizin.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-ops-nuklearmedizin"
      },
      "name" : "MII VS Onkologie OPS Nuklearmedizin",
      "description" : "OPS-Codes für Nuklearmedizinische Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-ops-strahlentherapie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-ops-strahlentherapie"
      },
      "name" : "MII VS Onkologie OPS Strahlentherapie",
      "description" : "OPS-Codes für Strahlentherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-primaertumor-diagnosesicherung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-primaertumor-diagnosesicherung"
      },
      "name" : "MII VS Onkologie Primärtumor Diagnosesicherung",
      "description" : "Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-seitenlokalisation.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-seitenlokalisation"
      },
      "name" : "MII VS Onkologie Primärtumor Seitenlokalisation",
      "description" : "Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-clavien-dindo.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-clavien-dindo"
      },
      "name" : "MII VS Onkologie Prostata Clavien Dindo",
      "description" : "Value Set für Gleason Score",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-gleason-pattern-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-gleason-pattern-loinc"
      },
      "name" : "MII VS Onkologie Prostata Gleason Pattern LOINC",
      "description" : "Value Set der LOINC-Codes für Primär-, Sekundär- und Tertiär-Gleason-Pattern. Dient als optionale LOINC-Zweitkodierung zum verpflichtenden SNOMED-CT-Slice im Profil MII_PR_Onko_Prostata_Gleason_Pattern (GitHub-Issue #259).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-gleason-patterns.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-gleason-patterns"
      },
      "name" : "MII VS Onkologie Prostata Gleason Patterns",
      "description" : "Value Set für die histopathologische Bewertung von Prostata-Adenokarzinomen mittels Gleason-Patterns. Dieser Value Set wird verwendet, um die verschiedenen Gleason-Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-gleason-primary-secondary-tertiary.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-gleason-primary-secondary-tertiary"
      },
      "name" : "MII VS Onkologie Prostata Gleason Primary Secondary Tertiary",
      "description" : "Value Set für Primär-, Sekundär- und Tertiär-Gleason Patterns in der Onkologie Prostata. Der häufigste Gleason Pattern wird als primär, der zweithäufigste als sekundär und (seltener, meistens bei Gleason Pattern 5) der dritthäufigste als tertiär bezeichnet. Diese Value Set wird verwendet, um die verschiedenen Gleason Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-gleason-score.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-gleason-score"
      },
      "name" : "MII VS Onkologie Prostata Gleason Score",
      "description" : "Value Set für den Gleason Score in Kombination mit der ISUP Grade Group. Da ISUP Grade Groups erst ab einem Gleason-Gesamtscore von 6 definiert sind, deckt dieses Value Set nur Scores >= 6 ab. Liegt nur das Score-Ergebnis ohne Grade Group vor oder ein Gesamtscore < 6, ist MII_VS_Onko_Prostata_Gleason_Score_Gesamt zu verwenden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-gleason-score-gesamt.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-gleason-score-gesamt"
      },
      "name" : "MII VS Onkologie Prostata Gleason Score Gesamt",
      "description" : "Value Set für den Gleason-Gesamtscore (Summe aus primärem und sekundärem Pattern) ohne Aufschlüsselung in Primär-/Sekundär-Pattern. Enthält die Scores 2 bis 10 aus der SNOMED-CT-Hierarchie unterhalb von 385377005 (Gleason grade finding for prostatic cancer). Damit sind auch Gesamtscores < 6 abbildbar, wie sie bei TURP-Material und in historischen Befunden vorkommen. Ein Gesamtscore 1 existiert nicht, da sich der Score aus zwei Patterns mit Werten ab 1 zusammensetzt. Die ISUP Grade Groups sind bewusst nicht enthalten; sie werden über MII_VS_Onko_Prostata_Gleason_Score abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-prostata-postsurgical-complications.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-prostata-postsurgical-complications"
      },
      "name" : "MII VS Onkologie Prostata Postsurgical Complications",
      "description" : "Value Set für Clavien-Dindo Klassifikation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-strahlentherapie-applikationsart.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-strahlentherapie-applikationsart"
      },
      "name" : "MII VS Onkologie Strahlentherapie Applikationsart",
      "description" : "oBDS-spezifisches Codesystem für Klassifikation von Applikationsart der Strahlentherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-strahlentherapie-boost.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-strahlentherapie-boost"
      },
      "name" : "MII VS Onkologie Strahlentherapie Boost",
      "description" : "oBDS-spezifisches ValueSet für Klassifikation von Boosts bei Strahlentherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-strahlentherapie-ende-grund.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-strahlentherapie-ende-grund"
      },
      "name" : "MII VS Onkologie Strahlentherapie Ende Grund",
      "description" : "oBDS-spezifisches ValueSet für Klassifikation des Grundes der Beendigung der Strahlentherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-strahlentherapie-intention.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-strahlentherapie-intention"
      },
      "name" : "MII VS Onkologie Strahlentherapie Intention",
      "description" : "Value Set für oBDS-Codes für Klassifikation von Intention der Strahlentherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-strahlentherapie-stellungzurop.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-strahlentherapie-stellungzurop"
      },
      "name" : "MII VS Onkologie Strahlentherapie Stellung zur OP",
      "description" : "oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-strahlentherapie-strahlenart.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-strahlentherapie-strahlenart"
      },
      "name" : "MII VS Onkologie Strahlentherapie Strahlenart",
      "description" : "oBDS-spezifisches ValueSet für Klassifikation von Strahlenart bei Strahlentherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-strahlentherapie-strahlungseinheit.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-strahlentherapie-strahlungseinheit"
      },
      "name" : "MII VS Onkologie Strahlentherapie Strahlungseinheit",
      "description" : "oBDS-spezifisches ValueSet für Strahlungseinheit en für Strahlen- und Nuklearmedizinische Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-strahlentherapie-zielgebiet.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-strahlentherapie-zielgebiet"
      },
      "name" : "MII VS Onkologie Strahlentherapie Zielgebiet",
      "description" : "oBDS-spezifisches ValueSet für Klassifikation von Zielgebiet bei Strahlentherapie - unterstützt sowohl oBDS 2021 als auch oBDS 2014 Legacy-Codes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-studienteilnahme.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-studienteilnahme"
      },
      "name" : "MII VS Onkologie Studienteilnahme",
      "description" : "Value Set für oBDS-Codes des Studienteilnahme Status",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-art.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-art"
      },
      "name" : "MII VS Onkologie Systemische Therapie Art",
      "description" : "oBDS-spezifisches ValueSet für Klassifikation der Art der systemischen oder abwartenden Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-ende-grund.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-ende-grund"
      },
      "name" : "MII VS Onkologie Systemische Therapie Ende Grund",
      "description" : "oBDS-spezifisches ValueSet für Klassifikation des Grundes der Beendigung der Systemischen Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-intention.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-intention"
      },
      "name" : "MII VS Onkologie Systemische Therapie Intention",
      "description" : "Value Set für oBDS-Codes für Klassifikation von Intention der Systemischen Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-protokolle.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-protokolle"
      },
      "name" : "MII VS Onkologie Systemische Therapie Protokolle",
      "description" : "oBDS-spezifisches ValueSet für Protokolle systemischer Therapien",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-stellungzurop.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-stellungzurop"
      },
      "name" : "MII VS Onkologie Systemische Therapie Stellung",
      "description" : "oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen",
      "description" : "Validierte ATC-Codes für Substanzen der systemischen Therapie basierend auf oBDS Umsetzungsleitfaden. Automatisch generiert und gegen MII-Terminologieserver validiert.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-unii.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-unii"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen (UNII)",
      "description" : "UNII-Codes für Substanzen der systemischen Therapie ohne ATC-Code. Ergänzung zum ATC-basierten Haupt-ValueSet für neuere und experimentelle onkologische Wirkstoffe.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2018.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2018"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2018",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2018. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2019.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2019"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2019",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2019. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2020.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2020"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2020",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2020. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2021.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2021"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2021",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2021. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2022.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2022"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2022",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2022. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2023.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2023"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2023",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2023. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2024.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2024",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2024. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2025.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2025"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2025",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2025. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-systemische-therapie-substanzen-2026.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-systemische-therapie-substanzen-2026"
      },
      "name" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2026",
      "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2026. Für historische Datenvalidierung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-therapieabweichung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-therapieabweichung"
      },
      "name" : "MII VS Onkologie Therapieabweichung",
      "description" : "oBDS-spezifisches ValueSet für die Therapieabweichung auf Wunsch des Patients.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-therapieempfehlung-typ.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-therapieempfehlung-typ"
      },
      "name" : "MII VS Onkologie Therapieempfehlung Typ",
      "description" : "oBDS-spezifisches ValueSet für den Therapieempfehlungstyp",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-therapieplanung-typ.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-therapieplanung-typ"
      },
      "name" : "MII VS Onkologie Therapieplanung Typ",
      "description" : "oBDS-spezifisches ValueSet für den Therapieplanungstyp",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-cp-praefix.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-cp-praefix"
      },
      "name" : "MII VS Onkologie TNM c/p/u Praefix",
      "description" : "Codes für TNM c/p/u-Präfix. Gibt an, ob die Klassifikation klinisch (c), pathologisch (p) oder mittels Ultraschall (u) erfolgte.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-itc-suffix.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-itc-suffix"
      },
      "name" : "MII VS Onkologie TNM ITC Suffix",
      "description" : "Das ValueSet enthält die isolierten Tumorzellen (ITC) Suffixe für die N- und M-Kategorien aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-klassifikation-typ.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-klassifikation-typ"
      },
      "name" : "MII VS Onkologie TNM Klassifikation Typ",
      "description" : "Codes für TNM-Klassifikation Typ. Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-l-kategorie-werte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-l-kategorie-werte"
      },
      "name" : "MII VS Onkologie TNM L Kategorie Werte",
      "description" : "Das ValueSet enthält die TNM Codes für die Beurteilung der Lymphgefäßinvasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-m-kategorie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-m-kategorie"
      },
      "name" : "MII VS Onkologie TNM M Kategorie",
      "description" : "Codes für Codes zur Differenzierung der TNM M-Kategorie als entweder klinisch (cN) oder pathologisch (pN)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-m-kategorie-werte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-m-kategorie-werte"
      },
      "name" : "MII VS Onkologie TNM M Kategorie Werte",
      "description" : "Das ValueSet enthält die TNM M-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-m-kategorie-werte-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-m-kategorie-werte-sct"
      },
      "name" : "MII VS Onkologie TNM M Kategorie Werte SNOMED CT",
      "description" : "SNOMED CT Codes für die TNM M-Kategorie (alle Präfix-Kombinationen: cM, pM, rcM, rpM).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-m-symbol.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-m-symbol"
      },
      "name" : "MII VS Onkologie TNM m-Symbol",
      "description" : "Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-n-kategorie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-n-kategorie"
      },
      "name" : "MII VS Onkologie TNM N Kategorie",
      "description" : "Codes für Codes zur Differenzierung der TNM N-Kategorie als entweder klinisch (cN) oder pathologisch (pN)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-n-kategorie-werte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-n-kategorie-werte"
      },
      "name" : "MII VS Onkologie TNM N Kategorie Werte",
      "description" : "Das ValueSet enthält die TNM N-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-n-kategorie-werte-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-n-kategorie-werte-sct"
      },
      "name" : "MII VS Onkologie TNM N Kategorie Werte SNOMED CT",
      "description" : "SNOMED CT Codes für die TNM N-Kategorie (alle Präfix-Kombinationen: cN, pN, ycN, ypN, rcN, rpN).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-pn-kategorie-werte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-pn-kategorie-werte"
      },
      "name" : "MII VS Onkologie TNM Pn Kategorie Werte",
      "description" : "Das ValueSet enthält die TNM Codes für den Grad der perineuralen Invasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-s-kategorie-werte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-s-kategorie-werte"
      },
      "name" : "MII VS Onkologie TNM S Kategorie Werte",
      "description" : "Das ValueSet enthält die TNM Codes für Serumtumormarker aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-sn-suffix.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-sn-suffix"
      },
      "name" : "MII VS Onkologie TNM SN Suffix",
      "description" : "Das ValueSet enthält das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix für die N-Kategorie aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-t-kategorie.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-t-kategorie"
      },
      "name" : "MII VS Onkologie TNM T Kategorie",
      "description" : "Codes für Codes zur Differenzierung der TNM T-Kategorie als entweder klinisch (cT) oder pathologisch (pT)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-t-kategorie-werte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-t-kategorie-werte"
      },
      "name" : "MII VS Onkologie TNM T Kategorie Werte",
      "description" : "Das ValueSet enthält die TNM T-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-t-kategorie-werte-sct.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-t-kategorie-werte-sct"
      },
      "name" : "MII VS Onkologie TNM T Kategorie Werte SNOMED CT",
      "description" : "SNOMED CT Codes für die TNM T-Kategorie (alle Präfix-Kombinationen: cT, pT, ycT, ypT, rcT, rpT).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-uicc-stadium.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-uicc-stadium"
      },
      "name" : "MII VS Onkologie TNM UICC Stadium",
      "description" : "The ValueSet enthält Codes für die TNM-Stadien zur prognostischen Gruppeneinteilung von Patienten.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-v-kategorie-werte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-v-kategorie-werte"
      },
      "name" : "MII VS Onkologie TNM V Kategorie Werte",
      "description" : "Das ValueSet enthält die TNM Codes für die Beurteilung der Veneninvasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tnm-version.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tnm-version"
      },
      "name" : "MII VS Onkologie TNM Version",
      "description" : "Codes für TNM Version/Auflage nach welcher Version des TNM klassifiziert wird.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tod.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tod"
      },
      "name" : "MII VS Onkologie Tod",
      "description" : "Value Set für oBDS-Codes turmorbedingter Tod",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-tumormarker-loinc.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-tumormarker-loinc"
      },
      "name" : "MII VS Onkologie Tumormarker LOINC",
      "description" : "Kuratierte LOINC-Codes der in der Onkologie gebraeuchlichen Tumormarker (Serum-/Plasma- bzw. Urin-Bestimmungen). Verwendung als Auswahlliste fuer Observation.code im Profil MII_PR_Onko_Tumormarker (Ableitung des KDS-Moduls Laborbefund). Die Liste ist nicht abschliessend gemeint: Weitere Laborwerte werden ueber das KDS-Modul Laborbefund abgebildet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-verlauf-fernmetastasen.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-verlauf-fernmetastasen"
      },
      "name" : "MII VS Onkologie Verlauf Fernmetastasen",
      "description" : "oBDS-spezifisches ValueSet für die Beurteilung der Fernmetastasen im Behandlungsverlauf",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-verlauf-gesamtbeurteilung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-verlauf-gesamtbeurteilung"
      },
      "name" : "MII VS Onkologie Verlauf Gesamtbeurteilung",
      "description" : "oBDS-spezifisches ValueSet für die Gesamtbeurteilung im Behandlungsverlauf",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-verlauf-lymphknoten.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-verlauf-lymphknoten"
      },
      "name" : "MII VS Onkologie Verlauf Lymphknoten",
      "description" : "oBDS-spezifisches ValueSet für die Beurteilung der Lymphknoten im Behandlungsverlauf",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-verlauf-primaertumor.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-verlauf-primaertumor"
      },
      "name" : "MII VS Onkologie Verlauf Primärtumor",
      "description" : "oBDS-spezifisches ValueSet für die Beurteilung des Primärtumors im Behandlungsverlauf",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor"
      },
      "name" : "mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog"
      },
      "name" : "mii-exa-onko-allgemeiner-leistungszustand-ecog",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-allgemeiner-leistungszustand-karnofsky.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-allgemeiner-leistungszustand-karnofsky"
      },
      "name" : "mii-exa-onko-allgemeiner-leistungszustand-karnofsky",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-anzahl-befallene-lymphknoten-0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-anzahl-befallene-lymphknoten-0"
      },
      "name" : "mii-exa-onko-anzahl-befallene-lymphknoten-0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-befallene-lymphknoten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0"
      },
      "name" : "mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-befallene-sentinel-lymphknoten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-anzahl-untersuchte-lymphknoten-23.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-anzahl-untersuchte-lymphknoten-23"
      },
      "name" : "mii-exa-onko-anzahl-untersuchte-lymphknoten-23",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-untersuchte-lymphknoten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0"
      },
      "name" : "mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-asa-klassifikation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-asa-klassifikation"
      },
      "name" : "mii-exa-onko-asa-klassifikation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-asa-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-onko-befund-1.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-onko-befund-1"
      },
      "name" : "mii-exa-onko-befund-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-cdk46-class-medication.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-cdk46-class-medication"
      },
      "name" : "mii-exa-onko-cdk46-class-medication",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-cup-fernmetastase-hep.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-cup-fernmetastase-hep"
      },
      "name" : "mii-exa-onko-cup-fernmetastase-hep",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-cup-fernmetastase-pul.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-cup-fernmetastase-pul"
      },
      "name" : "mii-exa-onko-cup-fernmetastase-pul",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-cup-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-cup-patient"
      },
      "name" : "mii-exa-onko-cup-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-cup-tnm-m-cM1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-cup-tnm-m-cM1"
      },
      "name" : "mii-exa-onko-cup-tnm-m-cM1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-cup-tnm-n-cNX.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-cup-tnm-n-cNX"
      },
      "name" : "mii-exa-onko-cup-tnm-n-cNX",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-cup-tnm-t-cTX.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-cup-tnm-t-cTX"
      },
      "name" : "mii-exa-onko-cup-tnm-t-cTX",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-diagnose"
      },
      "name" : "mii-exa-onko-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-fernmetastasen-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-fernmetastasen-1"
      },
      "name" : "mii-exa-onko-fernmetastasen-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-genetische-variante-braf.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-genetische-variante-braf"
      },
      "name" : "mii-exa-onko-genetische-variante-braf",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-grading-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-grading-1"
      },
      "name" : "mii-exa-onko-grading-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-grading"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-histologie-icdo3.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-histologie-icdo3"
      },
      "name" : "mii-exa-onko-histologie-icdo3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass1"
      },
      "name" : "mii-exa-onko-kim-klass1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass1-cM1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass1-cM1"
      },
      "name" : "mii-exa-onko-kim-klass1-cM1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass1-cN1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass1-cN1"
      },
      "name" : "mii-exa-onko-kim-klass1-cN1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass1-cT3c.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass1-cT3c"
      },
      "name" : "mii-exa-onko-kim-klass1-cT3c",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass2"
      },
      "name" : "mii-exa-onko-kim-klass2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass2-ycM1b.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass2-ycM1b"
      },
      "name" : "mii-exa-onko-kim-klass2-ycM1b",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass2-ycN1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass2-ycN1"
      },
      "name" : "mii-exa-onko-kim-klass2-ycN1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass2-ycT3c.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass2-ycT3c"
      },
      "name" : "mii-exa-onko-kim-klass2-ycT3c",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass2-ysym.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass2-ysym"
      },
      "name" : "mii-exa-onko-kim-klass2-ysym",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass3.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass3"
      },
      "name" : "mii-exa-onko-kim-klass3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass3-L1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass3-L1"
      },
      "name" : "mii-exa-onko-kim-klass3-L1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass3-Pn0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass3-Pn0"
      },
      "name" : "mii-exa-onko-kim-klass3-Pn0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass3-V0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass3-V0"
      },
      "name" : "mii-exa-onko-kim-klass3-V0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass3-ypM1b.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass3-ypM1b"
      },
      "name" : "mii-exa-onko-kim-klass3-ypM1b",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass3-ypT3c.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass3-ypT3c"
      },
      "name" : "mii-exa-onko-kim-klass3-ypT3c",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-klass3-ysym.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-klass3-ysym"
      },
      "name" : "mii-exa-onko-kim-klass3-ysym",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-kim-synth-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-kim-synth-diagnose"
      },
      "name" : "mii-exa-onko-kim-synth-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-kim-synth-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-kim-synth-patient"
      },
      "name" : "mii-exa-onko-kim-synth-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-synth1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-synth1"
      },
      "name" : "mii-exa-onko-kim-synth1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-synth2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-synth2"
      },
      "name" : "mii-exa-onko-kim-synth2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-synth3.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-synth3"
      },
      "name" : "mii-exa-onko-kim-synth3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-kim-synth4.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-kim-synth4"
      },
      "name" : "mii-exa-onko-kim-synth4",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-mii-exa-onko-kim-synthesis-device.html"
      }],
      "reference" : {
        "reference" : "Device/mii-exa-onko-kim-synthesis-device"
      },
      "name" : "mii-exa-onko-kim-synthesis-device",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Provenance-mii-exa-onko-kim-synthesis-provenance.html"
      }],
      "reference" : {
        "reference" : "Provenance/mii-exa-onko-kim-synthesis-provenance"
      },
      "name" : "mii-exa-onko-kim-synthesis-provenance",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-kim-tk1.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-kim-tk1"
      },
      "name" : "mii-exa-onko-kim-tk1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-kim-tk2.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-kim-tk2"
      },
      "name" : "mii-exa-onko-kim-tk2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-kim-tk3.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-kim-tk3"
      },
      "name" : "mii-exa-onko-kim-tk3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-kim-tk4.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-kim-tk4"
      },
      "name" : "mii-exa-onko-kim-tk4",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-onko-krk-bundle-encounter.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
      },
      "name" : "mii-exa-onko-krk-bundle-encounter",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-krk-bundle-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "name" : "mii-exa-onko-krk-bundle-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-krk-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-krk-diagnose"
      },
      "name" : "mii-exa-onko-krk-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-onko-mamma-bundle-encounter.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-onko-mamma-bundle-encounter"
      },
      "name" : "mii-exa-onko-mamma-bundle-encounter",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-mamma-bundle-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
      },
      "name" : "mii-exa-onko-mamma-bundle-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-mamma-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-mamma-diagnose"
      },
      "name" : "mii-exa-onko-mamma-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-mamma-menopause-status-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-mamma-menopause-status-1"
      },
      "name" : "mii-exa-onko-mamma-menopause-status-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-menopause-status"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-mamma-praeoperative-markierung-1"
      },
      "name" : "mii-exa-onko-mamma-praeoperative-markierung-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-praeoperative-markierung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-mamma-rezeptorstatus-estrogen-1"
      },
      "name" : "mii-exa-onko-mamma-rezeptorstatus-estrogen-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-estrogen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-mamma-rezeptorstatus-progesteron-1"
      },
      "name" : "mii-exa-onko-mamma-rezeptorstatus-progesteron-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-progesteron"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-mamma-tumorgroesse-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-mamma-tumorgroesse-1"
      },
      "name" : "mii-exa-onko-mamma-tumorgroesse-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-onko-melanom-bundle-encounter.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-onko-melanom-bundle-encounter"
      },
      "name" : "mii-exa-onko-melanom-bundle-encounter",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-melanom-bundle-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-melanom-bundle-patient"
      },
      "name" : "mii-exa-onko-melanom-bundle-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-melanom-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-melanom-diagnose"
      },
      "name" : "mii-exa-onko-melanom-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RequestGroup"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RequestGroup-mii-exa-onko-molecular-cdk46-protocol.html"
      }],
      "reference" : {
        "reference" : "RequestGroup/mii-exa-onko-molecular-cdk46-protocol"
      },
      "name" : "mii-exa-onko-molecular-cdk46-protocol",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RequestGroup"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RequestGroup-mii-exa-onko-molecular-her2-alternatives.html"
      }],
      "reference" : {
        "reference" : "RequestGroup/mii-exa-onko-molecular-her2-alternatives"
      },
      "name" : "mii-exa-onko-molecular-her2-alternatives",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-onko-molecular-surgery-request.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-onko-molecular-surgery-request"
      },
      "name" : "mii-exa-onko-molecular-surgery-request",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-palbociclib-therapie.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-palbociclib-therapie"
      },
      "name" : "mii-exa-onko-palbociclib-therapie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-pertuzumab-therapie.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-pertuzumab-therapie"
      },
      "name" : "mii-exa-onko-pertuzumab-therapie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-anzahl-positiver-stanzen-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-anzahl-positiver-stanzen-1"
      },
      "name" : "mii-exa-onko-prostata-anzahl-positiver-stanzen-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-anzahl-stanzen-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-anzahl-stanzen-1"
      },
      "name" : "mii-exa-onko-prostata-anzahl-stanzen-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-mii-exa-onko-prostata-bundle-encounter.html"
      }],
      "reference" : {
        "reference" : "Encounter/mii-exa-onko-prostata-bundle-encounter"
      },
      "name" : "mii-exa-onko-prostata-bundle-encounter",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-prostata-bundle-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "name" : "mii-exa-onko-prostata-bundle-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-ca-befall-stanze-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-ca-befall-stanze-1"
      },
      "name" : "mii-exa-onko-prostata-ca-befall-stanze-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-ca-befall-stanze"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-prostata-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      },
      "name" : "mii-exa-onko-prostata-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-gleason-pattern-grade-group-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-gleason-pattern-grade-group-1"
      },
      "name" : "mii-exa-onko-prostata-gleason-pattern-grade-group-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-grade-group"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-gleason-pattern-primary-1"
      },
      "name" : "mii-exa-onko-prostata-gleason-pattern-primary-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-gleason-pattern-secondary-1"
      },
      "name" : "mii-exa-onko-prostata-gleason-pattern-secondary-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-gleason-score-gesamt-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-gleason-score-gesamt-1"
      },
      "name" : "mii-exa-onko-prostata-gleason-score-gesamt-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-score-gesamt"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-psa-diagnose-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-psa-diagnose-1"
      },
      "name" : "mii-exa-onko-prostata-psa-diagnose-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-psa-verlauf-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-psa-verlauf-1"
      },
      "name" : "mii-exa-onko-prostata-psa-verlauf-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-prostata-surgery-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-prostata-surgery-1"
      },
      "name" : "mii-exa-onko-prostata-surgery-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-prostata-surgical-complication-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-prostata-surgical-complication-1"
      },
      "name" : "mii-exa-onko-prostata-surgical-complication-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-clavien-dindo"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-residualstatus-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-residualstatus-1"
      },
      "name" : "mii-exa-onko-residualstatus-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-mii-exa-onko-specimen-1.html"
      }],
      "reference" : {
        "reference" : "Specimen/mii-exa-onko-specimen-1"
      },
      "name" : "mii-exa-onko-specimen-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-studienteilnahme.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-studienteilnahme"
      },
      "name" : "mii-exa-onko-studienteilnahme",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-tdm1-option.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-tdm1-option"
      },
      "name" : "mii-exa-onko-tdm1-option",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-biopsy-cT4cN1cM0"
      },
      "name" : "mii-exa-onko-tnm-biopsy-cT4cN1cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-tnm-bundle-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-tnm-bundle-diagnose"
      },
      "name" : "mii-exa-onko-tnm-bundle-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0"
      },
      "name" : "mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-tnm-bundle-legacy-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-tnm-bundle-legacy-diagnose"
      },
      "name" : "mii-exa-onko-tnm-bundle-legacy-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0"
      },
      "name" : "mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-bundle-legacy-m-cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-legacy-m-cM0"
      },
      "name" : "mii-exa-onko-tnm-bundle-legacy-m-cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-bundle-legacy-n-cN3.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-legacy-n-cN3"
      },
      "name" : "mii-exa-onko-tnm-bundle-legacy-n-cN3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-tnm-bundle-legacy-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-tnm-bundle-legacy-patient"
      },
      "name" : "mii-exa-onko-tnm-bundle-legacy-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-bundle-legacy-t-cT2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-legacy-t-cT2"
      },
      "name" : "mii-exa-onko-tnm-bundle-legacy-t-cT2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-bundle-m-kategorie-cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-m-kategorie-cM0"
      },
      "name" : "mii-exa-onko-tnm-bundle-m-kategorie-cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-bundle-n-kategorie-cN3.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-n-kategorie-cN3"
      },
      "name" : "mii-exa-onko-tnm-bundle-n-kategorie-cN3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-tnm-bundle-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-tnm-bundle-patient"
      },
      "name" : "mii-exa-onko-tnm-bundle-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-bundle-t-kategorie-cT2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-t-kategorie-cT2"
      },
      "name" : "mii-exa-onko-tnm-bundle-t-kategorie-cT2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-clinical-cT3cN1cM0"
      },
      "name" : "mii-exa-onko-tnm-clinical-cT3cN1cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-journey-l-kategorie-L0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-journey-l-kategorie-L0"
      },
      "name" : "mii-exa-onko-tnm-journey-l-kategorie-L0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-journey-pn-kategorie-Pn0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-journey-pn-kategorie-Pn0"
      },
      "name" : "mii-exa-onko-tnm-journey-pn-kategorie-Pn0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-journey-residualstatus-R0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-journey-residualstatus-R0"
      },
      "name" : "mii-exa-onko-tnm-journey-residualstatus-R0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-journey-v-kategorie-V0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-journey-v-kategorie-V0"
      },
      "name" : "mii-exa-onko-tnm-journey-v-kategorie-V0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-klassifikation-TisN0M0"
      },
      "name" : "mii-exa-onko-tnm-klassifikation-TisN0M0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1"
      },
      "name" : "mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-l-kategorie-L.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-l-kategorie-L"
      },
      "name" : "mii-exa-onko-tnm-l-kategorie-L",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-l-kategorie-L1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-l-kategorie-L1"
      },
      "name" : "mii-exa-onko-tnm-l-kategorie-L1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-m-kategorie-cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-cM0"
      },
      "name" : "mii-exa-onko-tnm-m-kategorie-cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-m-kategorie-cM1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-cM1"
      },
      "name" : "mii-exa-onko-tnm-m-kategorie-cM1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-m-kategorie-M0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-M0"
      },
      "name" : "mii-exa-onko-tnm-m-kategorie-M0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-m-kategorie-rcM1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-rcM1"
      },
      "name" : "mii-exa-onko-tnm-m-kategorie-rcM1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-n-kategorie-cN1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-cN1"
      },
      "name" : "mii-exa-onko-tnm-n-kategorie-cN1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-n-kategorie-N0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-N0"
      },
      "name" : "mii-exa-onko-tnm-n-kategorie-N0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-pN0i-sn"
      },
      "name" : "mii-exa-onko-tnm-n-kategorie-pN0i-sn",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-n-kategorie-rcN1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-rcN1"
      },
      "name" : "mii-exa-onko-tnm-n-kategorie-rcN1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-n-kategorie-ycN0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-ycN0"
      },
      "name" : "mii-exa-onko-tnm-n-kategorie-ycN0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-n-kategorie-ypN0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-ypN0"
      },
      "name" : "mii-exa-onko-tnm-n-kategorie-ypN0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-pn-kategorie-Pn1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-pn-kategorie-Pn1"
      },
      "name" : "mii-exa-onko-tnm-pn-kategorie-Pn1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0"
      },
      "name" : "mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0"
      },
      "name" : "mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-recurrence-rcT2cN1cM1"
      },
      "name" : "mii-exa-onko-tnm-recurrence-rcT2cN1cM1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-s-kategorie-S1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-s-kategorie-S1"
      },
      "name" : "mii-exa-onko-tnm-s-kategorie-S1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-s-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-onko-tnm-synth-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
      },
      "name" : "mii-exa-onko-tnm-synth-diagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-synth-klassifikation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-synth-klassifikation"
      },
      "name" : "mii-exa-onko-tnm-synth-klassifikation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-synth-meldung1-klassifikation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation"
      },
      "name" : "mii-exa-onko-tnm-synth-meldung1-klassifikation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0"
      },
      "name" : "mii-exa-onko-tnm-synth-meldung1-m-cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-synth-meldung1-n-cN2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-n-cN2"
      },
      "name" : "mii-exa-onko-tnm-synth-meldung1-n-cN2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-synth-meldung1-t-cT3.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3"
      },
      "name" : "mii-exa-onko-tnm-synth-meldung1-t-cT3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-synth-meldung2-klassifikation.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation"
      },
      "name" : "mii-exa-onko-tnm-synth-meldung2-klassifikation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1"
      },
      "name" : "mii-exa-onko-tnm-synth-meldung2-n-pN1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2"
      },
      "name" : "mii-exa-onko-tnm-synth-meldung2-t-pT2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-tnm-synth-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "name" : "mii-exa-onko-tnm-synth-patient",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-tnm-synth-tumorkonferenz.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-tnm-synth-tumorkonferenz"
      },
      "name" : "mii-exa-onko-tnm-synth-tumorkonferenz",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-t-kategorie-cT3.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-cT3"
      },
      "name" : "mii-exa-onko-tnm-t-kategorie-cT3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-t-kategorie-cT4.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-cT4"
      },
      "name" : "mii-exa-onko-tnm-t-kategorie-cT4",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-t-kategorie-rcT2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-rcT2"
      },
      "name" : "mii-exa-onko-tnm-t-kategorie-rcT2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-t-kategorie-Tis.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-Tis"
      },
      "name" : "mii-exa-onko-tnm-t-kategorie-Tis",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-uT2a2"
      },
      "name" : "mii-exa-onko-tnm-t-kategorie-uT2a2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-t-kategorie-ycT2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-ycT2"
      },
      "name" : "mii-exa-onko-tnm-t-kategorie-ycT2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-t-kategorie-ypT0.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-ypT0"
      },
      "name" : "mii-exa-onko-tnm-t-kategorie-ypT0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tnm-v-kategorie-V1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tnm-v-kategorie-V1"
      },
      "name" : "mii-exa-onko-tnm-v-kategorie-V1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tod-j.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tod-j"
      },
      "name" : "mii-exa-onko-tod-j",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tod-n.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tod-n"
      },
      "name" : "mii-exa-onko-tod-n",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tod-u.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tod-u"
      },
      "name" : "mii-exa-onko-tod-u",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-trastuzumab-therapie.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-trastuzumab-therapie"
      },
      "name" : "mii-exa-onko-trastuzumab-therapie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-onko-tucatinib-option.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-onko-tucatinib-option"
      },
      "name" : "mii-exa-onko-tucatinib-option",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-tumorgroesse.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-tumorgroesse"
      },
      "name" : "mii-exa-onko-tumorgroesse",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-tumorkonferenz-01.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-01"
      },
      "name" : "mii-exa-onko-tumorkonferenz-01",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-tumorkonferenz-02.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-02"
      },
      "name" : "mii-exa-onko-tumorkonferenz-02",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-mixed-approach"
      },
      "name" : "mii-exa-onko-tumorkonferenz-mixed-approach",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-tumorkonferenz-molekular.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-molekular"
      },
      "name" : "mii-exa-onko-tumorkonferenz-molekular",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-pure-molecular"
      },
      "name" : "mii-exa-onko-tumorkonferenz-pure-molecular",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-verlauf-journey-post-chemo.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-verlauf-journey-post-chemo"
      },
      "name" : "mii-exa-onko-verlauf-journey-post-chemo",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-verlauf-journey-post-surgery.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-verlauf-journey-post-surgery"
      },
      "name" : "mii-exa-onko-verlauf-journey-post-surgery",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-verlauf-journey-recurrence.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-verlauf-journey-recurrence"
      },
      "name" : "mii-exa-onko-verlauf-journey-recurrence",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-verlauf-tumor.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-verlauf-tumor"
      },
      "name" : "mii-exa-onko-verlauf-tumor",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-weitere-klassifikationen-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-weitere-klassifikationen-1"
      },
      "name" : "mii-exa-onko-weitere-klassifikationen-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-weitere-klassifikationen-2.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-weitere-klassifikationen-2"
      },
      "name" : "mii-exa-onko-weitere-klassifikationen-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-weitere-klassifikationen-3.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-weitere-klassifikationen-3"
      },
      "name" : "mii-exa-onko-weitere-klassifikationen-3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-weitere-klassifikationen-4.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-weitere-klassifikationen-4"
      },
      "name" : "mii-exa-onko-weitere-klassifikationen-4",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-mii-param-onko-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/mii-param-onko-manifest"
      },
      "name" : "mii-param-onko-manifest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-mii-pr-onko-nebenwirkung-0.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/mii-pr-onko-nebenwirkung-0"
      },
      "name" : "mii-pr-onko-nebenwirkung-0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-mii-pr-onko-nebenwirkung-text.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/mii-pr-onko-nebenwirkung-text"
      },
      "name" : "mii-pr-onko-nebenwirkung-text",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-condition-ext-morphology-behavior-icdo3.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-condition-ext-morphology-behavior-icdo3"
      },
      "name" : "mii-sp-onko-condition-ext-morphology-behavior-icdo3",
      "description" : "SearchParameter for Condition.extension[morphology-behavior-icdo3]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-ext-strahlentherapie-stellungzurop.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-ext-strahlentherapie-stellungzurop"
      },
      "name" : "mii-sp-onko-ext-strahlentherapie-stellungzurop",
      "description" : "SearchParameter for Procedure.extension[StellungZurOp]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-ext-systemischetherapie-stellungzurop.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-ext-systemischetherapie-stellungzurop"
      },
      "name" : "mii-sp-onko-ext-systemischetherapie-stellungzurop",
      "description" : "SearchParameter for Procedure.extension[StellungZurOp]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-observation-ext-tnm-n-itc.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-observation-ext-tnm-n-itc"
      },
      "name" : "mii-sp-onko-observation-ext-tnm-n-itc",
      "description" : "SearchParameter for Observation.extension[itc]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-observation-ext-tnm-n-sn-suffix.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-observation-ext-tnm-n-sn-suffix"
      },
      "name" : "mii-sp-onko-observation-ext-tnm-n-sn-suffix",
      "description" : "SearchParameter for Observation.extension[sn-suffix]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-observation-tnm-cp-praefix.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-observation-tnm-cp-praefix"
      },
      "name" : "mii-sp-onko-observation-tnm-cp-praefix",
      "description" : "SearchParameter for Observation.code.extension[cp-praefix]. Die Extension gilt gleichermaßen für T-, N- und M-Kategorien; die Unterscheidung der Kategorie erfolgt über den Kategorie-Code der Observation (Kombination mit dem SearchParameter `code`).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-observation-tnm-r-praefix.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-observation-tnm-r-praefix"
      },
      "name" : "mii-sp-onko-observation-tnm-r-praefix",
      "description" : "SearchParameter for Observation.modifierExtension[r-praefix]. Kennzeichnet TNM-Kategorien, die zur Beurteilung eines Rezidivs festgestellt wurden (UICC r-Präfix). Die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-observation-tnm-y-praefix.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-observation-tnm-y-praefix"
      },
      "name" : "mii-sp-onko-observation-tnm-y-praefix",
      "description" : "SearchParameter for Observation.modifierExtension[y-praefix]. Kennzeichnet TNM-Kategorien, die während oder nach initialer multimodaler Therapie festgestellt wurden (UICC y-Präfix). Die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-ext-operation-intention.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-ext-operation-intention"
      },
      "name" : "mii-sp-onko-procedure-ext-operation-intention",
      "description" : "SearchParameter for Procedure.extension[intention]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-boost.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-boost"
      },
      "name" : "mii-sp-onko-procedure-ext-strahlentherapie-bs-boost",
      "description" : "SearchParameter for Procedure.extension:boost",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis"
      },
      "name" : "mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis",
      "description" : "SearchParameter for Procedure.extension:einzeldosis",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis"
      },
      "name" : "mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis",
      "description" : "SearchParameter for Procedure.extension:gesamtdosis",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-intention.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-intention"
      },
      "name" : "mii-sp-onko-procedure-ext-strahlentherapie-intention",
      "description" : "SearchParameter for Procedure.extension[intention]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-ext-systemischetherapie-intention.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-ext-systemischetherapie-intention"
      },
      "name" : "mii-sp-onko-procedure-ext-systemischetherapie-intention",
      "description" : "SearchParameter for Procedure.extension[intention]",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-strahlentherapie-applikationsart.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-strahlentherapie-applikationsart"
      },
      "name" : "mii-sp-onko-procedure-strahlentherapie-applikationsart",
      "description" : "SearchParameter for Procedure.usedCode:Applikationsart",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-strahlentherapie-lateralitaet.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-strahlentherapie-lateralitaet"
      },
      "name" : "mii-sp-onko-procedure-strahlentherapie-lateralitaet",
      "description" : "SearchParameter for Procedure.bodySite.extension:Seitenlokalisation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "SearchParameter-mii-sp-onko-procedure-strahlentherapie-strahlenart.html"
      }],
      "reference" : {
        "reference" : "SearchParameter/mii-sp-onko-procedure-strahlentherapie-strahlenart"
      },
      "name" : "mii-sp-onko-procedure-strahlentherapie-strahlenart",
      "description" : "SearchParameter for Procedure.usedCode:Strahlenart",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-onko-genetische-variante-auspraegung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-onko-genetische-variante-auspraegung"
      },
      "name" : "MII_VS Onkologie Genetische Variante Ausprägung",
      "description" : "Value Set für oBDS-Codes für Ausprägung der Genetischen Variante",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-onko-molecular-board-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-onko-molecular-board-patient"
      },
      "name" : "Molecular Tumor Board Patient",
      "description" : "Patient for molecular tumor board examples",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-mii-exa-onko-modification-oxaliplatin-phase1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/mii-exa-onko-modification-oxaliplatin-phase1"
      },
      "name" : "Oxaliplatin Phase 1 (Zyklen 1-6, dann abgebrochen)",
      "description" : "Oxaliplatin administered for 6 cycles, then discontinued due to neuropathy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PatientKimMusterperson.html"
      }],
      "reference" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "name" : "PatientKimMusterperson",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-PatientKimMusterperson-Diagnosis-1.html"
      }],
      "reference" : {
        "reference" : "Condition/PatientKimMusterperson-Diagnosis-1"
      },
      "name" : "PatientKimMusterperson-Diagnosis-1",
      "description" : "Diagnose Primärtumor",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-PatientKimMusterperson-PathoReport-1.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/PatientKimMusterperson-PathoReport-1"
      },
      "name" : "PatientKimMusterperson-PathoReport-1",
      "description" : "Pathoreport incl. Immunhistochemie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html"
      }],
      "reference" : {
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      },
      "name" : "PatientKimMusterperson-PrimaryDiagnosis-2",
      "description" : "bestätigte Primärdiagnose",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
      },
      "name" : "PatientKimMusterperson-Procedure-1",
      "description" : "10.06.2021 CT Abdomen mit KM",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-2.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
      },
      "name" : "PatientKimMusterperson-Procedure-2",
      "description" : "15.06.2021 Aszitespunktion",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-3.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      },
      "name" : "PatientKimMusterperson-Procedure-3",
      "description" : "22.06.2021 CT Thorax: kein Hinweis auf Metastasen.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4a.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4a"
      },
      "name" : "PatientKimMusterperson-Procedure-4a",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4b.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4b"
      },
      "name" : "PatientKimMusterperson-Procedure-4b",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4c.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4c"
      },
      "name" : "PatientKimMusterperson-Procedure-4c",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4d.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4d"
      },
      "name" : "PatientKimMusterperson-Procedure-4d",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-PatientKimMusterperson-Specimen-1.html"
      }],
      "reference" : {
        "reference" : "Specimen/PatientKimMusterperson-Specimen-1"
      },
      "name" : "PatientKimMusterperson-Specimen-1",
      "description" : "Tumorresektat Primärtumor",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-SystemicTherapy-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-1"
      },
      "name" : "PatientKimMusterperson-SystemicTherapy-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-SystemicTherapy-2.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-2"
      },
      "name" : "PatientKimMusterperson-SystemicTherapy-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-SystemicTherapy-3.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-3"
      },
      "name" : "PatientKimMusterperson-SystemicTherapy-3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1a.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1a"
      },
      "name" : "PatientKimMusterperson-SystemicTherapyMedication-1a",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1b.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1b"
      },
      "name" : "PatientKimMusterperson-SystemicTherapyMedication-1b",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2a.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-2a"
      },
      "name" : "PatientKimMusterperson-SystemicTherapyMedication-2a",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2b.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-2b"
      },
      "name" : "PatientKimMusterperson-SystemicTherapyMedication-2b",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-3.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-3"
      },
      "name" : "PatientKimMusterperson-SystemicTherapyMedication-3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-PatientKimMusterperson-Tumorkonferenz-1.html"
      }],
      "reference" : {
        "reference" : "CarePlan/PatientKimMusterperson-Tumorkonferenz-1"
      },
      "name" : "PatientKimMusterperson-Tumorkonferenz-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-PatientKimMusterperson-Tumorkonferenz-2.html"
      }],
      "reference" : {
        "reference" : "CarePlan/PatientKimMusterperson-Tumorkonferenz-2"
      },
      "name" : "PatientKimMusterperson-Tumorkonferenz-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-PatientKimMusterperson-Tumorkonferenz-3.html"
      }],
      "reference" : {
        "reference" : "CarePlan/PatientKimMusterperson-Tumorkonferenz-3"
      },
      "name" : "PatientKimMusterperson-Tumorkonferenz-3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-PatientKimMusterperson-Tumorkonferenz-4.html"
      }],
      "reference" : {
        "reference" : "CarePlan/PatientKimMusterperson-Tumorkonferenz-4"
      },
      "name" : "PatientKimMusterperson-Tumorkonferenz-4",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Verlauf-2022-01-22.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Verlauf-2022-01-22"
      },
      "name" : "PatientKimMusterperson-Verlauf-2022-01-22",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-prostata-operation-prostatektomie.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-prostata-operation-prostatektomie"
      },
      "name" : "Prostata Operation Prostatektomie Beispiel",
      "description" : "Beispiel einer radikalen Prostatektomie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-prostata-operation-turp.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-prostata-operation-turp"
      },
      "name" : "Prostata Operation TURP Beispiel",
      "description" : "Beispiel einer transurethralen Resektion der Prostata",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-radelement.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/radelement"
      },
      "name" : "RSNA RadElement Common Data Elements (Fragment)",
      "description" : "Fragment des RSNA-RadElement-Systems (Common Data Elements, https://www.radelement.org). Enthält nur die im MII-Modul Onkologie verwendeten Datenelemente. Quelle: RSNA RadElement API.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-sigmoid-resection.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-sigmoid-resection"
      },
      "name" : "Sigmaresektion - Haupteingriff",
      "description" : "Main surgical procedure: Laparoscopic sigmoid resection with lymph node dissection - using SNOMED code",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-sigmoid-resection-part1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-sigmoid-resection-part1"
      },
      "name" : "Sigmaresektion Teil 1 - Resektion und Anastomose",
      "description" : "Component procedure 1: Sigmoid resection with anastomosis",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-sigmoid-resection-part2.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-sigmoid-resection-part2"
      },
      "name" : "Sigmaresektion Teil 2 - Lymphknotendissektion",
      "description" : "Component procedure 2: Regional lymph node dissection",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-sigmoid-resection-part3.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-sigmoid-resection-part3"
      },
      "name" : "Sigmaresektion Teil 3 - Port-Anlage",
      "description" : "Component procedure 3: Laparoscopic port placement",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1"
      },
      "name" : "Strahlentherapie: Beispiel einer Nuklearmedizinischen Bestrahlungstherapie",
      "description" : "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1"
      },
      "name" : "Strahlentherapie: Beispiel einer Strahlentherapie mit allgemeinem OPS-Code 8-52",
      "description" : "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ResearchStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ResearchStudy-mii-exa-onko-studie-prob.html"
      }],
      "reference" : {
        "reference" : "ResearchStudy/mii-exa-onko-studie-prob"
      },
      "name" : "Studie PRO-B",
      "description" : "PRO-B: Alarm-basiertes Patient-Reported Outcome Monitoring bei Patientinnen mit metastasiertem Mammakarzinom (Innovationsfonds 01NVF19013)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-studienteilnahme-prob.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-studienteilnahme-prob"
      },
      "name" : "Studienteilnahme PRO-B",
      "description" : "Beispiel einer Studienteilnahme an der PRO-B Studie für eine Patientin mit metastasiertem Mammakarzinom",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-colorectal-tnm.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-colorectal-tnm"
      },
      "name" : "TNM Klassifikation - pT3 pN1 cM0, UICC Stage IIIB",
      "description" : "Postoperative pathological TNM staging with UICC stage group IIIB",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-ascending-colon-tnm.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-ascending-colon-tnm"
      },
      "name" : "TNM Klassifikation - Stadium IIIB",
      "description" : "Postoperative pathological TNM staging for ascending colon cancer (pT3 pN1 cM0 = Stage IIIB)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-colorectal-tnm-m.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-colorectal-tnm-m"
      },
      "name" : "TNM M-Kategorie - cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-ascending-colon-tnm-m.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-ascending-colon-tnm-m"
      },
      "name" : "TNM M-Kategorie - cM0",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-colorectal-tnm-n.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-colorectal-tnm-n"
      },
      "name" : "TNM N-Kategorie - pN1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-ascending-colon-tnm-n.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-ascending-colon-tnm-n"
      },
      "name" : "TNM N-Kategorie - pN1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-colorectal-tnm-t.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-colorectal-tnm-t"
      },
      "name" : "TNM T-Kategorie - pT3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-ascending-colon-tnm-t.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-ascending-colon-tnm-t"
      },
      "name" : "TNM T-Kategorie - pT3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TNM-Klassifikation-Observation-2.html"
      }],
      "reference" : {
        "reference" : "Observation/TNM-Klassifikation-Observation-2"
      },
      "name" : "TNM-Klassifikation-Observation-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TNM-L-Observation-2.html"
      }],
      "reference" : {
        "reference" : "Observation/TNM-L-Observation-2"
      },
      "name" : "TNM-L-Observation-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TNM-M-Observation-2.html"
      }],
      "reference" : {
        "reference" : "Observation/TNM-M-Observation-2"
      },
      "name" : "TNM-M-Observation-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TNM-Pn-Observation-2.html"
      }],
      "reference" : {
        "reference" : "Observation/TNM-Pn-Observation-2"
      },
      "name" : "TNM-Pn-Observation-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TNM-T-Observation-2.html"
      }],
      "reference" : {
        "reference" : "Observation/TNM-T-Observation-2"
      },
      "name" : "TNM-T-Observation-2",
      "description" : "Lokale Tumorausbreitung: Ovartumor links mit einer max. Größe von 2,2 cm und tumorinfiltrierter Kapsel mit Nachweis von Tumorzellen auf der Ovaroberfläche, Anteil vitaler Tumorzellen von ca. 80 %.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TNM-V-Observation-2.html"
      }],
      "reference" : {
        "reference" : "Observation/TNM-V-Observation-2"
      },
      "name" : "TNM-V-Observation-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-TNM-y-Symbol-Observation-2.html"
      }],
      "reference" : {
        "reference" : "Observation/TNM-y-Symbol-Observation-2"
      },
      "name" : "TNM-y-Symbol-Observation-2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox-modification"
      },
      "name" : "Tumorkonferenz - FOLFOX Empfehlung",
      "description" : "Tumor board recommends FOLFOX4 protocol for adjuvant treatment",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-onko-tumorkonferenz-folfox.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox"
      },
      "name" : "Tumorkonferenz - FOLFOX Empfehlung bei Kolorektalkarzinom",
      "description" : "Tumor board recommends FOLFOX protocol for colorectal cancer patient",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "AdverseEvent-mii-exa-onko-oxaliplatin-neuropathy.html"
      }],
      "reference" : {
        "reference" : "AdverseEvent/mii-exa-onko-oxaliplatin-neuropathy"
      },
      "name" : "Unerwünschtes Ereignis - Oxaliplatin-induzierte Neuropathie",
      "description" : "Grade 3 peripheral neuropathy caused by oxaliplatin, leading to treatment modification",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-folfox-verlauf-6months.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-folfox-verlauf-6months"
      },
      "name" : "Verlauf - 6 Monate nach FOLFOX",
      "description" : "6-month follow-up examination showing no evidence of disease",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-modification-verlauf-6months.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-modification-verlauf-6months"
      },
      "name" : "Verlauf - 6 Monate nach modifizierter Therapie",
      "description" : "6-month follow-up showing complete response despite protocol modification",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "_title" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Inhaltsverzeichnis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Startseite"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Anleitung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "anwendungsfaelle-informationsmodell.html"
          }],
          "nameUrl" : "anwendungsfaelle-informationsmodell.html",
          "title" : "Use Cases and Information Model",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anwendungsfälle und Informationsmodell"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "datasets-and-descriptions.html"
          }],
          "nameUrl" : "datasets-and-descriptions.html",
          "title" : "Datasets and Descriptions",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Logische Modelle"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "tnm-breast-cancer-journey.html"
          }],
          "nameUrl" : "tnm-breast-cancer-journey.html",
          "title" : "TNM Breast Cancer Journey (Example)",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "TNM Mammakarzinom-Patientenreise (Beispiel)"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "toronto-klassifikation.html"
          }],
          "nameUrl" : "toronto-klassifikation.html",
          "title" : "Toronto Classification (Pediatric Oncology)",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Toronto-Klassifikation (pädiatrische Onkologie)"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "molgen-variantentypen.html"
          }],
          "nameUrl" : "molgen-variantentypen.html",
          "title" : "MolGen Mapping of Variant Types",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "MolGen-Abbildung der Variantentypen"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "researcher-guidance.html"
          }],
          "nameUrl" : "researcher-guidance.html",
          "title" : "Guidance for Researchers",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anleitung für Forschende"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "implementer-guidance.html"
          }],
          "nameUrl" : "implementer-guidance.html",
          "title" : "Guidance for Implementers",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anleitung für Implementierende"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uml-diagrams.html"
          }],
          "nameUrl" : "uml-diagrams.html",
          "title" : "UML Diagrams",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "UML-Diagramme"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security-and-privacy.html"
        }],
        "nameUrl" : "security-and-privacy.html",
        "title" : "Security and Privacy",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sicherheit und Datenschutz"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "Profiles",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Profile"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "Extensions",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Extensions"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "Capability Statements",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CapabilityStatements"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "search-parameters.html"
        }],
        "nameUrl" : "search-parameters.html",
        "title" : "Search Parameters",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Suchparameter"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "logical-models.html"
        }],
        "nameUrl" : "logical-models.html",
        "title" : "Logical Models",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Logische Modelle"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "value-sets.html"
        }],
        "nameUrl" : "value-sets.html",
        "title" : "Value Sets",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "ValueSets"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "code-systems.html"
        }],
        "nameUrl" : "code-systems.html",
        "title" : "Code Systems",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CodeSystems"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "icd-o-terminologie.html"
          }],
          "nameUrl" : "icd-o-terminologie.html",
          "title" : "ICD-O: Revisions and Validation",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "ICD-O: Revisionen und Validierung"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "atc-terminologie.html"
          }],
          "nameUrl" : "atc-terminologie.html",
          "title" : "ATC: Annual Versions and Transitions",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "ATC: Jahresversionen und Überleitungen"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "weitere-klassifikationen-terminologien.html"
          }],
          "nameUrl" : "weitere-klassifikationen-terminologien.html",
          "title" : "Further Classifications: Terminologies",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Weitere Klassifikationen: Terminologien"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "tumormarker-loinc.html"
          }],
          "nameUrl" : "tumormarker-loinc.html",
          "title" : "Tumor Markers: Curated LOINC Codes",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Tumormarker: kuratierte LOINC-Codes"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "konformitaets-mappings.html"
          }],
          "nameUrl" : "konformitaets-mappings.html",
          "title" : "Concept Mappings: Overview and Review",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Examples",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beispiele"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Downloads"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changelog",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Änderungshistorie"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "migration-v2026.html"
        }],
        "nameUrl" : "migration-v2026.html",
        "title" : "Migration from v2026",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "tnm-journey.html"
        }],
        "nameUrl" : "tnm-journey.html",
        "title" : "TNM Step by Step",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "metadata.html"
        }],
        "nameUrl" : "metadata.html",
        "title" : "Metadata Overview",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Metadaten-Übersicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "version-history.html"
        }],
        "nameUrl" : "version-history.html",
        "title" : "Versioning",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Versionierung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-mii-ig-onko-de-v2026.html"
        }],
        "nameUrl" : "ImplementationGuide-mii-ig-onko-de-v2026.html",
        "title" : "MII ImplementationGuide Resource",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "MII ImplementationGuide Ressource"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "translationinfo.html"
        }],
        "nameUrl" : "translationinfo.html",
        "title" : "Translation Information",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Hinweise zur Übersetzung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/predefined-resources"
    },
    {
      "code" : "path-pages",
      "value" : "input/intro-notes"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
