Instance: mii-cm-onko-tnm-uicc-sct-clinical
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tnm-uicc-sct-clinical"
* name = "MII CM Onko Clincal TNM UICC SCT Mapping"
* title = "MII CM Onko Clincal TNM UICC SNOMED"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2026-11-04"
* description = "Mapping clincal TNM UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt gegen SNOMED CT International 20240401; am 2026-11-04 gegen International 20261001 nachkuratiert (alle Zielkonzepte auf Aktivitaet geprueft, inaktivierte Ziele ersetzt, seit 2024 neu veroeffentlichte Konzepte fuer bisher unbesetzte Werte ergaenzt, Ober-/Unterkonzepte mit equivalence wider/narrower nachgetragen). Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* group.source = "https://www.uicc.org/resources/tnm"
* group.target = "http://snomed.info/sct"
* group.targetVersion = "http://snomed.info/sct/900000000000207008/version/20261001"
* group.element[+].code = #y
* group.element[=].display = "y"
* group.element[=].target.code = #421755005
* group.element[=].target.display = "Tumor staging descriptor y (tumor staging)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #r
* group.element[=].display = "r"
* group.element[=].target.code = #421188008
* group.element[=].target.display = "Tumor staging descriptor r (tumor staging)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #a
* group.element[=].display = "a"
* group.element[=].target.code = #421426001
* group.element[=].target.display = "Tumor staging descriptor a (tumor staging)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #c
* group.element[=].display = "c"
* group.element[=].target.code = #1397043001
* group.element[=].target.display = "Union for International Cancer Control c prefix (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260601"

* group.element[+].code = #p
* group.element[=].display = "p"
* group.element[=].target.code = #1397044007
* group.element[=].target.display = "Union for International Cancer Control p prefix (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260601"

* group.element[+].code = #u
* group.element[=].display = "u"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"

* group.element[+].code = #TX
* group.element[=].display = "TX"
* group.element[=].target.code = #1352975000
* group.element[=].target.display = "Union for International Cancer Control cTX (qualifier value)"
* group.element[=].target.equivalence = #equivalent  

* group.element[+].code = #T0
* group.element[=].display = "T0"
* group.element[=].target.code = #1352986003
* group.element[=].target.display = "Union for International Cancer Control cT0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
   
* group.element[+].code = #Ta
* group.element[=].display = "Ta"
* group.element[=].target.code = #1352961007
* group.element[=].target.display = "Union for International Cancer Control cTa (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis
* group.element[=].display = "Tis"
* group.element[=].target.code = #1352984000
* group.element[=].target.display = "Union for International Cancer Control cTis (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(LAMN)
* group.element[=].display = "Tis(LAMN)"
* group.element[=].target.code = #1352964004
* group.element[=].target.display = "Union for International Cancer Control cTis(LAMN) (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(DCIS)
* group.element[=].display = "Tis(DCIS)"
* group.element[=].target.code = #1352965003
* group.element[=].target.display = "Union for International Cancer Control cTis(DCIS) (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(LCIS)
* group.element[=].display = "Tis(LCIS)"
* group.element[=].target.code = #1351846009
* group.element[=].target.display = "Union for International Cancer Control cTis(LCIS) (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(Paget)
* group.element[=].display = "Tis(Paget)"
* group.element[=].target.code = #1352987007
* group.element[=].target.display = "Union for International Cancer Control cTis(Paget) (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(pu)
* group.element[=].display = "Tis(pu)"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"

* group.element[+].code = #Tis(pd)
* group.element[=].display = "Tis(pd)"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"

