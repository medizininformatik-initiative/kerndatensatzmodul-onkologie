Instance: mii-exa-onko-tnm-klassifikation
InstanceOf: MII_PR_Onko_TNM_Klassifikation
Title: "TNM-Klassifikation"
* status = #final
* effectiveDateTime = "2023-02-20"
* subject = Reference(PatientExample)
* code = $LOINC#21908-9
  * coding.version = "8"
* component[y-Symbol].code.coding.userSelected = true
* component[r-Symbol].code.coding.userSelected = true
* component[a-Symbol].code.coding.userSelected = true
* component[T-Code]
  * extension[cpPraefix].valueCodeableConcept = $TNM#c
  * code = $LOINC#21905-5
  * valueCodeableConcept = $TNM#T3
* component[m-Symbol].code.coding.userSelected = true
* component[N-Code]
  * extension[cpPraefix].valueCodeableConcept = $TNM#p
  * code = $LOINC#21900-6
  * valueCodeableConcept = $TNM#N2
* component[M-Code]
  * extension[cpPraefix].valueCodeableConcept = $TNM#c
  * code = $LOINC#21907-1
  * valueCodeableConcept = $TNM#M1
* component[L-Deskriptor]
  * code.coding.userSelected = true
  * valueCodeableConcept = $TNM#LX
* component[V-Deskriptor]
  * code.coding.userSelected = true
  * valueCodeableConcept = $TNM#V2
* component[Pn-Deskriptor]
  * code.coding.userSelected = true
  * valueCodeableConcept = $TNM#Pn0
* component[S-Symbol]
  * code.coding.userSelected = true
  * valueCodeableConcept = $TNM#S3
