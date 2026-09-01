Instance: mii-cm-onko-atc-transitions-2021
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2021"
* name = "MII_CM_Onko_ATC_Transitions_2021"
* title = "MII CM Onko ATC Code Changes 2020 to 2021"
* status = #active
* experimental = false
* date = "2024-12-12"
* description = "Diese ConceptMap dokumentiert ausschließlich die ATC-Code-Änderungen von 2020 zu 2021. Im Jahr 2021 erfolgte eine umfassende Reorganisation der ATC-Klassifikation für onkologische Substanzen mit Umkodierung von über 60 Wirkstoffen."
* purpose = "Migration von ATC-Codes für Substanzen, die 2021 umkodiert wurden. Enthält nur geänderte Codes, keine neuen oder unveränderten Einträge."
* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2020"
* targetCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2021"

// Gruppe für alle Umkodierungen
* group[+].source = "http://fhir.de/CodeSystem/bfarm/atc"
* group[=].target = "http://fhir.de/CodeSystem/bfarm/atc"

// BCR-ABL Tyrosinkinase-Inhibitoren (L01XE → L01EA)
* group[=].element[+].code = #L01XE01
* group[=].element[=].display = "Imatinib"
* group[=].element[=].target[+].code = #L01EA01
* group[=].element[=].target[=].display = "Imatinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu BCR-ABL Tyrosinkinase-Inhibitoren"

* group[=].element[+].code = #L01XE06
* group[=].element[=].display = "Dasatinib"
* group[=].element[=].target[+].code = #L01EA02
* group[=].element[=].target[=].display = "Dasatinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE08
* group[=].element[=].display = "Nilotinib"
* group[=].element[=].target[+].code = #L01EA03
* group[=].element[=].target[=].display = "Nilotinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE14
* group[=].element[=].display = "Bosutinib"
* group[=].element[=].target[+].code = #L01EA04
* group[=].element[=].target[=].display = "Bosutinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE24
* group[=].element[=].display = "Ponatinib"
* group[=].element[=].target[+].code = #L01EA05
* group[=].element[=].target[=].display = "Ponatinib"
* group[=].element[=].target[=].equivalence = #equivalent

// EGFR Tyrosinkinase-Inhibitoren (L01XE → L01EB)
* group[=].element[+].code = #L01XE02
* group[=].element[=].display = "Gefitinib"
* group[=].element[=].target[+].code = #L01EB01
* group[=].element[=].target[=].display = "Gefitinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu EGFR Tyrosinkinase-Inhibitoren"

* group[=].element[+].code = #L01XE03
* group[=].element[=].display = "Erlotinib"
* group[=].element[=].target[+].code = #L01EB02
* group[=].element[=].target[=].display = "Erlotinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE13
* group[=].element[=].display = "Afatinib"
* group[=].element[=].target[+].code = #L01EB03
* group[=].element[=].target[=].display = "Afatinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE35
* group[=].element[=].display = "Osimertinib"
* group[=].element[=].target[+].code = #L01EB04
* group[=].element[=].target[=].display = "Osimertinib"
* group[=].element[=].target[=].equivalence = #equivalent

// BRAF Inhibitoren (L01XE → L01EC)
* group[=].element[+].code = #L01XE15
* group[=].element[=].display = "Vemurafenib"
* group[=].element[=].target[+].code = #L01EC01
* group[=].element[=].target[=].display = "Vemurafenib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu BRAF-Inhibitoren"

* group[=].element[+].code = #L01XE23
* group[=].element[=].display = "Dabrafenib"
* group[=].element[=].target[+].code = #L01EC02
* group[=].element[=].target[=].display = "Dabrafenib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE46
* group[=].element[=].display = "Encorafenib"
* group[=].element[=].target[+].code = #L01EC03
* group[=].element[=].target[=].display = "Encorafenib"
* group[=].element[=].target[=].equivalence = #equivalent

// ALK Inhibitoren (L01XE → L01ED)
* group[=].element[+].code = #L01XE16
* group[=].element[=].display = "Crizotinib"
* group[=].element[=].target[+].code = #L01ED01
* group[=].element[=].target[=].display = "Crizotinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu ALK-Inhibitoren"