* group.element[+].code = #T1
* group.element[=].display = "T1"
* group.element[=].target.code = #1352996007
* group.element[=].target.display = "Union for International Cancer Control cT1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1mi
* group.element[=].display = "T1mi"
* group.element[=].target.code = #1352979006
* group.element[=].target.display = "Union for International Cancer Control cT1mi (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1a
* group.element[=].display = "T1a"
* group.element[=].target.code = #1352983006
* group.element[=].target.display = "Union for International Cancer Control cT1a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1a1
* group.element[=].display = "T1a1"
* group.element[=].target.code = #1352959003
* group.element[=].target.display = "Union for International Cancer Control cT1a1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1a2
* group.element[=].display = "T1a2"
* group.element[=].target.code = #1352988002
* group.element[=].target.display = "Union for International Cancer Control cT1a2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1b
* group.element[=].display = "T1b"
* group.element[=].target.code = #1352968001
* group.element[=].target.display = "Union for International Cancer Control cT1b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1b1
* group.element[=].display = "T1b1"
* group.element[=].target.code = #1352985004
* group.element[=].target.display = "Union for International Cancer Control cT1b1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1b2
* group.element[=].display = "T1b2"
* group.element[=].target.code = #1352992009
* group.element[=].target.display = "Union for International Cancer Control cT1b2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1c
* group.element[=].display = "T1c"
* group.element[=].target.code = #1352973007
* group.element[=].target.display = "Union for International Cancer Control cT1c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1c1
* group.element[=].display = "T1c1"
* group.element[=].target.code = #1352995006
* group.element[=].target.display = "Union for International Cancer Control cT1c1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1c2
* group.element[=].display = "T1c2"
* group.element[=].target.code = #1352977008
* group.element[=].target.display = "Union for International Cancer Control cT1c2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1c3
* group.element[=].display = "T1c3"
* group.element[=].target.code = #1352958006
* group.element[=].target.display = "Union for International Cancer Control cT1c3 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #T1d
* group.element[=].display = "T1d"
* group.element[=].target.code = #1352978003
* group.element[=].target.display = "Union for International Cancer Control cT1d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2
* group.element[=].display = "T2"
* group.element[=].target.code = #1352993004
* group.element[=].target.display = "Union for International Cancer Control cT2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2a
* group.element[=].display = "T2a"
* group.element[=].target.code = #1352962000
* group.element[=].target.display = "Union for International Cancer Control cT2a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2a1
* group.element[=].display = "T2a1"
* group.element[=].target.code = #1352990001
* group.element[=].target.display = "Union for International Cancer Control cT2a1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2a2
* group.element[=].display = "T2a2"
* group.element[=].target.code = #1352967006
* group.element[=].target.display = "Union for International Cancer Control cT2a2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2b
* group.element[=].display = "T2b"
* group.element[=].target.code = #1352972002
* group.element[=].target.display = "Union for International Cancer Control cT2b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2c
* group.element[=].display = "T2c2"
* group.element[=].target.code = #1352969009
* group.element[=].target.display = "Union for International Cancer Control cT2c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2d
* group.element[=].display = "T2d"
* group.element[=].target.code = #1352971009
* group.element[=].target.display = "Union for International Cancer Control cT2d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3
* group.element[=].display = "T3"
* group.element[=].target.code = #1352966002
* group.element[=].target.display = "Union for International Cancer Control cT3 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3a
* group.element[=].display = "T3a"
* group.element[=].target.code = #1352989005
* group.element[=].target.display = "Union for International Cancer Control cT3a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3b
* group.element[=].display = "T3b"
* group.element[=].target.code = #1352991002
* group.element[=].target.display = "Union for International Cancer Control cT3b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3c
* group.element[=].display = "T3c"
* group.element[=].target.code = #1352976004
* group.element[=].target.display = "Union for International Cancer Control cT3c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3d
* group.element[=].display = "Td3"
* group.element[=].target.code = #1352994005
* group.element[=].target.display = "Union for International Cancer Control cT3d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3e
* group.element[=].display = "T3e"
* group.element[=].target.code = #1352974001
* group.element[=].target.display = "Union for International Cancer Control cT3e (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4
* group.element[=].display = "T4"
* group.element[=].target.code = #1352997003
* group.element[=].target.display = "Union for International Cancer Control cT4 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4a
* group.element[=].display = "T4a"
* group.element[=].target.code = #1352982001
* group.element[=].target.display = "Union for International Cancer Control cT4a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4b
* group.element[=].display = "T4b"
* group.element[=].target.code = #1352960008
* group.element[=].target.display = "Union for International Cancer Control cT4b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4c
* group.element[=].display = "T4c"
* group.element[=].target.code = #1352980009
* group.element[=].target.display = "Union for International Cancer Control cT4c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4d
* group.element[=].display = "T4d"
* group.element[=].target.code = #1352963005
* group.element[=].target.display = "Union for International Cancer Control cT4d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4e
* group.element[=].display = "T4e"
* group.element[=].target.code = #1352981008
* group.element[=].target.display = "Union for International Cancer Control cT4e (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #m
* group.element[=].display = "m"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"

