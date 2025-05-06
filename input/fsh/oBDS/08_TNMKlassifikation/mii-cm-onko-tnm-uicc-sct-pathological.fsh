Instance: mii-cm-onko-tnm-uicc-sct-pathological
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tnm-uicc-sct-pathological"
* name = "MII CM Onko Pathological TNM UICC SCT Mapping"
* title = "MII CM Onko Pathological TNM UICC SNOMED"
* status = #active
* experimental = false
* date = "2024-01-05"
* description = "Mapping pathological TNM UICC Codes zu SNOMED-CT"
* group.source = "https://www.uicc.org/resources/tnm"
* group.target = "http://snomed.info/sct"
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
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #p
* group.element[=].display = "p"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #u
* group.element[=].display = "u"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #TX
* group.element[=].display = "TX"
* group.element[=].target.code = #1352532000
* group.element[=].target.display = "Union for International Cancer Control pTX (qualifier value)"
* group.element[=].target.equivalence = #equivalent  

* group.element[+].code = #T0
* group.element[=].display = "T0"
* group.element[=].target.code = #1352552004
* group.element[=].target.display = "Union for International Cancer Control pT0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
   
* group.element[+].code = #Ta
* group.element[=].display = "Ta"
* group.element[=].target.code = #1352539009
* group.element[=].target.display = "Union for International Cancer Control pTa (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis
* group.element[=].display = "Tis"
* group.element[=].target.code = #1352558000
* group.element[=].target.display = "Union for International Cancer Control pTis (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(LAMN)
* group.element[=].display = "Tis(LAMN)"
* group.element[=].target.code = #1352555002
* group.element[=].target.display = "Union for International Cancer Control pTis(LAMN) (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(DCIS)
* group.element[=].display = "Tis(DCIS)"
* group.element[=].target.code = #1352535003
* group.element[=].target.display = "Union for International Cancer Control pTis(DCIS) (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(LCIS)
* group.element[=].display = "Tis(LCIS)"
* group.element[=].target.code = #1351847000
* group.element[=].target.display = "Union for International Cancer Control pTis(LCIS) (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(Paget)
* group.element[=].display = "Tis(Paget)"
* group.element[=].target.code = #1352563001
* group.element[=].target.display = "Union for International Cancer Control pTis(Paget) (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #Tis(pu)
* group.element[=].display = "Tis(pu)"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #Tis(pd)
* group.element[=].display = "Tis(pd)"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #T1
* group.element[=].display = "T1"
* group.element[=].target.code = #1352559008
* group.element[=].target.display = "Union for International Cancer Control pT1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1mi
* group.element[=].display = "T1mi"
* group.element[=].target.code = #1352562006
* group.element[=].target.display = "Union for International Cancer Control pT1mi (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1a
* group.element[=].display = "T1a"
* group.element[=].target.code = #1352560003
* group.element[=].target.display = "Union for International Cancer Control pT1a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1a1
* group.element[=].display = "T1a1"
* group.element[=].target.code = #1352550007
* group.element[=].target.display = "Union for International Cancer Control pT1a1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1a2
* group.element[=].display = "T1a2"
* group.element[=].target.code = #1352566009
* group.element[=].target.display = "Union for International Cancer Control pT1a2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1b
* group.element[=].display = "T1b"
* group.element[=].target.code = #1352543008
* group.element[=].target.display = "Union for International Cancer Control pT1b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1b1
* group.element[=].display = "T1b1"
* group.element[=].target.code = #1352536002
* group.element[=].target.display = "Union for International Cancer Control pT1b1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1b2
* group.element[=].display = "T1b2"
* group.element[=].target.code = #1352554003
* group.element[=].target.display = "Union for International Cancer Control pT1b2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1c
* group.element[=].display = "T1c"
* group.element[=].target.code = #1352537006
* group.element[=].target.display = "Union for International Cancer Control pT1c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1c1
* group.element[=].display = "T1c1"
* group.element[=].target.code = #1352544002
* group.element[=].target.display = "Union for International Cancer Control pT1c1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1c2
* group.element[=].display = "T1c2"
* group.element[=].target.code = #1352541005
* group.element[=].target.display = "Union for International Cancer Control pT1c2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T1c3
* group.element[=].display = "T1c3"
* group.element[=].target.code = #1352549007
* group.element[=].target.display = "Union for International Cancer Control pT1c3 (qualifier value)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #T1d
* group.element[=].display = "T1d"
* group.element[=].target.code = #1352568005
* group.element[=].target.display = "Union for International Cancer Control pT1d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2
* group.element[=].display = "T2"
* group.element[=].target.code = #1352545001
* group.element[=].target.display = "Union for International Cancer Control pT2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2a
* group.element[=].display = "T2a"
* group.element[=].target.code = #1352564007
* group.element[=].target.display = "Union for International Cancer Control pT2a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2a1
* group.element[=].display = "T2a1"
* group.element[=].target.code = #1352546000
* group.element[=].target.display = "Union for International Cancer Control pT2a1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2a2
* group.element[=].display = "T2a2"
* group.element[=].target.code = #1352567000
* group.element[=].target.display = "Union for International Cancer Control pT2a2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2b
* group.element[=].display = "T2b"
* group.element[=].target.code = #1352547009
* group.element[=].target.display = "Union for International Cancer Control pT2b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2c
* group.element[=].display = "T2c2"
* group.element[=].target.code = #1352569002
* group.element[=].target.display = "Union for International Cancer Control pT2c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T2d
* group.element[=].display = "T2d"
* group.element[=].target.code = #1352548004
* group.element[=].target.display = "Union for International Cancer Control pT2d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3
* group.element[=].display = "T3"
* group.element[=].target.code = #1352533005
* group.element[=].target.display = "Union for International Cancer Control pT3 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3a
* group.element[=].display = "T3a"
* group.element[=].target.code = #1352551006
* group.element[=].target.display = "Union for International Cancer Control pT3a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3b
* group.element[=].display = "T3b"
* group.element[=].target.code = #1352534004
* group.element[=].target.display = "Union for International Cancer Control pT3b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3c
* group.element[=].display = "T3c"
* group.element[=].target.code = #1352556001
* group.element[=].target.display = "Union for International Cancer Control pT3c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3d
* group.element[=].display = "Td3"
* group.element[=].target.code = #1352531007
* group.element[=].target.display = "Union for International Cancer Control pT3d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T3e
* group.element[=].display = "T3e"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #T4
* group.element[=].display = "T4"
* group.element[=].target.code = #1352553009
* group.element[=].target.display = "Union for International Cancer Control pT4 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4a
* group.element[=].display = "T4a"
* group.element[=].target.code = #1352538001
* group.element[=].target.display = "Union for International Cancer Control pT4a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4b
* group.element[=].display = "T4b"
* group.element[=].target.code = #1352561004
* group.element[=].target.display = "Union for International Cancer Control pT4b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4c
* group.element[=].display = "T4c"
* group.element[=].target.code = #1352540006
* group.element[=].target.display = "Union for International Cancer Control pT4c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4d
* group.element[=].display = "T4d"
* group.element[=].target.code = #1352557005
* group.element[=].target.display = "Union for International Cancer Control pT4d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #T4e
* group.element[=].display = "T4e"
* group.element[=].target.code = #1352542003
* group.element[=].target.display = "Union for International Cancer Control pT4e (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #m
* group.element[=].display = "m"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #2
* group.element[=].display = "2"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #3
* group.element[=].display = "3"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #4
* group.element[=].display = "4"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #5
* group.element[=].display = "5"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #6
* group.element[=].display = "6"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #7
* group.element[=].display = "7"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #8
* group.element[=].display = "8"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #9
* group.element[=].display = "9"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #10
* group.element[=].display = "10"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #NX
* group.element[=].display = "Nx"
* group.element[=].target.code = #1352605004
* group.element[=].target.display = "Union for International Cancer Control pNX (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N0
* group.element[=].display = "N0"
* group.element[=].target.code = #1352621009
* group.element[=].target.display = "Union for International Cancer Control pN0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1
* group.element[=].display = "N1"
* group.element[=].target.code = #1352614009
* group.element[=].target.display = "Union for International Cancer Control pN1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1mi
* group.element[=].display = "N1(mi)"
* group.element[=].target.code = #1352620005
* group.element[=].target.display = "Union for International Cancer Control pN1mi (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1a
* group.element[=].display = "N1a"
* group.element[=].target.code = #1352619004
* group.element[=].target.display = "Union for International Cancer Control pN1a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1b
* group.element[=].display = "N1b"
* group.element[=].target.code = #1352616006
* group.element[=].target.display = "Union for International Cancer Control pN1b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N1c
* group.element[=].display = "N1c"
* group.element[=].target.code = #1352617002
* group.element[=].target.display = "Union for International Cancer Control pN1c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N2
* group.element[=].display = "N2"
* group.element[=].target.code = #1352610000
* group.element[=].target.display = "Union for International Cancer Control pN2 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N2a
* group.element[=].display = "N2a"
* group.element[=].target.code = #1352608002
* group.element[=].target.display = "Union for International Cancer Control pN2a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N2b
* group.element[=].display = "N2b"
* group.element[=].target.code = #1352612008
* group.element[=].target.display = "Union for International Cancer Control pN2b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N2c
* group.element[=].display = "N2c"
* group.element[=].target.code = #1352613003
* group.element[=].target.display = "Union for International Cancer Control pN2c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N3
* group.element[=].display = "N3"
* group.element[=].target.code = #1352622002
* group.element[=].target.display = "Union for International Cancer Control pN3 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N3a
* group.element[=].display = "N3a"
* group.element[=].target.code = #1352618007
* group.element[=].target.display = "Union for International Cancer Control pN3a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N3b
* group.element[=].display = "N3b"
* group.element[=].target.code = #1352623007
* group.element[=].target.display = "Union for International Cancer Control pN3b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #N3c
* group.element[=].display = "N3c"
* group.element[=].target.code = #1352606003
* group.element[=].target.display = "Union for International Cancer Control pN3c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M0
* group.element[=].display = "M0"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #M1
* group.element[=].display = "M1"
* group.element[=].target.code = #1352583000
* group.element[=].target.display = "Union for International Cancer Control pM1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1a
* group.element[=].display = "M1a"
* group.element[=].target.code = #1352573004
* group.element[=].target.display = "Union for International Cancer Control pM1a (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1b
* group.element[=].display = "M1b"
* group.element[=].target.code = #1352578008
* group.element[=].target.display = "Union for International Cancer Control pM1b (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1c
* group.element[=].display = "M1c"
* group.element[=].target.code = #1352574005
* group.element[=].target.display = "Union for International Cancer Control pM1c (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #M1d
* group.element[=].display = "M1d"
* group.element[=].target.code = #1352580002
* group.element[=].target.display = "Union for International Cancer Control pM1d (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #MX
* group.element[=].display = "MX"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #i+
* group.element[=].display = "i+"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #i-
* group.element[=].display = "i-"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #mol+
* group.element[=].display = "mol+"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #mol-
* group.element[=].display = "mol-"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #sn
* group.element[=].display = "sn"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #L0
* group.element[=].display = "L0"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #L1
* group.element[=].display = "L1"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #LX
* group.element[=].display = "LX"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #V0
* group.element[=].display = "V0"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #V1
* group.element[=].display = "V1"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #V2
* group.element[=].display = "V2"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #VX
* group.element[=].display = "VX"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #Pn0
* group.element[=].display = "Pn0"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #Pn1
* group.element[=].display = "Pn1"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #PnX
* group.element[=].display = "PnX"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #S0
* group.element[=].display = "S0"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #S1
* group.element[=].display = "S1"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #S2
* group.element[=].display = "S2"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #S3
* group.element[=].display = "S3"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #SX
* group.element[=].display = "SX"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #okk
* group.element[=].display = "Stadium X"
* group.element[=].target.equivalence = #unmatched

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
