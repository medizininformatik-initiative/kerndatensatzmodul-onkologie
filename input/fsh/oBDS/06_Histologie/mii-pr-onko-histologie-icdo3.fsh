Profile: MII_PR_Onko_Histologie_ICDO3
Parent: Observation
Id: mii-pr-onko-histologie-icdo3
Title: "MII PR Onkologie Histologie ICD-O-3"
Description: "Histologie-Kodierung nach ICD-0 für die Verwendung von Folgediagnostik. Bei der histologischen Beurteilung des Primärtumors sind die histologischen Informationen direkt über die Condition-Ressource abzubilden."
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* code MS
* code ^short = "Histologische Bewertung nach ICD-0-3"
* code.coding MS
* code.coding = $LNC#59847-4 
* effective[x] MS
* effective[x] only dateTime
* insert Label (effectiveDateTime, Datum der histologischen Untersuchung, Datum der histologischen Untersuchung im Krankheitsverlauf)
* insert Translation(effectiveDateTime ^short, de-DE, Datum der histologischen Untersuchung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der histologischen Untersuchung im Krankheitsverlauf)
* subject 1.. MS
* subject only Reference(Patient)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from MII_VS_Onko_ICDO3_Morphologie (required)
* valueCodeableConcept.coding 0..1 MS
* valueCodeableConcept.text 0..1 MS
* insert Label (valueCodeableConcept.coding.code, Morphologie-Kode, Morphologie als ICD-O-3 nach 6.3 oBDS 2021)
* insert Translation(valueCodeableConcept.coding.code ^short, de-DE, Morphologie-Kode )
* insert Translation(valueCodeableConcept.coding.code ^definition, de-DE, Morphologie als ICD-O-3 nach 6.3 oBDS 2021 )
* insert Label (valueCodeableConcept.coding.version, Morphologie-Kode-Version, Version der ICD-O-3 bzw. Blue Book nach 6.4 oBDS 2021)
* insert Translation(valueCodeableConcept.coding.version ^short, de-DE, Morphologie-Kode-Version )
* insert Translation(valueCodeableConcept.coding.version ^definition, de-DE, Version der ICD-O-3 bzw. Blue Book nach 6.4 oBDS 2021 )


* bodySite.coding MS
* bodySite.coding ^slicing.discriminator.type = #pattern
* bodySite.coding ^slicing.discriminator.path = "$this"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains 
    Seitenlokalisation 0..1 MS and
    icd-o-3 0..1 MS
* bodySite.coding[Seitenlokalisation] from mii-vs-onko-seitenlokalisation
* bodySite.coding[Seitenlokalisation].system 1.. MS
* bodySite.coding[Seitenlokalisation] ^patternCoding.system = $mii-cs-onko-seitenlokalisation
* bodySite.coding[Seitenlokalisation].code 1.. MS
* insert Label (bodySite.coding[Seitenlokalisation], Seitenlokalisation, Seitenlokalisation bei paarigen Organen)
* insert Translation(bodySite.coding[Seitenlokalisation] ^short, de-DE, Seitenlokalisation )
* insert Translation(bodySite.coding[Seitenlokalisation] ^definition, de-DE, Seitenlokalisation bei paarigen Organen )

* bodySite.coding[icd-o-3].system 1.. MS
* bodySite.coding[icd-o-3] ^patternCoding.system = $ICDO3
* bodySite.coding[icd-o-3].code 1.. MS
// Binding auf coding-Ebene (nicht .code): Bei nacktem code kann der Validator das
// System nicht bestimmen, sobald das VS mehrere Versions-Kanten hat (Union 2014+2019).
* bodySite.coding[icd-o-3] from MII_VS_Onko_ICDO3_Topographie (required)
* insert Label (bodySite.coding[icd-o-3], ICD-O-3 Topographie, ICD-O-3 Topographie bei vom Primärtumor abweichender Lokalisation in der Verlaufsbeschreibung)
* insert Translation(bodySite.coding[icd-o-3] ^short, de-DE, ICD-O-3 Topographie )
* insert Translation(bodySite.coding[icd-o-3] ^definition, de-DE, ICD-O-3 Topographie bei vom Primärtumor abweichender Lokalisation in der Verlaufsbeschreibung)


* specimen MS 
* specimen 1..1
* specimen only Reference(MII_PR_Onko_Specimen)

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)
 
Mapping: FHIR-oBDS-Histologie-ICD-O-3
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Histologie_ICDO3
* effectiveDateTime -> "6.1" "Datum der histologischen Untersuchung (oBDS 6.1 'Tumor Histologiedatum' = Probenentnahme ist im Specimen.collection.collectedDateTime abgebildet)"
* specimen -> "6.1" "Tumor Histologiedatum = Datum der Probenentnahme (siehe Specimen.collection.collectedDateTime)"
* valueCodeableConcept.coding.code -> "6.3" "Morphologie-Code"
* valueCodeableConcept.coding.version -> "6.4" "Morphologie ICD-O/Blue Book Version"
* valueCodeableConcept.text -> "6.5" "Morphologie Freitext"
