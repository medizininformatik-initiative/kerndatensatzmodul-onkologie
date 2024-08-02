Instance: mii-exa-onko-verlauf-tumor
InstanceOf: mii-pr-onko-verlauf
Usage: #example
* status = #final
* code = $SCT#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(Patient/example)

* effectiveDateTime = "2024-02-08"
* component[Tumor_Verlauf].code.coding = $SCT#277062004 "Status des Residualtumors"
* component[Tumor_Verlauf].valueCodeableConcept.coding = $mii-cs-onko-verlauf-primaertumor#T "Tumorreste (Residualtumor)"