* group.element[+].code = #2
* group.element[=].display = "2"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #3
* group.element[=].display = "3"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #4
* group.element[=].display = "4"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #5
* group.element[=].display = "5"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #6
* group.element[=].display = "6"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #7
* group.element[=].display = "7"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #8
* group.element[=].display = "8"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #9
* group.element[=].display = "9"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #10
* group.element[=].display = "10"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"

* group.element[+].code = #NX
* group.element[=].display = "Nx"
* group.element[=].target.code = #1353039008
* group.element[=].target.display = "Union for International Cancer Control cNX (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N0
* group.element[=].display = "N0"
* group.element[=].target.code = #1353041009
* group.element[=].target.display = "Union for International Cancer Control cN0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1
* group.element[=].display = "N1"
* group.element[=].target.code = #1353043007
* group.element[=].target.display = "Union for International Cancer Control cN1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1mi
* group.element[=].display = "N1(mi)"
* group.element[=].target.code = #1353045000
* group.element[=].target.display = "Union for International Cancer Control cN1mi (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20250101"

* group.element[+].code = #N1a
* group.element[=].display = "N1a"
* group.element[=].target.code = #1353046004
* group.element[=].target.display = "Union for International Cancer Control cN1a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1b
* group.element[=].display = "N1b"
* group.element[=].target.code = #1353048003
* group.element[=].target.display = "Union for International Cancer Control cN1b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1c
* group.element[=].display = "N1c"
* group.element[=].target.code = #1353044001
* group.element[=].target.display = "Union for International Cancer Control cN1c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N2
* group.element[=].display = "N2"
* group.element[=].target.code = #1353047008
* group.element[=].target.display = "Union for International Cancer Control cN2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N2a
* group.element[=].display = "N2a"
* group.element[=].target.code = #1353050006
* group.element[=].target.display = "Union for International Cancer Control cN2a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N2b
* group.element[=].display = "N2b"
* group.element[=].target.code = #1353055001
* group.element[=].target.display = "Union for International Cancer Control cN2b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N2c
* group.element[=].display = "N2c"
* group.element[=].target.code = #1353049006
* group.element[=].target.display = "Union for International Cancer Control cN2c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N3
* group.element[=].display = "N3"
* group.element[=].target.code = #1353053008
* group.element[=].target.display = "Union for International Cancer Control cN3 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N3a
* group.element[=].display = "N3a"
* group.element[=].target.code = #1353057009
* group.element[=].target.display = "Union for International Cancer Control cN3a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N3b
* group.element[=].display = "N3b"
* group.element[=].target.code = #1353054002
* group.element[=].target.display = "Union for International Cancer Control cN3b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N3c
* group.element[=].display = "N3c"
* group.element[=].target.code = #1353051005
* group.element[=].target.display = "Union for International Cancer Control cN3c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M0
* group.element[=].display = "M0"
* group.element[=].target.code = #1352512001
* group.element[=].target.display = "Union for International Cancer Control cM0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1
* group.element[=].display = "M1"
* group.element[=].target.code = #1352513006
* group.element[=].target.display = "Union for International Cancer Control cM1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1a
* group.element[=].display = "M1a"
* group.element[=].target.code = #1352517007
* group.element[=].target.display = "Union for International Cancer Control cM1a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1b
* group.element[=].display = "M1b"
* group.element[=].target.code = #1352514000
* group.element[=].target.display = "Union for International Cancer Control cM1b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1c
* group.element[=].display = "M1c"
* group.element[=].target.code = #1352516003
* group.element[=].target.display = "Union for International Cancer Control cM1c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1d
* group.element[=].display = "M1d"
* group.element[=].target.code = #1352510009
* group.element[=].target.display = "Union for International Cancer Control cM1d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #MX
* group.element[=].display = "MX"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"

* group.element[+].code = #i+
* group.element[=].display = "i+"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"

* group.element[+].code = #i-
* group.element[=].display = "i-"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"

* group.element[+].code = #mol+
* group.element[=].display = "mol+"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"

