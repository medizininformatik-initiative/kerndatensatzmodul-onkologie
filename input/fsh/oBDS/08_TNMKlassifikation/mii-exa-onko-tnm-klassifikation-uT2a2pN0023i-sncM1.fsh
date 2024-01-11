// TNM uT2a2 pN0 (0/23) (i-)(sn) cM1
Instance: mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = $SCT#399588009 "Pathologic TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-uT2a2)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-pN0i-sn)
* hasMember[2] = Reference(mii-exa-onko-anzahl-befallene-lymphknoten-0)
* hasMember[3] = Reference(mii-exa-onko-anzahl-untersuchte-lymphknoten-23)
* hasMember[4] = Reference(mii-exa-onko-tnm-n-kategorie-pN0i-sn)
* hasMember[5] = Reference(mii-exa-onko-tnm-m-kategorie-cM1)
* valueCodeableConcept = $UICC#IVC "Stage IVC"