* group[=].element[+].code = #L01XE28
* group[=].element[=].display = "Ceritinib"
* group[=].element[=].target[+].code = #L01ED02
* group[=].element[=].target[=].display = "Ceritinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE36
* group[=].element[=].display = "Alectinib"
* group[=].element[=].target[+].code = #L01ED03
* group[=].element[=].target[=].display = "Alectinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE43
* group[=].element[=].display = "Brigatinib"
* group[=].element[=].target[+].code = #L01ED04
* group[=].element[=].target[=].display = "Brigatinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE44
* group[=].element[=].display = "Lorlatinib"
* group[=].element[=].target[+].code = #L01ED05
* group[=].element[=].target[=].display = "Lorlatinib"
* group[=].element[=].target[=].equivalence = #equivalent

// MEK Inhibitoren (L01XE → L01EE)
* group[=].element[+].code = #L01XE25
* group[=].element[=].display = "Trametinib"
* group[=].element[=].target[+].code = #L01EE01
* group[=].element[=].target[=].display = "Trametinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu MEK-Inhibitoren"

* group[=].element[+].code = #L01XE38
* group[=].element[=].display = "Cobimetinib"
* group[=].element[=].target[+].code = #L01EE02
* group[=].element[=].target[=].display = "Cobimetinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE41
* group[=].element[=].display = "Binimetinib"
* group[=].element[=].target[+].code = #L01EE03
* group[=].element[=].target[=].display = "Binimetinib"
* group[=].element[=].target[=].equivalence = #equivalent

// CDK4/6 Inhibitoren (L01XE → L01EF)
* group[=].element[+].code = #L01XE33
* group[=].element[=].display = "Palbociclib"
* group[=].element[=].target[+].code = #L01EF01
* group[=].element[=].target[=].display = "Palbociclib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu CDK4/6-Inhibitoren"

* group[=].element[+].code = #L01XE42
* group[=].element[=].display = "Ribociclib"
* group[=].element[=].target[+].code = #L01EF02
* group[=].element[=].target[=].display = "Ribociclib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE50
* group[=].element[=].display = "Abemaciclib"
* group[=].element[=].target[+].code = #L01EF03
* group[=].element[=].target[=].display = "Abemaciclib"
* group[=].element[=].target[=].equivalence = #equivalent

// mTOR Inhibitoren (L01XE → L01EG)
* group[=].element[+].code = #L01XE09
* group[=].element[=].display = "Temsirolimus"
* group[=].element[=].target[+].code = #L01EG01
* group[=].element[=].target[=].display = "Temsirolimus"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu mTOR-Inhibitoren"

* group[=].element[+].code = #L01XE10
* group[=].element[=].display = "Everolimus"
* group[=].element[=].target[+].code = #L01EG02
* group[=].element[=].target[=].display = "Everolimus"
* group[=].element[=].target[=].equivalence = #equivalent

// HER2 Inhibitoren (L01XE → L01EH)
* group[=].element[+].code = #L01XE07
* group[=].element[=].display = "Lapatinib"
* group[=].element[=].target[+].code = #L01EH01
* group[=].element[=].target[=].display = "Lapatinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu HER2-Inhibitoren"

* group[=].element[+].code = #L01XE45
* group[=].element[=].display = "Neratinib"
* group[=].element[=].target[+].code = #L01EH02
* group[=].element[=].target[=].display = "Neratinib"
* group[=].element[=].target[=].equivalence = #equivalent

// JAK Inhibitoren (L01XE → L01EJ)
* group[=].element[+].code = #L01XE18
* group[=].element[=].display = "Ruxolitinib"
* group[=].element[=].target[+].code = #L01EJ01
* group[=].element[=].target[=].display = "Ruxolitinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu JAK-Inhibitoren"

// VEGFR Inhibitoren (L01XE → L01EK)
* group[=].element[+].code = #L01XE17
* group[=].element[=].display = "Axitinib"
* group[=].element[=].target[+].code = #L01EK01
* group[=].element[=].target[=].display = "Axitinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu VEGFR-Inhibitoren"

