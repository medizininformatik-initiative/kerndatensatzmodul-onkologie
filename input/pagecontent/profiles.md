<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page profiles.md (de) -->

The complete, automatically generated list of all profiles of this module can
be found in the [artifact overview](artifacts.html); the domain documentation
of each profile appears as an introduction directly on the respective profile
page. This page provides the overview: the standards basis, the simplified
structure views per oBDS chapter and the organ-specific modules.

### Interactive profile map

Each box links directly to the profile page; colors by FHIR resource type, grouped along the oncological treatment path (oBDS chapters).

<style>
.onko-map{display:grid;grid-template-columns:repeat(auto-fit,minmax(270px,1fr));gap:12px;margin:1em 0}
.onko-map .grp{border:1px solid #b9c4d0;border-radius:8px;padding:10px 12px;background:#fafcfe}
.onko-map .grp h5{margin:0 0 8px 0;font-size:0.95em;color:#20456b}
.onko-sec{border:2px solid #4a7ab5;border-radius:10px;padding:12px 14px 6px 14px;margin:1em 0;background:#f4f8fc}
.onko-sec.organ{border-color:#c98a2b;background:#fdf8f0}
.onko-sec>.sec-title{font-weight:bold;font-size:1.0em;color:#20456b;margin:0 0 6px 0}
.onko-sec.organ>.sec-title{color:#7a5211}
.onko-sec .onko-map{margin:0.4em 0}
.onko-sec.organ .grp{border-color:#ddc196;background:#fffdf8}
.onko-map a.chip{display:inline-block;margin:2px;padding:3px 9px;border-radius:5px;border:1px solid rgba(0,0,0,0.18);font-size:0.82em;color:#1a1a1a;text-decoration:none;line-height:1.5}
.onko-map a.chip:hover{filter:brightness(0.9);text-decoration:none}
.onko-legend{font-size:0.8em;margin:4px 0 1.5em 0}
.onko-legend span{display:inline-block;margin-right:10px;padding:1px 8px;border-radius:4px;border:1px solid rgba(0,0,0,0.18)}
</style>
<div class="onko-sec"><div class="sec-title">oBDS base dataset</div>
<div class="onko-map">
<div class="grp"><h5>Diagnosis (oBDS 5)</h5>
<a class="chip" style="background:#FFF3A3" href="StructureDefinition-mii-pr-onko-diagnose-primaertumor.html" title="Condition">Diagnose Primärtumor</a>
<a class="chip" style="background:#FFF3A3" href="StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.html" title="Condition">Frühere Tumorerkrankung</a>
<a class="chip" style="background:#EDEDED" href="StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.html" title="List">Evidenz Erstdiagnose</a>
</div>
<div class="grp"><h5>Histology &amp; Pathology (oBDS 6)</h5>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-histologie-icdo3.html" title="Observation">Histologie ICD-O-3</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-grading.html" title="Observation">Grading</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tumorgroesse.html" title="Observation">Tumorgröße</a>
<a class="chip" style="background:#D2F2D2" href="StructureDefinition-mii-pr-onko-befund.html" title="DiagnosticReport">Befund</a>
<a class="chip" style="background:#BDEDED" href="StructureDefinition-mii-pr-onko-specimen.html" title="Specimen">Specimen</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.html" title="Observation">Lymphknoten untersucht</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.html" title="Observation">Lymphknoten befallen</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.html" title="Observation">Sentinel untersucht</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.html" title="Observation">Sentinel befallen</a>
</div>
<div class="grp"><h5>TNM &amp; Staging (oBDS 8–12)</h5>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-klassifikation.html" title="Observation">TNM-Klassifikation</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.html" title="Observation">TNM synthetisiert</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-t-kategorie.html" title="Observation">T</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-n-kategorie.html" title="Observation">N</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-m-kategorie.html" title="Observation">M</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-l-kategorie.html" title="Observation">L</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-v-kategorie.html" title="Observation">V</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-pn-kategorie.html" title="Observation">Pn</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-s-kategorie.html" title="Observation">S</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-y-symbol.html" title="Observation">y</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-r-symbol.html" title="Observation">r</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-a-symbol.html" title="Observation">a</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tnm-m-symbol.html" title="Observation">m</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-weitere-klassifikationen.html" title="Observation">Weitere Klassifikationen</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-residualstatus.html" title="Observation">Residualstatus</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-fernmetastasen.html" title="Observation">Fernmetastasen</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.html" title="Observation">ECOG</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.html" title="Observation">Karnofsky</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-asa-klassifikation.html" title="Observation">ASA</a>
</div>
<div class="grp"><h5>Therapy (oBDS 13–16)</h5>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-operation.html" title="Procedure">Operation</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-strahlentherapie.html" title="Procedure">Strahlentherapie</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.html" title="Procedure">Bestrahlung</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.html" title="Procedure">Nuklearmedizin</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-systemische-therapie.html" title="Procedure">Systemische Therapie</a>
<a class="chip" style="background:#F8D8F0" href="StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html" title="MedicationStatement">Medikation</a>
<a class="chip" style="background:#F5C6C6" href="StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.html" title="AdverseEvent">Nebenwirkung</a>
</div>
<div class="grp"><h5>Follow-up, Conference &amp; Closure (oBDS 17–20)</h5>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-verlauf.html" title="Observation">Verlauf</a>
<a class="chip" style="background:#E0E0FA" href="StructureDefinition-mii-pr-onko-tumorkonferenz.html" title="CarePlan">Tumorkonferenz</a>
<a class="chip" style="background:#E0E0FA" href="StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html" title="RequestGroup">Empf. Kombinationstherapie</a>
<a class="chip" style="background:#F8D8F0" href="StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.html" title="MedicationRequest">Empf. Medikation</a>
<a class="chip" style="background:#E4F7E4" href="StructureDefinition-mii-pr-onko-therapieempfehlung-operation.html" title="ServiceRequest">Empf. Operation</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-tod.html" title="Observation">Tod</a>
</div>
<div class="grp"><h5>Genetics &amp; Studies (oBDS 23–24)</h5>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-genetische-variante.html" title="Observation">Genetische Variante</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-studienteilnahme.html" title="Observation">Studienteilnahme</a>
</div>
</div>
</div>
<div class="onko-sec organ"><div class="sec-title">Organ-specific modules</div>
<div class="onko-map">
<div class="grp"><h5>Breast</h5>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.html" title="Observation">Estrogen-Rezeptor</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.html" title="Observation">Progesteron-Rezeptor</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-mamma-her2neu-status.html" title="Observation">HER2/neu</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-mamma-menopause-status.html" title="Observation">Menopause-Status</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.html" title="Procedure">Präop. Markierung</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-mamma-operation.html" title="Procedure">Mamma-OP</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-mamma-sozialdienst.html" title="Procedure">Sozialdienst</a>
</div>
<div class="grp"><h5>Prostate</h5>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-prostate-psa.html" title="Observation">PSA</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-prostate-gleason-patterns.html" title="Observation">Gleason Patterns</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.html" title="Observation">Gleason Score</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.html" title="Observation">Grade Group</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.html" title="Observation">Anzahl Stanzen</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.html" title="Observation">Positive Stanzen</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.html" title="Observation">Befall Stanze</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-prostate-clavien-dindo.html" title="Observation">Clavien-Dindo</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-prostata-operation.html" title="Procedure">Prostata-OP</a>
</div>
<div class="grp"><h5>Colorectal</h5>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-krk-abstand-anokutan.html" title="Observation">Abstand Anokutanlinie</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-krk-abstand-aboral.html" title="Observation">Abstand aboral</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.html" title="Observation">CRM/Resektionsebene</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.html" title="Observation">MRT mesorektale Faszie</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.html" title="Observation">Anastomoseninsuffizienz</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-krk-operation.html" title="Procedure">KRK-OP</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-krk-stoma-markierung.html" title="Procedure">Stoma-Markierung</a>
<a class="chip" style="background:#BDEDED" href="StructureDefinition-mii-pr-onko-krk-specimen.html" title="Specimen">KRK-Specimen</a>
</div>
<div class="grp"><h5>Melanoma</h5>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.html" title="Observation">Breslow-Tiefe</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-melanom-ulzeration.html" title="Observation">Ulzeration</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.html" title="Observation">Sicherheitsabstand</a>
<a class="chip" style="background:#CDEFC0" href="StructureDefinition-mii-pr-onko-melanom-ldh.html" title="Observation">LDH</a>
<a class="chip" style="background:#C9C9F5" href="StructureDefinition-mii-pr-onko-melanom-exzision.html" title="Procedure">Exzision</a>
</div>
</div>
</div>
<div class="onko-legend"><span style="background:#FFF3A3">Condition</span><span style="background:#CDEFC0">Observation</span><span style="background:#C9C9F5">Procedure</span><span style="background:#E0E0FA">CarePlan</span><span style="background:#F8D8F0">MedicationStatement</span><span style="background:#F5C6C6">AdverseEvent</span><span style="background:#BDEDED">Specimen</span><span style="background:#D2F2D2">DiagnosticReport</span></div>

### Standards basis

The CDS specifications are based, where possible, on international standards
and terminologies — notably the
[International Patient Summary](http://hl7.org/fhir/uv/ips/history.html).
Adaptation to the German healthcare system is achieved through the
[German FHIR base profiles](https://simplifier.net/basisprofil-de-r4) of
HL7 Germany; compatibility with the FHIR specifications of the National
Association of Statutory Health Insurance Physicians (KBV) is also sought.

### Simplified profile views (inheritance and oBDS mapping)

The following shows the profiles in a simplified version, focusing on the
inheritance from other profiles and the mapping of oBDS data fields to the
corresponding FHIR elements.

#### Diagnosis

The diagnosis contains information on the primary diagnosis itself as well as
on histology and localization of the primary tumor.

![Diagnosis — inheritance and oBDS mapping](MII_Onko_05_Diagnosis.svg)

#### Histology

![Histology — inheritance and oBDS mapping](MII_Onko_06_Histologie.svg)

#### TNM classification

![TNM classification — inheritance and oBDS mapping](MII_Onko_08_TNM.svg)

#### Further classifications, residual status, performance status, distant metastases

![Observations — inheritance and oBDS mapping](MII_Onko_9-12_Observations.svg)

#### Procedures, medication and adverse events

![Procedures — inheritance and oBDS mapping](MII_Onko_13-16_Prozeduren.svg)

#### Follow-up, tumor conference, death and genetic variant

![Follow-up and others — inheritance and oBDS mapping](MII_Onko_17-20_24_Others.svg)

### Lymph node examinations

Four profiles describe the lymph node examinations performed as part of
oncological staging. The oBDS provides four distinct data points:

- [Number of examined lymph nodes](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.html)
- [Number of affected lymph nodes](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.html)
- [Number of examined sentinel lymph nodes](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.html)
- [Number of affected sentinel lymph nodes](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.html)

The ratio between affected and examined lymph nodes is sometimes determined
in clinical practice but is not a separate data point in the oBDS.

### Organ-specific modules

The organ-specific modules extend the base module with **entity-specific data
elements** according to the requirements of the ADT/GEKID base documentation.
They address the particular diagnostic and therapeutic aspects of individual
tumor entities.

#### Breast (Mamma)

The breast module implements the organ-specific profiles for breast-cancer
data according to the
[oBDS module breast cancer](https://www.basisdatensatz.de/module/5/mammakarzinom):
receptor-status determinations (estrogen/progesterone with staining intensity
and share of positive cells), menopause status, preoperative marking
modalities, intraoperative imaging and breast-specific surgical procedures.
The HER2/neu status is currently represented in the molecular tumor board
profile; tumor size was moved to the histology chapter as it applies to
multiple entities.

![Breast module — architecture](MII_Onko_Mamma_Module.png)

#### Prostate

The prostate module covers PSA values as the central tumor marker, Gleason
scoring (primary, secondary and tertiary patterns), grade groups (1–5),
biopsy results (number of cores, carcinoma involvement) and postoperative
complications per Clavien-Dindo.

![Prostate module — architecture](MII_Onko_Prostata_Module.png)

#### Colorectal carcinoma (CRC)

The CRC module covers the preoperative assessment (distance to the anocutaneous
line, MRI-based measurement of the mesorectal fascia, ASA classification),
CRC-specific surgical procedures and stoma marking, resection margins (aboral
and circumferential/CRM), anastomotic-leak grading and specific specimen
profiles for CRC resections.

![CRC module — architecture](MII_Onko_KRK_Module.png)

#### Malignant melanoma

The melanoma profiles cover Breslow depth (LOINC 39092-1) as the most
important prognostic factor, ulceration of the primary tumor
(SNOMED CT 385324008), the excision safety margin, LDH as a prognostic marker
and melanoma-specific excision procedures.

![Melanoma module — architecture](MII_Onko_Melanom_Module.png)
