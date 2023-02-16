Instance: mii-cm-onko-strahlentherapie-applikationsart-ops-mapping
InstanceOf: ConceptMap
Usage: #definition
Title: "MII CM Onko Strahlentherapie Applikationsart / OPS Mapping"
Description: "Mapping von \"Strahlentherapie Applikationsart\" nach OPS"
* version = "0.1.0"
* name = "ConfoundingConditionMapping"
* status = #draft
* sourceCanonical = Canonical(MII_VS_Onko_Strahlentherapie_Applikationsart)
* targetUri = $OPS
* group.source = Canonical(MII_VS_Onko_Strahlentherapie_Applikationsart)
* group.target = $OPS
* group.element[+].code = #P
* group.element[=].display = "perkutan (Teletherapie)"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #P-ST
* group.element[=].display = "perkutan stereotaktisch"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #P-4D
* group.element[=].display = "perkutan, atemgetriggert"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #P-ST4D
* group.element[=].display = "perkutan, stereotaktisch, atemgetriggert"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #PRCN-ST
* group.element[=].display = "perkutan, stereotaktisch ohne Chemotherapie/Sensitizer"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #PRCN-4D
* group.element[=].display = "perkutan, atemgetriggert, ohne Chemotherapie/Sensitizer"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #PRCN-ST4D
* group.element[=].display = "perkutan, stereotaktisch, atemgetriggert, ohne Chemotherapie/Sensitizer"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #PRCJ
* group.element[=].display = "perkutan mit Chemotherapie/Sensitizer"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #PRCJ-4D
* group.element[=].display = "perkutan, atemgetriggert, mit Chemotherapie/Sensitizer"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #K
* group.element[=].display = "endokavitäre Kontakttherapie"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #KHDR
* group.element[=].display = "endokavitäre Kontakttherapie, high dose rate therapy"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #KLDR
* group.element[=].display = "endokavitäre Kontakttherapie, low dose rate therapy"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #KPDR
* group.element[=].display = "endokavitäre Kontakttherapie, pulsed dose rate therapy"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #I
* group.element[=].display = "intersitielle Kontakttherapie"
* group.element[=].target.code = #8-525.1
* group.element[=].target.display = "Interstitielle Brachytherapie mit Volumenimplantation von entfernbaren Strahlern in mehreren Ebenen"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #IHDR
* group.element[=].display = "intersitielle Kontakttherapie, high dose rate therapy"
* group.element[=].target.code = #8-525.12
* group.element[=].target.display = "Interstitielle Brachytherapie mit Volumenimplantation von entfernbaren Strahlern in mehreren Ebenen (Hohe Dosisleistung)"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ILDR
* group.element[=].display = "intersitielle Kontakttherapie, low dose rate therapy"
* group.element[=].target.code = #8-525.10
* group.element[=].target.display = "Interstitielle Brachytherapie mit Volumenimplantation von entfernbaren Strahlern in mehreren Ebenen (Niedrige Dosisleistung)"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #IPDR
* group.element[=].display = "intersitielle Kontakttherapie, pulsed dose rate therapy"
* group.element[=].target.code = #8-525.11
* group.element[=].target.display = "Interstitielle Brachytherapie mit Volumenimplantation von entfernbaren Strahlern in mehreren Ebenen (Gepulste Dosisleistung (Pulsed dose rate))"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #MSIRT
* group.element[=].display = "selektive interne Radio-Therapie"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #MPRRT
* group.element[=].display = "Peptid-Radio-Rezeptor-Therapie"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #MPSMA
* group.element[=].display = "PSMA-Therapie"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #MRJT
* group.element[=].display = "Radiojod-Therapie"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #MRIT
* group.element[=].display = "Radioimmun-Therapie"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #M
* group.element[=].display = "sonstige metabolische Radionuklidtherapie"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #S
* group.element[=].display = "Sonstiges"
* group.element[=].target.equivalence = #unmatched
