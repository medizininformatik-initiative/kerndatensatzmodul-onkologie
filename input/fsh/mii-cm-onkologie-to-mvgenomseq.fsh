// ACHTUNG bei ConceptMaps ist der InstanceName gleich der ID, daher klein und mit Bindestrich
Instance: mii-cm-onkologie-to-mvgenomseq
InstanceOf: ConceptMap
Title: "MII Concept Map Modellvorhaben Genomsequenzierung Onkologie"
Description: "MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie"
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onkologie-to-mvgenomseq"
* version = "0.1.0"
* name = "MII_CM_MVGenomSeq_Onkologie"
* status = #draft
* experimental = true
* date = "2025-04-25"
* publisher = "Medizininformatik-Initiative"
* contact.name = "MII-interner Zulip-Channel #MVGenomSeq"
* contact.telecom.system = #url
* contact.telecom.value = "https://mii.zulipchat.com/#narrow/channel/480436-MV-Genom-.C2.A764e/topic/Welcher.20Support.20hilft.20am.20meisten.3F/with/514104856"
* contact.telecom.use = #work
* description = "Mapping der einzelnen MII-OnkologieProfile auf den Klinischen Datenkranz der MVGenomSeq"
* jurisdiction.coding.system = "urn:iso:std:iso:3166"
* jurisdiction.coding.code = #DEU
* purpose = "Das Ziel dieser ConceptMap ist die Abbildung der MII-OnkologieProfile auf den MVGenomSeq-Datenkranz. Die ConceptMap ist ein Teil des MII-Onkologiemoduls und soll den Datenintegrationszentren das Erstellen von harmonisierbaren ETL-Strecken erleichtern."
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onkologie/"
* targetUri = "https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Modellvorhaben-Genomsequenzierung"
* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
* group[=].sourceVersion = "2025.0.4"
* group[=].target = "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json"
* group[=].targetVersion = "1.1.1"

* group[=].element[+].code = #Condition.code
* group[=].element[=].display = "Diagnose Primärtumor"
* group[=].element[=].target[+].code = #diagnosisOd.mainDiagnosis
* group[=].element[=].target[=].display = "Haupttumordiagnose"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Abbildung über ICD-10-GM-Coding Code/System/Version"

* group[=].element[+].code = #Condition.extension:Feststellungsdatum
* group[=].element[=].display = "Feststellungsdatum"
* group[=].element[=].target[+].code = #diagnosisOd.mainDiagnosis.date
* group[=].element[=].target[=].display = "Datum der Diagnose"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wenn Tag unbekannt, soll auf 15. gesetzt werden"

* group[=].element[+].code = #Condition.bodySite.coding:icd-o-3.code
* group[=].element[=].display = "ICD-O-3 Topographie"
* group[=].element[=].target[+].code = #diagnosisOd.mainDiagnosis.icdoTopography
* group[=].element[=].target[=].display = "ICD-O-3 Topographie"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #Condition.bodySite.coding:icd-o-3.version
* group[=].element[=].display = "ICD-O-3 Version"
* group[=].element[=].target[+].code = #diagnosisOd.mainDiagnosis.icdoVersion
* group[=].element[=].target[=].display = "ICD-O-3 Version"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #Condition.extension:morphology-behavior-icdo3.valueCodeableConcept.coding.code
* group[=].element[=].display = "ICD-O-3 Morphologie-Code"
* group[=].element[=].target[+].code = #DiagnosisOd.mainDiagnosis.icdoMorphology
* group[=].element[=].target[=].display = "ICD-O-3 Morphologie"
* group[=].element[=].target[=].equivalence = #equivalent

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-diagnose/StructureDefinition/Diagnose"
* group[=].target = "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json"
* group[=].sourceVersion = "2025.0.0"
* group[=].targetVersion = "1.1.1"

* group[=].element[+].code = #Condition.code.coding
* group[=].element[=].display = "Diagnosecode"
* group[=].element[=].target[+].code = #DiagnosisOd.additionalDiagnoses
* group[=].element[=].target[=].display = "Diagnosecode"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Abbildung über ICD-10-GM/OrphaCode/AlphaID jeweils mit Code/System/Version. Hier hauptsächlich relevante onkologische Begleit- und Vorerkrankungen. Diagnostizierte Keimbahnerkrankungen sollen über "

* group[=].element[+].code = #Condition.extension:Feststellungsdatum
* group[=].element[=].display = "Feststellungsdatum"
* group[=].element[=].target[+].code = #DiagnosisOd.additionalDiagnoses.date
* group[=].element[=].target[=].display = "Datum der Diagnose"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Wenn Tag unbekannt, soll auf 15. gesetzt werden"

* group[=].element[+].code = #Condition.code.coding"
* group[=].element[=].display = "Diagnosecode"
* group[=].element[=].target[+].code = #DiagnosisOd.germlineDiagnoses
* group[=].element[=].target[=].display = "Diagnosecode"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Nachgewiesene Keimbahnerkrankungen.Über ICD-10-GM und (OrphaCode und/oder AlphaID) jeweils mit Code/System/Version. "
* group[=].element[=].target[+].code = #DiagnosisOd.germlineDiagnosesConfirmed
* group[=].element[=].target[=].display = "Diagnosecode"
* group[=].element[=].target[=].equivalence = #unmatched




* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog"
* group[=].target = "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json"
* group[=].sourceVersion = "2025.0.4"
* group[=].targetVersion = "1.1.1"

* group[=].element[+].code = #Observation.valueCodeableConcept.coding.code
* group[=].element[=].display = "ECOG-Performance-Status"
* group[=].element[=].target[+].code = #ecogPerformanceStatusScore
* group[=].element[=].target[=].display = "ECOG-Performance-Status"
* group[=].element[=].target[=].equivalence = #equivalent

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-grading"
* group[=].target = "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json"
* group[=].sourceVersion = "2025.0.4"
* group[=].targetVersion = "1.1.1"

* group[=].element[+].code = #Observation.valueCodeableConcept.coding.code
* group[=].element[=].display = "Histologisches Grading"
* group[=].element[=].target[+].code = #grading
* group[=].element[=].target[=].display = "Histologisches Grading"
* group[=].element[=].target[=].equivalence = #equivalent


* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
* group[=].target = "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json"
* group[=].sourceVersion = "2025.0.4"
* group[=].targetVersion = "1.1.1"
* group[=].element[+].code = #Observation.valueCodeableConcept.coding.code
* group[=].element[=].display = "TNM-Klassifikation"
* group[=].element[=].target[+].code = #ecogPerformanceStatusScore
* group[=].element[=].target[=].display = "TNM-KLassifkation"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "für Primärtherapie entscheidendes TNM(auswerterelevanter TNM)"

* group[=].element[+].code = #Observation.valueCodeableConcept.coding.code
* group[=].element[=].display = "TNM-T-Kategorie"
* group[=].element[=].target[+].code = #ecogPerformanceStatusScore
* group[=].element[=].target[=].display = "TNM-KLassifkation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #Observation.valueCodeableConcept.coding.code
* group[=].element[=].display = "TNM-N-Kategorie"
* group[=].element[=].target[+].code = #ecogPerformanceStatusScore
* group[=].element[=].target[=].display = "TNM-KLassifkation"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #Observation.valueCodeableConcept.coding.code
* group[=].element[=].display = "TNM-M-Kategorie"
* group[=].element[=].target[+].code = #ecogPerformanceStatusScore
* group[=].element[=].target[=].display = "TNM-KLassifkation"
* group[=].element[=].target[=].equivalence = #equivalent