* group.element[+].code = #mol-
* group.element[=].display = "mol-"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"

* group.element[+].code = #sn
* group.element[=].display = "sn"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"

* group.element[+].code = #L0
* group.element[=].display = "L0"
* group.element[=].target.code = #1380127005
* group.element[=].target.display = "Union for International Cancer Control L0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"

* group.element[+].code = #L1
* group.element[=].display = "L1"
* group.element[=].target.code = #1380125002
* group.element[=].target.display = "Union for International Cancer Control L1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"

* group.element[+].code = #LX
* group.element[=].display = "LX"
* group.element[=].target.code = #1380126001
* group.element[=].target.display = "Union for International Cancer Control LX (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"

* group.element[+].code = #V0
* group.element[=].display = "V0"
* group.element[=].target.code = #1380138005
* group.element[=].target.display = "Union for International Cancer Control V0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"

* group.element[+].code = #V1
* group.element[=].display = "V1"
* group.element[=].target.code = #1380137000
* group.element[=].target.display = "Union for International Cancer Control V1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"

* group.element[+].code = #V2
* group.element[=].display = "V2"
* group.element[=].target.code = #1380139002
* group.element[=].target.display = "Union for International Cancer Control V2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"

* group.element[+].code = #VX
* group.element[=].display = "VX"
* group.element[=].target.code = #1380136009
* group.element[=].target.display = "Union for International Cancer Control VX (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"

* group.element[+].code = #Pn0
* group.element[=].display = "Pn0"
* group.element[=].target.code = #1386331003
* group.element[=].target.display = "Union for International Cancer Control Pn0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260201"

* group.element[+].code = #Pn1
* group.element[=].display = "Pn1"
* group.element[=].target.code = #1386332005
* group.element[=].target.display = "Union for International Cancer Control Pn1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260201"

* group.element[+].code = #PnX
* group.element[=].display = "PnX"
* group.element[=].target.code = #1386316007
* group.element[=].target.display = "Union for International Cancer Control PnX (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260201"

* group.element[+].code = #S0
* group.element[=].display = "S0"
* group.element[=].target.code = #313139000
* group.element[=].target.display = "Serum tumor marker stage S0 (finding)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"

* group.element[+].code = #S1
* group.element[=].display = "S1"
* group.element[=].target.code = #313140003
* group.element[=].target.display = "Serum tumor marker stage S1 (finding)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"

* group.element[+].code = #S2
* group.element[=].display = "S2"
* group.element[=].target.code = #313141004
* group.element[=].target.display = "Serum tumor marker stage S2 (finding)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"

* group.element[+].code = #S3
* group.element[=].display = "S3"
* group.element[=].target.code = #313142006
* group.element[=].target.display = "Serum tumor marker stage S3 (finding)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"

* group.element[+].code = #SX
* group.element[=].display = "SX"
* group.element[=].target.code = #313138008
* group.element[=].target.display = "Serum tumor marker stage SX (finding)"
* group.element[=].target.equivalence = #equivalent
* group.element[=].target.comment = "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"

* group.element[+].code = #okk
* group.element[=].display = "Stadium X"
* group.element[=].target.equivalence = #unmatched
* group.element[=].target.comment = "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"

