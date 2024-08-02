Instance: mii-exa-onko-verlauf-tumor
InstanceOf: mii-pr-onko-verlauf
Usage: #example
* status = #final
* code = $SCT#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(Patient/example)
* focus = Reference(Condition/exampleOncologicCondition)


* effectiveDateTime = "2024-02-08"

* valueCodeableConcept.coding = $mii-cs-onko-verlauf-gesamtbeurteilung#B "klinische Besserung des Zustandes, Teilremissionkriterien jedoch nicht erfüllt (minimal response, MR)"
* component[Tumor_Verlauf].code.coding = $SCT#277062004 "Status des Residualtumors"
* component[Tumor_Verlauf].valueCodeableConcept.coding = $mii-cs-onko-verlauf-primaertumor#T "Tumorreste (Residualtumor)"
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Status of tumor metastasis to regional lymph nodes (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding = $mii-cs-onko-verlauf-lymphknoten#P "bekannter Lymphknotenbefall Progress"
* component[Fernmetastasen_Verlauf].code.coding = $SCT#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding = $mii-cs-onko-verlauf-fernmetastasen#K "kein Fernmetastasen nachweisbar"



