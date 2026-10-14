# MII Kerndatensatz-Modul Onkologie

The domain language of the MII oncology module: how oncological data from the oBDS (Onkologischer Basisdatensatz) is named and related when it is represented for secondary use in research.

## Language

### Datenherkunft

**Meldung**:
A Krebsregistermeldung: the message a treating institution sends to the cancer registry. It is the main source from which this module's data is loaded, but not the only one; data can also be documented directly in clinical systems.
_Avoid_: Meldungs-bezogen, Meldungs-Panel (as names for data that could come from any source)

**Informationsmodell**:
The module's own description of oncological data, independent of where the data comes from and of how it is represented technically. It is not a copy of the oBDS: what the oBDS requires is stated by the oBDS itself and related to the Informationsmodell field by field.
_Avoid_: oBDS-Modell, logisches Modell des oBDS (as names for the module's model)

### Tumor und Diagnose

**Tumor**:
One tumour as the cancer registry counts it, identified by one Tumor-ID. Exactly one diagnosis exists per Tumor; everything that happens to it later (progression, Rezidiv, Fernmetastase) belongs to the same Tumor.
_Avoid_: a new diagnosis for a recurrence or a metastasis

**Rezidiv**:
The reappearance of an existing Tumor after treatment. It is an event in the course of that Tumor, never a new Tumor.

**Fernmetastase**:
A distant spread of an existing Tumor. It is a finding about that Tumor, never a new Tumor.

**Transformation**:
The change of an existing Tumor into what the registry rules count as a new tumour entity of the same line (for example MDS to secondary AML). It is the one case in which a Tumor gives rise to a second Tumor with its own diagnosis.
_Avoid_: Transformation for a refined or corrected Morphologie of the same Tumor

### Histologie

**Histologie**:
The group of everything one pathological examination of a tissue sample reports (oBDS chapter 6): Morphologie, grading, lymph-node counts and the pathologist's report text. It is a grouping, not a single finding.
_Avoid_: Histologie as a name for the Morphologie or for a Morphologiebestimmung

**Histologiedatum**:
The day the tissue sample was taken from the patient (oBDS 6.1). It is the date of everything determined on that sample, not the day the pathologist examined or reported it.
_Avoid_: Datum der histologischen Untersuchung, Befunddatum

**Morphologiebestimmung**:
A single determination, dated by its Histologiedatum, of exactly one Morphologie on one tissue sample, and nothing else: grading, scores and other results of the same examination are separate findings. It arises at first diagnosis and again whenever tissue is examined later (remission, recurrence, metastasis); every determination is kept so the patient's history stays complete.
_Avoid_: Histologiebefund, Verlaufshistologie, Folgediagnostik, Histologie (as a name for the determination)

**Morphologie**:
The histological type of a tumour as an ICD-O-3 code. At the diagnosis it states what the Tumor is: it is replaced when a later determination refines or corrects that, and it is left unchanged by determinations made on a Rezidiv or a Fernmetastase. In each Morphologiebestimmung it is the dated value that was found.
_Avoid_: Histologie (as a name for the code)

### TNM

**Kategorie**:
A single value of one TNM axis (T, N, M, and likewise L, V, Pn, S) for one Tumor at one point in time.
_Avoid_: Komponente, Deskriptor; "y-Kategorie" for a Präfix

**Präfix**:
A letter written before a Kategorie that states the circumstances of its determination: y (during or after therapy), r (Rezidiv), a (autopsy). It belongs to the determination of one Kategorie: when a whole classification is flagged, every Kategorie newly determined in it carries the Präfix, and a Kategorie taken over from an earlier classification keeps the ones it was determined with. "y-Symbol" is the oBDS field name for the same thing and is used only when citing that field.
_Avoid_: Symbol (as the name of the concept), Präfix-Modifier

**c/p/u-Präfix**:
The letter before a Kategorie that states how it was established: clinically (c), pathologically (p) or by ultrasound (u). Always named with all three letters.
_Avoid_: c/p-Präfix, Feststellungs-Präfix

**m-Suffix**:
The mark written after the T-Kategorie when several primary tumours are present in one region.
_Avoid_: m-Symbol (as the name of the concept)

**TNM-Klassifikation**:
The set of Kategorien, and where given the stage, that describes one Tumor at one assessment.
_Avoid_: Panel, Grouper, Gruppierung, Staging (as names for the classification)

**Klassifikationstyp**:
What the Kategorien of a TNM-Klassifikation rest on: klinisch, pathologisch or integriert. A pathological classification with a clinical M-Kategorie is still pathologisch; integriert is a classification that deliberately combines clinical and pathological Kategorien into one statement of the Tumor's extent.

**Synthetisierte TNM-Klassifikation**:
A TNM-Klassifikation that nobody documented as such but that was derived by a rule from several other TNM-Klassifikationen, which it names as its sources. It is always of type integriert; the reverse does not hold, because a clinician can document an integrated classification directly, for example in a discharge letter or a study protocol.
_Avoid_: berechnetes TNM, zusammengeführtes TNM, Aggregat, Best-of; integriert as a synonym for synthesised

**Finale TNM-Klassifikation**:
The TNM-Klassifikation that a diagnosis or a therapy decision refers to as its basis. "Final" is a role a classification is given by being referred to, not a kind of classification: any TNM-Klassifikation can hold it.
_Avoid_: final as a synonym for synthesised, computed or integrated