* group.element[+].code = #0
* group.element[=].display = "Stadium 0"
* group.element[=].target.code = #1352916008
* group.element[=].target.display = "Union for International Cancer Control stage 0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #0a
* group.element[=].display = "Stadium 0a"
* group.element[=].target.code = #1352825003
* group.element[=].target.display = "Union for International Cancer Control stage 0a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #0is
* group.element[=].display = "Stadium 0is"
* group.element[=].target.code = #1352895007
* group.element[=].target.display = "Union for International Cancer Control stage 0is (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #I
* group.element[=].display = "Stadium I"
* group.element[=].target.code = #1352927005
* group.element[=].target.display = "Union for International Cancer Control stage I (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IA1
* group.element[=].display = "Stadium IA1"
* group.element[=].target.code = #1352890002
* group.element[=].target.display = "Union for International Cancer Control stage IA1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IA2
* group.element[=].display = "Stadium IA2"
* group.element[=].target.code = #1352945005
* group.element[=].target.display = "Union for International Cancer Control stage IA2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IA3
* group.element[=].display = "Stadium IA3"
* group.element[=].target.code = #1352854009
* group.element[=].target.display = "Union for International Cancer Control stage IA3 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IB
* group.element[=].display = "Stadium IB"
* group.element[=].target.code = #1352911003
* group.element[=].target.display = "Union for International Cancer Control stage IB (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IB1
* group.element[=].display = "Stadium IB1"
* group.element[=].target.code = #1352816009
* group.element[=].target.display = "Union for International Cancer Control stage IB1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IB2
* group.element[=].display = "Stadium IB2"
* group.element[=].target.code = #1352864000
* group.element[=].target.display = "Union for International Cancer Control stage IB2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IC
* group.element[=].display = "Stadium IC"
* group.element[=].target.code = #1352919001
* group.element[=].target.display = "Union for International Cancer Control stage IC (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IS
* group.element[=].display = "Stadium IS"
* group.element[=].target.code = #1352880005
* group.element[=].target.display = "Union for International Cancer Control stage IS (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #II
* group.element[=].display = "Stadium II"
* group.element[=].target.code = #1352944009
* group.element[=].target.display = "Union for International Cancer Control stage II (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIA
* group.element[=].display = "Stadium IIA"
* group.element[=].target.code = #1352856006
* group.element[=].target.display = "Union for International Cancer Control stage IIA (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIA1
* group.element[=].display = "Stadium IIA1"
* group.element[=].target.code = #1352829009
* group.element[=].target.display = "Union for International Cancer Control stage IIA1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIA2
* group.element[=].display = "Stadium IIA2"
* group.element[=].target.code = #1352892005
* group.element[=].target.display = "Union for International Cancer Control stage IIA2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIB
* group.element[=].display = "Stadium IIB"
* group.element[=].target.code = #1352861008
* group.element[=].target.display = "Union for International Cancer Control stage IIB (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIC
* group.element[=].display = "Stadium IIC"
* group.element[=].target.code = #1352831000
* group.element[=].target.display = "Union for International Cancer Control stage IIC (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #III
* group.element[=].display = "Stadium III"
* group.element[=].target.code = #1352871005
* group.element[=].target.display = "Union for International Cancer Control stage III (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIIA
* group.element[=].display = "Stadium IIIA"
* group.element[=].target.code = #1352915007
* group.element[=].target.display = "Union for International Cancer Control stage IIIA (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIIA1
* group.element[=].display = "Stadium IIIA1"
* group.element[=].target.code = #1352935008
* group.element[=].target.display = "Union for International Cancer Control stage IIIA1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIIA2
* group.element[=].display = "Stadium IIIA2"
* group.element[=].target.code = #1352882002
* group.element[=].target.display = "Union for International Cancer Control stage IIIA2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIIB
* group.element[=].display = "Stadium IIIB"
* group.element[=].target.code = #1352896008
* group.element[=].target.display = "Union for International Cancer Control stage IIIB (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIIC
* group.element[=].display = "Stadium IIIC"
* group.element[=].target.code = #1352848008
* group.element[=].target.display = "Union for International Cancer Control stage IIIC (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIIC1
* group.element[=].display = "Stadium IIIC1"
* group.element[=].target.code = #1352862001
* group.element[=].target.display = "Union for International Cancer Control stage IIIC1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IIIC2
* group.element[=].display = "Stadium IIIC2"
* group.element[=].target.code = #1352833002
* group.element[=].target.display = "Union for International Cancer Control stage IIIC2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IV
* group.element[=].display = "Stadium IV"
* group.element[=].target.code = #1352913000
* group.element[=].target.display = "Union for International Cancer Control stage IV (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IVA
* group.element[=].display = "Stadium IVA"
* group.element[=].target.code = #1352822000
* group.element[=].target.display = "Union for International Cancer Control stage IVA (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IVB
* group.element[=].display = "Stadium IVB"
* group.element[=].target.code = #1352836005
* group.element[=].target.display = "Union for International Cancer Control stage IVB (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #IVC
* group.element[=].display = "Stadium IVC"
* group.element[=].target.code = #1352921006
* group.element[=].target.display = "Union for International Cancer Control stage IVC (qualifier value)"
* group.element[=].target.equivalence = #equivalent