* group[=].element[+].code = #L01XE34
* group[=].element[=].display = "Tivozanib"
* group[=].element[=].target[+].code = #L01EK03
* group[=].element[=].target[=].display = "Tivozanib"
* group[=].element[=].target[=].equivalence = #equivalent

// BTK Inhibitoren (L01XE → L01EL)
* group[=].element[+].code = #L01XE27
* group[=].element[=].display = "Ibrutinib"
* group[=].element[=].target[+].code = #L01EL01
* group[=].element[=].target[=].display = "Ibrutinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu BTK-Inhibitoren"

* group[=].element[+].code = #L01XE51
* group[=].element[=].display = "Acalabrutinib"
* group[=].element[=].target[+].code = #L01EL02
* group[=].element[=].target[=].display = "Acalabrutinib"
* group[=].element[=].target[=].equivalence = #equivalent

// PI3K Inhibitoren (L01XX → L01EM)
* group[=].element[+].code = #L01XX47
* group[=].element[=].display = "Idelalisib"
* group[=].element[=].target[+].code = #L01EM01
* group[=].element[=].target[=].display = "Idelalisib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu PI3K-Inhibitoren"

* group[=].element[+].code = #L01XX61
* group[=].element[=].display = "Copanlisib"
* group[=].element[=].target[+].code = #L01EM02
* group[=].element[=].target[=].display = "Copanlisib"
* group[=].element[=].target[=].equivalence = #equivalent

// Andere Proteinkinase-Inhibitoren (L01XE → L01EX)
* group[=].element[+].code = #L01XE04
* group[=].element[=].display = "Sunitinib"
* group[=].element[=].target[+].code = #L01EX01
* group[=].element[=].target[=].display = "Sunitinib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu andere Proteinkinase-Inhibitoren"

* group[=].element[+].code = #L01XE05
* group[=].element[=].display = "Sorafenib"
* group[=].element[=].target[+].code = #L01EX02
* group[=].element[=].target[=].display = "Sorafenib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE12
* group[=].element[=].display = "Vandetanib"
* group[=].element[=].target[+].code = #L01EX04
* group[=].element[=].target[=].display = "Vandetanib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE21
* group[=].element[=].display = "Regorafenib"
* group[=].element[=].target[+].code = #L01EX05
* group[=].element[=].target[=].display = "Regorafenib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE26
* group[=].element[=].display = "Cabozantinib"
* group[=].element[=].target[+].code = #L01EX07
* group[=].element[=].target[=].display = "Cabozantinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE29
* group[=].element[=].display = "Lenvatinib"
* group[=].element[=].target[+].code = #L01EX08
* group[=].element[=].target[=].display = "Lenvatinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE31
* group[=].element[=].display = "Nintedanib"
* group[=].element[=].target[+].code = #L01EX09
* group[=].element[=].target[=].display = "Nintedanib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE39
* group[=].element[=].display = "Midostaurin"
* group[=].element[=].target[+].code = #L01EX10
* group[=].element[=].target[=].display = "Midostaurin"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE52
* group[=].element[=].display = "Quizartinib"
* group[=].element[=].target[+].code = #L01EX11
* group[=].element[=].target[=].display = "Quizartinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE53
* group[=].element[=].display = "Larotrectinib"
* group[=].element[=].target[+].code = #L01EX12
* group[=].element[=].target[=].display = "Larotrectinib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XE54
* group[=].element[=].display = "Gilteritinib"
* group[=].element[=].target[+].code = #L01EX13
* group[=].element[=].target[=].display = "Gilteritinib"
* group[=].element[=].target[=].equivalence = #equivalent

// Retinoide (L01XX → L01XF)
* group[=].element[+].code = #L01XX14
* group[=].element[=].display = "Tretinoin"
* group[=].element[=].target[+].code = #L01XF01
* group[=].element[=].target[=].display = "Tretinoin"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Retinoide"

