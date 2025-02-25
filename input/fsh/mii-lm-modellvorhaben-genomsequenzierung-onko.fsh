Logical: MII_LM_Modellvorhaben_Genomsequenzierung_Onko
Parent: Element
Id: mii-lm-modellvorhaben-genomsequenzierung-onko
Title: "MII LM Modellvorhaben Genomsequenzierung Onkologie"
Description: "MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie"
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Modellvorhaben-Genomsequenzierung-Onkologie"
* OnkologieFall 0..* BackboneElement "Onkologie-Fall"
  * Diagnose 1..1 BackboneElement "Diagnose"
    * Haupttumordiagnose 1..1 code "Haupttumordiagnose" "Haupttumordiagnose in ICD-10-GM"
    * WeitereOnkologischeDiagnosen 0..* code "Weitere onkologische Diagnosen" "Optional bei mehreren onkologischen Diagnosen, insbesondere Dokumentation als weiter onkologische Diagnose bei hereditären Tumordispositionssydroms (HT), bei HT zusätzliche Dokumentation ORPHAcode oder AlphaID, ein Code soweit vorhanden ist. Undiagnostizierte Erkrankungen sind mit ORPHA:616874 zu kodieren."
    * Hauptdiagnosedatum 0..1 date "Hauptdiagnosedatum" "Datum der Erstdiagnose der Hauptdiagnose. Wenn Tag unbekannt -> 15. des Monats"
    * ECOGStatus 0..1 code "ECOG-Status" "Eastern Cooperative Oncology Group (ECOG) Performance Status nach 0,1,2,3,4,5,unknown, not applicable"
    * KeimbahndiagnoseVorhanden 0..1 code "Keimbahndiagnose vorhanden" "Ja, Nein, unbekannt"
    * Keimbahndiagnose 0..* code "Keimbahndiagnose" "Keimbahndiagnosen nach ICD-10-GM.Bei Diagnose eines hereditären Tumordispositionssydroms als Teil der OE ist verpflichtend anzugeben mit ICD10 und ORPHA oder AlphaID "
    * HPOPhaenotypisierung 0..* code "Phänotypisierung nach HPO " "Human Phenotype Ontology.Bei Diagnose eines hereditären Tumordispositionssydroms als Teil der OE, wenn vorhanden angeben (optional) "
    * Histologie 1..1 code "Histologie nach ICD-O-3" "Histologische Morphologie und Verhalten nach ICD-O-3"
    * Topographie 1..1 code "Topographie nach ICD-O-3" "Topographie des Tumors nach ICD-O-3"
    * Grading 0..1 code "Differenzierungsgrad" "Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an,  Bei der Klassifikation sind die einschlägigen Regeln der Literatur (TNM) zu beachten."
    * TNMSchlüssel 0..1 string "TNM-Klassifikation" "TNM-Klassifikation des Tumors"
    * TNMSystematik 0..1 code "TNM-Systematik" "TNM-Systematik nach AJCC oder UICC"
    * WeitereKlassifikationen 0..* string "Weitere Klassifikationen" "Weitere Klassifikationen des Tumors zum Diagnosezeitpunkt"
    * DiagnostischeVoruntersuchungen 0..* code "Diagnostische Voruntersuchungen" "Diagnostische Voruntersuchungen zum Diagnosezeitpunkt. Bewertung der durchgeführten genetischen Diagnostik, nur für heriditäre Prädispositionssyndrome/ Erbliche Tumore"
  * Vordiagnostik 0..* BackboneElement "Vordiagnostik"
    * ArtDiagnostik 1..1 code "Diagnostik" "Diagnostik, die vor dem MV Genomseq, durchgeführt wurde (Vorbefunde)"
    * DatumDiagnostik 0..1 date "Datum" "Datum der Diagnostik"
  * MolekulareVorbefunde 0..* BackboneElement "klinisch relevante Ergebnisse der Diagnostik"
    * Gen 1..1 code "Gen" "Gen kodiert nach HGNC"
    * Transkript 0..1 code "Transkript" "Transkript kodiert nach Ensembl/RefSeq"
    * DNAChange 0..1 code "DNA-Veränderung" "DNA-Verändung nach cHGVS"
    * ProteinChange 0..1 code "Protein-Veränderung" "Protein-Veränderung nach pHGVS"
    * Variantenklasse 0..1 code "Variantenklasse" "Variantenklasse nach Sequence ontology (SO)"
    * KomplexeAlteration 0..1 string "Komplexe Alteration" "Ausführliche Beschreibung bei komplexen Alteration z.B. Fusion"
  * SystemischeVortherapien 0..* BackboneElement "Systemische Vortherapien"
    * ArtTherapie 1..1 code "Bezug zur operativen Therapie" "Bezug der Vortherapie zu einer operativen Therapie, z.B. adjuvant, neoadjuvant"
    * IntentionTherapie 0..1 code "Intention" "Intention der Vortherapie, z.B. kurativ, palliativ"
    * Substanz 0..* code "Substanz" "Substanz der Vortherapie nach ATC oder Text bei nicht-ATC-Wirkstoffen"
    * Therapiestart 0..1 date "Startdatum" "Startdatum der Vortherapie. Wenn Datum unbekannt, dann 15. des Monats"
    * Therapieende 0..1 date "Enddatum" "Enddatum der Vortherapie. Wenn Datum unbekannt, dann 15. des Monats"
    * EndeGrund 0..1 code "Ende der Therapie" "Grund für das Ende der Vortherapie"
    * TherapieAnsprechen 0..1 code "Ansprechen" "Therapieansprechen der fallrelevante, systemische Vortherapie (PD: Progression, SD:Stabile Erkrankung, PR:Partielle Remission, CR:Komplette Remission)"
    * TherapieAnsprechenDatum 0..1 date "Datum" "Datum des Ansprechens der Vortherapie"

  

* OnkologieMolekular 0..* BackboneElement "Molekulare Diagnostik"
  * EinfacheVariante 0..* BackboneElement "Einfache Variante"
    * Gen 1..1 code "Gen" "Gen"
  * CopyNumberVariante 0..* BackboneElement "Einfache Variante"
    * CNVTyp 0..* BackboneElement "CNV-Typ" "Komplettverlust, partieller Verlust, Amplifikation"

  * StrukturelleVariante 0..* BackboneElement "Strukturelle Variante"
    * Gen 0..1 code "Gen" "N-terminales Gen"
    * GenC 0..1 code "Gen" "C-terminales Gen"
  * ExpressionsVariante 0..* BackboneElement "Expressionsvariante"

* OnkologiePlan 0..* BackboneElement "Therapieplan"
* OnkologieFollowup 0..* BackboneElement "Follow-up"

Mapping: Modellvorhaben-Genomsequenzierung-Onkologie-LogicalModel
Id: Modellvorhaben-Genomsequenzierung-FHIR
Title: "Onkologie LogicalModel FHIR Mapping"
Source: MII_LM_Modellvorhaben_Genomsequenzierung_Onko
* OnkologieFall 
  * Diagnose -> "Condition"
    * Haupttumordiagnose -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
    * WeitereOnkologischeDiagnosen -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
//* OnkologieMolekular
//* OnkologiePlan
//* OnkologieFollowup