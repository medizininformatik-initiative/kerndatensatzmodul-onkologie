Logical: MII_LM_Modellvorhaben_Genomsequenzierung_Onko
Parent: Element
Id: mii-lm-modellvorhaben-genomsequenzierung-onko
Title: "MII LM Modellvorhaben Genomsequenzierung Onkologie"
Description: "MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie"
* insert Publisher
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Modellvorhaben-Genomsequenzierung-Onkologie"
* OnkologieFall 0..* BackboneElement "Diagnose"
  * Haupttumordiagnose 0..1 code "Haupttumordiagnose" "Haupttumordiagnose in ICD-10-GM"
  * WeitereOnkologischeDiagnosen 0..* code "Weitere onkologische Diagnosen" "Optional bei mehreren onkologischen Diagnosen, insbesondere Dokumentation als weiter onkologische Diagnose bei hereditären Tumordispositionssydroms (HT), bei HT zusätzliche Dokumentation ORPHAcode oder AlphaID, ein Code soweit vorhanden ist. Undiagnostizierte Erkrankungen sind mit ORPHA:616874 zu kodieren."
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
* OnkologieFall -> "Condition"
  * Haupttumordiagnose -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
  * WeitereOnkologischeDiagnosen -> "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
//* OnkologieMolekular
//* OnkologiePlan
//* OnkologieFollowup