* group[=].element[+].code = #L01XX22
* group[=].element[=].display = "Alitretinoin"
* group[=].element[=].target[+].code = #L01XF02
* group[=].element[=].target[=].display = "Alitretinoin"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XX25
* group[=].element[=].display = "Bexaroten"
* group[=].element[=].target[+].code = #L01XF03
* group[=].element[=].target[=].display = "Bexaroten"
* group[=].element[=].target[=].equivalence = #equivalent

// Proteasom-Inhibitoren (L01XX → L01XG)
* group[=].element[+].code = #L01XX32
* group[=].element[=].display = "Bortezomib"
* group[=].element[=].target[+].code = #L01XG01
* group[=].element[=].target[=].display = "Bortezomib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Proteasom-Inhibitoren"

* group[=].element[+].code = #L01XX45
* group[=].element[=].display = "Carfilzomib"
* group[=].element[=].target[+].code = #L01XG02
* group[=].element[=].target[=].display = "Carfilzomib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XX50
* group[=].element[=].display = "Ixazomib"
* group[=].element[=].target[+].code = #L01XG03
* group[=].element[=].target[=].display = "Ixazomib"
* group[=].element[=].target[=].equivalence = #equivalent

// Histon-Deacetylase-Inhibitoren (L01XX → L01XH)
* group[=].element[+].code = #L01XX38
* group[=].element[=].display = "Vorinostat"
* group[=].element[=].target[+].code = #L01XH01
* group[=].element[=].target[=].display = "Vorinostat"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Histon-Deacetylase-Inhibitoren"

* group[=].element[+].code = #L01XX39
* group[=].element[=].display = "Romidepsin"
* group[=].element[=].target[+].code = #L01XH02
* group[=].element[=].target[=].display = "Romidepsin"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XX42
* group[=].element[=].display = "Panobinostat"
* group[=].element[=].target[+].code = #L01XH03
* group[=].element[=].target[=].display = "Panobinostat"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XX49
* group[=].element[=].display = "Belinostat"
* group[=].element[=].target[+].code = #L01XH04
* group[=].element[=].target[=].display = "Belinostat"
* group[=].element[=].target[=].equivalence = #equivalent

// Hedgehog-Signalweg-Inhibitoren (L01XX → L01XJ)
* group[=].element[+].code = #L01XX43
* group[=].element[=].display = "Vismodegib"
* group[=].element[=].target[+].code = #L01XJ01
* group[=].element[=].target[=].display = "Vismodegib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Hedgehog-Signalweg-Inhibitoren"

* group[=].element[+].code = #L01XX63
* group[=].element[=].display = "Glasdegib"
* group[=].element[=].target[+].code = #L01XJ03
* group[=].element[=].target[=].display = "Glasdegib"
* group[=].element[=].target[=].equivalence = #equivalent

// PARP-Inhibitoren (L01XX → L01XK)
* group[=].element[+].code = #L01XX46
* group[=].element[=].display = "Olaparib"
* group[=].element[=].target[+].code = #L01XK01
* group[=].element[=].target[=].display = "Olaparib"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu PARP-Inhibitoren"

* group[=].element[+].code = #L01XX54
* group[=].element[=].display = "Niraparib"
* group[=].element[=].target[+].code = #L01XK02
* group[=].element[=].target[=].display = "Niraparib"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #L01XX60
* group[=].element[=].display = "Talazoparib"
* group[=].element[=].target[+].code = #L01XK04
* group[=].element[=].target[=].display = "Talazoparib"
* group[=].element[=].target[=].equivalence = #equivalent

// Topoisomerase-Inhibitoren (L01XX → L01CE)
* group[=].element[+].code = #L01XX17
* group[=].element[=].display = "Topotecan"
* group[=].element[=].target[+].code = #L01CE01
* group[=].element[=].target[=].display = "Topotecan"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reklassifizierung zu Topoisomerase-I-Inhibitoren"

* group[=].element[+].code = #L01XX19
* group[=].element[=].display = "Irinotecan"
* group[=].element[=].target[+].code = #L01CE02
* group[=].element[=].target[=].display = "Irinotecan"
* group[=].element[=].target[=].equivalence = #equivalent