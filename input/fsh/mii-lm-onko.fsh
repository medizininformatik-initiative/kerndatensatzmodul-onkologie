Logical: MII_LM_Onko
Parent: Element
Id: mii-lm-onko
Title: "MII LM Onkologie"
Description: "MII LogicalModel Modul Onkologie"
* insert Publisher
* insert PR_CS_VS_Version
* Diagnose 0..* BackboneElement "Diagnose"
  * PrimaertumorTumordiagnoseICDCode 0..1 code "Primärtumor Tumordiagnose ICD Code" "Kodierung einer meldepflichtigen Erkrankung nach der aktuellen ICD-GM Version."
  * PrimaertumorTumordiagnoseICDVersion 0..1 string "Primärtumor Tumordiagnose ICD-Version" "Bezeichnung der zur Kodierung verwendeten ICD-GM Version."
  * PrimaertumorTumordiagnoseText 0..1 string "Primärtumor Tumordiagnose Text" "Bezeichnung einer meldepflichtigen Erkrankung."
  * PrimaertumorTopographieICDO 0..1 code "Primärtumor Topographie ICD-O" "Bezeichnung der Topographie einer Erkrankung nach der aktuellen ICD-O Version."
  * PrimaertumorTopographieICDOVersion 0..1 string "Primärtumor Topographie ICD-O-Version" "Bezeichnung der zur Kodierung verwendeten ICD-O Version."
  * PrimaertumorDiagnosedatum 0..1 dateTime "Primärtumor Diagnosedatum" "Datum, angegeben in Tag, Monat und Jahr, an dem die meldepflichtige Diagnose erstmals durch einen Arzt klinisch oder mikroskopisch diagnostiziert wurde."
  * PrimaertumorDiagnosesicherung 0..1 code "Primärtumor Diagnosesicherung" "Höchste erreichte Diagnosesicherheit der Diagnose."
  * PrimaertumorSeitenlokalisation 0..1 code "Primärtumor Seitenlokalisation" "Organspezifische Angabe der betroffenen Seite."
  * FruehereTumorerkrankungen 0..* Condition "Frühere Tumorerkrankungen" "Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden."
* Histologie 0..* BackboneElement "Histologie"
  * TumorHistologiedatum 0..1 dateTime "Tumor Histologiedatum" "Datum, an dem die Gewebeprobe entnommen wurde."
  * HistologieEinsendenummer 0..1 string "Histologie-Einsendenummer" "Die Histologie-Einsendenummer/Auftragsnummer wird vom Pathologischen Institut beim Eingang des Präparates vergeben."
  * MorphologieCode 0..1 code "Morphologie-Code" "Gibt an, welche Histologie der Tumor aufweist."
  * MorphologieICDOBlueBookVersion 0..1 string "Morphologie ICD-O/Blue Book Version" "Bezeichnung der zur Kodierung verwendeten ICD-O/Blue Book Version."
  * MorphologieFreitext 0..1 string "Morphologie-Freitext" "Gibt die Originalbezeichnung der morphologischen Diagnose an."
  * Grading 0..* code "Grading" "Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an."
  * AnzahlUntersuchteLymphknoten 0..* decimal "Anzahl der untersuchten Lymphknoten" "Gibt an, wie viele Lymphknoten untersucht wurden (einschließlich Sentinel)."
  * AnzahlBefalleneLymphknoten 0..* decimal "Anzahl der befallenen Lymphknoten" "Gibt an, wie viele Lymphknoten befallen sind (einschließlich Sentinel)."
  * AnzahlUntersuchteSentinelLymphknoten 0..* decimal "Anzahl der untersuchten Sentinel-Lymphknoten" "Gibt an, wie viele Sentinel-Lymphknoten untersucht wurden."
  * AnzahlBefalleneSentinelLymphknoten 0..* decimal "Anzahl der befallenen Sentinel-Lymphknoten" "Gibt an, wie viele Sentinel-Lymphknoten befallen sind."

Mapping: Onkologie-LogicalModel
Id: FHIR
Title: "Onkologie LogicalModel FHIR Mapping"
Source: MII_LM_Onko
* Diagnose -> "Condition"
  * PrimaertumorTumordiagnoseICDCode -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
  * PrimaertumorTumordiagnoseICDVersion -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').version"
  * PrimaertumorTumordiagnoseText -> "Condition.code.text"
  * PrimaertumorTopographieICDO -> "Condition.bodySite.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').code"
  * PrimaertumorTopographieICDOVersion -> "Condition.bodySite.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').version"
  * PrimaertumorDiagnosedatum -> "Condition.recordedDate"
  * PrimaertumorDiagnosesicherung -> "Condition.verificationStatus.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung').code"
  * PrimaertumorSeitenlokalisation -> "Condition.bodySite.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-seitenlokalisation').code"
  * FruehereTumorerkrankungen -> "Condition"
* Histologie
  * TumorHistologiedatum -> "Specimen.collection.collectedDateTime"
  * HistologieEinsendenummer -> "Specimen.identifier.value"
  * MorphologieCode -> "Condition.code.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').code"
  * MorphologieICDOBlueBookVersion -> "Condition.code.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').version"
  * MorphologieFreitext -> "Condition.code.text"
  * Grading -> "Observation.valueCodeableConcept.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading').code"
  * AnzahlUntersuchteLymphknoten -> "Observation.code.coding.where(system='http://loinc.org' and code='2708-6').select(%resource.valueQuantity.value)"
  * AnzahlBefalleneLymphknoten -> "Observation.code.coding.where(system='http://loinc.org' and code='21893-3').select(%resource.valueQuantity.value)"
  * AnzahlUntersuchteSentinelLymphknoten -> "Observation.code.coding.where(system='http://loinc.org' and code='85347-3').select(%resource.valueQuantity.value)"
  * AnzahlBefalleneSentinelLymphknoten -> "Observation.code.coding.where(system='http://loinc.org' and code='92832-5').select(%resource.valueQuantity.value)"
