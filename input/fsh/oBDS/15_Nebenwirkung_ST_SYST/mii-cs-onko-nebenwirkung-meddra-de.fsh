// AUTO-GENERIERT aus §65c/KR-Liste CTCAE v4.03 (input/examples-source/ctcae/)
// Deutschsprachiges Supplement für MedDRA-Codes der oBDS-Nebenwirkungen (Art, 15.2)
CodeSystem: MII_CS_Onko_Nebenwirkung_MedDRA_DE
Id: mii-cs-onko-nebenwirkung-meddra-de
Title: "MII CS Onko Nebenwirkung MedDRA Deutsch (Supplement)"
Description: "Deutschsprachiges CodeSystem-Supplement für MedDRA-Codes der CTCAE v4.03 Nebenwirkungen. Quelle: §65c-Plattform / Krebsregister-Liste (Deutsche Übersetzung CTCAE Version 4)."
* insert Publisher
* insert PR_CS_VS_Version
* ^status = #active
* ^experimental = false
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-meddra-de"
* ^language = #de-DE
* ^content = #supplement
* ^supplements = "https://www.meddra.org"
* ^property[+].code = #grad3
* ^property[=].description = "CTCAE Grad 3 Kriterium (deutsch)"
* ^property[=].type = #string
* ^property[+].code = #grad4
* ^property[=].description = "CTCAE Grad 4 Kriterium (deutsch)"
* ^property[=].type = #string
* ^property[+].code = #grad5
* ^property[=].description = "CTCAE Grad 5 Kriterium (deutsch)"
* ^property[=].type = #string

* #10002272 "Anämie"
* #10002272 ^designation[+].language = #de-DE
* #10002272 ^designation[=].value = "Blutarmut"
* #10002272 ^definition = "Eine Störung, die durch eine Verminderung der Menge des Hämoglobins in 100 ml Blut gekennzeichnet ist. Zeichen und Symptome der Anämie können Blässe der Haut und der Schleimhäute, Kurzatmigkeit, Herzklopfen, weiche systolische Geräusche, Trägheit und Ermüdbarkeit einschließen."
* #10002272 ^property[+].code = #grad3
* #10002272 ^property[=].valueString = "Hämoglobin (Hb) <8.0 g/dL; <4.9 mmol/L; <80 g/L; Transfusion angezeigt"
* #10002272 ^property[+].code = #grad4
* #10002272 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
* #10002272 ^property[+].code = #grad5
* #10002272 ^property[=].valueString = "Tod"
* #10013442 "Disseminierte intravaskuläre Koagulation"
* #10013442 ^designation[+].language = #de-DE
* #10013442 ^designation[=].value = "Gerinnungsstörung"
* #10013442 ^designation[+].language = #de-DE
* #10013442 ^designation[=].value = "disseminierte intravasale Koagulopathie"
* #10013442 ^designation[+].language = #de-DE
* #10013442 ^designation[=].value = "ausgedehnte intravaskuläre Koagulation"
* #10013442 ^definition = "Eine Störung, die durch eine systemische krankhafte Aktivierung der Blutgerinnungsmechanismen gekennzeichnet ist und Gerinnselbildung im ganzen Körper zur Folge hat. Es existiert ein erhöhtes Blutungsrisikos, da der Körper an Blutplättchen und Gerinnungsfaktoren verarmt ist."
* #10013442 ^property[+].code = #grad3
* #10013442 ^property[=].valueString = "Laborbefunde und Blutungsneigung"
* #10013442 ^property[+].code = #grad4
* #10013442 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
* #10013442 ^property[+].code = #grad5
* #10013442 ^property[=].valueString = "Tod"
* #10016288 "Fieberhafte Neutropenie"
* #10016288 ^definition = "Eine Störung, die durch eine absolute Neutrophilenanzahl von <1000/mm3 und einer einmaligen Temperatur von >38.3 Grad C oder einer anhaltenden Tempaeratur von >=38 Grad C für länger als eine Stunde gekennzeichnet ist."
* #10016288 ^property[+].code = #grad3
* #10016288 ^property[=].valueString = "Absolute Neutrophilenzahl <1000/mm3 mit einer einzelnen Temperatur von >38.3 Grad C oder einer andauernden Temperatur von >=38 Grad C über mehr als eine Std."
* #10016288 ^property[+].code = #grad4
* #10016288 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
* #10016288 ^property[+].code = #grad5
* #10016288 ^property[=].valueString = "Tod"
* #10019491 "Hämolyse"
* #10019491 ^designation[+].language = #de-DE
* #10019491 ^designation[=].value = "Blutauflösung"
* #10019491 ^designation[+].language = #de-DE
* #10019491 ^designation[=].value = "Transfusionszwischenfall"
* #10019491 ^definition = "Eine Störung, die als Ergebnis einer Laboruntersuchung durch eine verbreitete Membranzerstörung von Erythrozyten gekennzeichnet ist."
* #10019491 ^property[+].code = #grad3
* #10019491 ^property[=].valueString = "Transfusion oder medizinische Intervention notwendig (z. B. Steroide)"
* #10019491 ^property[+].code = #grad4
* #10019491 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
* #10019491 ^property[+].code = #grad5
* #10019491 ^property[=].valueString = "Tod"
* #10019515 "Hämolytischurämisches Syndrom (HUS)"
* #10019515 ^designation[+].language = #de-DE
* #10019515 ^designation[=].value = "Transfusionszwischenfall"
* #10019515 ^definition = "Eine Störung, die durch eine Form der thrombotischen Mikroangiopathie mit Nierenversagen, hämolytischer Anämie und schwerer Thrombozytopenie gekennzeichnet ist."
* #10019515 ^property[+].code = #grad3
* #10019515 ^property[=].valueString = "Laborergebnisse mit klinischen Auswirkungen (z. B. Nierenversagen, Petechien: Kapillarblutungen an Haut und Schleimhaut)"
* #10019515 ^property[+].code = #grad4
* #10019515 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; z. B. ZNS-Blutung oder Thrombose / Embolie oder Nierenversagen)"
* #10019515 ^property[+].code = #grad5
* #10019515 ^property[=].valueString = "Tod"
* #10048580 "Hypozelluläres Knochenmark"
* #10048580 ^designation[+].language = #de-DE
* #10048580 ^designation[=].value = "Zellarmes Knochenmark"
* #10048580 ^designation[+].language = #de-DE
* #10048580 ^designation[=].value = "Knochenmarkhypozellularität"
* #10048580 ^definition = "Eine Störung, die durch eine Verminderung der Menge des Hämoglobins in 100 ml Blut gekennzeichnet ist. Zeichen und Symptome der Anämie können Blässe der Haut und der Schleimhäute, Kurzatmigkeit, Herzklopfen, weiche systolische Geräusche, Trägheit und Ermüdbarkeit einschließen."
* #10048580 ^property[+].code = #grad3
* #10048580 ^property[=].valueString = "Hämoglobin (Hb) <8.0 g/dL; <4.9 mmol/L; <80 g/L; Transfusion angezeigt"
* #10048580 ^property[+].code = #grad4
* #10048580 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
* #10048580 ^property[+].code = #grad5
* #10048580 ^property[=].valueString = "Tod"
* #10024378 "Leukozytose"
* #10024378 ^designation[+].language = #de-DE
* #10024378 ^designation[=].value = "Erhöhung der weißen Blutkörperchen"
* #10024378 ^definition = "Eine Störung, gekennzeichnet durch Laboruntersuchungen, die eine erhöhte Anzahl weißer Zellen im Blut anzeigen."
* #10024378 ^property[+].code = #grad3
* #10024378 ^property[=].valueString = ">100000/mm3"
* #10024378 ^property[+].code = #grad4
* #10024378 ^property[=].valueString = "Klinische Manifestation einer Leukostasis; Intervention dringlich angezeigt"
* #10024378 ^property[+].code = #grad5
* #10024378 ^property[=].valueString = "Tod"
* #10025182 "Lymphknotenschmerzen"
* #10025182 ^designation[+].language = #de-DE
* #10025182 ^designation[=].value = "-"
* #10025182 ^definition = "Eine Störung, die durch das Gefühl deutlicher Beschwerden in einem Lymphknoten gekennzeichnet ist."
* #10025182 ^property[+].code = #grad3
* #10025182 ^property[=].valueString = "Schwerer Schmerz; begrenzte Selbstversorgung bei ATL"
* #10025182 ^property[+].code = #grad4
* #10025182 ^property[=].valueString = "-"
* #10025182 ^property[+].code = #grad5
* #10025182 ^property[=].valueString = "-"
* #10041633 "Milzerkrankung"
* #10041633 ^designation[+].language = #de-DE
* #10041633 ^designation[=].value = "Störung der Milzfunktion"
* #10041633 ^designation[+].language = #de-DE
* #10041633 ^designation[=].value = "Erkrankung der Milz"
* #10041633 ^definition = "Eine Erkrankung der Milz."
* #10041633 ^property[+].code = #grad3
* #10041633 ^property[=].valueString = "-"
* #10041633 ^property[+].code = #grad4
* #10041633 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringliche Intervention angezeigt"
* #10041633 ^property[+].code = #grad5
* #10041633 ^property[=].valueString = "Tod"
* #10043648 "Thrombotische thrombozytopenische Purpura"
* #10043648 ^designation[+].language = #de-DE
* #10043648 ^designation[=].value = "Thrombotischthrombozytopenische Purpura"
* #10043648 ^designation[+].language = #de-DE
* #10043648 ^designation[=].value = "Moschcowitz Syndrom"
* #10043648 ^designation[+].language = #de-DE
* #10043648 ^designation[=].value = "TTP"
* #10043648 ^definition = "Eine Störung, gekennzeichnet durch das Vorhandensein einer mikroangiopathischen hämolytischen Anämie, thrombozytopenischen Purpura, Fieber, renaler Abnormitäten und neurologischer Abnormitäten wie Krämpfe, Halbseitenlähmung und Sehstörungen. Es handelt sich um eine akute oder subakute Situation."
* #10043648 ^property[+].code = #grad3
* #10043648 ^property[=].valueString = "Laboruntersuchungen mit klinischen Auswirkungen (z. B. Niereninsuffizienz, Petechien)"
* #10043648 ^property[+].code = #grad4
* #10043648 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; z. B. ZNS-Blutung oder Thrombose / Embolie oder Nierenversagen)"
* #10043648 ^property[+].code = #grad5
* #10043648 ^property[=].valueString = "Tod"
* #10005329 "Störungen des Blut- und Lymphsystems - Sonstige, zu spezifizieren"
* #10005329 ^designation[+].language = #de-DE
* #10005329 ^designation[=].value = "Störungen des hämatopoietischen und lymphoiden Systems"
* #10005329 ^definition = "Sonstige zu spezifizierende Störungen des hämatopoietischen und/oder lymphoiden Gewebes."
* #10005329 ^property[+].code = #grad3
* #10005329 ^property[=].valueString = "Schwere oder medizinisch signifikante aber nicht unmittelbar das Leben bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10005329 ^property[+].code = #grad4
* #10005329 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10005329 ^property[+].code = #grad5
* #10005329 ^property[=].valueString = "Tod"
* #10051592 "Akutes Koronarsyndrom"
* #10051592 ^designation[+].language = #de-DE
* #10051592 ^designation[=].value = "Akute Herzstörung"
* #10051592 ^definition = "Eine Störung, gekennzeichnet durch Zeichen und Symptome, verbunden mit einer akuten Ischämie des Herzmuskels als Folge einer koronaren Herzerkrankung. Die klinische Präsentation deckt ein Spektrum von Herzerkrankungen von der instabilen Angina pectoris bis zum Myokardinfarkt ab"
* #10051592 ^property[+].code = #grad3
* #10051592 ^property[=].valueString = "Symptomatisch, instabile Angina und / oder akuter Myokardinfarkt, kardiale Enzyme anormal, hämodynamisch stabil"
* #10051592 ^property[+].code = #grad4
* #10051592 ^property[=].valueString = "Symptomatisch, instabile Angina und / oder akuter Myokardinfarkt, kardiale Enzyme anormal, hämodynamisch instabil."
* #10051592 ^property[+].code = #grad5
* #10051592 ^property[=].valueString = "Tod"
* #10061589 "Aortenklappenkrankheit"
* #10061589 ^designation[+].language = #de-DE
* #10061589 ^designation[=].value = "Aortenklappenstenose"
* #10061589 ^designation[+].language = #de-DE
* #10061589 ^designation[=].value = "Aortenklappeninsuffizienz"
* #10061589 ^definition = "Eine Störung, gekennzeichnet durch einen Defekt der Aortenklappenfunktion oder Struktur."
* #10061589 ^property[+].code = #grad3
* #10061589 ^property[=].valueString = "Symptomatisch; schwerer Rückfluss oder schwere Stenose durch Bildgebung; Symptome kontrolliert durch medizinische Intervention"
* #10061589 ^property[+].code = #grad4
* #10061589 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. Klappenersatz, Klappenplastik)"
* #10061589 ^property[+].code = #grad5
* #10061589 ^property[=].valueString = "Tod"
* #10003586 "Asystolie"
* #10003586 ^designation[+].language = #de-DE
* #10003586 ^designation[=].value = "Herzstillstand"
* #10003586 ^designation[+].language = #de-DE
* #10003586 ^designation[=].value = "Herzrhythmusstörung"
* #10003586 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie ohne kardiale elektrische Aktivität. Typischerweise ist dies begleitet von einer Beendigung der Pumpfunktion des Herzens."
* #10003586 ^property[+].code = #grad3
* #10003586 ^property[=].valueString = "-"
* #10003586 ^property[+].code = #grad4
* #10003586 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10003586 ^property[+].code = #grad5
* #10003586 ^property[=].valueString = "Tod"
* #10003674 "AV Block ersten Grades"
* #10003674 ^designation[+].language = #de-DE
* #10003674 ^designation[=].value = "Herzrhythmusstörung"
* #10003674 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Zeitverzögerung die für Leitung eines elektrischen Impulses durch den atrioventrikulären (AV)-Knoten über 0.2 Sekunden benötigt wird; Verlängerung des PR-Intervalls größer als 200 Millisekunden."
* #10003674 ^property[+].code = #grad3
* #10003674 ^property[=].valueString = "-"
* #10003674 ^property[+].code = #grad4
* #10003674 ^property[=].valueString = "-"
* #10003674 ^property[+].code = #grad5
* #10003674 ^property[=].valueString = "-"
* #10027786 "AV Block, Mobitz Typ II"
* #10027786 ^designation[+].language = #de-DE
* #10027786 ^designation[=].value = "Herzrhythmusstörung"
* #10027786 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit relativ konstanten PR Intervallen vor dem Block eines atrialen Impulses. Dies ist das Ergebnis eines intermittierenden Versagens des atrialen elektrischen Impulses durch den AV-Knoten zu den Kammern."
* #10027786 ^property[+].code = #grad3
* #10027786 ^property[=].valueString = "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. Schrittmacher)"
* #10027786 ^property[+].code = #grad4
* #10027786 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10027786 ^property[+].code = #grad5
* #10027786 ^property[=].valueString = "Tod"
* #10003673 "AV Block, vollständiger"
* #10003673 ^designation[+].language = #de-DE
* #10003673 ^designation[=].value = "Herzrhythmusstörung"
* #10003673 ^designation[+].language = #de-DE
* #10003673 ^designation[=].value = "Kompletter AV'-Block"
* #10003673 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit komplettem Versagen der atrialen elektrischen Impulsleitung durch den AV-Knoten zu den Kammern."
* #10003673 ^property[+].code = #grad3
* #10003673 ^property[=].valueString = "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. Schrittmacher)"
* #10003673 ^property[+].code = #grad4
* #10003673 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10003673 ^property[+].code = #grad5
* #10003673 ^property[=].valueString = "Tod"
* #10053565 "Herzbeuteltamponade"
* #10053565 ^designation[+].language = #de-DE
* #10053565 ^designation[=].value = "-"
* #10053565 ^definition = "Eine Störung, gekennzeichnet durch einen Anstieg des intraperikardialen Drucks aufgrund der Ansammlung von Blut oder Flüssigkeit im Perikard (genauer: Herzbeutel)."
* #10053565 ^property[+].code = #grad3
* #10053565 ^property[=].valueString = "-"
* #10053565 ^property[+].code = #grad4
* #10053565 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10053565 ^property[+].code = #grad5
* #10053565 ^property[=].valueString = "Tod"
* #10034484 "Herzbeutelentzündung"
* #10034484 ^designation[+].language = #de-DE
* #10034484 ^designation[=].value = "Perikarditis"
* #10034484 ^definition = "Eine Störung, gekennzeichnet durch eine Reizung der Schichten des Perikards (dem schützenden Beutel um das Herz)."
* #10034484 ^property[+].code = #grad3
* #10034484 ^property[=].valueString = "Perikarditis mit physiologischen Konsequenzen (z. B. perikardiale Konstriktion)"
* #10034484 ^property[+].code = #grad4
* #10034484 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10034484 ^property[+].code = #grad5
* #10034484 ^property[=].valueString = "Tod"
* #10034474 "Herzbeutelerguss"
* #10034474 ^designation[+].language = #de-DE
* #10034474 ^designation[=].value = "Perikarderguss"
* #10034474 ^definition = "Eine Störung, gekennzeichnet durch Flüssigkeitsansammlung im Herzbeutel, in der Regel aufgrund einer Entzündung."
* #10034474 ^property[+].code = #grad3
* #10034474 ^property[=].valueString = "Erguss mit physiologischen Konsequenzen"
* #10034474 ^property[+].code = #grad4
* #10034474 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10034474 ^property[+].code = #grad5
* #10034474 ^property[=].valueString = "Tod"
* #10033557 "Herzklopfen"
* #10033557 ^designation[+].language = #de-DE
* #10033557 ^designation[=].value = "Palpitationen"
* #10033557 ^designation[+].language = #de-DE
* #10033557 ^designation[=].value = "Herzrasen"
* #10033557 ^designation[+].language = #de-DE
* #10033557 ^designation[=].value = "Herzrhythmusstörung"
* #10033557 ^definition = "Eine Störung, gekennzeichnet durch eine unangenehme Empfindung von irregulärem und/oder kräftigem Klopfen des Herzens."
* #10033557 ^property[+].code = #grad3
* #10033557 ^property[=].valueString = "-"
* #10033557 ^property[+].code = #grad4
* #10033557 ^property[=].valueString = "-"
* #10033557 ^property[+].code = #grad5
* #10033557 ^property[=].valueString = "-"
* #10007515 "Herzstillstand"
* #10007515 ^designation[+].language = #de-DE
* #10007515 ^designation[=].value = "Kardialer Stillstand"
* #10007515 ^designation[+].language = #de-DE
* #10007515 ^designation[=].value = "Herzrhythmusstörung"
* #10007515 ^definition = "Eine Störung, gekennzeichnet durch einen Stillstand der Pumpfunktion des Herzens."
* #10007515 ^property[+].code = #grad3
* #10007515 ^property[=].valueString = "-"
* #10007515 ^property[+].code = #grad4
* #10007515 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10007515 ^property[+].code = #grad5
* #10007515 ^property[=].valueString = "Tod"
* #10019279 "Herzversagen"
* #10019279 ^designation[+].language = #de-DE
* #10019279 ^designation[=].value = "Herzinsuffizienz"
* #10019279 ^designation[+].language = #de-DE
* #10019279 ^designation[=].value = "Herzfehler"
* #10019279 ^designation[+].language = #de-DE
* #10019279 ^designation[=].value = "Kardiogener Schock"
* #10019279 ^definition = "Eine Störung, gekennzeichnet durch das Unvermögen des Herzens, Blut in einem angemessenen Volumen zu pumpen, um die Gewebestoffwechselbedürfnisse zu gewährleisten, oder die Fähigkeit, dies lediglich durch eine Anhebung des Fülldrucks zu erreichen."
* #10019279 ^property[+].code = #grad3
* #10019279 ^property[=].valueString = "Schwere Ruhesymptome oder bei minimaler Aktivität oder Anstrengung; Intervention angezeigt"
* #10019279 ^property[+].code = #grad4
* #10019279 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. kontinuierliche i. v. Therapie oder mechanische hämodynamische Unterstützung)"
* #10019279 ^property[+].code = #grad5
* #10019279 ^property[=].valueString = "Tod"
* #10047290 "Kammerflimmern"
* #10047290 ^designation[+].language = #de-DE
* #10047290 ^designation[=].value = "Ventrikuläres Flimmern"
* #10047290 ^designation[+].language = #de-DE
* #10047290 ^designation[=].value = "Herzrhythmusstörung"
* #10047290 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie ohne erkennbare QRS Komplexe aufgrund schneller repetitiver Erregung der Muskelfasern ohne koordinierte Kontraktion der Kammern."
* #10047290 ^property[+].code = #grad3
* #10047290 ^property[=].valueString = "-"
* #10047290 ^property[+].code = #grad4
* #10047290 ^property[=].valueString = "Lebensbedrohliche Folgen; hämodynamische Beeinträchtigung; dringliche Intervention angezeigt"
* #10047290 ^property[+].code = #grad5
* #10047290 ^property[=].valueString = "Tod"
* #10008481 "Kardialer Brustschmerz"
* #10008481 ^designation[+].language = #de-DE
* #10008481 ^designation[=].value = "Angiona pectoris Schmerz"
* #10008481 ^designation[+].language = #de-DE
* #10008481 ^designation[=].value = "Kardialer Thoraxschmerz"
* #10008481 ^definition = "Eine Störung, gekennzeichnet durch substernales Missempfinden aufgrund unzureichender myokardialer Sauerstoffversorgung."
* #10008481 ^property[+].code = #grad3
* #10008481 ^property[=].valueString = "Ruheschmerz; Einschränkung der Selbstversorgung bei Verrichtungen des täglichen Lebens"
* #10008481 ^property[+].code = #grad4
* #10008481 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10008481 ^property[+].code = #grad5
* #10008481 ^property[=].valueString = "Tod"
* #10069501 "Linksventrikuläre systolische Dysfunktion"
* #10069501 ^designation[+].language = #de-DE
* #10069501 ^designation[=].value = "Systolische Dysfunktion linke Herzkammer"
* #10069501 ^definition = "Eine Störung, gekennzeichnet durch ein Versagen des linken Ventrikels, genügenden Auswurf zu erzeugen, trotz eines Anstiegs des Ausdehnungsdrucks und des enddiastolischen Volumens. Klinische Manifestationen können Atemnot, Atemnot im Liegen und andere Zeichen pulmonaler Stauung und Ödeme."
* #10069501 ^property[+].code = #grad3
* #10069501 ^property[=].valueString = "Symptomatisch aufgrund eines Abfalls der Ejektionsfraktion, ansprechend auf Intervention"
* #10069501 ^property[+].code = #grad4
* #10069501 ^property[=].valueString = "Nicht ansprechendes oder schlecht kontrolliertes Herzversagen aufgrund des Abfalls der Ejektionsfraktion; Interventionen wie ventrikuläre Unterstützungsgeräte, intravenöse Vasopressorenunterstützung oder Herztransplantation angezeigt"
* #10069501 ^property[+].code = #grad5
* #10069501 ^property[=].valueString = "Tod"
* #10061532 "Mitralklappenerkrankung"
* #10061532 ^designation[+].language = #de-DE
* #10061532 ^designation[=].value = "Mitralklappeninsuffizienz"
* #10061532 ^designation[+].language = #de-DE
* #10061532 ^designation[=].value = "Mitralklappenstenose"
* #10061532 ^designation[+].language = #de-DE
* #10061532 ^designation[=].value = "Mitralklappenkrankheit"
* #10061532 ^definition = "Eine Störung, gekennzeichnet durch einen Defekt der Mitralklappenfunktion- oder struktur."
* #10061532 ^property[+].code = #grad3
* #10061532 ^property[=].valueString = "Symptomatisch; schwerer Rückfluss oder schwere Stenose durch Bildgebung; Symptome kontrolliert durch medizinische Intervention"
* #10061532 ^property[+].code = #grad4
* #10061532 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. Klappenersatz, Klappenplastik)"
* #10061532 ^property[+].code = #grad5
* #10061532 ^property[=].valueString = "Tod"
* #10027787 "Mobitz Typ I"
* #10027787 ^designation[+].language = #de-DE
* #10027787 ^designation[=].value = "Herzrhythmusstörung"
* #10027787 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit relativ konstanten PR Intervallen vor dem Block eines atrialen Impulses. Dies ist das Ergebnis eines intermittierenden Versagens des atrialen elektrischen Impulses durch den AV-Knoten zu den Kammern."
* #10027787 ^property[+].code = #grad3
* #10027787 ^property[=].valueString = "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. SM)"
* #10027787 ^property[+].code = #grad4
* #10027787 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10027787 ^property[+].code = #grad5
* #10027787 ^property[=].valueString = "Tod"
* #10028596 "Myokardinfarkt"
* #10028596 ^designation[+].language = #de-DE
* #10028596 ^designation[=].value = "Herzinfarkt"
* #10028596 ^definition = "Eine Störung, gekennzeichnet durch eine schwerwiegende Nekrose des Myokards; dies liegt an einer Unterbrechung der Blutversorgung zu diesem Bereich."
* #10028596 ^property[+].code = #grad3
* #10028596 ^property[=].valueString = "Schwere Symptome; kardiale Enzyme anormal ; hämodynamisch stabil; EKG Veränderungen übereinstimmend mit Infarkt"
* #10028596 ^property[+].code = #grad4
* #10028596 ^property[=].valueString = "Lebensbedrohliche Folgen; hämodynamisch instabil"
* #10028596 ^property[+].code = #grad5
* #10028596 ^property[=].valueString = "Tod"
* #10028606 "Myokarditis"
* #10028606 ^designation[+].language = #de-DE
* #10028606 ^designation[=].value = "Herzentzündung"
* #10028606 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung des Herzmuskelgewebes."
* #10028606 ^property[+].code = #grad3
* #10028606 ^property[=].valueString = "Schwer mit Ruhesymptomen oder bei minimaler Aktivität oder Anstrengung; Intervention angezeigt"
* #10028606 ^property[+].code = #grad4
* #10028606 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. kontinuierliche i. v. Therapie oder mechanische hämodynamische Unterstützung)"
* #10028606 ^property[+].code = #grad5
* #10028606 ^property[=].valueString = "Tod"
* #10034040 "Paroxysmale Vorhoftachykardie"
* #10034040 ^designation[+].language = #de-DE
* #10034040 ^designation[=].value = "Anfallsweise Vorhoftachykardie"
* #10034040 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit abrupten Beginn und plötzlichem Ende von atrialen Kontraktionen mit einer Rate von 150-250 Schlägen pro Minute. Die rhythmische Störung entsteht in den Vorhöfen."
* #10034040 ^property[+].code = #grad3
* #10034040 ^property[=].valueString = "i. v. Medikation angezeigt"
* #10034040 ^property[+].code = #grad4
* #10034040 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10034040 ^property[+].code = #grad5
* #10034040 ^property[=].valueString = "Tod"
* #10010783 "Perikarditis, konstriktive"
* #10010783 ^designation[+].language = #de-DE
* #10010783 ^designation[=].value = "-"
* #10010783 ^definition = "Eine Störung, gekennzeichnet durch Verdickung und einem fibrotischen perikardialen Herzbeutel; diese fibrotischen Veränderungen behindern die normale myokardiale Funktion durch Einschränkung der myokardialen Funktion."
* #10010783 ^property[+].code = #grad3
* #10010783 ^property[=].valueString = "Symptomatisches Herzversagen oder kardiale Symptome, die auf Intervention reagieren"
* #10010783 ^property[+].code = #grad4
* #10010783 ^property[=].valueString = "Auf Therapie nicht ansprechendes Herzversagen oder andere schlecht kontrollierbare kardiale Symptome"
* #10010783 ^property[+].code = #grad5
* #10010783 ^property[=].valueString = "Tod"
* #10061541 "Pulmonalklappenerkrankung"
* #10061541 ^designation[+].language = #de-DE
* #10061541 ^designation[=].value = "Pulmonalklappenstenose"
* #10061541 ^designation[+].language = #de-DE
* #10061541 ^designation[=].value = "Pulmonalklappeninsuffizienz"
* #10061541 ^definition = "Eine Störung, gekennzeichnet durch einen Defekt der Pulmonaklappenfunktion- oder struktur."
* #10061541 ^property[+].code = #grad3
* #10061541 ^property[=].valueString = "Symptomatisch; schwerer Rückfluss oder schwere Stenose durch Bildgebung; Symptome kontrolliert durch medizinische Intervention"
* #10061541 ^property[+].code = #grad4
* #10061541 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. Klappenersatz, Klappenplastik)"
* #10061541 ^property[+].code = #grad5
* #10061541 ^property[=].valueString = "Tod"
* #10038748 "Restriktive Kardiomyopathie"
* #10038748 ^designation[+].language = #de-DE
* #10038748 ^designation[=].value = "RCM"
* #10038748 ^definition = "Eine Störung, gekennzeichnet durch eine Unfähigkeit der Kammern, sich mit Blut zu füllen, weil das Myokard versteift und seine Flexibilität verliert."
* #10038748 ^property[+].code = #grad3
* #10038748 ^property[=].valueString = "Symptomatisches Herzversagen oder kardiale Symptome, ansprechbar auf Intervention"
* #10038748 ^property[+].code = #grad4
* #10038748 ^property[=].valueString = "Therapieresistentes Herzversagen oder andere schlecht kontrollierbare kardiale Symptome"
* #10038748 ^property[+].code = #grad5
* #10038748 ^property[=].valueString = "Tod"
* #10058597 "Rechtsventrikuläre Dysfunktion"
* #10058597 ^designation[+].language = #de-DE
* #10058597 ^designation[=].value = "Rechtsherzdysfunktion"
* #10058597 ^definition = "Eine Störung, gekennzeichnet durch ein Versagen der Funktion der rechten Kammer, assoziiert mit einer niedrigen Ejektionsfraktion und einer Verringerung in der Motilität der rechten Kammerwand."
* #10058597 ^property[+].code = #grad3
* #10058597 ^property[=].valueString = "Schwere Symptome, assoziiert mit Hypoxie, rechtem Herzversagen; Sauerstoff angezeigt"
* #10058597 ^property[+].code = #grad4
* #10058597 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt (z. B. ventrikuläre Unterstützungsgerät); Herztransplantation angezeigt"
* #10058597 ^property[+].code = #grad5
* #10058597 ^property[=].valueString = "Tod"
* #10040639 "Sick-sinus-Syndrom"
* #10040639 ^designation[+].language = #de-DE
* #10040639 ^designation[=].value = "Herzrhythmusstörung"
* #10040639 ^designation[+].language = #de-DE
* #10040639 ^designation[=].value = "Syndrom des kranken Sinusknotens"
* #10040639 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit alternierenden Perioden von Bradykardie und atrialer Tachykardie, begleitet von Synkopen, Müdigkeit und Schwindel."
* #10040639 ^property[+].code = #grad3
* #10040639 ^property[=].valueString = "Schwere, medizinisch signifikante Zeichen; medizinische Intervention angezeigt"
* #10040639 ^property[+].code = #grad4
* #10040639 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10040639 ^property[+].code = #grad5
* #10040639 ^property[=].valueString = "Tod"
* #10040741 "Sinusbradykardie"
* #10040741 ^designation[+].language = #de-DE
* #10040741 ^designation[=].value = "Herzrhythmusstörung"
* #10040741 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Herzfrequenz von weniger als 60 Schlägen pro Minute, die vom Sinusknoten stammen."
* #10040741 ^property[+].code = #grad3
* #10040741 ^property[=].valueString = "Schwere, medizinisch signifikante Zeichen; medizinische Intervention angezeigt"
* #10040741 ^property[+].code = #grad4
* #10040741 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10040741 ^property[+].code = #grad5
* #10040741 ^property[=].valueString = "Tod"
* #10040752 "Sinustachykardie"
* #10040752 ^designation[+].language = #de-DE
* #10040752 ^designation[=].value = "Herzrhythmusstörung"
* #10040752 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Herzfrequenz  von mehr als 100 Schlägen pro Minute, die vom Sinusknoten stammen."
* #10040752 ^property[+].code = #grad3
* #10040752 ^property[=].valueString = "Dringliche medizinische Intervention angezeigt"
* #10040752 ^property[+].code = #grad4
* #10040752 ^property[=].valueString = "-"
* #10040752 ^property[+].code = #grad5
* #10040752 ^property[=].valueString = "-"
* #10042604 "Supraventrikuläre Tachykardie"
* #10042604 ^designation[+].language = #de-DE
* #10042604 ^designation[=].value = "Herzrhythmusstörung"
* #10042604 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Herzfrequenz  von mehr als 100 Schlägen pro Minute, die oberhalb der Kammern entstehen."
* #10042604 ^property[+].code = #grad3
* #10042604 ^property[=].valueString = "Medizinische Intervention angezeigt"
* #10042604 ^property[+].code = #grad4
* #10042604 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10042604 ^property[+].code = #grad5
* #10042604 ^property[=].valueString = "Tod"
* #10061389 "Trikuspidalklappenerkrankung"
* #10061389 ^designation[+].language = #de-DE
* #10061389 ^designation[=].value = "Trikuspidalklappenstenose"
* #10061389 ^designation[+].language = #de-DE
* #10061389 ^designation[=].value = "Trikuspidalklappeninsuffizienz"
* #10061389 ^definition = "Eine Störung, gekennzeichnet durch einen Defekt der Pulmonalklappenfunktion- oder struktur."
* #10061389 ^property[+].code = #grad3
* #10061389 ^property[=].valueString = "Symptomatisch; schwerer Rückfluss oder schwere Stenose durch Bildgebung; Symptome kontrolliert durch medizinische Intervention"
* #10061389 ^property[+].code = #grad4
* #10061389 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10061389 ^property[+].code = #grad5
* #10061389 ^property[=].valueString = "Tod"
* #10010276 "Überleitungsstörung"
* #10010276 ^designation[+].language = #de-DE
* #10010276 ^designation[=].value = "Herzrhythmusstörung"
* #10010276 ^definition = "Eine Störung, gekennzeichnet durch pathologische Irregularitäten im kardialen Leitungssystem"
* #10010276 ^property[+].code = #grad3
* #10010276 ^property[=].valueString = "Schwere Symptome; Intervention angezeigt"
* #10010276 ^property[+].code = #grad4
* #10010276 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10010276 ^property[+].code = #grad5
* #10010276 ^property[=].valueString = "Tod"
* #10047281 "Ventrikuläre Arrhythmie"
* #10047281 ^designation[+].language = #de-DE
* #10047281 ^designation[=].value = "Herzrhythmusstörung"
* #10047281 ^designation[+].language = #de-DE
* #10047281 ^designation[=].value = "Kammerarhythmie"
* #10047281 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie, die in den Kammern entsteht."
* #10047281 ^property[+].code = #grad3
* #10047281 ^property[=].valueString = "Medizinische Intervention angezeigt"
* #10047281 ^property[+].code = #grad4
* #10047281 ^property[=].valueString = "Lebensbedrohliche Folgen; hämodynamische Beeinträchtigung; dringliche Intervention angezeigt"
* #10047281 ^property[+].code = #grad5
* #10047281 ^property[=].valueString = "Tod"
* #10047302 "Ventrikuläre Tachykardie"
* #10047302 ^designation[+].language = #de-DE
* #10047302 ^designation[=].value = "Kammertachykardie"
* #10047302 ^designation[+].language = #de-DE
* #10047302 ^designation[=].value = "Herzrhythmusstörung"
* #10047302 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit einer Herzfrequenz  von mehr als 100 Schlägen pro Minute, die distel des His'schen Bündels entsteht."
* #10047302 ^property[+].code = #grad3
* #10047302 ^property[=].valueString = "Medizinische Intervention angezeigt"
* #10047302 ^property[+].code = #grad4
* #10047302 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10047302 ^property[+].code = #grad5
* #10047302 ^property[=].valueString = "Tod"
* #10003662 "Vorhofflattern"
* #10003662 ^designation[+].language = #de-DE
* #10003662 ^designation[=].value = "Herzrhythmusstörung"
* #10003662 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie mit organisierten rhythmischen Vorhofkontraktionen einer Rate von 200-300 Schlägen pro Minute, Die rhythmische Störung entsteht in den Vorhöfen."
* #10003662 ^property[+].code = #grad3
* #10003662 ^property[=].valueString = "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. Schrittmacher) oder Ablation"
* #10003662 ^property[+].code = #grad4
* #10003662 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10003662 ^property[+].code = #grad5
* #10003662 ^property[=].valueString = "Tod"
* #10003658 "Vorhofflimmern"
* #10003658 ^designation[+].language = #de-DE
* #10003658 ^designation[=].value = "Herzrhythmusstörung"
* #10003658 ^definition = "Eine Störung, gekennzeichnet durch eine Dysrhythmie ohne erkennbare P-Wellen und einer irreguläre ventrikuläre Antwort aufgrund multipler wiedereintretender Stromkreise."
* #10003658 ^property[+].code = #grad3
* #10003658 ^property[=].valueString = "Symptomatisch und medizinisch unvollständig kontrolliert; oder kontrolliert mittels Gerät (z. B. Schrittmacher) oder Ablation"
* #10003658 ^property[+].code = #grad4
* #10003658 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10003658 ^property[+].code = #grad5
* #10003658 ^property[=].valueString = "Tod"
* #10048015 "Wolff-Parkinson-White Syndrom (WPW)"
* #10048015 ^designation[+].language = #de-DE
* #10048015 ^designation[=].value = "WPW'-Syndrom"
* #10048015 ^designation[+].language = #de-DE
* #10048015 ^designation[=].value = "Herzrhythmusstörung"
* #10048015 ^definition = "Eine Störung, gekennzeichnet durch das Vorhandensein eines akzessorischen Leitungsweges zwischen den Vorhöfen und den Kammern, was vorzeitige ventrikuläre Aktivierungen bewirkt."
* #10048015 ^property[+].code = #grad3
* #10048015 ^property[=].valueString = "Symptomatisch und medizinisch inkomplett kontrolliert oder kontrolliert mit Prozeduren"
* #10048015 ^property[+].code = #grad4
* #10048015 ^property[=].valueString = "Lebensbedrohliche Folgen; hämodynamische Beeinträchtigung; dringliche Intervention angezeigt"
* #10048015 ^property[+].code = #grad5
* #10048015 ^property[=].valueString = "Tod"
* #10007541 "Herzerkrankungen - Sonstige, zu spezifizieren"
* #10007541 ^designation[+].language = #de-DE
* #10007541 ^designation[=].value = "-"
* #10007541 ^definition = "Sonstige, zu spezifizierende Herzstörungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10007541 ^property[+].code = #grad3
* #10007541 ^property[=].valueString = "Schwere oder medizinisch signifikante aber nicht unmittelbar das Lehen bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden Verrichtungen des täglichen Lebens"
* #10007541 ^property[+].code = #grad4
* #10007541 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10007541 ^property[+].code = #grad5
* #10007541 ^property[=].valueString = "Tod"
* #10010331 "Angeborene, familiäre und genetische Erkrankungen - Sonstige, zu spezifizieren"
* #10010331 ^designation[+].language = #de-DE
* #10010331 ^designation[=].value = "Kongenitale, familiäre und vererbbare Krankheiten-Sonstige, zu spezifizieren"
* #10010331 ^definition = "Sonstige, zu spezifizierende angeborene, familiäre und genetische Störungen, die unerwünschte Ereignisse im Rahmen einer Behandlung darstellen."
* #10010331 ^property[+].code = #grad3
* #10010331 ^property[=].valueString = "Schwere oder medizinisch signifikante aber nicht unmittelbar das Leben bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden Verrichtungen des täglichen Lebens"
* #10010331 ^property[+].code = #grad4
* #10010331 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10010331 ^property[+].code = #grad5
* #10010331 ^property[=].valueString = "Tod"
* #10019245 "Beeinträchtigung des Hörens"
* #10019245 ^designation[+].language = #de-DE
* #10019245 ^designation[=].value = "Hörbehinderung"
* #10019245 ^designation[+].language = #de-DE
* #10019245 ^designation[=].value = "Hypakusis"
* #10019245 ^designation[+].language = #de-DE
* #10019245 ^designation[=].value = "Schwerhörigkeit"
* #10019245 ^designation[+].language = #de-DE
* #10019245 ^designation[=].value = "Hörminderung"
* #10019245 ^definition = "Eine Störung, gekennzeichnet durch teilweisen oder kompletten Verlust der Fähigkeit, Schall (Töne, Geräusche) wahrzunehmen oder zu verstehen, hervorgerufen durch Verletzung/Schädigung von Ohrstrukturen."
* #10019245 ^property[+].code = #grad3
* #10019245 ^property[=].valueString = "Erwachsene: Aufgenommen in ein Überwachungsprogramm (1, 2, 4, 3, 6 und 8 kHz Audiogramm): Schwellenveränderung von 15-25 dB aus Durchschnitt zweier konsekutiver Testfrequenzen bei mindestens einem Ohr. Erwachsene: Nicht aufgenommen in ein Überwachungsprogramm: Hörverlust mit Hörhilfe oder Intervention angezeigt; Einschränkung der selbstversorgenden ATL; Pädiatrisch (1, 2, 4, 3, 6 und 8 kHz Audiogramm): Hörverlust ausreichend für eine therapeutische Indikation, einschließlich Hörhilfen; Schwellenveränderung >20 dB bei 3 kHz und darüber an mindestens einem Ohr; zusätzliche Sprach-Rede-bezogene Unterrichtsdienste angezeigt"
* #10019245 ^property[+].code = #grad4
* #10019245 ^property[=].valueString = "Erwachsene: Schwerer bilateraler Hörverlust (Schwelle > 80dB HL bei 2 kHz und darüber); nicht dienliches Hören. Pädiatrisch: Audiologische Indikation für ein kochleares Implantat und zusätzlich Sprach-Rede-bezogene Unterrichtsdienste angezeigt"
* #10019245 ^property[+].code = #grad5
* #10019245 ^property[=].valueString = "-"
* #10065838 "Mittelohrentzündung"
* #10065838 ^designation[+].language = #de-DE
* #10065838 ^designation[=].value = "Otitis media"
* #10065838 ^designation[+].language = #de-DE
* #10065838 ^designation[=].value = "Paukendrainage"
* #10065838 ^designation[+].language = #de-DE
* #10065838 ^designation[=].value = "Paukenröhrchen"
* #10065838 ^definition = "Ein Krankheitsbild, gekennzeichnet durch Entzündung (physiologische Reaktion auf Reizung), Schwellung und Rötung des Mittelohres."
* #10065838 ^property[+].code = #grad3
* #10065838 ^property[=].valueString = "Mastoiditis; Nekrose von Weichgewebe oder Knochen"
* #10065838 ^property[+].code = #grad4
* #10065838 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
* #10065838 ^property[+].code = #grad5
* #10065838 ^property[=].valueString = "Tod"
* #10014020 "Ohrenschmerzen"
* #10014020 ^designation[+].language = #de-DE
* #10014020 ^designation[=].value = "-"
* #10014020 ^definition = "Eine Befindlichkeitsstörung, gekennzeichnet durch ein Gefühl ausgeprägter Beschwerden im Ohr."
* #10014020 ^property[+].code = #grad3
* #10014020 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10014020 ^property[+].code = #grad4
* #10014020 ^property[=].valueString = "-"
* #10014020 ^property[+].code = #grad5
* #10014020 ^property[=].valueString = "-"
* #10065837 "Otitis externa"
* #10065837 ^designation[+].language = #de-DE
* #10065837 ^designation[=].value = "Entzündung des äußeren Ohres"
* #10065837 ^designation[+].language = #de-DE
* #10065837 ^designation[=].value = "Ohrkanalentzündung"
* #10065837 ^definition = "Ein Krankheitsbild, gekennzeichnet durch Entzündung, Schwellung und Rötung am äußeren Ohr und dem Ohrkanal."
* #10065837 ^property[+].code = #grad3
* #10065837 ^property[=].valueString = "Otitis externa mit Mastoiditis; Stenose oder Osteomyelitis; Nekrose von Weichgewebe oder Knochen"
* #10065837 ^property[+].code = #grad4
* #10065837 ^property[=].valueString = "Dringliche operative Intervention angezeigt"
* #10065837 ^property[+].code = #grad5
* #10065837 ^property[=].valueString = "Tod"
* #10065785 "Schmerzen des äußeren Ohres"
* #10065785 ^designation[+].language = #de-DE
* #10065785 ^designation[=].value = "Äußere Ohrenschmerzen"
* #10065785 ^definition = "Eine Befindlichkeitsstörung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden der äußeren Ohrregion."
* #10065785 ^property[+].code = #grad3
* #10065785 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10065785 ^property[+].code = #grad4
* #10065785 ^property[=].valueString = "-"
* #10065785 ^property[+].code = #grad5
* #10065785 ^property[=].valueString = "-"
* #10043882 "Tinnitus"
* #10043882 ^designation[+].language = #de-DE
* #10043882 ^designation[=].value = "Ohrgeräusch"
* #10043882 ^definition = "Eine Störung, gekennzeichnet durch Geräusch in den Ohren, wie Klingeln, Summen, Brausen oder Klicken."
* #10043882 ^property[+].code = #grad3
* #10043882 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10043882 ^property[+].code = #grad4
* #10043882 ^property[=].valueString = "-"
* #10043882 ^property[+].code = #grad5
* #10043882 ^property[=].valueString = "-"
* #10047340 "Vertigo"
* #10047340 ^designation[+].language = #de-DE
* #10047340 ^designation[=].value = "Schwindel"
* #10047340 ^designation[+].language = #de-DE
* #10047340 ^designation[=].value = "Drehschwindel"
* #10047340 ^designation[+].language = #de-DE
* #10047340 ^designation[=].value = "Labyrithschwindel"
* #10047340 ^definition = "Eine Störung, gekennzeichnet durch ein Empfinden, als ob die äußere Welt sich um den Patienten drehen würde (objektiver Schwindel) oder als ob er selbst sich im Raum drehen würde (subjektiver Schwindel)."
* #10047340 ^property[+].code = #grad3
* #10047340 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10047340 ^property[+].code = #grad4
* #10047340 ^property[=].valueString = "-"
* #10047340 ^property[+].code = #grad5
* #10047340 ^property[=].valueString = "-"
* #10047386 "Vestibuläre Störung"
* #10047386 ^designation[+].language = #de-DE
* #10047386 ^designation[=].value = "Vestibulumerkrankung"
* #10047386 ^designation[+].language = #de-DE
* #10047386 ^designation[=].value = "Gleichgewichtsstörung"
* #10047386 ^definition = "Eine Störung, gekennzeichnet durch Schwindelgefühl, Gleichgewichtsstörungen, Übelkeit, und Sehstörungen."
* #10047386 ^property[+].code = #grad3
* #10047386 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10047386 ^property[+].code = #grad4
* #10047386 ^property[=].valueString = "-"
* #10047386 ^property[+].code = #grad5
* #10047386 ^property[=].valueString = "-"
* #10013993 "Ohr- und Innenohrerkrankungen - Sonstige, zu spezifizieren"
* #10013993 ^designation[+].language = #de-DE
* #10013993 ^designation[=].value = "Ohr-, Ohrgangs- und Labyrintherkrankungen Sonstige zu spezifizieren Labyrinth"
* #10013993 ^definition = "Sonstige, zu spezifizierende Erkrankungen des Ohrorgans, die unerwünschte Ereignisse im Rahmen einer Behandlung darstellen."
* #10013993 ^property[+].code = #grad3
* #10013993 ^property[=].valueString = "Schwer oder medizinisch signifikant aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung eines bestehenden Aufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10013993 ^property[+].code = #grad4
* #10013993 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10013993 ^property[+].code = #grad5
* #10013993 ^property[=].valueString = "Tod"
* #10011655 "Cushing-ähnliches Syndrom"
* #10011655 ^designation[+].language = #de-DE
* #10011655 ^designation[=].value = "Cushingoid"
* #10011655 ^definition = "Eine Erkrankung, gekennzeichnet durch Zeichen und Symptome, die der Cushing'schen Erkrankung oder dem Cushing-Syndrom ähneln: Büffelnackenfett, Striae, Adipositas, Hochdruck, Diabetes und Osteoporose, normalerweise durch exogen zugeführte Kortikosteroide."
* #10011655 ^property[+].code = #grad3
* #10011655 ^property[=].valueString = "Mäßige Symptome; medizinische Intervention oder Krankenhauseinweisung angezeigt"
* #10011655 ^property[+].code = #grad4
* #10011655 ^property[=].valueString = "-"
* #10011655 ^property[+].code = #grad5
* #10011655 ^property[=].valueString = "-"
* #10020705 "Hyperparathyreoidismus"
* #10020705 ^designation[+].language = #de-DE
* #10020705 ^designation[=].value = "Überfunktion der Nebenschilddrüsen"
* #10020705 ^definition = "Eine Störung, gekennzeichnet durch eine erhöhte Erzeugung des Parat-Hormons durch die Nebenschilddrüsen. Dies resultiert in Hyperkalzämie (abnorm hohe Kalziumspiegel im Blut)."
* #10020705 ^property[+].code = #grad3
* #10020705 ^property[=].valueString = "-"
* #10020705 ^property[+].code = #grad4
* #10020705 ^property[=].valueString = "-"
* #10020705 ^property[+].code = #grad5
* #10020705 ^property[=].valueString = "-"
* #10021041 "Hypoparathyreoidismus"
* #10021041 ^designation[+].language = #de-DE
* #10021041 ^designation[=].value = "Unterfunktion der Nebenschilddrüsen"
* #10021041 ^definition = "Eine Störung, gekennzeichnet durch eine erniedrigte Erzeugung des Parathormons durch die Nebenschilddrüsen."
* #10021041 ^property[+].code = #grad3
* #10021041 ^property[=].valueString = "Schwere Symptome; medizinische Intervention oder Krankenhausaufnahme angezeigt"
* #10021041 ^property[+].code = #grad4
* #10021041 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10021041 ^property[+].code = #grad5
* #10021041 ^property[=].valueString = "Tod"
* #10047488 "Maskulinisierung"
* #10047488 ^designation[+].language = #de-DE
* #10047488 ^designation[=].value = "Vermännlichung"
* #10047488 ^designation[+].language = #de-DE
* #10047488 ^designation[=].value = "Virilisierung"
* #10047488 ^definition = "Eine Störung, gekennzeichnet durch nicht angemessene Maskulinisierung bei einer Frau oder einem präpubertären Knaben."
* #10047488 ^property[+].code = #grad3
* #10047488 ^property[=].valueString = "-"
* #10047488 ^property[+].code = #grad4
* #10047488 ^property[=].valueString = "-"
* #10047488 ^property[+].code = #grad5
* #10047488 ^property[=].valueString = "-"
* #10001367 "Nebenniereninsuffizienz"
* #10001367 ^designation[+].language = #de-DE
* #10001367 ^designation[=].value = "Nebennierenschwäche"
* #10001367 ^designation[+].language = #de-DE
* #10001367 ^designation[=].value = "adrenale Insuffizienz"
* #10001367 ^definition = "Eine Erkrankung, die auftritt, wenn die Nebennierenrinde nicht genügende Mengen des Hormons Kortisol und in einigen Fällen des Hormons Aldosteron erzeugt. Dies kann durch eine Störung des Nebennierenkortex bedingt sein wie bei der Addison'schen Erkrankung oder durch eine primäre Nebenniereninsuffizienz."
* #10001367 ^property[+].code = #grad3
* #10001367 ^property[=].valueString = "Mäßige Symptome; Krankenhauseinweisung angezeigt"
* #10001367 ^property[+].code = #grad4
* #10001367 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10001367 ^property[+].code = #grad5
* #10001367 ^property[=].valueString = "Tod"
* #10020850 "Schilddrüsenüberfunktion"
* #10020850 ^designation[+].language = #de-DE
* #10020850 ^designation[=].value = "Hyperthyreoidismus"
* #10020850 ^definition = "Eine Störung, gekennzeichnet durch exzessive Spiegel von Schilddrüsenhormonen im Körper. Gewöhnliche Ursachen schließen eine überaktive Schilddrüse oder Schilddrüsenhormonüberdosierung ein."
* #10020850 ^property[+].code = #grad3
* #10020850 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; Krankenhauseinweisung angezeigt"
* #10020850 ^property[+].code = #grad4
* #10020850 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10020850 ^property[+].code = #grad5
* #10020850 ^property[=].valueString = "Tod"
* #10021114 "Schilddrüsenunterfunktion"
* #10021114 ^designation[+].language = #de-DE
* #10021114 ^designation[=].value = "Hypothyreoidismus"
* #10021114 ^definition = "Eine Störung, gekennzeichnet durch eine erniedrigte Erzeugung von Schilddrüsenhormonen durch die Schilddrüse."
* #10021114 ^property[+].code = #grad3
* #10021114 ^property[=].valueString = "Schwere Symptome; medizinische Intervention oder Krankenhausaufnahme angezeigt"
* #10021114 ^property[+].code = #grad4
* #10021114 ^property[=].valueString = "Lebensbedrohliche Folgen; dringliche Intervention angezeigt"
* #10021114 ^property[+].code = #grad5
* #10021114 ^property[=].valueString = "Tod"
* #10058084 "Verfrühte Pubertät"
* #10058084 ^designation[+].language = #de-DE
* #10058084 ^designation[=].value = "Pubertas präcox"
* #10058084 ^definition = "Eine Störung, in der Regel gekennzeichnet durch frühe Entwicklung der sekundären Geschlechtsmerkmale; der Beginn der geschlechtlichen Reifung beginnt in der Regel vor dem 8. LJ bei Mädchen und vor dem 9. LJ bei Jungen."
* #10058084 ^property[+].code = #grad3
* #10058084 ^property[=].valueString = "-"
* #10058084 ^property[+].code = #grad4
* #10058084 ^property[=].valueString = "-"
* #10058084 ^property[+].code = #grad5
* #10058084 ^property[=].valueString = "-"
* #10012205 "Verzögerte Pubertät"
* #10012205 ^designation[+].language = #de-DE
* #10012205 ^designation[=].value = "Retardierte Pubertät"
* #10012205 ^designation[+].language = #de-DE
* #10012205 ^designation[=].value = "Verspätete Pubertät"
* #10012205 ^definition = "Eine Störung, gekennzeichnet durch ungewöhnlich späte sexuelle Reife."
* #10012205 ^property[+].code = #grad3
* #10012205 ^property[=].valueString = "Keine Brustentwicklung im Alter von 14 Jahren bei weiblichen Probandinnen; keine Steigerung des Testesvolumens oder keine Tanner-Stadium 2 Entwicklung bis zum Alter von 16 Jahren bei männlichen Probanden; Hormonersatztherapie angezeigt"
* #10012205 ^property[+].code = #grad4
* #10012205 ^property[=].valueString = "-"
* #10012205 ^property[+].code = #grad5
* #10012205 ^property[=].valueString = "-"
* #10018746 "Wachstumsbeschleunigung"
* #10018746 ^designation[+].language = #de-DE
* #10018746 ^designation[=].value = "Wachstums akzeleration"
* #10018746 ^definition = "Eine Störung, gekennzeichnet durch ein stärkeres Wachstum als für das Alter erwartet."
* #10018746 ^property[+].code = #grad3
* #10018746 ^property[=].valueString = "-"
* #10018746 ^property[+].code = #grad4
* #10018746 ^property[=].valueString = "-"
* #10018746 ^property[+].code = #grad5
* #10018746 ^property[=].valueString = "-"
* #10014698 "Endokrine Erkrankungen - Sonstige, zu spezifizieren"
* #10014698 ^designation[+].language = #de-DE
* #10014698 ^designation[=].value = "-"
* #10014698 ^definition = "Sonstige endokrine Störungen, die als unerwünschte Ereignisse bei einer Behandlung auftreten."
* #10014698 ^property[+].code = #grad3
* #10014698 ^property[=].valueString = "Schwere oder medizinisch signifikante aber nicht unmittelbar das Leben bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10014698 ^property[+].code = #grad4
* #10014698 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10014698 ^property[+].code = #grad5
* #10014698 ^property[=].valueString = "Tod"
* #10015829 "Augenmuskellähmung, äußere"
* #10015829 ^designation[+].language = #de-DE
* #10015829 ^designation[=].value = "Extraokuläre Muskelparese"
* #10015829 ^definition = "Eine Erkrankung, gekennzeichnet durch inkomplette Lähmung eines extraokulären Muskels."
* #10015829 ^property[+].code = #grad3
* #10015829 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; behindernd"
* #10015829 ^property[+].code = #grad4
* #10015829 ^property[=].valueString = "-"
* #10015829 ^property[+].code = #grad5
* #10015829 ^property[=].valueString = "-"
* #10061322 "Augennerverkrankung"
* #10061322 ^designation[+].language = #de-DE
* #10061322 ^designation[=].value = "Nervus opticus Erkrankung"
* #10061322 ^designation[+].language = #de-DE
* #10061322 ^designation[=].value = "Hirnnervenausfall"
* #10061322 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Beteiligung des Augennerven (Nervus opticus; 2. Kopfnerv)."
* #10061322 ^property[+].code = #grad3
* #10061322 ^property[=].valueString = "Begrenzte Sehfähigkeit des betroffenen Auges (schlechter als 20/40 aber besser als 20/200))"
* #10061322 ^property[+].code = #grad4
* #10061322 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10061322 ^property[+].code = #grad5
* #10061322 ^property[=].valueString = "-"
* #10013774 "Augentrockenheit"
* #10013774 ^designation[+].language = #de-DE
* #10013774 ^designation[=].value = "Xerophthalmie"
* #10013774 ^designation[+].language = #de-DE
* #10013774 ^designation[=].value = "trockenes Auge"
* #10013774 ^definition = "Eine Erkrankung, gekennzeichnet durch Trockenheit der Hornhaut und Konjunktiven."
* #10013774 ^property[+].code = #grad3
* #10013774 ^property[=].valueString = "Herabsetzung der Sehschärfe (<20/40); Einschränkung der selbstversorgenden ATL"
* #10013774 ^property[+].code = #grad4
* #10013774 ^property[=].valueString = "-"
* #10013774 ^property[+].code = #grad5
* #10013774 ^property[=].valueString = "-"
* #10061145 "Augenlidfunktionsstörung"
* #10061145 ^designation[+].language = #de-DE
* #10061145 ^designation[=].value = "-"
* #10061145 ^definition = "Eine Störung, gekennzeichnet durch beeinträchtigte Augenlidfunktion."
* #10061145 ^property[+].code = #grad3
* #10061145 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; operative Intervention angezeigt"
* #10061145 ^property[+].code = #grad4
* #10061145 ^property[=].valueString = "-"
* #10061145 ^property[+].code = #grad5
* #10061145 ^property[=].valueString = "-"
* #10015958 "Augenschmerzen"
* #10015958 ^designation[+].language = #de-DE
* #10015958 ^designation[=].value = "-"
* #10015958 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Auge."
* #10015958 ^property[+].code = #grad3
* #10015958 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10015958 ^property[+].code = #grad4
* #10015958 ^property[=].valueString = "-"
* #10015958 ^property[+].code = #grad5
* #10015958 ^property[=].valueString = "-"
* #10047656 "Glaskörperblutung"
* #10047656 ^designation[+].language = #de-DE
* #10047656 ^designation[=].value = "Blutige Glaskörperextravasation"
* #10047656 ^definition = "Eine Erkrankung, gekennzeichnet durch Blutaustritt in die Glaskörperflüssigkeit."
* #10047656 ^property[+].code = #grad3
* #10047656 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; Vitrektomie angezeigt"
* #10047656 ^property[+].code = #grad4
* #10047656 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10047656 ^property[+].code = #grad5
* #10047656 ^property[=].valueString = "-"
* #10018304 "Glaukom"
* #10018304 ^designation[+].language = #de-DE
* #10018304 ^designation[=].value = "Grüner Star"
* #10018304 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Augeninnendruckerhöhung aufgrund einer Verlegung des Abflusses der Augenflüssigkeit."
* #10018304 ^property[+].code = #grad3
* #10018304 ^property[=].valueString = "EIOD, der deutliche Gesichtsfeldausfälle erzeugt (z. B. sowohl oberes wie unteres Gesichtsfeld); operative Intervention angezeigt; Einschränkung der instrumentellen ATL"
* #10018304 ^property[+].code = #grad4
* #10018304 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10018304 ^property[+].code = #grad5
* #10018304 ^property[=].valueString = "-"
* #10007739 "Grauer Star"
* #10007739 ^designation[+].language = #de-DE
* #10007739 ^designation[=].value = "Katarakt"
* #10007739 ^designation[+].language = #de-DE
* #10007739 ^designation[=].value = "Augenlinsentrübung"
* #10007739 ^definition = "Eine Störung, gekennzeichnet durch partielle oder vollständige Trübung der kristallenen Linse eines oder beider Augen. Dies hat eine Verminderung der Sehschärfe und, wenn unbehandelt, letztendliche Blindheit zur Folge."
* #10007739 ^property[+].code = #grad3
* #10007739 ^property[=].valueString = "Symptomatisch mit deutlicher Verringerung der Sehschärfe (schlechter als 20/40, aber besser als 20/200); operative Intervention angezeigt (z. B. KataraktOperation)"
* #10007739 ^property[+].code = #grad4
* #10007739 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10007739 ^property[+].code = #grad5
* #10007739 ^property[=].valueString = "-"
* #10023332 "Hornhautentzündung"
* #10023332 ^designation[+].language = #de-DE
* #10023332 ^designation[=].value = "Keratitis"
* #10023332 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Hornhaut des Auges."
* #10023332 ^property[+].code = #grad3
* #10023332 ^property[=].valueString = "Herabsetzung der Sehschärfe (schlechter als <20/40 aber besser als 20/200); Einschränkung der selbstversorgenden ATL"
* #10023332 ^property[+].code = #grad4
* #10023332 ^property[=].valueString = "Perforation oder Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10023332 ^property[+].code = #grad5
* #10023332 ^property[=].valueString = "-"
* #10048492 "Hornhautgeschwür"
* #10048492 ^designation[+].language = #de-DE
* #10048492 ^designation[=].value = "Ulkus der Hornhaut"
* #10048492 ^designation[+].language = #de-DE
* #10048492 ^designation[=].value = "koroneales Ulcus"
* #10048492 ^definition = "Eine Erkrankung, gekennzeichnet durch den Verlust epithelialen Gewebes in einem Bereich der Oberfläche der Hornhaut. Das ist mit Entzündungszellen in der Kornea und der vorderen Kammer verbunden."
* #10048492 ^property[+].code = #grad3
* #10048492 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; herabgesetzte (schlechter als 20/40, aber besser als 20/200)"
* #10048492 ^property[+].code = #grad4
* #10048492 ^property[=].valueString = "Perforation oder Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10048492 ^property[+].code = #grad5
* #10048492 ^property[=].valueString = "-"
* #10029404 "Nachtblindheit"
* #10029404 ^designation[+].language = #de-DE
* #10029404 ^designation[=].value = "-"
* #10029404 ^definition = "Eine Störung, gekennzeichnet durch die Unfähigkeit, in dämmrigem Licht klar zu sehen."
* #10029404 ^property[+].code = #grad3
* #10029404 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL"
* #10029404 ^property[+].code = #grad4
* #10029404 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10029404 ^property[+].code = #grad5
* #10029404 ^property[=].valueString = "-"
* #10010741 "Konjunktivitis"
* #10010741 ^designation[+].language = #de-DE
* #10010741 ^designation[=].value = "Bindehautentzündung"
* #10010741 ^definition = "Eine Erkrankung, gekennzeichnet durch Entzündung, Schwellung und Rötung der Bindehäute des Auges."
* #10010741 ^property[+].code = #grad3
* #10010741 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL"
* #10010741 ^property[+].code = #grad4
* #10010741 ^property[=].valueString = "-"
* #10010741 ^property[+].code = #grad5
* #10010741 ^property[=].valueString = "-"
* #10016757 "Lichtblitze"
* #10016757 ^designation[+].language = #de-DE
* #10016757 ^designation[=].value = "-"
* #10016757 ^definition = "Eine Störung, gekennzeichnet durch eine plötzliche oder kurze Salve von Licht(blitzen)."
* #10016757 ^property[+].code = #grad3
* #10016757 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL"
* #10016757 ^property[+].code = #grad4
* #10016757 ^property[=].valueString = "-"
* #10016757 ^property[+].code = #grad5
* #10016757 ^property[=].valueString = "-"
* #10038848 "Netzhautablösung"
* #10038848 ^designation[+].language = #de-DE
* #10038848 ^designation[=].value = "Retinaablösung"
* #10038848 ^definition = "Eine Erkrankung, gekennzeichnet durch die Trennung der inneren Netzhautschichten von dem darunter liegenden Pigmentepithel."
* #10038848 ^property[+].code = #grad3
* #10038848 ^property[=].valueString = "Zerreißungs- oder exudative Ablösung; operative Intervention angezeigt; Herabsetzung der Sehfähigkeit (schlechter als 20/40 aber besser als 20/200)"
* #10038848 ^property[+].code = #grad4
* #10038848 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10038848 ^property[+].code = #grad5
* #10038848 ^property[=].valueString = "-"
* #10038897 "Netzhautriss"
* #10038897 ^designation[+].language = #de-DE
* #10038897 ^designation[=].value = "Retinaeinriss"
* #10038897 ^definition = "Eine Erkrankung, gekennzeichnet durch einen kleinen Einriss der Retina, der auftreten kann, wenn der Glaskörper sich von der Retina trennt."
* #10038897 ^property[+].code = #grad3
* #10038897 ^property[=].valueString = "Vitroretinale chirurgische Reparatur angezeigt"
* #10038897 ^property[+].code = #grad4
* #10038897 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10038897 ^property[+].code = #grad5
* #10038897 ^property[=].valueString = "-"
* #10034960 "Photophobie"
* #10034960 ^designation[+].language = #de-DE
* #10034960 ^designation[=].value = "Lichtscheu"
* #10034960 ^designation[+].language = #de-DE
* #10034960 ^designation[=].value = "Lichtüberempfindlichkeit"
* #10034960 ^definition = "Eine Störung, gekennzeichnet durch Scheu vor und Vermeidung von Licht."
* #10034960 ^property[+].code = #grad3
* #10034960 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL"
* #10034960 ^property[+].code = #grad4
* #10034960 ^property[=].valueString = "-"
* #10034960 ^property[+].code = #grad5
* #10034960 ^property[=].valueString = "-"
* #10038923 "Retinopathie"
* #10038923 ^designation[+].language = #de-DE
* #10038923 ^designation[=].value = "Netzhauterkrankung"
* #10038923 ^definition = "Eine die Netzhaut betreffende Erkrankung."
* #10038923 ^property[+].code = #grad3
* #10038923 ^property[=].valueString = "Symptomatisch mit deutlicher Herabsetzung der Sehschärfe (schlechter als <20/40); behindernd; Einschränkung der selbstversorgenden ATL"
* #10038923 ^property[+].code = #grad4
* #10038923 ^property[=].valueString = "Perforation oder Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10038923 ^property[+].code = #grad5
* #10038923 ^property[=].valueString = "-"
* #10061510 "Sklerale Störung"
* #10061510 ^designation[+].language = #de-DE
* #10061510 ^designation[=].value = "Sklera Erkrankung"
* #10061510 ^designation[+].language = #de-DE
* #10061510 ^designation[=].value = "Lederhaut Erkrankung"
* #10061510 ^definition = "Eine die Lederhaut (Sklera) betreffende Störung."
* #10061510 ^property[+].code = #grad3
* #10061510 ^property[=].valueString = "Symptomatisch; Einschränkung der selbstversorgenden ATL; deutliche Herabsetzung der Sehschärfe (<20/40)"
* #10061510 ^property[+].code = #grad4
* #10061510 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10061510 ^property[+].code = #grad5
* #10061510 ^property[=].valueString = "-"
* #10033703 "Stauungspapille"
* #10033703 ^designation[+].language = #de-DE
* #10033703 ^designation[=].value = "Papillenödem"
* #10033703 ^designation[+].language = #de-DE
* #10033703 ^designation[=].value = "Sehscheibenschwellung"
* #10033703 ^designation[+].language = #de-DE
* #10033703 ^designation[=].value = "Papillenschwellung"
* #10033703 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Schwellung der Papille (Sehnervenscheibe)."
* #10033703 ^property[+].code = #grad3
* #10033703 ^property[=].valueString = "Deutlicher Gesichtsfeldausfall im betroffenen Auge (schlechter als 20/40 aber besser als 20/200)"
* #10033703 ^property[+].code = #grad4
* #10033703 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10033703 ^property[+].code = #grad5
* #10033703 ^property[=].valueString = "-"
* #10047848 "Tränende Augen"
* #10047848 ^designation[+].language = #de-DE
* #10047848 ^designation[=].value = "Wässernde Augen"
* #10047848 ^definition = "Eine Erkrankung, gekennzeichnet durch exzessives Tränen der Augen; dies kann durch eine Überproduktion von Tränen oder eine behinderte Drainage des Tränengangs verursacht sein."
* #10047848 ^property[+].code = #grad3
* #10047848 ^property[=].valueString = "Operative Intervention angezeigt"
* #10047848 ^property[+].code = #grad4
* #10047848 ^property[=].valueString = "-"
* #10047848 ^property[+].code = #grad5
* #10047848 ^property[=].valueString = "-"
* #10046851 "Uveitis"
* #10046851 ^designation[+].language = #de-DE
* #10046851 ^designation[=].value = "Regenbogenhautentzündung"
* #10046851 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Regenbogenhaut."
* #10046851 ^property[+].code = #grad3
* #10046851 ^property[=].valueString = "Posteriore Panuveitis"
* #10046851 ^property[+].code = #grad4
* #10046851 ^property[=].valueString = "Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10046851 ^property[+].code = #grad5
* #10046851 ^property[=].valueString = "-"
* #10038901 "Vaskuläre retinale Erkrankung"
* #10038901 ^designation[+].language = #de-DE
* #10038901 ^designation[=].value = "-"
* #10038901 ^definition = "Eine Erkrankung, gekennzeichnet durch krankhafte Netzhautblutgefäße, die die Sehfähigkeit nachteilig beeinflussen kann."
* #10038901 ^property[+].code = #grad3
* #10038901 ^property[=].valueString = "Intravitreale Medikation; op. Intervention angezeigt"
* #10038901 ^property[+].code = #grad4
* #10038901 ^property[=].valueString = "-"
* #10038901 ^property[+].code = #grad5
* #10038901 ^property[=].valueString = "-"
* #10005886 "Verschwommenes Sehen"
* #10005886 ^designation[+].language = #de-DE
* #10005886 ^designation[=].value = "Unscharfes Sehen"
* #10005886 ^definition = "Eine Störung, gekennzeichnet durch visuelle Wahrnehmung unklarer oder unscharfer Bilder."
* #10005886 ^property[+].code = #grad3
* #10005886 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL"
* #10005886 ^property[+].code = #grad4
* #10005886 ^property[=].valueString = "-"
* #10005886 ^property[+].code = #grad5
* #10005886 ^property[=].valueString = "-"
* #10015919 "Augenerkrankungen - Sonstige, zu spezifizieren"
* #10015919 ^designation[+].language = #de-DE
* #10015919 ^designation[=].value = "-"
* #10015919 ^definition = "Sonstige, zu spezifizierende Augenerkrankungen, die unerwünschte Ereignisse im Rahmen einer Behandlung darstellen."
* #10015919 ^property[+].code = #grad3
* #10015919 ^property[=].valueString = "Schwere oder medizinisch signifikante aber nicht unmittelbar das Sehen bedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10015919 ^property[+].code = #grad4
* #10015919 ^property[=].valueString = "Sichtbedrohende Folgen; Intervention dringlich angezeigt; Blindheit (20/200 oder schlechter) im betroffenen Auge"
* #10015919 ^property[+].code = #grad5
* #10015919 ^property[=].valueString = "-"
* #10000060 "Abdominale Blähung"
* #10000060 ^designation[+].language = #de-DE
* #10000060 ^designation[=].value = "Aufgetriebener Bauch"
* #10000060 ^designation[+].language = #de-DE
* #10000060 ^designation[=].value = "Abdominale Aufblähung"
* #10000060 ^designation[+].language = #de-DE
* #10000060 ^designation[=].value = "Bauchblähung"
* #10000060 ^definition = "Eine Störung, gekennzeichnet durch eine Aufblähung des Abdomens"
* #10000060 ^property[+].code = #grad3
* #10000060 ^property[=].valueString = "Starke Beschwerden; Einschränkung der selbstversorgenden ATL"
* #10000060 ^property[+].code = #grad4
* #10000060 ^property[=].valueString = "-"
* #10000060 ^property[+].code = #grad5
* #10000060 ^property[=].valueString = "-"
* #10000081 "Abdominale Schmerzen"
* #10000081 ^designation[+].language = #de-DE
* #10000081 ^designation[=].value = "Bauchschmerzen"
* #10000081 ^designation[+].language = #de-DE
* #10000081 ^designation[=].value = "Bauchkrämpfe"
* #10000081 ^designation[+].language = #de-DE
* #10000081 ^designation[=].value = "abdominale Schmerzen"
* #10000081 ^definition = "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Bauchraum."
* #10000081 ^property[+].code = #grad3
* #10000081 ^property[=].valueString = "Starke Schmerzen; Einschränkung der selbstversorgenden ATL"
* #10000081 ^property[+].code = #grad4
* #10000081 ^property[=].valueString = "-"
* #10000081 ^property[+].code = #grad5
* #10000081 ^property[=].valueString = "-"
* #10055226 "Analblutung"
* #10055226 ^designation[+].language = #de-DE
* #10055226 ^designation[=].value = "Afterblutung"
* #10055226 ^designation[+].language = #de-DE
* #10055226 ^designation[=].value = "Analhämorrhagie"
* #10055226 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Blutung aus der Analregion."
* #10055226 ^property[+].code = #grad3
* #10055226 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10055226 ^property[+].code = #grad4
* #10055226 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10055226 ^property[+].code = #grad5
* #10055226 ^property[=].valueString = "Tod"
* #10002156 "Analfistel"
* #10002156 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Öffnung des Analkanals und der perianalen Haut."
* #10002156 ^property[+].code = #grad3
* #10002156 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPE (totale parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10002156 ^property[+].code = #grad4
* #10002156 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10002156 ^property[+].code = #grad5
* #10002156 ^property[=].valueString = "Tod"
* #10002180 "Analgeschwür"
* #10002180 ^designation[+].language = #de-DE
* #10002180 ^designation[=].value = "Analulkus"
* #10002180 ^designation[+].language = #de-DE
* #10002180 ^designation[=].value = "Analulcus"
* #10002180 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotische erosive Läsion der Schleimhautoberfläche des Analkanals."
* #10002180 ^property[+].code = #grad3
* #10002180 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; TPN (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
* #10002180 ^property[+].code = #grad4
* #10002180 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10002180 ^property[+].code = #grad5
* #10002180 ^property[=].valueString = "Tod"
* #10065721 "Analmukositis"
* #10065721 ^designation[+].language = #de-DE
* #10065721 ^designation[=].value = "Anale Schleimhautentzündung"
* #10065721 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Anusschleimhaut."
* #10065721 ^property[+].code = #grad3
* #10065721 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10065721 ^property[+].code = #grad4
* #10065721 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065721 ^property[+].code = #grad5
* #10065721 ^property[=].valueString = "Tod"
* #10065722 "Analnekrose"
* #10065722 ^designation[+].language = #de-DE
* #10065722 ^designation[=].value = "Afternekrose"
* #10065722 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess im Analbereich."
* #10065722 ^property[+].code = #grad3
* #10065722 ^property[=].valueString = "TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10065722 ^property[+].code = #grad4
* #10065722 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065722 ^property[+].code = #grad5
* #10065722 ^property[=].valueString = "Tod"
* #10002167 "Analschmerz"
* #10002167 ^designation[+].language = #de-DE
* #10002167 ^designation[=].value = "Afterschmerz"
* #10002167 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Analbereich."
* #10002167 ^property[+].code = #grad3
* #10002167 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10002167 ^property[+].code = #grad4
* #10002167 ^property[=].valueString = "-"
* #10002167 ^property[+].code = #grad5
* #10002167 ^property[=].valueString = "-"
* #10002176 "Analstenose"
* #10002176 ^designation[+].language = #de-DE
* #10002176 ^designation[=].value = "Analverengung"
* #10002176 ^designation[+].language = #de-DE
* #10002176 ^designation[=].value = "Afterstenose"
* #10002176 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Analkanals."
* #10002176 ^property[+].code = #grad3
* #10002176 ^property[=].valueString = "Symptomatisch und stark veränderte gastrointestinale Funktion; nichtdringliche operative Intervention angezeigt; TPN (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt"
* #10002176 ^property[+].code = #grad4
* #10002176 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10002176 ^property[+].code = #grad5
* #10002176 ^property[=].valueString = "Tod"
* #10003445 "Aszites"
* #10003445 ^designation[+].language = #de-DE
* #10003445 ^designation[=].value = "Bauchwassersucht"
* #10003445 ^designation[+].language = #de-DE
* #10003445 ^designation[=].value = "abdominelle Flüssigkeitsansammlung"
* #10003445 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Ansammlung von seröser oder blutiger Flüssigkeit im Peritonealraum."
* #10003445 ^property[+].code = #grad3
* #10003445 ^property[=].valueString = "Schwere Symptome; invasive Intervention angezeigt"
* #10003445 ^property[+].code = #grad4
* #10003445 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10003445 ^property[+].code = #grad5
* #10003445 ^property[=].valueString = "Tod"
* #10016766 "Blähungen"
* #10016766 ^designation[+].language = #de-DE
* #10016766 ^designation[=].value = "Flatulenz"
* #10016766 ^designation[+].language = #de-DE
* #10016766 ^designation[=].value = "Winde"
* #10016766 ^definition = "Eine Störung, gekennzeichnet durch das Zustand exzessiven Gases im Ernährungstrakt."
* #10016766 ^property[+].code = #grad3
* #10016766 ^property[=].valueString = "-"
* #10016766 ^property[+].code = #grad4
* #10016766 ^property[=].valueString = "-"
* #10016766 ^property[+].code = #grad5
* #10016766 ^property[=].valueString = "-"
* #10051746 "Blutung des unteren Gastrointestinaltraktes"
* #10051746 ^designation[+].language = #de-DE
* #10051746 ^designation[=].value = "Untere GI- Trakt- Blutung"
* #10051746 ^designation[+].language = #de-DE
* #10051746 ^designation[=].value = "Blutung distaler GI'-Trakt"
* #10051746 ^designation[+].language = #de-DE
* #10051746 ^designation[=].value = "Peranale Blutung"
* #10051746 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus dem unteren GI-Trakt (Dünndarm, Dickdarm und Anus)."
* #10051746 ^property[+].code = #grad3
* #10051746 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10051746 ^property[+].code = #grad4
* #10051746 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10051746 ^property[+].code = #grad5
* #10051746 ^property[=].valueString = "Tod"
* #10008417 "Cheilitis"
* #10008417 ^designation[+].language = #de-DE
* #10008417 ^designation[=].value = "Lippenentzündung"
* #10008417 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Lippen."
* #10008417 ^property[+].code = #grad3
* #10008417 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10008417 ^property[+].code = #grad4
* #10008417 ^property[=].valueString = "-"
* #10008417 ^property[+].code = #grad5
* #10008417 ^property[=].valueString = "-"
* #10014893 "Darmentzündung"
* #10014893 ^designation[+].language = #de-DE
* #10014893 ^designation[=].value = "Enteritis"
* #10014893 ^designation[+].language = #de-DE
* #10014893 ^designation[=].value = "Enterokolitis"
* #10014893 ^designation[+].language = #de-DE
* #10014893 ^designation[=].value = "Enterocolitis"
* #10014893 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Dünn- und Dickdarmes."
* #10014893 ^property[+].code = #grad3
* #10014893 ^property[=].valueString = "Schwere oder persistierende abdominelle Schmerzen; Fieber; Ileus; Peritoneale Zeichen"
* #10014893 ^property[+].code = #grad4
* #10014893 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10014893 ^property[+].code = #grad5
* #10014893 ^property[=].valueString = "Tod"
* #10009995 "Dickdarmfistel"
* #10009995 ^designation[+].language = #de-DE
* #10009995 ^designation[=].value = "Kolonfistel"
* #10009995 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem Dickdarm und einem anderen Organ oder anatomischen Ort."
* #10009995 ^property[+].code = #grad3
* #10009995 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Darmstillstand, Sondenernährung; TPN oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10009995 ^property[+].code = #grad4
* #10009995 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10009995 ^property[+].code = #grad5
* #10009995 ^property[=].valueString = "Tod"
* #10009998 "Dickdarmblutung"
* #10009998 ^designation[+].language = #de-DE
* #10009998 ^designation[=].value = "Kolonhämorrhagie"
* #10009998 ^designation[+].language = #de-DE
* #10009998 ^designation[=].value = "Kolonblutung"
* #10009998 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Blutung aus dem Dickdarm."
* #10009998 ^property[+].code = #grad3
* #10009998 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt; behindernd"
* #10009998 ^property[+].code = #grad4
* #10009998 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10009998 ^property[+].code = #grad5
* #10009998 ^property[=].valueString = "Tod"
* #10010000 "Dickdarmobstruktion"
* #10010000 ^designation[+].language = #de-DE
* #10010000 ^designation[=].value = "Kolonobstruktion"
* #10010000 ^designation[+].language = #de-DE
* #10010000 ^designation[=].value = "Dickdarmverschluss"
* #10010000 ^designation[+].language = #de-DE
* #10010000 ^designation[=].value = "Darmpassagestörungen (z. B. protrahierte Atonie, Subileus, Ileus)"
* #10010000 ^designation[+].language = #de-DE
* #10010000 ^designation[=].value = "Dickdarmileus"
* #10010000 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Verhinderung (Obstruktion) des normalen Flusses der Inhalte des Dickdarms."
* #10010000 ^property[+].code = #grad3
* #10010000 ^property[=].valueString = "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10010000 ^property[+].code = #grad4
* #10010000 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10010000 ^property[+].code = #grad5
* #10010000 ^property[=].valueString = "Tod"
* #10010001 "Dickdarmperforation"
* #10010001 ^designation[+].language = #de-DE
* #10010001 ^designation[=].value = "Dickdarmdurchbruch"
* #10010001 ^designation[+].language = #de-DE
* #10010001 ^designation[=].value = "Kolonperforation"
* #10010001 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Dickdarmwand."
* #10010001 ^property[+].code = #grad3
* #10010001 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10010001 ^property[+].code = #grad4
* #10010001 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10010001 ^property[+].code = #grad5
* #10010001 ^property[=].valueString = "Tod"
* #10010004 "Dickdarmstenose"
* #10010004 ^designation[+].language = #de-DE
* #10010004 ^designation[=].value = "Dickdarmverengung"
* #10010004 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Dickdarms."
* #10010004 ^property[+].code = #grad3
* #10010004 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10010004 ^property[+].code = #grad4
* #10010004 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10010004 ^property[+].code = #grad5
* #10010004 ^property[=].valueString = "Tod"
* #10010006 "Dickdarmulkus"
* #10010006 ^designation[+].language = #de-DE
* #10010006 ^designation[=].value = "Kolonulcus"
* #10010006 ^designation[+].language = #de-DE
* #10010006 ^designation[=].value = "Kolonulkus"
* #10010006 ^designation[+].language = #de-DE
* #10010006 ^designation[=].value = "Dickdarmgeschwür"
* #10010006 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Dickdarms."
* #10010006 ^property[+].code = #grad3
* #10010006 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; TPN angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
* #10010006 ^property[+].code = #grad4
* #10010006 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10010006 ^property[+].code = #grad5
* #10010006 ^property[=].valueString = "Tod"
* #10041101 "Dünndarmobstruktion"
* #10041101 ^designation[+].language = #de-DE
* #10041101 ^designation[=].value = "Dünndarmverschluss"
* #10041101 ^designation[+].language = #de-DE
* #10041101 ^designation[=].value = "Dünndarmmileus"
* #10041101 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte (des Dünndarms)."
* #10041101 ^property[+].code = #grad3
* #10041101 ^property[=].valueString = "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10041101 ^property[+].code = #grad4
* #10041101 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10041101 ^property[+].code = #grad5
* #10041101 ^property[=].valueString = "Tod"
* #10041103 "Dünndarmperforation"
* #10041103 ^designation[+].language = #de-DE
* #10041103 ^designation[=].value = "Dünndarmdurchbruch"
* #10041103 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Dünndarmwand."
* #10041103 ^property[+].code = #grad3
* #10041103 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10041103 ^property[+].code = #grad4
* #10041103 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; op. Intervention dringend angezeigt"
* #10041103 ^property[+].code = #grad5
* #10041103 ^property[=].valueString = "Tod"
* #10065710 "Dünndarmschleimhautentzündung"
* #10065710 ^designation[+].language = #de-DE
* #10065710 ^designation[=].value = "Dünndarmmukositis"
* #10065710 ^designation[+].language = #de-DE
* #10065710 ^designation[=].value = "Dünndarmentzündung"
* #10065710 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Dünndarms."
* #10065710 ^property[+].code = #grad3
* #10065710 ^property[=].valueString = "Schwerer Schmerz; die orale Aufnahme beeinträchtigend; Sondenernährung; TPE oder Krankenhauseinweisung angezeigt; begrenzte selbstversorgende ATL"
* #10065710 ^property[+].code = #grad4
* #10065710 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10065710 ^property[+].code = #grad5
* #10065710 ^property[=].valueString = "Tod"
* #10062263 "Dünndarmstenose"
* #10062263 ^designation[+].language = #de-DE
* #10062263 ^designation[=].value = "Dünndarmverengung"
* #10062263 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Dünndarms."
* #10062263 ^property[+].code = #grad3
* #10062263 ^property[=].valueString = "Schwerwiegend veränderte GI- Funktion; Sondenernährung, TPE oder Krankenhauseinweisung angezeigt; nichtdringliche operative Intervention angezeigt"
* #10062263 ^property[+].code = #grad4
* #10062263 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10062263 ^property[+].code = #grad5
* #10062263 ^property[=].valueString = "Tod"
* #10041133 "Dünndarmgeschwür"
* #10041133 ^designation[+].language = #de-DE
* #10041133 ^designation[=].value = "Dünndarmulkus"
* #10041133 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Dünndarms."
* #10041133 ^property[+].code = #grad3
* #10041133 ^property[=].valueString = "Schwerwiegende gestörte GI Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10041133 ^property[+].code = #grad4
* #10041133 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
* #10041133 ^property[+].code = #grad5
* #10041133 ^property[=].valueString = "Tod"
* #10055242 "Duodenalblutung"
* #10055242 ^designation[+].language = #de-DE
* #10055242 ^designation[=].value = "Zwölffingerdarmblutung"
* #10055242 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Duodenum."
* #10055242 ^property[+].code = #grad3
* #10055242 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10055242 ^property[+].code = #grad4
* #10055242 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10055242 ^property[+].code = #grad5
* #10055242 ^property[=].valueString = "Tod"
* #10013828 "Duodenalfistel"
* #10013828 ^designation[+].language = #de-DE
* #10013828 ^designation[=].value = "Zwölffingerdarmfistel"
* #10013828 ^designation[+].language = #de-DE
* #10013828 ^designation[=].value = "Duodenalblutung"
* #10013828 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem Zwölffingerdarm und einem anderen Organ oder anatomischen Ort."
* #10013828 ^property[+].code = #grad3
* #10013828 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPN (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10013828 ^property[+].code = #grad4
* #10013828 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10013828 ^property[+].code = #grad5
* #10013828 ^property[=].valueString = "Tod"
* #10013830 "Duodenalobstruktion"
* #10013830 ^designation[+].language = #de-DE
* #10013830 ^designation[=].value = "Zwölffingerdarmverschluss"
* #10013830 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Mageninhalte durch das Duodenum."
* #10013830 ^property[+].code = #grad3
* #10013830 ^property[=].valueString = "Krankenhauseinweisung oder elektive operative Intervention angezeigt: behindernd"
* #10013830 ^property[+].code = #grad4
* #10013830 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10013830 ^property[+].code = #grad5
* #10013830 ^property[=].valueString = "Tod"
* #10013832 "Duodenalperforation"
* #10013832 ^designation[+].language = #de-DE
* #10013832 ^designation[=].value = "Duodenaldurchbruch"
* #10013832 ^designation[+].language = #de-DE
* #10013832 ^designation[=].value = "Zwölffingerdarmdurchbruch"
* #10013832 ^designation[+].language = #de-DE
* #10013832 ^designation[=].value = "Zwölffingerdarmperforation"
* #10013832 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Zwölffingerdarmwand."
* #10013832 ^property[+].code = #grad3
* #10013832 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10013832 ^property[+].code = #grad4
* #10013832 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
* #10013832 ^property[+].code = #grad5
* #10013832 ^property[=].valueString = "Tod"
* #10050094 "Duodenalstenose"
* #10050094 ^designation[+].language = #de-DE
* #10050094 ^designation[=].value = "Zwölffingerdarmstenose"
* #10050094 ^designation[+].language = #de-DE
* #10050094 ^designation[=].value = "Zwölffingerdarmverengung"
* #10050094 ^designation[+].language = #de-DE
* #10050094 ^designation[=].value = "Duodenalulcus"
* #10050094 ^designation[+].language = #de-DE
* #10050094 ^designation[=].value = "Ulcus duodeni"
* #10050094 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Zwölffingerdarmes."
* #10050094 ^property[+].code = #grad3
* #10050094 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung; Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10050094 ^property[+].code = #grad4
* #10050094 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10050094 ^property[+].code = #grad5
* #10050094 ^property[=].valueString = "Tod"
* #10013836 "Duodenalulkus"
* #10013836 ^designation[+].language = #de-DE
* #10013836 ^designation[=].value = "Zwölffingerdarmgeschwür"
* #10013836 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Zwölffingerdarms."
* #10013836 ^property[+].code = #grad3
* #10013836 ^property[=].valueString = "Schwerwiegende gestörte GI Funktion; totale parenterale Ernährung (TPE) angezeigt; elektive operative oder endoskopische Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10013836 ^property[+].code = #grad4
* #10013836 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
* #10013836 ^property[+].code = #grad5
* #10013836 ^property[=].valueString = "Tod"
* #10012727 "Durchfall"
* #10012727 ^designation[+].language = #de-DE
* #10012727 ^designation[=].value = "Diarrhö"
* #10012727 ^designation[+].language = #de-DE
* #10012727 ^designation[=].value = "Diarrhoe"
* #10012727 ^definition = "Eine Störung, gekennzeichnet durch häufige und wässrige Stuhlentleerungen."
* #10012727 ^property[+].code = #grad3
* #10012727 ^property[=].valueString = "Erhöhung >= 7 Stühle pro Tag über die Normalfrequenz hinaus; Inkontinenz; Krankenhauseinweisung angezeigt; schwerwiegender Anstieg der Stuhlmenge über die Normalmenge hinaus; Einschränkung der selbstversorgenden ATL"
* #10012727 ^property[+].code = #grad4
* #10012727 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10012727 ^property[+].code = #grad5
* #10012727 ^property[=].valueString = "Tod"
* #10047700 "Erbrechen"
* #10047700 ^designation[+].language = #de-DE
* #10047700 ^designation[=].value = "Emesis"
* #10047700 ^definition = "Eine Störung, gekennzeichnet durch den reflexiven Akt des Auswerfens des Mageninhaltes durch den Mund."
* #10047700 ^property[+].code = #grad3
* #10047700 ^property[=].valueString = "Frequenz >= 6 pro 24 h (5 min voneinander getrennt); Ernährungssonde, TPE oder Krankenhauseinweisung angezeigt (24 h)"
* #10047700 ^property[+].code = #grad4
* #10047700 ^property[=].valueString = "Lebensbedrohliche Konsequenzen; dringliche Intervention angezeigt"
* #10047700 ^property[+].code = #grad5
* #10047700 ^property[=].valueString = "Tod"
* #10017877 "Gastrointestinale Fistel"
* #10017877 ^designation[+].language = #de-DE
* #10017877 ^designation[=].value = "Enterale Fistel"
* #10017877 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen irgendeinem Teil des GI-Systems und einem anderen Organ oder anatomischen Ort."
* #10017877 ^property[+].code = #grad3
* #10017877 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPE oder Krankenhauseinweisung angezeigt"
* #10017877 ^property[+].code = #grad4
* #10017877 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10017877 ^property[+].code = #grad5
* #10017877 ^property[=].valueString = "Tod"
* #10017999 "Gastrointestinale Schmerzen"
* #10017999 ^designation[+].language = #de-DE
* #10017999 ^designation[=].value = "Bauchschmerzen"
* #10017999 ^designation[+].language = #de-DE
* #10017999 ^designation[=].value = "abdominelle Schmerzen"
* #10017999 ^definition = "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im GI Bereich."
* #10017999 ^property[+].code = #grad3
* #10017999 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10017999 ^property[+].code = #grad4
* #10017999 ^property[=].valueString = "-"
* #10017999 ^property[+].code = #grad5
* #10017999 ^property[=].valueString = "-"
* #10066874 "Gastroösophageale Refluxkrankheit"
* #10066874 ^designation[+].language = #de-DE
* #10066874 ^designation[=].value = "Sodbrennen"
* #10066874 ^designation[+].language = #de-DE
* #10066874 ^designation[=].value = "Magenbrennen"
* #10066874 ^designation[+].language = #de-DE
* #10066874 ^designation[=].value = "Pyrosis"
* #10066874 ^designation[+].language = #de-DE
* #10066874 ^designation[=].value = "Refluxösophagitis"
* #10066874 ^designation[+].language = #de-DE
* #10066874 ^designation[=].value = "gastroesophageal reflux disease, GERD"
* #10066874 ^definition = "Eine Störung, gekennzeichnet durch einen Rückfluss gastrischer und/oder duodenaler Inhalte in den unteren Ösophagus. Sie ist ihrer Natur nach chronisch und in der Regel durch die Inkompetenz des unteren Speiseröhrenschließmuskels bedingt und kann zu einer Läsion der Speiseröhrenschleimhaut führen. Symptome schließen Sodbrennen und saure Magenverstimmungen / Verdauungsstörungen ein."
* #10066874 ^property[+].code = #grad3
* #10066874 ^property[=].valueString = "Schwere Symptome; chirurgische Intervention angezeigt"
* #10066874 ^property[+].code = #grad4
* #10066874 ^property[=].valueString = "-"
* #10066874 ^property[+].code = #grad5
* #10066874 ^property[=].valueString = "-"
* #10018043 "Gastroparese"
* #10018043 ^designation[+].language = #de-DE
* #10018043 ^designation[=].value = "Magenlähmung"
* #10018043 ^designation[+].language = #de-DE
* #10018043 ^designation[=].value = "Magenatonie"
* #10018043 ^designation[+].language = #de-DE
* #10018043 ^designation[=].value = "Magenentleerungsstörung"
* #10018043 ^definition = "Eine Störung, gekennzeichnet durch die unvollständige Lähmung der Muskeln der Magenwand mit der Folge einer verzögerten Entleerung des Mageninhaltes in den Dünndarm."
* #10018043 ^property[+].code = #grad3
* #10018043 ^property[=].valueString = "Gewichtsverlust; resistent gegenüber medizinischer Intervention ; unfähig, die Ernährung oral aufrecht zu erhalten"
* #10018043 ^property[+].code = #grad4
* #10018043 ^property[=].valueString = "-"
* #10018043 ^property[+].code = #grad5
* #10018043 ^property[=].valueString = "-"
* #10060640 "Hämorrhoidale Blutung"
* #10060640 ^designation[+].language = #de-DE
* #10060640 ^designation[=].value = "Afterblutung"
* #10060640 ^designation[+].language = #de-DE
* #10060640 ^designation[=].value = "Analhämorrhagie"
* #10060640 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus den Hämorrhoiden."
* #10060640 ^property[+].code = #grad3
* #10060640 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10060640 ^property[+].code = #grad4
* #10060640 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10060640 ^property[+].code = #grad5
* #10060640 ^property[=].valueString = "Tod"
* #10019611 "Hämorrhoiden"
* #10019611 ^designation[+].language = #de-DE
* #10019611 ^designation[=].value = "-"
* #10019611 ^definition = "Eine Störung, gekennzeichnet durch das Vorhandensein erweiterter Venen im Rektum und dem umgebenden Bereich."
* #10019611 ^property[+].code = #grad3
* #10019611 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10019611 ^property[+].code = #grad4
* #10019611 ^property[=].valueString = "-"
* #10019611 ^property[+].code = #grad5
* #10019611 ^property[=].valueString = "-"
* #10062570 "Harnblasen-Darm-Fistel"
* #10062570 ^designation[+].language = #de-DE
* #10062570 ^designation[=].value = "Enterovesikale Fistel"
* #10062570 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Harnblase und Darm."
* #10062570 ^property[+].code = #grad3
* #10062570 ^property[=].valueString = "Schwer, medizinisch signifikant; medizinische Intervention angezeigt"
* #10062570 ^property[+].code = #grad4
* #10062570 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10062570 ^property[+].code = #grad5
* #10062570 ^property[=].valueString = "Tod"
* #10055287 "Ileumblutung"
* #10055287 ^designation[+].language = #de-DE
* #10055287 ^designation[=].value = "Ileumhämorrhagie"
* #10055287 ^designation[+].language = #de-DE
* #10055287 ^designation[=].value = "Ileum Blutung"
* #10055287 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Ileum."
* #10055287 ^property[+].code = #grad3
* #10055287 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10055287 ^property[+].code = #grad4
* #10055287 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10055287 ^property[+].code = #grad5
* #10055287 ^property[=].valueString = "Tod"
* #10065728 "Ileumfistel"
* #10065728 ^designation[+].language = #de-DE
* #10065728 ^designation[=].value = "Ileum Fistel"
* #10065728 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem Ileum und einem anderen Organ oder anatomischen Ort."
* #10065728 ^property[+].code = #grad3
* #10065728 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10065728 ^property[+].code = #grad4
* #10065728 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065728 ^property[+].code = #grad5
* #10065728 ^property[=].valueString = "Tod"
* #10065730 "Ileumobstruktion"
* #10065730 ^designation[+].language = #de-DE
* #10065730 ^designation[=].value = "Ileumverschluss"
* #10065730 ^designation[+].language = #de-DE
* #10065730 ^designation[=].value = "Ileumileus"
* #10065730 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte des Ileums."
* #10065730 ^property[+].code = #grad3
* #10065730 ^property[=].valueString = "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10065730 ^property[+].code = #grad4
* #10065730 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10065730 ^property[+].code = #grad5
* #10065730 ^property[=].valueString = "Tod"
* #10021305 "Ileumperforation"
* #10021305 ^designation[+].language = #de-DE
* #10021305 ^designation[=].value = "Unterer Dünndarmdurchbruch"
* #10021305 ^designation[+].language = #de-DE
* #10021305 ^designation[=].value = "Ileumdurchbruch"
* #10021305 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) des Ileums."
* #10021305 ^property[+].code = #grad3
* #10021305 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10021305 ^property[+].code = #grad4
* #10021305 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
* #10021305 ^property[+].code = #grad5
* #10021305 ^property[=].valueString = "Tod"
* #10021307 "Ileumstenose"
* #10021307 ^designation[+].language = #de-DE
* #10021307 ^designation[=].value = "Untere Dünndarmstenose"
* #10021307 ^designation[+].language = #de-DE
* #10021307 ^designation[=].value = "Ileumverengung"
* #10021307 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des unteren Dünndarms."
* #10021307 ^property[+].code = #grad3
* #10021307 ^property[=].valueString = "Schwerwiegend veränderte gastrointestinale Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10021307 ^property[+].code = #grad4
* #10021307 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10021307 ^property[+].code = #grad5
* #10021307 ^property[=].valueString = "Tod"
* #10021309 "Ileumulkus"
* #10021309 ^designation[+].language = #de-DE
* #10021309 ^designation[=].value = "Ileumgeschwür"
* #10021309 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Ileums."
* #10021309 ^property[+].code = #grad3
* #10021309 ^property[=].valueString = "Schwerwiegende gestörte GI Funktion; Sondenernährung angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
* #10021309 ^property[+].code = #grad4
* #10021309 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
* #10021309 ^property[+].code = #grad5
* #10021309 ^property[=].valueString = "Tod"
* #10021328 "Ileus"
* #10021328 ^designation[+].language = #de-DE
* #10021328 ^designation[=].value = "Darmverschluss"
* #10021328 ^definition = "Eine Erkrankung, gekennzeichnet durch die Unfähigkeit des Ileums (des Darmes allgemein), die Inhalte zu transportieren."
* #10021328 ^property[+].code = #grad3
* #10021328 ^property[=].valueString = "Schwerwiegende gestörte GI Funktion; TPE angezeigt"
* #10021328 ^property[+].code = #grad4
* #10021328 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10021328 ^property[+].code = #grad5
* #10021328 ^property[=].valueString = "Tod"
* #10055291 "Intraabdominelle Blutung"
* #10055291 ^designation[+].language = #de-DE
* #10055291 ^designation[=].value = "Intraabdominale Blutung"
* #10055291 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Blutung innerhalb der Bauchhöhle."
* #10055291 ^property[+].code = #grad3
* #10055291 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10055291 ^property[+].code = #grad4
* #10055291 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10055291 ^property[+].code = #grad5
* #10055291 ^property[=].valueString = "Tod"
* #10065719 "Jejunumfistel"
* #10065719 ^designation[+].language = #de-DE
* #10065719 ^designation[=].value = "Obere Dünndarmfistel"
* #10065719 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem Jejunum und einem anderen Organ oder anatomischen Ort."
* #10065719 ^property[+].code = #grad3
* #10065719 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10065719 ^property[+].code = #grad4
* #10065719 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065719 ^property[+].code = #grad5
* #10065719 ^property[=].valueString = "Tod"
* #10055300 "Jejunumblutung"
* #10055300 ^designation[+].language = #de-DE
* #10055300 ^designation[=].value = "Jejunumhämorrhagie"
* #10055300 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Ileum."
* #10055300 ^property[+].code = #grad3
* #10055300 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10055300 ^property[+].code = #grad4
* #10055300 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10055300 ^property[+].code = #grad5
* #10055300 ^property[=].valueString = "Tod"
* #10065732 "Jejunumobstruktion"
* #10065732 ^designation[+].language = #de-DE
* #10065732 ^designation[=].value = "JejunumiIeus"
* #10065732 ^designation[+].language = #de-DE
* #10065732 ^designation[=].value = "Jejunumverschluss"
* #10065732 ^designation[+].language = #de-DE
* #10065732 ^designation[=].value = "Ileus des Jejunums"
* #10065732 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte des Jejunums."
* #10065732 ^property[+].code = #grad3
* #10065732 ^property[=].valueString = "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10065732 ^property[+].code = #grad4
* #10065732 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10065732 ^property[+].code = #grad5
* #10065732 ^property[=].valueString = "Tod"
* #10023174 "Jejunumperforation"
* #10023174 ^designation[+].language = #de-DE
* #10023174 ^designation[=].value = "Jejunale Perforation"
* #10023174 ^designation[+].language = #de-DE
* #10023174 ^designation[=].value = "oberer Dünndarmdurchbruch"
* #10023174 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) des Jejunums."
* #10023174 ^property[+].code = #grad3
* #10023174 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10023174 ^property[+].code = #grad4
* #10023174 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
* #10023174 ^property[+].code = #grad5
* #10023174 ^property[=].valueString = "Tod"
* #10023176 "Jejunumstenose"
* #10023176 ^designation[+].language = #de-DE
* #10023176 ^designation[=].value = "Jejunumverengung"
* #10023176 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Jejunums."
* #10023176 ^property[+].code = #grad3
* #10023176 ^property[=].valueString = "Schwerwiegend veränderte gastrointestinale Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive op. Intervention angezeigt"
* #10023176 ^property[+].code = #grad4
* #10023176 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10023176 ^property[+].code = #grad5
* #10023176 ^property[=].valueString = "Tod"
* #10023177 "Jejunumulkus"
* #10023177 ^designation[+].language = #de-DE
* #10023177 ^designation[=].value = "Jejunumgeschwür"
* #10023177 ^designation[+].language = #de-DE
* #10023177 ^designation[=].value = "Dünndarmulkus"
* #10023177 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Jejunums."
* #10023177 ^property[+].code = #grad3
* #10023177 ^property[=].valueString = "Schwerwiegende gestörte GI Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
* #10023177 ^property[+].code = #grad4
* #10023177 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
* #10023177 ^property[+].code = #grad5
* #10023177 ^property[=].valueString = "Tod"
* #10009887 "Kolitis"
* #10009887 ^designation[+].language = #de-DE
* #10009887 ^designation[=].value = "Dickdarmentzündung"
* #10009887 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Dickdarms."
* #10009887 ^property[+].code = #grad3
* #10009887 ^property[=].valueString = "Schwere abdominelle Schmerzen; veränderte Stuhlgangsverhalten; medizinische Intervention angezeigt; peritoneale Zeichen"
* #10009887 ^property[+].code = #grad4
* #10009887 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10009887 ^property[+].code = #grad5
* #10009887 ^property[=].valueString = "Tod"
* #10024561 "Lippenschmerz"
* #10024561 ^designation[+].language = #de-DE
* #10024561 ^designation[=].value = "Labialer Schmerz"
* #10024561 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden der Lippen."
* #10024561 ^property[+].code = #grad3
* #10024561 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10024561 ^property[+].code = #grad4
* #10024561 ^property[=].valueString = "-"
* #10024561 ^property[+].code = #grad5
* #10024561 ^property[=].valueString = "-"
* #10017789 "Magenblutung"
* #10017789 ^designation[+].language = #de-DE
* #10017789 ^designation[=].value = "Gastrische Hämorrhagie"
* #10017789 ^definition = "Eine Erkrankung gekennzeichnet durch eine Blutung aus der Magenwand."
* #10017789 ^property[+].code = #grad3
* #10017789 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10017789 ^property[+].code = #grad4
* #10017789 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10017789 ^property[+].code = #grad5
* #10017789 ^property[=].valueString = "Tod"
* #10065713 "Magenfistel"
* #10065713 ^designation[+].language = #de-DE
* #10065713 ^designation[=].value = "Gastrische Fistel"
* #10065713 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Magen und einem anderen Organ oder anatomischen Ort."
* #10065713 ^property[+].code = #grad3
* #10065713 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10065713 ^property[+].code = #grad4
* #10065713 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065713 ^property[+].code = #grad5
* #10065713 ^property[=].valueString = "Tod"
* #10051886 "Magennekrose"
* #10051886 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in der Magenwand auftritt."
* #10051886 ^property[+].code = #grad3
* #10051886 ^property[=].valueString = "Unfähigkeit sich durch den GI-Trakt angemessen zu ernähren; radiologische, endoskopische oder operative Intervention angezeigt"
* #10051886 ^property[+].code = #grad4
* #10051886 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10051886 ^property[+].code = #grad5
* #10051886 ^property[=].valueString = "Tod"
* #10017815 "Magenperforation"
* #10017815 ^designation[+].language = #de-DE
* #10017815 ^designation[=].value = "Magendurchbruch"
* #10017815 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Magenwand."
* #10017815 ^property[+].code = #grad3
* #10017815 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10017815 ^property[+].code = #grad4
* #10017815 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
* #10017815 ^property[+].code = #grad5
* #10017815 ^property[=].valueString = "Tod"
* #10061970 "Magenstenose"
* #10061970 ^designation[+].language = #de-DE
* #10061970 ^designation[=].value = "Magenverengung"
* #10061970 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Magens."
* #10061970 ^property[+].code = #grad3
* #10061970 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung; Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10061970 ^property[+].code = #grad4
* #10061970 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10061970 ^property[+].code = #grad5
* #10061970 ^property[=].valueString = "Tod"
* #10017853 "Magenschleimhautentzündung"
* #10017853 ^designation[+].language = #de-DE
* #10017853 ^designation[=].value = "Gastritis"
* #10017853 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Magens."
* #10017853 ^property[+].code = #grad3
* #10017853 ^property[=].valueString = "Schwerwiegend geändertes Essen oder gastrische Funktion; TPE oder Krankenhauseinweisung angezeigt"
* #10017853 ^property[+].code = #grad4
* #10017853 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10017853 ^property[+].code = #grad5
* #10017853 ^property[=].valueString = "Tod"
* #10042112 "Magenschmerz"
* #10042112 ^designation[+].language = #de-DE
* #10042112 ^designation[=].value = "Gastrischer Schmerz"
* #10042112 ^designation[+].language = #de-DE
* #10042112 ^designation[=].value = "Oberbauchschmerz"
* #10042112 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Magen."
* #10042112 ^property[+].code = #grad3
* #10042112 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10042112 ^property[+].code = #grad4
* #10042112 ^property[=].valueString = "-"
* #10042112 ^property[+].code = #grad5
* #10042112 ^property[=].valueString = "-"
* #10017822 "Magenulkus"
* #10017822 ^designation[+].language = #de-DE
* #10017822 ^designation[=].value = "Magengeschwür"
* #10017822 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Magens."
* #10017822 ^property[+].code = #grad3
* #10017822 ^property[=].valueString = "Schwerwiegende gestörte GI Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10017822 ^property[+].code = #grad4
* #10017822 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
* #10017822 ^property[+].code = #grad5
* #10017822 ^property[=].valueString = "Tod"
* #10025476 "Malabsorption"
* #10025476 ^designation[+].language = #de-DE
* #10025476 ^designation[=].value = "Resorptionsstörung"
* #10025476 ^designation[+].language = #de-DE
* #10025476 ^designation[=].value = "Kurzarmsyndrom"
* #10025476 ^definition = "Eine Erkrankung, gekennzeichnet durch unzulängliche Aufnahme von Nahrungsstoffen im Dünndarm. Symptome schließen deutliche Beschwerden, Völlegefühl und Durchfall ein."
* #10025476 ^property[+].code = #grad3
* #10025476 ^property[=].valueString = "Unfähigkeit sich angemessen zu ernähren; TPE angezeigt"
* #10025476 ^property[+].code = #grad4
* #10025476 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10025476 ^property[+].code = #grad5
* #10025476 ^property[=].valueString = "Tod"
* #10065720 "Mundhöhlenfistel"
* #10065720 ^designation[+].language = #de-DE
* #10065720 ^designation[=].value = "-"
* #10065720 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Mundhöhle und einem anderen Organ oder anatomischen Ort."
* #10065720 ^property[+].code = #grad3
* #10065720 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10065720 ^property[+].code = #grad4
* #10065720 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065720 ^property[+].code = #grad5
* #10065720 ^property[=].valueString = "Tod"
* #10013781 "Mundtrockenheit"
* #10013781 ^designation[+].language = #de-DE
* #10013781 ^designation[=].value = "Xerostomie"
* #10013781 ^definition = "Eine Störung, gekennzeichnet durch verringerten Speichelfluss in der Mundhöhle."
* #10013781 ^property[+].code = #grad3
* #10013781 ^property[=].valueString = "Unfähigkeit, angemessen oral zu ernähren; Sondenernährung oder TPE angezeigt; unstimulierte Speichelfluss < 0,1 ml/min"
* #10013781 ^property[+].code = #grad4
* #10013781 ^property[=].valueString = "-"
* #10013781 ^property[+].code = #grad5
* #10013781 ^property[=].valueString = "-"
* #10028813 "Nausea"
* #10028813 ^designation[+].language = #de-DE
* #10028813 ^designation[=].value = "Übelkeit"
* #10028813 ^designation[+].language = #de-DE
* #10028813 ^designation[=].value = "Brechreiz"
* #10028813 ^definition = "Eine Störung, gekennzeichnet durch ein mulmiges Gefühl und / oder den Drang zu erbrechen."
* #10028813 ^property[+].code = #grad3
* #10028813 ^property[=].valueString = "Unzureichende orale kalorische oder flüssige Aufnahme; Sondenernährung; Totale Parenterale Ernährung (TPE) oder Krankenhauseinweisung angezeigt"
* #10028813 ^property[+].code = #grad4
* #10028813 ^property[=].valueString = "-"
* #10028813 ^property[+].code = #grad5
* #10028813 ^property[=].valueString = "-"
* #10015453 "Ösophageale Varizenblutung"
* #10015453 ^designation[+].language = #de-DE
* #10015453 ^designation[=].value = "Krampfaderblutung der Speiseröhre"
* #10015453 ^designation[+].language = #de-DE
* #10015453 ^designation[=].value = "Speiseröhren- Varizen- Blutung"
* #10015453 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Blutung aus ösophagealen Varizen."
* #10015453 ^property[+].code = #grad3
* #10015453 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10015453 ^property[+].code = #grad4
* #10015453 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
* #10015453 ^property[+].code = #grad5
* #10015453 ^property[=].valueString = "Tod"
* #10015461 "Speiseröhrenentzündung"
* #10015461 ^designation[+].language = #de-DE
* #10015461 ^designation[=].value = "Ösophagitis"
* #10015461 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Speiseröhrenwand."
* #10015461 ^property[+].code = #grad3
* #10015461 ^property[=].valueString = "Schwerwiegend geändertes Essen / Schlucken; Sondenernährung oder TPE oder Krankenhauseinweisung angezeigt"
* #10015461 ^property[+].code = #grad4
* #10015461 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10015461 ^property[+].code = #grad5
* #10015461 ^property[=].valueString = "Tod"
* #10015384 "Speisröhrenblutung"
* #10015384 ^designation[+].language = #de-DE
* #10015384 ^designation[=].value = "Ösophagushämorrhagie"
* #10015384 ^designation[+].language = #de-DE
* #10015384 ^designation[=].value = "Ösophagusblutung"
* #10015384 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Blutung aus der Speisröhre."
* #10015384 ^property[+].code = #grad3
* #10015384 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10015384 ^property[+].code = #grad4
* #10015384 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10015384 ^property[+].code = #grad5
* #10015384 ^property[=].valueString = "Tod"
* #10065851 "Ösophagusfistel"
* #10065851 ^designation[+].language = #de-DE
* #10065851 ^designation[=].value = "Speiseröhrenfistel"
* #10065851 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Speiseröhre und einem anderen Organ oder anatomischen Ort."
* #10065851 ^property[+].code = #grad3
* #10065851 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung; TPE oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10065851 ^property[+].code = #grad4
* #10065851 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065851 ^property[+].code = #grad5
* #10065851 ^property[=].valueString = "Tod"
* #10065727 "Ösophagusnekrose"
* #10065727 ^designation[+].language = #de-DE
* #10065727 ^designation[=].value = "Speiseröhrennekrose"
* #10065727 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in der Speiseröhrenwand auftritt."
* #10065727 ^property[+].code = #grad3
* #10065727 ^property[=].valueString = "Unfähigkeit sich durch den GI-Trakt angemessen zu ernähren; radiologische, endoskopische oder operative Intervention angezeigt"
* #10065727 ^property[+].code = #grad4
* #10065727 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065727 ^property[+].code = #grad5
* #10065727 ^property[=].valueString = "Tod"
* #10015387 "Ösophagusobstruktion"
* #10015387 ^designation[+].language = #de-DE
* #10015387 ^designation[=].value = "Speiseröhrenverschluss"
* #10015387 ^designation[+].language = #de-DE
* #10015387 ^designation[=].value = "Speiseröhrenobstruktion"
* #10015387 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte der Speiseröhre."
* #10015387 ^property[+].code = #grad3
* #10015387 ^property[=].valueString = "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10015387 ^property[+].code = #grad4
* #10015387 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10015387 ^property[+].code = #grad5
* #10015387 ^property[=].valueString = "Tod"
* #10055472 "Ösophagusperforation"
* #10055472 ^designation[+].language = #de-DE
* #10055472 ^designation[=].value = "Speiseröhrenperforation"
* #10055472 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Speiseröhrenwand."
* #10055472 ^property[+].code = #grad3
* #10055472 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10055472 ^property[+].code = #grad4
* #10055472 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
* #10055472 ^property[+].code = #grad5
* #10055472 ^property[=].valueString = "Tod"
* #10015388 "Ösophagusschmerz"
* #10015388 ^designation[+].language = #de-DE
* #10015388 ^designation[=].value = "Speiseröhrenschmerz"
* #10015388 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Speiseröhrenbereich."
* #10015388 ^property[+].code = #grad3
* #10015388 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10015388 ^property[+].code = #grad4
* #10015388 ^property[=].valueString = "-"
* #10015388 ^property[+].code = #grad5
* #10015388 ^property[=].valueString = "-"
* #10015448 "Ösophagusstenose"
* #10015448 ^designation[+].language = #de-DE
* #10015448 ^designation[=].value = "Speiseröhrenverengung"
* #10015448 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite der Speiseröhre."
* #10015448 ^property[+].code = #grad3
* #10015448 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung; Krankenhauseinweisung angezeigt; elektive op. Intervention angezeigt"
* #10015448 ^property[+].code = #grad4
* #10015448 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10015448 ^property[+].code = #grad5
* #10015448 ^property[=].valueString = "Tod"
* #10015451 "Ösophagusulkus"
* #10015451 ^designation[+].language = #de-DE
* #10015451 ^designation[=].value = "Speiseröhrengeschwür"
* #10015451 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche der Speiseröhrenwand."
* #10015451 ^property[+].code = #grad3
* #10015451 ^property[=].valueString = "Schwerwiegend gestörte GI Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10015451 ^property[+].code = #grad4
* #10015451 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
* #10015451 ^property[+].code = #grad5
* #10015451 ^property[=].valueString = "Tod"
* #10028130 "Orale Mukositis"
* #10028130 ^designation[+].language = #de-DE
* #10028130 ^designation[=].value = "Mundschleimhautentzündung"
* #10028130 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Mundschleimhaut."
* #10028130 ^property[+].code = #grad3
* #10028130 ^property[=].valueString = "Schwerer Schmerz; beeinträchtigt Nahrungsaufnahme."
* #10028130 ^property[+].code = #grad4
* #10028130 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10028130 ^property[+].code = #grad5
* #10028130 ^property[=].valueString = "Tod"
* #10029957 "Magenobstruktion"
* #10029957 ^designation[+].language = #de-DE
* #10029957 ^designation[=].value = "Magenverschluss"
* #10029957 ^designation[+].language = #de-DE
* #10029957 ^designation[=].value = "Magenileus"
* #10029957 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses des Mageninhalts."
* #10029957 ^property[+].code = #grad3
* #10029957 ^property[=].valueString = "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10029957 ^property[+].code = #grad4
* #10029957 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10029957 ^property[+].code = #grad5
* #10029957 ^property[=].valueString = "Tod"
* #10055356 "Obere gastrointestinale Blutung"
* #10055356 ^designation[+].language = #de-DE
* #10055356 ^designation[=].value = "Hämorrhagie des oberen GI'-Traktes"
* #10055356 ^designation[+].language = #de-DE
* #10055356 ^designation[=].value = "Blutung, obere gastrointestinale (z. B. \"Streßulkus\")"
* #10055356 ^designation[+].language = #de-DE
* #10055356 ^designation[=].value = "Blutung oberer Gastro'-Intestinal'-Trakt"
* #10055356 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus dem oberen GI-Trakt (Mundhöhle, Pharynx, Speiseröhre, und Magen)."
* #10055356 ^property[+].code = #grad3
* #10055356 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10055356 ^property[+].code = #grad4
* #10055356 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10055356 ^property[+].code = #grad5
* #10055356 ^property[=].valueString = "Tod"
* #10010774 "Obstipation"
* #10010774 ^designation[+].language = #de-DE
* #10010774 ^designation[=].value = "Verstopfung"
* #10010774 ^definition = "Eine Störung, gekennzeichnet durch eine irreguläre und seltene oder schwierige Entleerung des Darmes."
* #10010774 ^property[+].code = #grad3
* #10010774 ^property[=].valueString = "Obstipation mit manueller Entleerung angezeigt; Einschränkung der instrumentellen ATL"
* #10010774 ^property[+].code = #grad4
* #10010774 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10010774 ^property[+].code = #grad5
* #10010774 ^property[=].valueString = "Tod"
* #10054520 "Orale Dysästhesie"
* #10054520 ^designation[+].language = #de-DE
* #10054520 ^designation[=].value = "Mundempfindungsstörungen"
* #10054520 ^designation[+].language = #de-DE
* #10054520 ^designation[=].value = "Geschmacksstörungen"
* #10054520 ^definition = "Eine Störung, gekennzeichnet durch ein brennendes oder kribbelndes Empfinden der Lippen, Zunge oder dem gesamten Mund."
* #10054520 ^property[+].code = #grad3
* #10054520 ^property[=].valueString = "Behindernden Schmerz; Sondenernährung oder TPL angezeigt"
* #10054520 ^property[+].code = #grad4
* #10054520 ^property[=].valueString = "-"
* #10054520 ^property[+].code = #grad5
* #10054520 ^property[=].valueString = "-"
* #10030980 "Orale Blutung"
* #10030980 ^designation[+].language = #de-DE
* #10030980 ^designation[=].value = "Mundblutung"
* #10030980 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Mund."
* #10030980 ^property[+].code = #grad3
* #10030980 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10030980 ^property[+].code = #grad4
* #10030980 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10030980 ^property[+].code = #grad5
* #10030980 ^property[=].valueString = "Tod"
* #10031009 "Oraler Schmerz"
* #10031009 ^designation[+].language = #de-DE
* #10031009 ^designation[=].value = "Mundschmerz"
* #10031009 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Mund, an der Zunge oder den Lippen."
* #10031009 ^property[+].code = #grad3
* #10031009 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10031009 ^property[+].code = #grad4
* #10031009 ^property[=].valueString = "-"
* #10031009 ^property[+].code = #grad5
* #10031009 ^property[=].valueString = "Tod"
* #10065703 "Pankreasgangverengung"
* #10065703 ^designation[+].language = #de-DE
* #10065703 ^designation[=].value = "Bauchspeicheldrüsenverengung"
* #10065703 ^designation[+].language = #de-DE
* #10065703 ^designation[=].value = "Pankreasgangstenose"
* #10065703 ^definition = "Eine Störung, gekennzeichnet durch eine Verengung der lichten Weite des Pankreasganges."
* #10065703 ^property[+].code = #grad3
* #10065703 ^property[=].valueString = "Schwerwiegend veränderte gastrointestinale Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10065703 ^property[+].code = #grad4
* #10065703 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10065703 ^property[+].code = #grad5
* #10065703 ^property[=].valueString = "Tod"
* #10033626 "Pankreasblutung"
* #10033626 ^designation[+].language = #de-DE
* #10033626 ^designation[=].value = "Bauchspeicheldrüsenblutung"
* #10033626 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus dem Pankreas."
* #10033626 ^property[+].code = #grad3
* #10033626 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10033626 ^property[+].code = #grad4
* #10033626 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10033626 ^property[+].code = #grad5
* #10033626 ^property[=].valueString = "Tod"
* #10049192 "Pankreasfistel"
* #10049192 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Pankreas und einem anderen Organ oder anatomischen Ort."
* #10049192 ^property[+].code = #grad3
* #10049192 ^property[=].valueString = "Stark veränderte gastrointestinale Funktion; Sondenernährung oder TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10049192 ^property[+].code = #grad4
* #10049192 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10049192 ^property[+].code = #grad5
* #10049192 ^property[=].valueString = "Tod"
* #10058096 "Pankreasnekrose"
* #10058096 ^designation[+].language = #de-DE
* #10058096 ^designation[=].value = "Bauchspeicheldrüsennekrose"
* #10058096 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der im Pankreas auftritt."
* #10058096 ^property[+].code = #grad3
* #10058096 ^property[=].valueString = "Sondenernährung oder TPE angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10058096 ^property[+].code = #grad4
* #10058096 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10058096 ^property[+].code = #grad5
* #10058096 ^property[=].valueString = "Tod"
* #10033645 "Pankreatitis"
* #10033645 ^designation[+].language = #de-DE
* #10033645 ^designation[=].value = "Bauchspeicheldrüsenentzündung"
* #10033645 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Pankreas."
* #10033645 ^property[+].code = #grad3
* #10033645 ^property[=].valueString = "Schwerer Schmerz; Erbrechen; medizinische Intervention angezeigt (z. B. Schmerzbekämpfung, Ernährungsunterstützung)"
* #10033645 ^property[+].code = #grad4
* #10033645 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10033645 ^property[+].code = #grad5
* #10033645 ^property[=].valueString = "Tod"
* #10034536 "Periodontale Erkrankung"
* #10034536 ^designation[+].language = #de-DE
* #10034536 ^designation[=].value = "Periodontale Zahnfleischerkrankung"
* #10034536 ^definition = "Eine Erkrankung des periodontalen Zahnfleischgewebes."
* #10034536 ^property[+].code = #grad3
* #10034536 ^property[=].valueString = "Spontanblutung; schwerer Knochenverlust mit und ohne Zahnverlust; Osteonekrose des Ober oder Unterkiefers"
* #10034536 ^property[+].code = #grad4
* #10034536 ^property[=].valueString = "-"
* #10034536 ^property[+].code = #grad5
* #10034536 ^property[=].valueString = "-"
* #10065704 "Peritoneale Nekrose"
* #10065704 ^designation[+].language = #de-DE
* #10065704 ^designation[=].value = "Bauchfellnekrose"
* #10065704 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess des Bauchfells."
* #10065704 ^property[+].code = #grad3
* #10065704 ^property[=].valueString = "Sondenernährung oder TPE angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10065704 ^property[+].code = #grad4
* #10065704 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065704 ^property[+].code = #grad5
* #10065704 ^property[=].valueString = "Tod"
* #10036774 "Proktitis"
* #10036774 ^designation[+].language = #de-DE
* #10036774 ^designation[=].value = "Enddarmentzündung"
* #10036774 ^designation[+].language = #de-DE
* #10036774 ^designation[=].value = "Rektumentzündung"
* #10036774 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Rektums."
* #10036774 ^property[+].code = #grad3
* #10036774 ^property[=].valueString = "Schwere Symptome; Stuhldrang oder Stuhlinkontinenz; begrenzte selbstversorgende ATL"
* #10036774 ^property[+].code = #grad4
* #10036774 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10036774 ^property[+].code = #grad5
* #10036774 ^property[=].valueString = "Tod"
* #10063190 "Rektale Schleimhautentzündung"
* #10063190 ^designation[+].language = #de-DE
* #10063190 ^designation[=].value = "Enddarmschleimhautentzündung"
* #10063190 ^designation[+].language = #de-DE
* #10063190 ^designation[=].value = "Rektumentzündung"
* #10063190 ^designation[+].language = #de-DE
* #10063190 ^designation[=].value = "Rektale Mukositis"
* #10063190 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Schleimhaut des Rektums."
* #10063190 ^property[+].code = #grad3
* #10063190 ^property[=].valueString = "Schwere Symptome; begrenzte selbstversorgende ATL"
* #10063190 ^property[+].code = #grad4
* #10063190 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10063190 ^property[+].code = #grad5
* #10063190 ^property[=].valueString = "Tod"
* #10038064 "Rektumblutung"
* #10038064 ^designation[+].language = #de-DE
* #10038064 ^designation[=].value = "Enddarmblutung"
* #10038064 ^designation[+].language = #de-DE
* #10038064 ^designation[=].value = "Rektale Blutung"
* #10038064 ^definition = "Eine Erkrankung, gekennzeichnet durch Bluten aus der Rektumwand und Ausfluss aus dem Anus."
* #10038064 ^property[+].code = #grad3
* #10038064 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10038064 ^property[+].code = #grad4
* #10038064 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10038064 ^property[+].code = #grad5
* #10038064 ^property[=].valueString = "Tod"
* #10038062 "Rektumfistel"
* #10038062 ^designation[+].language = #de-DE
* #10038062 ^designation[=].value = "Enddarmfistel"
* #10038062 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Rektum und einem anderen Organ oder anatomischen Ort."
* #10038062 ^property[+].code = #grad3
* #10038062 ^property[=].valueString = "Stark veränderte GI-Funktion; TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10038062 ^property[+].code = #grad4
* #10038062 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10038062 ^property[+].code = #grad5
* #10038062 ^property[=].valueString = "Tod"
* #10065709 "Rektumnekrose"
* #10065709 ^designation[+].language = #de-DE
* #10065709 ^designation[=].value = "Enddarmnekrose"
* #10065709 ^designation[+].language = #de-DE
* #10065709 ^designation[=].value = "Reaktale Nekrose"
* #10065709 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in der Rektumwand auftritt."
* #10065709 ^property[+].code = #grad3
* #10065709 ^property[=].valueString = "Sondenernährung oder TPE angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10065709 ^property[+].code = #grad4
* #10065709 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065709 ^property[+].code = #grad5
* #10065709 ^property[=].valueString = "Tod"
* #10065707 "Rektumobstruktion"
* #10065707 ^designation[+].language = #de-DE
* #10065707 ^designation[=].value = "Enddarmverschluss"
* #10065707 ^designation[+].language = #de-DE
* #10065707 ^designation[=].value = "Rektumverschluss"
* #10065707 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte im Rektum."
* #10065707 ^property[+].code = #grad3
* #10065707 ^property[=].valueString = "Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10065707 ^property[+].code = #grad4
* #10065707 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10065707 ^property[+].code = #grad5
* #10065707 ^property[=].valueString = "Tod"
* #10038072 "Rektumschmerz"
* #10038072 ^designation[+].language = #de-DE
* #10038072 ^designation[=].value = "Enddarmschmerz"
* #10038072 ^definition = "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Rektum."
* #10038072 ^property[+].code = #grad3
* #10038072 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10038072 ^property[+].code = #grad4
* #10038072 ^property[=].valueString = "-"
* #10038072 ^property[+].code = #grad5
* #10038072 ^property[=].valueString = "-"
* #10038073 "Rektumperforation"
* #10038073 ^designation[+].language = #de-DE
* #10038073 ^designation[=].value = "Enddarmperforation"
* #10038073 ^designation[+].language = #de-DE
* #10038073 ^designation[=].value = "Enddarmdurchbruch"
* #10038073 ^designation[+].language = #de-DE
* #10038073 ^designation[=].value = "rektale Perforation"
* #10038073 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Rektumwand."
* #10038073 ^property[+].code = #grad3
* #10038073 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10038073 ^property[+].code = #grad4
* #10038073 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; elektive operative Intervention dringend angezeigt"
* #10038073 ^property[+].code = #grad5
* #10038073 ^property[=].valueString = "Tod"
* #10038079 "Rektumverengung"
* #10038079 ^designation[+].language = #de-DE
* #10038079 ^designation[=].value = "Rektumstenose"
* #10038079 ^designation[+].language = #de-DE
* #10038079 ^designation[=].value = "Enddarmverengung"
* #10038079 ^designation[+].language = #de-DE
* #10038079 ^designation[=].value = "Rektaleverengung"
* #10038079 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Rektums."
* #10038079 ^property[+].code = #grad3
* #10038079 ^property[=].valueString = "Schwerwiegend veränderte GI-Funktion; Sondenernährung oder Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10038079 ^property[+].code = #grad4
* #10038079 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10038079 ^property[+].code = #grad5
* #10038079 ^property[=].valueString = "Tod"
* #10038080 "Rektumgeschwür"
* #10038080 ^designation[+].language = #de-DE
* #10038080 ^designation[=].value = "Ileumulkus"
* #10038080 ^designation[+].language = #de-DE
* #10038080 ^designation[=].value = "Enddarmgeschwür"
* #10038080 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotisch erosive Läsion der Schleimhautoberfläche des Rektums."
* #10038080 ^property[+].code = #grad3
* #10038080 ^property[=].valueString = "Schwerwiegende gestörte GI-Funktion; TPE angezeigt; elektive operative oder endoskopische Intervention angezeigt; behindernd"
* #10038080 ^property[+].code = #grad4
* #10038080 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
* #10038080 ^property[+].code = #grad5
* #10038080 ^property[=].valueString = "Tod"
* #10038981 "Retroperitoneale Blutung"
* #10038981 ^designation[+].language = #de-DE
* #10038981 ^designation[=].value = "Retroperitoneale Hämorrhagie"
* #10038981 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Blutung im retroperitonealen Bereich."
* #10038981 ^property[+].code = #grad3
* #10038981 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10038981 ^property[+].code = #grad4
* #10038981 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10038981 ^property[+].code = #grad5
* #10038981 ^property[=].valueString = "Tod"
* #10013950 "Schluckstörung"
* #10013950 ^designation[+].language = #de-DE
* #10013950 ^designation[=].value = "Dysphagie"
* #10013950 ^definition = "Eine Störung, gekennzeichnet durch Schwierigkeit beim Schlucken."
* #10013950 ^property[+].code = #grad3
* #10013950 ^property[=].valueString = "Schwerwiegend geändertes Essen/Schlucken; Sondenernährung oder TPE oder Krankenhauseinweisung angezeigt"
* #10013950 ^property[+].code = #grad4
* #10013950 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
* #10013950 ^property[+].code = #grad5
* #10013950 ^property[=].valueString = "Tod"
* #10039411 "Speicheldrüsenfistel"
* #10039411 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen einer Speicheldrüse und einem anderen Organ oder anatomischen Ort."
* #10039411 ^property[+].code = #grad3
* #10039411 ^property[=].valueString = "Schwer veränderte GI-Funktion; Krankenhauseinweisung angezeigt; elektive operative Intervention angezeigt"
* #10039411 ^property[+].code = #grad4
* #10039411 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10039411 ^property[+].code = #grad5
* #10039411 ^property[=].valueString = "Tod"
* #10056681 "Speicheldrüsengangentzündung"
* #10056681 ^designation[+].language = #de-DE
* #10056681 ^designation[=].value = "Entzündung des Speichelganges"
* #10056681 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Speicheldrüsenganges."
* #10056681 ^property[+].code = #grad3
* #10056681 ^property[=].valueString = "Akute Speichelgangnekrose; schwere Sekretionsinduzierte Symptome (z. B. dicker Speichel / orale Sekretion oder Würgen); Sondenernährung oder TPE angezeigt; begrenzte selbstversorgende ATL; behindernd"
* #10056681 ^property[+].code = #grad4
* #10056681 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10056681 ^property[+].code = #grad5
* #10056681 ^property[=].valueString = "Tod"
* #10016296 "Stuhlinkontinenz"
* #10016296 ^designation[+].language = #de-DE
* #10016296 ^designation[=].value = "Fäkalinkontinenz"
* #10016296 ^definition = "Eine Erkrankung, gekennzeichnet durch die Unfähigkeit, den Austritt von Stuhl aus dem Rektum zu kontrollieren."
* #10016296 ^property[+].code = #grad3
* #10016296 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10016296 ^property[+].code = #grad4
* #10016296 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10016296 ^property[+].code = #grad5
* #10016296 ^property[=].valueString = "Tod"
* #10005265 "Völlegefühl"
* #10005265 ^designation[+].language = #de-DE
* #10005265 ^designation[=].value = "Gefühl des Aufgeblähtsein"
* #10005265 ^definition = "Eine Befindlichkeitsstörung, gekennzeichnet durch ein subjektiv-berichtetes unangenehmes Völlegefühl im Bauchraum."
* #10005265 ^property[+].code = #grad3
* #10005265 ^property[=].valueString = "-"
* #10005265 ^property[+].code = #grad4
* #10005265 ^property[=].valueString = "-"
* #10005265 ^property[+].code = #grad5
* #10005265 ^property[=].valueString = "-"
* #10045271 "Typhlitis"
* #10045271 ^designation[+].language = #de-DE
* #10045271 ^designation[=].value = "Entzündung des Blinddarms"
* #10045271 ^designation[+].language = #de-DE
* #10045271 ^designation[=].value = "Entzündung des Zökums"
* #10045271 ^designation[+].language = #de-DE
* #10045271 ^designation[=].value = "Akute Zökumentzündung"
* #10045271 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung des Zökums."
* #10045271 ^property[+].code = #grad3
* #10045271 ^property[=].valueString = "Symptomatisch (z. B. Bauchschmerzen; Fieber, Änderung der Stuhlgewohnheiten mit Ileus); Peritonealzeichen"
* #10045271 ^property[+].code = #grad4
* #10045271 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10045271 ^property[+].code = #grad5
* #10045271 ^property[=].valueString = "Tod"
* #10013946 "Verdauungsstörung"
* #10013946 ^designation[+].language = #de-DE
* #10013946 ^designation[=].value = "Dyspepsie"
* #10013946 ^definition = "Eine Störung, gekennzeichnet durch ein unangenehmes, oft schmerzhaftes Gefühl im Magen, das von einer Verdauungsbehinderung herrührt; Symptome schließen Brennen im Magen, Völlegefühl, Sodbrennen, Übelkeit und Erbrechen ein."
* #10013946 ^property[+].code = #grad3
* #10013946 ^property[=].valueString = "Mäßige Symptome; chirurgische Intervention angezeigt"
* #10013946 ^property[+].code = #grad4
* #10013946 ^property[=].valueString = "-"
* #10013946 ^property[+].code = #grad5
* #10013946 ^property[=].valueString = "-"
* #10044030 "Zahnentwicklungsstörung"
* #10044030 ^designation[+].language = #de-DE
* #10044030 ^designation[=].value = "Zahnbildungsstöhrung"
* #10044030 ^definition = "Eine Störung, gekennzeichnet durch einen krankhaften Prozess, der Zähne (Zahnentwicklung), auftretend während der Zahnentwicklung."
* #10044030 ^property[+].code = #grad3
* #10044030 ^property[=].valueString = "Fehlentwicklung nicht durch orale Chirurgie korrigierbar; behindernd"
* #10044030 ^property[+].code = #grad4
* #10044030 ^property[=].valueString = "-"
* #10044030 ^property[+].code = #grad5
* #10044030 ^property[=].valueString = "-"
* #10018286 "Zahnfleischschmerzen"
* #10018286 ^designation[+].language = #de-DE
* #10018286 ^designation[=].value = "Gingivaschmerz"
* #10018286 ^definition = "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Zahnfleischbereich."
* #10018286 ^property[+].code = #grad3
* #10018286 ^property[=].valueString = "Schwere Schmerz; unfähig, sich oral zu ernähren"
* #10018286 ^property[+].code = #grad4
* #10018286 ^property[=].valueString = "-"
* #10018286 ^property[+].code = #grad5
* #10018286 ^property[=].valueString = "-"
* #10012318 "Zahnkaries"
* #10012318 ^designation[+].language = #de-DE
* #10012318 ^designation[=].value = "-"
* #10012318 ^definition = "Eine Störung, gekennzeichnet durch den Zerfall eines Zahnes, bei dem er aufweicht, sich verfärbt und / oder porös wird."
* #10012318 ^property[+].code = #grad3
* #10012318 ^property[=].valueString = "Dentale Karies, der in einer Pulpitis oder einem periapikalen Abszess oder einem Zahnverlust resultiert"
* #10012318 ^property[+].code = #grad4
* #10012318 ^property[=].valueString = "-"
* #10012318 ^property[+].code = #grad5
* #10012318 ^property[=].valueString = "-"
* #10044055 "Zahnschmerzen"
* #10044055 ^designation[+].language = #de-DE
* #10044055 ^designation[=].value = "-"
* #10044055 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden in einem Zahn."
* #10044055 ^property[+].code = #grad3
* #10044055 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10044055 ^property[+].code = #grad4
* #10044055 ^property[=].valueString = "-"
* #10044055 ^property[+].code = #grad5
* #10044055 ^property[=].valueString = "-"
* #10044031 "Zahnverfärbung"
* #10044031 ^designation[+].language = #de-DE
* #10044031 ^designation[=].value = "-"
* #10044031 ^definition = "Eine Störung, gekennzeichnet durch eine Veränderung des Tones oder der Farbe des Zahnes."
* #10044031 ^property[+].code = #grad3
* #10044031 ^property[=].valueString = "-"
* #10044031 ^property[+].code = #grad4
* #10044031 ^property[=].valueString = "-"
* #10044031 ^property[+].code = #grad5
* #10044031 ^property[=].valueString = "-"
* #10065747 "Zökumblutung"
* #10065747 ^designation[+].language = #de-DE
* #10065747 ^designation[=].value = "Blinddarmblutung"
* #10065747 ^designation[+].language = #de-DE
* #10065747 ^designation[=].value = "Zäckumblutung"
* #10065747 ^designation[+].language = #de-DE
* #10065747 ^designation[=].value = "Caecumblutung"
* #10065747 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Blutung aus dem Zökum."
* #10065747 ^property[+].code = #grad3
* #10065747 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065747 ^property[+].code = #grad4
* #10065747 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065747 ^property[+].code = #grad5
* #10065747 ^property[=].valueString = "Tod"
* #10017947 "Gastrointestinale Erkrankungen  Sonstige, zu spezifizieren"
* #10017947 ^designation[+].language = #de-DE
* #10017947 ^designation[=].value = "-"
* #10017947 ^definition = "Sonstige, zu spezifizierende GI-Störungen oder Erkrankungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10017947 ^property[+].code = #grad3
* #10017947 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10017947 ^property[+].code = #grad4
* #10017947 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
* #10017947 ^property[+].code = #grad5
* #10017947 ^property[=].valueString = "Tod"
* #10062501 "Brustschmerz, nicht kardial"
* #10062501 ^designation[+].language = #de-DE
* #10062501 ^designation[=].value = "Brustschmerz nicht herzbedingt"
* #10062501 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Brustkorb, ohne Bezug zu einer Herzkrankheit."
* #10062501 ^property[+].code = #grad3
* #10062501 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10062501 ^property[+].code = #grad4
* #10062501 ^property[=].valueString = "-"
* #10062501 ^property[+].code = #grad5
* #10062501 ^property[=].valueString = "-"
* #10022998 "Erregbarkeit"
* #10022998 ^designation[+].language = #de-DE
* #10022998 ^designation[=].value = "Irritabilität"
* #10022998 ^designation[+].language = #de-DE
* #10022998 ^designation[=].value = "Erregung"
* #10022998 ^definition = "Eine Störung, gekennzeichnet durch eine anormale Reaktionsbereitschaft auf Reize oder eine physiologische Erregung; kann in Reaktion auf Schmerz, Angst, einem Medikament, einer emotionalen Situation oder einem medizinischen Umstand auftreten."
* #10022998 ^property[+].code = #grad3
* #10022998 ^property[=].valueString = "Schwere anormale oder übermäßige Reaktionen; Einschränkung der selbstversorgenden ATL; untröstbar"
* #10022998 ^property[+].code = #grad4
* #10022998 ^property[=].valueString = "-"
* #10022998 ^property[+].code = #grad5
* #10022998 ^property[=].valueString = "-"
* #10064774 "Extravasat am Infusionsort"
* #10064774 ^designation[+].language = #de-DE
* #10064774 ^designation[=].value = "Infusionsflüssigkeitsaustritt"
* #10064774 ^designation[+].language = #de-DE
* #10064774 ^designation[=].value = "Blutaustritt aus Gefäß am Infusionsort"
* #10064774 ^designation[+].language = #de-DE
* #10064774 ^designation[=].value = "Paravasation"
* #10064774 ^designation[+].language = #de-DE
* #10064774 ^designation[=].value = "Paravasat am Infusionsort"
* #10064774 ^definition = "Eine Störung, gekennzeichnet durch das Auslaufen einer pharmakologischen oder biologischen Substanz vom Infusionsort in das umgebende Gewebe. Zeichen und Symptome schließen Induration, Rötung, Schwellung, Brennen und deutliche Beschwerden am Infusionsort ein."
* #10064774 ^property[+].code = #grad3
* #10064774 ^property[=].valueString = "Ulzeration oder Nekrose, schwerer Gewebeschaden; operative Intervention indiziert"
* #10064774 ^property[+].code = #grad4
* #10064774 ^property[=].valueString = "Lebensbedrohliche Konsequenzen; dringliche Intervention angezeigt"
* #10064774 ^property[+].code = #grad5
* #10064774 ^property[=].valueString = "Tod"
* #10050068 "Extremitätenödem"
* #10050068 ^designation[+].language = #de-DE
* #10050068 ^designation[=].value = "Gliederödem"
* #10050068 ^designation[+].language = #de-DE
* #10050068 ^designation[=].value = "Ödem Extremitäten"
* #10050068 ^definition = "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung in den oberen oder unteren Extremitäten."
* #10050068 ^property[+].code = #grad3
* #10050068 ^property[=].valueString = ">30% Unterschied im Volumen grobe Abweichung von der normalen anatomischen Kontur; Einschränkung der selbstversorgenden ATL"
* #10050068 ^property[+].code = #grad4
* #10050068 ^property[=].valueString = "-"
* #10050068 ^property[+].code = #grad5
* #10050068 ^property[=].valueString = "-"
* #10016256 "Fatigue"
* #10016256 ^designation[+].language = #de-DE
* #10016256 ^designation[=].value = "Erschöpfung"
* #10016256 ^designation[+].language = #de-DE
* #10016256 ^designation[=].value = "Abgeschlagenheit"
* #10016256 ^designation[+].language = #de-DE
* #10016256 ^designation[=].value = "Müdigkeit"
* #10016256 ^designation[+].language = #de-DE
* #10016256 ^designation[=].value = "Energielosigkeit"
* #10016256 ^designation[+].language = #de-DE
* #10016256 ^designation[=].value = "Schwäche"
* #10016256 ^definition = "Eine Störung, gekennzeichnet durch einen Zustand allgemeiner Schwäche mit betonter Unfähigkeit, genügend Energie für die Verrichtungen des täglichen Lebens zu sammeln."
* #10016256 ^property[+].code = #grad3
* #10016256 ^property[=].valueString = "Fatigue, durch Ruhe nicht erleichtert; eingeschränkte Selbstversorgungs-ATL"
* #10016256 ^property[+].code = #grad4
* #10016256 ^property[=].valueString = "-"
* #10016256 ^property[+].code = #grad5
* #10016256 ^property[=].valueString = "-"
* #10016558 "Fieber"
* #10016558 ^designation[+].language = #de-DE
* #10016558 ^designation[=].value = "Erhöhte Körpertemperatur"
* #10016558 ^definition = "Eine Störung, gekennzeichnet durch eine Erhöhung der Körpertemperatur über die obere Grenze des Normalen."
* #10016558 ^property[+].code = #grad3
* #10016558 ^property[=].valueString = ">40.0°C für <=24 h"
* #10016558 ^property[+].code = #grad4
* #10016558 ^property[=].valueString = ">40.0°C für >24 h"
* #10016558 ^property[+].code = #grad5
* #10016558 ^property[=].valueString = "Tod"
* #10017577 "Gang-/ Gehbewegungsstörung"
* #10017577 ^designation[+].language = #de-DE
* #10017577 ^designation[=].value = "Gangstörung"
* #10017577 ^definition = "Eine Störung, gekennzeichnet durch Schwierigkeiten beim Gehen."
* #10017577 ^property[+].code = #grad3
* #10017577 ^property[=].valueString = "Behinderung; Einschränkung der selbstversorgenden ATL"
* #10017577 ^property[+].code = #grad4
* #10017577 ^property[=].valueString = "-"
* #10017577 ^property[+].code = #grad5
* #10017577 ^property[=].valueString = "-"
* #10014222 "Gesichtsödem"
* #10014222 ^designation[+].language = #de-DE
* #10014222 ^designation[=].value = "Faziales Ödem"
* #10014222 ^designation[+].language = #de-DE
* #10014222 ^designation[=].value = "Gesichtsschwellung"
* #10014222 ^definition = "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung in Gesichtsgewebe."
* #10014222 ^property[+].code = #grad3
* #10014222 ^property[=].valueString = "Schwere Schwellung; Einschränkung der selbstversorgenden ATL"
* #10014222 ^property[+].code = #grad4
* #10014222 ^property[=].valueString = "-"
* #10014222 ^property[+].code = #grad5
* #10014222 ^property[=].valueString = "-"
* #10016059 "Gesichtsschmerz"
* #10016059 ^designation[+].language = #de-DE
* #10016059 ^designation[=].value = "Fazialisschmerz"
* #10016059 ^designation[+].language = #de-DE
* #10016059 ^designation[=].value = "Nervus facialis Schmerz"
* #10016059 ^designation[+].language = #de-DE
* #10016059 ^designation[=].value = "Facialischmerz"
* #10016059 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden im Gesicht."
* #10016059 ^property[+].code = #grad3
* #10016059 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10016059 ^property[+].code = #grad4
* #10016059 ^property[=].valueString = "-"
* #10016059 ^property[+].code = #grad5
* #10016059 ^property[=].valueString = "-"
* #10016791 "Grippeähnliche Symptome"
* #10016791 ^designation[+].language = #de-DE
* #10016791 ^designation[=].value = "Grippesymptome"
* #10016791 ^definition = "Eine Störung, gekennzeichnet durch eine Gruppe von Symptomen ähnlich wie sie bei Patienten mit Grippe beobachtet werden. Dies schließt Fieber, Frösteln, Körperschmerzen, Krankheitsgefühl; Appetitverlust und trockenen Husten ein."
* #10016791 ^property[+].code = #grad3
* #10016791 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10016791 ^property[+].code = #grad4
* #10016791 ^property[=].valueString = "-"
* #10016791 ^property[+].code = #grad5
* #10016791 ^property[=].valueString = "-"
* #10054482 "Halsödem"
* #10054482 ^designation[+].language = #de-DE
* #10054482 ^designation[=].value = "Halsschwellung"
* #10054482 ^definition = "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung am Hals."
* #10054482 ^property[+].code = #grad3
* #10054482 ^property[=].valueString = "Allgemeines Halsödem (z. B. Schwierigkeit, den Hals zu drehen); Einschränkung der selbstversorgenden ATL"
* #10054482 ^property[+].code = #grad4
* #10054482 ^property[=].valueString = "-"
* #10054482 ^property[+].code = #grad5
* #10054482 ^property[=].valueString = "-"
* #10051792 "Infusionsbezogene Reaktion"
* #10051792 ^designation[+].language = #de-DE
* #10051792 ^designation[=].value = "Infusionsbedingte Reaktion"
* #10051792 ^definition = "Eine Störung, gekennzeichnet durch eine heftige unerwünschte Reaktion gegenüber Infusion mit einer pharmakologischen oder biologischen Substanz."
* #10051792 ^property[+].code = #grad3
* #10051792 ^property[=].valueString = "Anhaltend (d. h. nicht schnell reagierend auf symptomatische Medikation und/oder kurze Unterbrechung der Infusion); Wiederauftreten der Symptome nach initialer Besserung; Krankenhauseinweisung wegen klinischer Folgen angezeigt;"
* #10051792 ^property[+].code = #grad4
* #10051792 ^property[=].valueString = "Lebensbedrohliche Konsequenzen; dringliche Intervention angezeigt"
* #10051792 ^property[+].code = #grad5
* #10051792 ^property[=].valueString = "Tod"
* #10025482 "Krankheitsgefühl"
* #10025482 ^designation[+].language = #de-DE
* #10025482 ^designation[=].value = "Malaise"
* #10025482 ^designation[+].language = #de-DE
* #10025482 ^designation[=].value = "Unwohlsein"
* #10025482 ^definition = "Eine Befindlichkeitsstörung, gekennzeichnet durch allgemeines Unwohlsein und Unbehagen, Gefühl der Indisponiertheit."
* #10025482 ^property[+].code = #grad3
* #10025482 ^property[=].valueString = "-"
* #10025482 ^property[+].code = #grad4
* #10025482 ^property[=].valueString = "-"
* #10025482 ^property[+].code = #grad5
* #10025482 ^property[=].valueString = "-"
* #10028154 "Multiorganversagen"
* #10028154 ^designation[+].language = #de-DE
* #10028154 ^designation[=].value = "Versagen mehrerer Organe"
* #10028154 ^definition = "Eine Störung, gekennzeichnet durch eine fortschreitende Verschlechterung der Lungen-, Leber-, Nieren- und Gerinnungsvorgänge."
* #10028154 ^property[+].code = #grad3
* #10028154 ^property[=].valueString = "Schock mit Azotämie und des Säure-Basen-Störung; signifikante Koagulationsauffälligkeiten"
* #10028154 ^property[+].code = #grad4
* #10028154 ^property[=].valueString = "Lebensbedrohliche Konsequenzen (z. B. Vasopressoren abhängige und oligurische / anurische / ischämische Kolitis oder Milchsäureazidose)"
* #10028154 ^property[+].code = #grad5
* #10028154 ^property[=].valueString = "Tod"
* #10011912 "Neugeborenentod"
* #10011912 ^designation[+].language = #de-DE
* #10011912 ^designation[=].value = "SIDS"
* #10011912 ^definition = "Eine Störung, gekennzeichnet durch eine Beendigung des Lebens während der ersten 28 Tage des Lebens."
* #10011912 ^property[+].code = #grad3
* #10011912 ^property[=].valueString = "-"
* #10011912 ^property[+].code = #grad4
* #10011912 ^property[=].valueString = "-"
* #10011912 ^property[+].code = #grad5
* #10011912 ^property[=].valueString = "Tod"
* #10062466 "Ödem, lokales"
* #10062466 ^designation[+].language = #de-DE
* #10062466 ^designation[=].value = "Ödem, örtliches"
* #10062466 ^definition = "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung an einem spezifischen anatomischen Ort."
* #10062466 ^property[+].code = #grad3
* #10062466 ^property[=].valueString = "Schweres lokalisiertes Ödem und Intervention angezeigt; begrenzte Selbstversorgung bei ATL"
* #10062466 ^property[+].code = #grad4
* #10062466 ^property[=].valueString = "-"
* #10062466 ^property[+].code = #grad5
* #10062466 ^property[=].valueString = "-"
* #10058720 "Stammödem"
* #10058720 ^designation[+].language = #de-DE
* #10058720 ^designation[=].value = "Flüssigkeitseinlagerung im Körperstamm"
* #10058720 ^designation[+].language = #de-DE
* #10058720 ^designation[=].value = "Wassereinlagerung"
* #10058720 ^definition = "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßiger Flüssigkeitsansammlung im Bereich des Körperstammes."
* #10058720 ^property[+].code = #grad3
* #10058720 ^property[=].valueString = "Grobe Abweichung von der normalen anatomischen Kontur; Einschränkung der selbstversorgenden ATL"
* #10058720 ^property[+].code = #grad4
* #10058720 ^property[=].valueString = "-"
* #10058720 ^property[+].code = #grad5
* #10058720 ^property[=].valueString = "Tod"
* #10042435 "Plötzlicher Tod, nicht näher bezeichnet"
* #10042435 ^designation[+].language = #de-DE
* #10042435 ^designation[=].value = "Unerwarteter Tod"
* #10042435 ^designation[+].language = #de-DE
* #10042435 ^designation[=].value = "plötzliches Ableben/ Sterben"
* #10042435 ^definition = "Eine unerwartete Beendigung des Lebens, die keinem CTCAE-Begriff mit dem Grad 5 zugeordnet werden kann."
* #10042435 ^property[+].code = #grad3
* #10042435 ^property[=].valueString = "-"
* #10042435 ^property[+].code = #grad4
* #10042435 ^property[=].valueString = "-"
* #10042435 ^property[+].code = #grad5
* #10042435 ^property[=].valueString = "Tod"
* #10022095 "Reaktion am Injektionsort"
* #10022095 ^designation[+].language = #de-DE
* #10022095 ^designation[=].value = "-"
* #10022095 ^definition = "Eine Störung, gekennzeichnet durch eine heftige Reaktion (in der Regel immunologisch) am Injektionsort."
* #10022095 ^property[+].code = #grad3
* #10022095 ^property[=].valueString = "Ulzeration oder Nekrose; schwerer Gewebeschaden; operative Intervention indiziert"
* #10022095 ^property[+].code = #grad4
* #10022095 ^property[=].valueString = "Lebensbedrohliche Konsequenzen; dringliche Intervention angezeigt"
* #10022095 ^property[+].code = #grad5
* #10022095 ^property[=].valueString = "Tod"
* #10033371 "Schmerz"
* #10033371 ^designation[+].language = #de-DE
* #10033371 ^designation[=].value = "Qual"
* #10033371 ^designation[+].language = #de-DE
* #10033371 ^designation[=].value = "Pein"
* #10033371 ^designation[+].language = #de-DE
* #10033371 ^designation[=].value = "Algesie"
* #10033371 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden, Pein oder Qual."
* #10033371 ^property[+].code = #grad3
* #10033371 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10033371 ^property[+].code = #grad4
* #10033371 ^property[=].valueString = "-"
* #10033371 ^property[+].code = #grad5
* #10033371 ^property[=].valueString = "-"
* #10008531 "Schüttelfrost"
* #10008531 ^designation[+].language = #de-DE
* #10008531 ^designation[=].value = "Frösteln mit Muskelzitten"
* #10008531 ^definition = "Eine Störung, gekennzeichnet durch ein Gefühl von Kälte, die oft eine physiologische Reaktion auf Schwitzen nach Fieber kennzeichnet."
* #10008531 ^property[+].code = #grad3
* #10008531 ^property[=].valueString = "Schwer und lang andauernd, auf Narkotika nicht ansprechend"
* #10008531 ^property[+].code = #grad4
* #10008531 ^property[=].valueString = "-"
* #10008531 ^property[+].code = #grad5
* #10008531 ^property[=].valueString = "-"
* #10011914 "Tod, n.n.b."
* #10011914 ^designation[+].language = #de-DE
* #10011914 ^designation[=].value = "Ableben, n.n.b."
* #10011914 ^designation[+].language = #de-DE
* #10011914 ^designation[=].value = "Sterben, n.n.b."
* #10011914 ^definition = "Eine Beendigung des Lebens,  welche nicht zu einem CTCAE-Begriff, assoziiert mit Grad 5, zugeordnet werden kann."
* #10011914 ^property[+].code = #grad3
* #10011914 ^property[=].valueString = "-"
* #10011914 ^property[+].code = #grad4
* #10011914 ^property[=].valueString = "-"
* #10011914 ^property[+].code = #grad5
* #10011914 ^property[=].valueString = "Tod"
* #10021113 "Unterkühlung"
* #10021113 ^designation[+].language = #de-DE
* #10021113 ^designation[=].value = "Hypothermie"
* #10021113 ^definition = "Eine Störung, gekennzeichnet durch eine anormal niedrige Körpertemperatur. Intervention ist erforderlich, wenn Körpertemperatur 35°C oder darunter."
* #10021113 ^property[+].code = #grad3
* #10021113 ^property[=].valueString = "32->28°C"
* #10021113 ^property[+].code = #grad4
* #10021113 ^property[=].valueString = ">28°C; lebensbedrohliche Folgen (z. B. Koma, Hypotension, Lungenödem, Azidämie, Kammerflimmern)"
* #10021113 ^property[+].code = #grad5
* #10021113 ^property[=].valueString = "Tod"
* #10018065 "Allgemeine Störungen und anwendungsbedingten Umstände - Sonstiges, zu spezifizieren"
* #10018065 ^designation[+].language = #de-DE
* #10018065 ^designation[=].value = "-"
* #10018065 ^definition = "Sonstige, zu spezifizierende allgemeine Störungen oder Erkrankungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10018065 ^property[+].code = #grad3
* #10018065 ^property[=].valueString = "Schwere oder medizinisch signifikante aber nicht unmittelbar lebensbedrohend; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10018065 ^property[+].code = #grad4
* #10018065 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10018065 ^property[+].code = #grad5
* #10018065 ^property[=].valueString = "Tod"
* #10004665 "Biliäre Fistel"
* #10004665 ^designation[+].language = #de-DE
* #10004665 ^designation[=].value = "Gallenfistel"
* #10004665 ^designation[+].language = #de-DE
* #10004665 ^designation[=].value = "Gallengangfistel"
* #10004665 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen den Gallengängen und einem anderen Organ oder anatomischen Ort."
* #10004665 ^property[+].code = #grad3
* #10004665 ^property[=].valueString = "Stark veränderte GI-Funktion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10004665 ^property[+].code = #grad4
* #10004665 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10004665 ^property[+].code = #grad5
* #10004665 ^property[=].valueString = "Tod"
* #10008612 "Gallenblasenentzündung"
* #10008612 ^designation[+].language = #de-DE
* #10008612 ^designation[=].value = "Cholezystitis"
* #10008612 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung, die die Gallenblase betrifft."
* #10008612 ^property[+].code = #grad3
* #10008612 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10008612 ^property[+].code = #grad4
* #10008612 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt"
* #10008612 ^property[+].code = #grad5
* #10008612 ^property[=].valueString = "Tod"
* #10017631 "Gallenblasenfistel"
* #10017631 ^designation[+].language = #de-DE
* #10017631 ^designation[=].value = "Cholezystische Fistel"
* #10017631 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Gallenblase und einem anderen Organ oder anatomischen Ort."
* #10017631 ^property[+].code = #grad3
* #10017631 ^property[=].valueString = "Symptomatisch und stark veränderte GI-Funktion; TPE (Totale Parenterale Ernährung) angezeigt; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10017631 ^property[+].code = #grad4
* #10017631 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10017631 ^property[+].code = #grad5
* #10017631 ^property[=].valueString = "Tod"
* #10059446 "Gallenblasennekrose"
* #10059446 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in der Gallenblase auftritt."
* #10059446 ^property[+].code = #grad3
* #10059446 ^property[=].valueString = "-"
* #10059446 ^property[+].code = #grad4
* #10059446 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10059446 ^property[+].code = #grad5
* #10059446 ^property[=].valueString = "Tod"
* #10017636 "Gallenblasenobstruktion"
* #10017636 ^designation[+].language = #de-DE
* #10017636 ^designation[=].value = "Gallenblasenverschluss"
* #10017636 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte der Gallenblase."
* #10017636 ^property[+].code = #grad3
* #10017636 ^property[=].valueString = "Symptomatisch und stark veränderte GI-Funktion; Sondenernährung, TPE (Totale Parenterale Ernährung) oder Krankenhauseinweisung angezeigt; nichtdringliche operative Intervention angezeigt"
* #10017636 ^property[+].code = #grad4
* #10017636 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10017636 ^property[+].code = #grad5
* #10017636 ^property[=].valueString = "Tod"
* #10017639 "Gallenblasenperforation"
* #10017639 ^designation[+].language = #de-DE
* #10017639 ^designation[=].value = "Gallenblasendurchbruch"
* #10017639 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Gallenblasenwand."
* #10017639 ^property[+].code = #grad3
* #10017639 ^property[=].valueString = "-"
* #10017639 ^property[+].code = #grad4
* #10017639 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10017639 ^property[+].code = #grad5
* #10017639 ^property[=].valueString = "Tod"
* #10017638 "Gallenblasenschmerz"
* #10017638 ^designation[+].language = #de-DE
* #10017638 ^designation[=].value = "Gallenblasenkoliken"
* #10017638 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl deutlicher Beschwerden in der Gallenblasenregion."
* #10017638 ^property[+].code = #grad3
* #10017638 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10017638 ^property[+].code = #grad4
* #10017638 ^property[=].valueString = "-"
* #10017638 ^property[+].code = #grad5
* #10017638 ^property[=].valueString = "-"
* #10034405 "Gallengangperforation"
* #10034405 ^designation[+].language = #de-DE
* #10034405 ^designation[=].value = "Gallengangdruchbruch"
* #10034405 ^definition = "Eine Störung, gekennzeichnet durch eine Perforation (Ruptur) der Wand des extra oder intrahepatischen Gallengangs."
* #10034405 ^property[+].code = #grad3
* #10034405 ^property[=].valueString = "Radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10034405 ^property[+].code = #grad4
* #10034405 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10034405 ^property[+].code = #grad5
* #10034405 ^property[=].valueString = "Tod"
* #10051341 "Gallengangstenose"
* #10051341 ^designation[+].language = #de-DE
* #10051341 ^designation[=].value = "Gallengangverengung"
* #10051341 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der lichten Weite des Gallenganges."
* #10051341 ^property[+].code = #grad3
* #10051341 ^property[=].valueString = "Schwerwiegende gestörte GI-Funktion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10051341 ^property[+].code = #grad4
* #10051341 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10051341 ^property[+].code = #grad5
* #10051341 ^property[=].valueString = "Tod"
* #10019678 "Leberblutung"
* #10019678 ^designation[+].language = #de-DE
* #10019678 ^designation[=].value = "Hepatische Hämorrhagie"
* #10019678 ^definition = "Eine Erkrankung, gekennzeichnet durch Blutung aus der Leber."
* #10019678 ^property[+].code = #grad3
* #10019678 ^property[=].valueString = "Transfusion angezeigt"
* #10019678 ^property[+].code = #grad4
* #10019678 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10019678 ^property[+].code = #grad5
* #10019678 ^property[=].valueString = "Tod"
* #10019692 "Lebernekrose"
* #10019692 ^designation[+].language = #de-DE
* #10019692 ^designation[=].value = "Hepatische nekrose"
* #10019692 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der im Leberparenchym auftritt."
* #10019692 ^property[+].code = #grad3
* #10019692 ^property[=].valueString = "-"
* #10019692 ^property[+].code = #grad4
* #10019692 ^property[=].valueString = "Lebensbedrohliche Folgen; radiologische oder operative Intervention dringlich angezeigt"
* #10019692 ^property[+].code = #grad5
* #10019692 ^property[=].valueString = "Tod"
* #10019705 "Leberschmerz"
* #10019705 ^designation[+].language = #de-DE
* #10019705 ^designation[=].value = "Hepatischer Schmerz"
* #10019705 ^definition = "Eine Befindlichkeitsstörung, gekennzeichnet durch das Gefühl deutlicher Beschwerden in der Leberregion."
* #10019705 ^property[+].code = #grad3
* #10019705 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10019705 ^property[+].code = #grad4
* #10019705 ^property[=].valueString = "-"
* #10019705 ^property[+].code = #grad5
* #10019705 ^property[=].valueString = "-"
* #10019663 "Leberversagen"
* #10019663 ^designation[+].language = #de-DE
* #10019663 ^designation[=].value = "Hepatisches Versagen"
* #10019663 ^definition = "Eine Erkrankung, gekennzeichnet durch die Unfähigkeit der Leber, die chemischen Substanzen des Körpers zu verstoffwechseln. Laborergebnisse zeigen anormale Ammoniak-, Bilirubin-, Milchsäure-, Dehydrogenase- und alkalische Phosphatasewert."
* #10019663 ^property[+].code = #grad3
* #10019663 ^property[=].valueString = "Flattertremor (Asterixis); milde Enzephalopathie; Einschränkung der selbstversorgenden ATL"
* #10019663 ^property[+].code = #grad4
* #10019663 ^property[=].valueString = "Mäßige bis schwere Enzephalopathie; Koma; Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10019663 ^property[+].code = #grad5
* #10019663 ^property[=].valueString = "Tod"
* #10036206 "Pfortaderthrombose"
* #10036206 ^designation[+].language = #de-DE
* #10036206 ^designation[=].value = "Pfortadergerinnsel"
* #10036206 ^definition = "Eine Erkrankung, gekennzeichnet durch die Bildung eines Thrombus (Blutgerinnsels) in der Pfortader."
* #10036206 ^property[+].code = #grad3
* #10036206 ^property[=].valueString = "Medizinische Intervention angezeigt"
* #10036206 ^property[+].code = #grad4
* #10036206 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10036206 ^property[+].code = #grad5
* #10036206 ^property[=].valueString = "Tod"
* #10036200 "Portale Hypertonie"
* #10036200 ^designation[+].language = #de-DE
* #10036200 ^designation[=].value = "Pfortaderhochdruck"
* #10036200 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Erhöhung des Blutdrucks im portalen venösen System."
* #10036200 ^property[+].code = #grad3
* #10036200 ^property[=].valueString = "Gegensinniger / retrograder portaler Blutfluss, assoziiert mit Varizen und / oder Aszites"
* #10036200 ^property[+].code = #grad4
* #10036200 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10036200 ^property[+].code = #grad5
* #10036200 ^property[=].valueString = "Tod"
* #10019805 "Hepatobiliäre Erkrankungen - Sonstige, zu spezifizieren"
* #10019805 ^designation[+].language = #de-DE
* #10019805 ^designation[=].value = "-"
* #10019805 ^definition = "Sonstige, zu spezifizierende hepatobiliäre Störung oder Erkrankung, die als unerwünschtes Ereignis im Rahmen einer Behandlung auftritt."
* #10019805 ^property[+].code = #grad3
* #10019805 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10019805 ^property[+].code = #grad4
* #10019805 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
* #10019805 ^property[+].code = #grad5
* #10019805 ^property[=].valueString = "Tod"
* #10001718 "Allergische  Reaktion"
* #10001718 ^designation[+].language = #de-DE
* #10001718 ^designation[=].value = "Überempfindlichkeitsreaktion"
* #10001718 ^designation[+].language = #de-DE
* #10001718 ^designation[=].value = "Allergische Reaktion ohne Schocksymptomatik"
* #10001718 ^designation[+].language = #de-DE
* #10001718 ^designation[=].value = "Transfusionszwischenfall"
* #10001718 ^definition = "Eine Erkrankung, gekennzeichnet durch eine unerwünschte lokale oder allgemeine Reaktion durch Exposition gegenüber einem Allergen."
* #10001718 ^property[+].code = #grad3
* #10001718 ^property[=].valueString = "Anhaltend (d. h. auf symptomatische Medikation nicht schnell reagierend und/oder kurzer Infusionsunterbrechung); Wiederauftreten der Symptome nach initialer Besserung; Krankenhauseinweisung wegen klinischer Folgen angezeigt (z. B. Nierenschädigung, pulmonale Infiltrate)"
* #10001718 ^property[+].code = #grad4
* #10001718 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10001718 ^property[+].code = #grad5
* #10001718 ^property[=].valueString = "Tod"
* #10002218 "Anaphylaxie"
* #10002218 ^designation[+].language = #de-DE
* #10002218 ^designation[=].value = "Anaphylaktischer Schock"
* #10002218 ^designation[+].language = #de-DE
* #10002218 ^designation[=].value = "Transfusionszwischenfall"
* #10002218 ^definition = "Eine Störung, gekennzeichnet durch eine akute entzündliche Reaktion aufgrund der Freisetzung von Histamin und Histaminähnlichen Substanzen aus Mastzellen, die eine immunologische Überempfindlichkeitsreaktion verursacht. Klinisch präsentiert sie sich mit Atemschwierigkeiten, Schwindel, Hypotension, Zyanose und Bewußtlosigkeit; kann zum Tode führen."
* #10002218 ^property[+].code = #grad3
* #10002218 ^property[=].valueString = "Symptomatischer Bronchospasmus, mit oder ohne Urtikaria; parenterale Intervention angezeigt; Allergiebezogenes Ödem / Angioödem; niedriger Blutdruck"
* #10002218 ^property[+].code = #grad4
* #10002218 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10002218 ^property[+].code = #grad5
* #10002218 ^property[=].valueString = "Tod"
* #10061664 "Autoimmunstörung"
* #10061664 ^designation[+].language = #de-DE
* #10061664 ^designation[=].value = "Autoimmunerkrankung"
* #10061664 ^designation[+].language = #de-DE
* #10061664 ^designation[=].value = "Autoimmunreaktion"
* #10061664 ^designation[+].language = #de-DE
* #10061664 ^designation[=].value = "AIR"
* #10061664 ^definition = "Eine Störung, gekennzeichnet durch Funktionsverlust oder Gewebezerstörung eines Organs oder mehrerer Organe, entstehend durch humorale oder zelluläre Immunreaktionen eines Individuums zu seinen eigenen Gewebebestandteilen."
* #10061664 ^property[+].code = #grad3
* #10061664 ^property[=].valueString = "Autoimmunreaktion, die wichtige Organe betrifft (z. B. Kolitis, Anämie, Myokarditis, Niere)"
* #10061664 ^property[+].code = #grad4
* #10061664 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10061664 ^property[+].code = #grad5
* #10061664 ^property[=].valueString = "Tod"
* #10040400 "Serumkrankheit"
* #10040400 ^designation[+].language = #de-DE
* #10040400 ^designation[=].value = "Überempfindlichkeit vom verzögerter Typ"
* #10040400 ^definition = "Eine Störung, gekennzeichnet durch eine Überempfindlichkeit verzögerten Typs gegenüber fremden Eiweissen aus tierischen Seren. Sie tritt ca. sechs bis 21 Tage nach der Anwendung des fremden Antigens auf. Symptome schließen Fieber, Gelenkschmerzen, Muskelschmerzen, Hautausschläge, Lymphadenopathien, deutliche Thoraxbeschwerden und Luftnot ein."
* #10040400 ^property[+].code = #grad3
* #10040400 ^property[=].valueString = "Schwere Gelenkschmerzen oder Entzündung; ausgedehnter Ausschlag; Steroide oder i. v. Flüssigkeiten angezeigt."
* #10040400 ^property[+].code = #grad4
* #10040400 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention dringende angezeigt"
* #10040400 ^property[+].code = #grad5
* #10040400 ^property[=].valueString = "Tod"
* #10052015 "Zytokinsturm"
* #10052015 ^designation[+].language = #de-DE
* #10052015 ^designation[=].value = "Zytokinfreisetzungssyndrom"
* #10052015 ^definition = "Eine Störung, gekennzeichnet durch Übelkeit, Kopfschmerz, Tachykardie, Hypotonie, Hautausschlag und Kurzatmigkeit, verursacht durch Freisetzung von Zytokinen aus den Zellen."
* #10052015 ^property[+].code = #grad3
* #10052015 ^property[=].valueString = "Anhaltend (d. h. auf symptomatische Medikation nicht schnell reagierend und/oder kurzer Infusionsunterbrechung); Wiederauftreten der Symptome nach initialer Besserung; Krankenhauseinweisung wegen klinischer Folgen angezeigt (z. B. Nierenschädigung, pulmonale Infiltrate)"
* #10052015 ^property[+].code = #grad4
* #10052015 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10052015 ^property[+].code = #grad5
* #10052015 ^property[=].valueString = "Tod"
* #10021428 "Immunsystemstörungen - Sonstige, zu spezifizieren"
* #10021428 ^designation[+].language = #de-DE
* #10021428 ^designation[=].value = "-"
* #10021428 ^definition = "Sonstige, zu spezifizierende Störungen oder Erkrankungen des Immunsystems, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10021428 ^property[+].code = #grad3
* #10021428 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10021428 ^property[+].code = #grad4
* #10021428 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10021428 ^property[+].code = #grad5
* #10021428 ^property[=].valueString = "Tod"
* #10056519 "Abdominelle Infektion"
* #10056519 ^designation[+].language = #de-DE
* #10056519 ^designation[=].value = "Bauchinfektion"
* #10056519 ^designation[+].language = #de-DE
* #10056519 ^designation[=].value = "intraabdomineller Abszess"
* #10056519 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die abdominelle Höhle betrifft."
* #10056519 ^property[+].code = #grad3
* #10056519 ^property[=].valueString = "i. v. Antibiotika, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10056519 ^property[+].code = #grad4
* #10056519 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10056519 ^property[+].code = #grad5
* #10056519 ^property[=].valueString = "Tod"
* #10061640 "Anorektale  Infektion"
* #10061640 ^designation[+].language = #de-DE
* #10061640 ^designation[=].value = "Rektoanale Infektion"
* #10061640 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Analbereich und das Rektum betrifft."
* #10061640 ^property[+].code = #grad3
* #10061640 ^property[=].valueString = "i. v. Antibiotika, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10061640 ^property[+].code = #grad4
* #10061640 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10061640 ^property[+].code = #grad5
* #10061640 ^property[=].valueString = "Tod"
* #10003011 "Appendizitis"
* #10003011 ^designation[+].language = #de-DE
* #10003011 ^designation[=].value = "Wurmfortsatzentzündung"
* #10003011 ^designation[+].language = #de-DE
* #10003011 ^designation[=].value = "Blinddarmentzündung"
* #10003011 ^definition = "Eine Erkrankung, gekennzeichnet durch eine akute Entzündung, die die Appendix  vermiformen betrifft, verursacht durch ein pathogenes Agens."
* #10003011 ^property[+].code = #grad3
* #10003011 ^property[=].valueString = "i. v. Antibiotika, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10003011 ^property[+].code = #grad4
* #10003011 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10003011 ^property[+].code = #grad5
* #10003011 ^property[=].valueString = "Tod"
* #10003012 "Appendizitis, perforierte"
* #10003012 ^designation[+].language = #de-DE
* #10003012 ^designation[=].value = "Wurmfortsatzperforation"
* #10003012 ^designation[+].language = #de-DE
* #10003012 ^designation[=].value = "Perforierte Wurmfortsatzentzündung"
* #10003012 ^definition = "Eine Erkrankung, gekennzeichnet durch eine akute Entzündung der  Appendix vermiformen, verursacht durch ein pathogenes Agens, mit gangränösen Veränderungen, die in einer Ruptur der Appendixwand resultieren. Die Appendixwandruptur verursacht die Freisetzung der entzündlichen und bakteriellen Inhalte aus dem Wurmfortsatzlumen in die abdominelle Höhle."
* #10003012 ^property[+].code = #grad3
* #10003012 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10003012 ^property[+].code = #grad4
* #10003012 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10003012 ^property[+].code = #grad5
* #10003012 ^property[=].valueString = "Tod"
* #10065744 "Arteriitis, infektiöse"
* #10065744 ^designation[+].language = #de-DE
* #10065744 ^designation[=].value = "Arterienentzündung, infektiös"
* #10065744 ^designation[+].language = #de-DE
* #10065744 ^designation[=].value = "Infektiöse Arterienentzündung"
* #10065744 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der eine Arterie betrifft."
* #10065744 ^property[+].code = #grad3
* #10065744 ^property[=].valueString = "i. v. Antibiotika, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10065744 ^property[+].code = #grad4
* #10065744 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10065744 ^property[+].code = #grad5
* #10065744 ^property[=].valueString = "Tod"
* #10015929 "Augeninfektion"
* #10015929 ^designation[+].language = #de-DE
* #10015929 ^designation[=].value = "Infektiöse Augenentzündung"
* #10015929 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Augen betrifft."
* #10015929 ^property[+].code = #grad3
* #10015929 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10015929 ^property[+].code = #grad4
* #10015929 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10015929 ^property[+].code = #grad5
* #10015929 ^property[=].valueString = "Tod"
* #10058674 "Beckeninfektion"
* #10058674 ^designation[+].language = #de-DE
* #10058674 ^designation[=].value = "Beckenentzündung"
* #10058674 ^designation[+].language = #de-DE
* #10058674 ^designation[=].value = "Abszess, intraabdominaler"
* #10058674 ^designation[+].language = #de-DE
* #10058674 ^designation[=].value = "pelvine Infektion"
* #10058674 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Beckenhöhle umfasst."
* #10058674 ^property[+].code = #grad3
* #10058674 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10058674 ^property[+].code = #grad4
* #10058674 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10058674 ^property[+].code = #grad5
* #10058674 ^property[=].valueString = "Tod"
* #10005047 "Blasenentzündung"
* #10005047 ^designation[+].language = #de-DE
* #10005047 ^designation[=].value = "Zystitis"
* #10005047 ^designation[+].language = #de-DE
* #10005047 ^designation[=].value = "Cystitis"
* #10005047 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Harnblase betrifft."
* #10005047 ^property[+].code = #grad3
* #10005047 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10005047 ^property[+].code = #grad4
* #10005047 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10005047 ^property[+].code = #grad5
* #10005047 ^property[=].valueString = "Tod"
* #10006259 "Brustentzündung"
* #10006259 ^designation[+].language = #de-DE
* #10006259 ^designation[=].value = "Mammaentzündung"
* #10006259 ^designation[+].language = #de-DE
* #10006259 ^designation[=].value = "Mastitis"
* #10006259 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Mamma betrifft."
* #10006259 ^property[+].code = #grad3
* #10006259 ^property[=].valueString = "Schwere Infektion; axilläre Lymphknotenentzündung; i. v. antibakterielle, antifungizide oder antivirale Intervention angezeigt;"
* #10006259 ^property[+].code = #grad4
* #10006259 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10006259 ^property[+].code = #grad5
* #10006259 ^property[=].valueString = "Tod"
* #10055078 "Bronchialinfektion"
* #10055078 ^designation[+].language = #de-DE
* #10055078 ^designation[=].value = "Bronchitis, infektiöse"
* #10055078 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Bronchien betrifft."
* #10055078 ^property[+].code = #grad3
* #10055078 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10055078 ^property[+].code = #grad4
* #10055078 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10055078 ^property[+].code = #grad5
* #10055078 ^property[=].valueString = "Tod"
* #10065771 "Dünndarminfektion"
* #10065771 ^designation[+].language = #de-DE
* #10065771 ^designation[=].value = "Dünndarmentzündung, infektiös"
* #10065771 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Dünndarm betrifft."
* #10065771 ^property[+].code = #grad3
* #10065771 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
* #10065771 ^property[+].code = #grad4
* #10065771 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10065771 ^property[+].code = #grad5
* #10065771 ^property[=].valueString = "Tod"
* #10065752 "Duodenitis, infektiöse"
* #10065752 ^designation[+].language = #de-DE
* #10065752 ^designation[=].value = "Zwölffingerdarminfektion"
* #10065752 ^designation[+].language = #de-DE
* #10065752 ^designation[=].value = "Duodenalinfektion"
* #10065752 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Duodenum betrifft."
* #10065752 ^property[+].code = #grad3
* #10065752 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10065752 ^property[+].code = #grad4
* #10065752 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10065752 ^property[+].code = #grad5
* #10065752 ^property[=].valueString = "Tod"
* #10055005 "Eileiterinfektion"
* #10055005 ^designation[+].language = #de-DE
* #10055005 ^designation[=].value = "Eileiterentzündung"
* #10055005 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Eierstöcke betrifft."
* #10055005 ^property[+].code = #grad3
* #10055005 ^property[=].valueString = "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
* #10055005 ^property[+].code = #grad4
* #10055005 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10055005 ^property[+].code = #grad5
* #10055005 ^property[=].valueString = "Tod"
* #10014801 "Entzündung des Augeninneren"
* #10014801 ^designation[+].language = #de-DE
* #10014801 ^designation[=].value = "Endophthalmitis"
* #10014801 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Innenstruktur des Auges umfasst."
* #10014801 ^property[+].code = #grad3
* #10014801 ^property[=].valueString = "Systemische Intervention oder Krankenhauseinweisung angezeigt;"
* #10014801 ^property[+].code = #grad4
* #10014801 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10014801 ^property[+].code = #grad5
* #10014801 ^property[=].valueString = "Tod"
* #10014594 "Enzephalitische Infektion"
* #10014594 ^designation[+].language = #de-DE
* #10014594 ^designation[=].value = "Infektiöse Enzephalitis"
* #10014594 ^designation[+].language = #de-DE
* #10014594 ^designation[=].value = "Hirninfektion"
* #10014594 ^designation[+].language = #de-DE
* #10014594 ^designation[=].value = "Hirnentzündung"
* #10014594 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Gehirngewebe betrifft."
* #10014594 ^property[+].code = #grad3
* #10014594 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; schwere Veränderungen des Mentalstaus; selbstbegrenzende Krampfaktivität, fokale neurologische Anormalitäten"
* #10014594 ^property[+].code = #grad4
* #10014594 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10014594 ^property[+].code = #grad5
* #10014594 ^property[=].valueString = "Tod"
* #10062632 "Gallenblaseninfektion"
* #10062632 ^designation[+].language = #de-DE
* #10062632 ^designation[=].value = "Infektion der Gallenblase"
* #10062632 ^designation[+].language = #de-DE
* #10062632 ^designation[=].value = "Gallenblasenentzündung"
* #10062632 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Gallenblase betrifft."
* #10062632 ^property[+].code = #grad3
* #10062632 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10062632 ^property[+].code = #grad4
* #10062632 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10062632 ^property[+].code = #grad5
* #10062632 ^property[=].valueString = "Tod"
* #10061695 "Gallenweginfektion"
* #10061695 ^designation[+].language = #de-DE
* #10061695 ^designation[=].value = "Infektion des biliären Traktes"
* #10061695 ^designation[+].language = #de-DE
* #10061695 ^designation[=].value = "Infektiöse Cholangitis"
* #10061695 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Gallengangstrakt umfasst."
* #10061695 ^property[+].code = #grad3
* #10061695 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10061695 ^property[+].code = #grad4
* #10061695 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10061695 ^property[+].code = #grad5
* #10061695 ^property[=].valueString = "Tod"
* #10008330 "Gebärmutterhalsinfektion"
* #10008330 ^designation[+].language = #de-DE
* #10008330 ^designation[=].value = "Infektiöse Cervicitis"
* #10008330 ^designation[+].language = #de-DE
* #10008330 ^designation[=].value = "Zervixinfektion"
* #10008330 ^designation[+].language = #de-DE
* #10008330 ^designation[=].value = "Zervizitis"
* #10008330 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die uterine Zervix betrifft."
* #10008330 ^property[+].code = #grad3
* #10008330 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10008330 ^property[+].code = #grad4
* #10008330 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10008330 ^property[+].code = #grad5
* #10008330 ^property[=].valueString = "Tod"
* #10033072 "Gehörgangentzündung"
* #10033072 ^designation[+].language = #de-DE
* #10033072 ^designation[=].value = "Außenohrentzündung"
* #10033072 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das äußere Ohr und den Ohrkanal umfasst. Beitragende Faktoren schließen übermäßige Wasserexposition (Badeotitis) und Schnitte im Ohrkanal ein. Symptome schließen Völlegefühl, Jucken, Schwellung und deutliche Beschwerden im Ohr und Ohrausfluss ein."
* #10033072 ^property[+].code = #grad3
* #10033072 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10033072 ^property[+].code = #grad4
* #10033072 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10033072 ^property[+].code = #grad5
* #10033072 ^property[=].valueString = "Tod"
* #10064687 "Gerätebezogene Infektion"
* #10064687 ^designation[+].language = #de-DE
* #10064687 ^designation[=].value = "-"
* #10064687 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Gebrauch eines medizinischen Gerätes betrifft."
* #10064687 ^property[+].code = #grad3
* #10064687 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10064687 ^property[+].code = #grad4
* #10064687 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10064687 ^property[+].code = #grad5
* #10064687 ^property[=].valueString = "Tod"
* #10052298 "Harnröhreninfektion"
* #10052298 ^designation[+].language = #de-DE
* #10052298 ^designation[=].value = "Infektiöse Urethritis"
* #10052298 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Harnröhre betrifft."
* #10052298 ^property[+].code = #grad3
* #10052298 ^property[=].valueString = "i. v.  antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10052298 ^property[+].code = #grad4
* #10052298 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10052298 ^property[+].code = #grad5
* #10052298 ^property[=].valueString = "Tod"
* #10046571 "Harnwegsinfektion"
* #10046571 ^designation[+].language = #de-DE
* #10046571 ^designation[=].value = "Harnwegsinfekt"
* #10046571 ^designation[+].language = #de-DE
* #10046571 ^designation[=].value = "Infektion der ableitenden Harnwege"
* #10046571 ^designation[+].language = #de-DE
* #10046571 ^designation[=].value = "Harnröhrenentzündung"
* #10046571 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Urintrakt, am häufigsten die Blase und die Urethra, umfasst."
* #10046571 ^property[+].code = #grad3
* #10046571 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopische oder operative Intervention angezeigt."
* #10046571 ^property[+].code = #grad4
* #10046571 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10046571 ^property[+].code = #grad5
* #10046571 ^property[=].valueString = "Tod"
* #10040872 "Hautinfektion"
* #10040872 ^designation[+].language = #de-DE
* #10040872 ^designation[=].value = "Infektiöse Dermatitis"
* #10040872 ^designation[+].language = #de-DE
* #10040872 ^designation[=].value = "HautInfektion"
* #10040872 ^designation[+].language = #de-DE
* #10040872 ^designation[=].value = "Herpes Zoster"
* #10040872 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Haut betrifft."
* #10040872 ^property[+].code = #grad3
* #10040872 ^property[=].valueString = "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
* #10040872 ^property[+].code = #grad4
* #10040872 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10040872 ^property[+].code = #grad5
* #10040872 ^property[=].valueString = "Tod"
* #10065765 "Hirnnervenentzündung"
* #10065765 ^designation[+].language = #de-DE
* #10065765 ^designation[=].value = "Kopfnerventzündung"
* #10065765 ^designation[+].language = #de-DE
* #10065765 ^designation[=].value = "Hirnnervenausfall"
* #10065765 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der einen Kopfnerven betrifft."
* #10065765 ^property[+].code = #grad3
* #10065765 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10065765 ^property[+].code = #grad4
* #10065765 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10065765 ^property[+].code = #grad5
* #10065765 ^property[=].valueString = "Tod"
* #10014621 "Hirn-Rückenmark-Infektion"
* #10014621 ^designation[+].language = #de-DE
* #10014621 ^designation[=].value = "Encephalomyelitis"
* #10014621 ^designation[+].language = #de-DE
* #10014621 ^designation[=].value = "ZNS Infektion"
* #10014621 ^designation[+].language = #de-DE
* #10014621 ^designation[=].value = "Infektion des zentralen Nervensystems"
* #10014621 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Gehirn und Rückenmarkgewebe umfasst."
* #10014621 ^property[+].code = #grad3
* #10014621 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10014621 ^property[+].code = #grad4
* #10014621 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10014621 ^property[+].code = #grad5
* #10014621 ^property[=].valueString = "Tod"
* #10061788 "Hornhautentzündung"
* #10061788 ^designation[+].language = #de-DE
* #10061788 ^designation[=].value = "Korneale Infektion"
* #10061788 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Augenhornhaut betrifft."
* #10061788 ^property[+].code = #grad3
* #10061788 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10061788 ^property[+].code = #grad4
* #10061788 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10061788 ^property[+].code = #grad5
* #10061788 ^property[=].valueString = "Tod"
* #10046300 "Infektion der oberen Atemwege"
* #10046300 ^designation[+].language = #de-DE
* #10046300 ^designation[=].value = "Infektion der oberen Luftwege"
* #10046300 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die oberen Luftwege betrifft (Nase, Nebenhöhlen, Pharynx, Larynx oder Trachea)."
* #10046300 ^property[+].code = #grad3
* #10046300 ^property[=].valueString = "i. v.  antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
* #10046300 ^property[+].code = #grad4
* #10046300 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10046300 ^property[+].code = #grad5
* #10046300 ^property[=].valueString = "Tod"
* #10014678 "Infektiöse Endokarditis"
* #10014678 ^designation[+].language = #de-DE
* #10014678 ^designation[=].value = "Infektiöse Herzinnenhautentzündung"
* #10014678 ^designation[+].language = #de-DE
* #10014678 ^designation[=].value = "Endocarditis"
* #10014678 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die endokardiale Schicht (Innenhaut) des Herzens betrifft."
* #10014678 ^property[+].code = #grad3
* #10014678 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10014678 ^property[+].code = #grad4
* #10014678 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10014678 ^property[+].code = #grad5
* #10014678 ^property[=].valueString = "Tod"
* #10058838 "Infektiöse Enterokolitis"
* #10058838 ^designation[+].language = #de-DE
* #10058838 ^designation[=].value = "Infektiöse Darmentzündung"
* #10058838 ^definition = "Eine Störung, die durch eine Entzündung des Dünn- und Dickdarms gekennzeichnet ist."
* #10058838 ^property[+].code = #grad3
* #10058838 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt; profuse wässriger Durchfall mit Zeichen der Hypovolämie; blutiger Durchfall; Fieber; schwere abdominelle Schmerzen; Krankenhauseinweisung angezeigt"
* #10058838 ^property[+].code = #grad4
* #10058838 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10058838 ^property[+].code = #grad5
* #10058838 ^property[=].valueString = "Tod"
* #10007810 "Katheterbezogene Infektion"
* #10007810 ^designation[+].language = #de-DE
* #10007810 ^designation[=].value = "Abszess in einem Drainagekanal"
* #10007810 ^designation[+].language = #de-DE
* #10007810 ^designation[=].value = "Abszess in einem Katheterkanal"
* #10007810 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der sekundär durch Kathetergebrauch entsteht."
* #10007810 ^property[+].code = #grad3
* #10007810 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10007810 ^property[+].code = #grad4
* #10007810 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10007810 ^property[+].code = #grad5
* #10007810 ^property[=].valueString = "Tod"
* #10061017 "Knochenentzündung"
* #10061017 ^designation[+].language = #de-DE
* #10061017 ^designation[=].value = "Ostitis"
* #10061017 ^designation[+].language = #de-DE
* #10061017 ^designation[=].value = "Osteitis"
* #10061017 ^designation[+].language = #de-DE
* #10061017 ^designation[=].value = "Osteomyelitis"
* #10061017 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Knochen betrifft."
* #10061017 ^property[+].code = #grad3
* #10061017 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10061017 ^property[+].code = #grad4
* #10061017 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10061017 ^property[+].code = #grad5
* #10061017 ^property[=].valueString = "Tod"
* #10010742 "Konjunktivitis, infektiöse"
* #10010742 ^designation[+].language = #de-DE
* #10010742 ^designation[=].value = "Infektiöse Augenbindehautentzündung"
* #10010742 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Konjunktiven betrifft. Klinische Manifestationen umfassen rosa oder rote Farbe in den Augen."
* #10010742 ^property[+].code = #grad3
* #10010742 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10010742 ^property[+].code = #grad4
* #10010742 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10010742 ^property[+].code = #grad5
* #10010742 ^property[=].valueString = "Tod"
* #10056522 "Leberinfektion"
* #10056522 ^designation[+].language = #de-DE
* #10056522 ^designation[=].value = "Hepatische Infektion"
* #10056522 ^designation[+].language = #de-DE
* #10056522 ^designation[=].value = "Leber Infektion"
* #10056522 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Leber betrifft."
* #10056522 ^property[+].code = #grad3
* #10056522 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10056522 ^property[+].code = #grad4
* #10056522 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10056522 ^property[+].code = #grad5
* #10056522 ^property[=].valueString = "Tod"
* #10021918 "Infektiöse Myositis"
* #10021918 ^designation[+].language = #de-DE
* #10021918 ^designation[=].value = "Infektion Skelettmuskulatur"
* #10021918 ^designation[+].language = #de-DE
* #10021918 ^designation[=].value = "Skelettmuskelinfektion"
* #10021918 ^designation[+].language = #de-DE
* #10021918 ^designation[=].value = "Skelettmuskulaturentzündung"
* #10021918 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Skelettmuskeln betrifft."
* #10021918 ^property[+].code = #grad3
* #10021918 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10021918 ^property[+].code = #grad4
* #10021918 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10021918 ^property[+].code = #grad5
* #10021918 ^property[=].valueString = "Tod"
* #10023216 "Gelenkinfektion"
* #10023216 ^designation[+].language = #de-DE
* #10023216 ^designation[=].value = "Infektiöse Arthritis"
* #10023216 ^designation[+].language = #de-DE
* #10023216 ^designation[=].value = "Gelenkentzündung"
* #10023216 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der ein Gelenk betrifft."
* #10023216 ^property[+].code = #grad3
* #10023216 ^property[=].valueString = "Arthroskopische Intervention angezeigt (z. B. Drainage) oder Arthrotomie (z. B. offen chirurgische Drainage)"
* #10023216 ^property[+].code = #grad4
* #10023216 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10023216 ^property[+].code = #grad5
* #10023216 ^property[=].valueString = "Tod"
* #10023874 "Kehlkopfentzündung"
* #10023874 ^designation[+].language = #de-DE
* #10023874 ^designation[=].value = "Laryngitis"
* #10023874 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Kehlkopf betrifft."
* #10023874 ^property[+].code = #grad3
* #10023874 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10023874 ^property[+].code = #grad4
* #10023874 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10023874 ^property[+].code = #grad5
* #10023874 ^property[=].valueString = "Tod"
* #10065755 "Lippeninfektion"
* #10065755 ^designation[+].language = #de-DE
* #10065755 ^designation[=].value = "Labiale Infektion"
* #10065755 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Lippen betrifft."
* #10065755 ^property[+].code = #grad3
* #10065755 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10065755 ^property[+].code = #grad4
* #10065755 ^property[=].valueString = "-"
* #10065755 ^property[+].code = #grad5
* #10065755 ^property[=].valueString = "Tod"
* #10061229 "Lungeninfektion"
* #10061229 ^designation[+].language = #de-DE
* #10061229 ^designation[=].value = "Infektiöse Pneumonie"
* #10061229 ^designation[+].language = #de-DE
* #10061229 ^designation[=].value = "Infektiöse Lungenentzündung"
* #10061229 ^designation[+].language = #de-DE
* #10061229 ^designation[=].value = "Pneumonie"
* #10061229 ^designation[+].language = #de-DE
* #10061229 ^designation[=].value = "Abszess, intrathorakaler"
* #10061229 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Lungen betrifft."
* #10061229 ^property[+].code = #grad3
* #10061229 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10061229 ^property[+].code = #grad4
* #10061229 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10061229 ^property[+].code = #grad5
* #10061229 ^property[=].valueString = "-"
* #10050823 "Lymphknoteninfektion"
* #10050823 ^designation[+].language = #de-DE
* #10050823 ^designation[=].value = "Infektiöse Lymphdrüsenentzündung"
* #10050823 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Lymphknoten betrifft."
* #10050823 ^property[+].code = #grad3
* #10050823 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10050823 ^property[+].code = #grad4
* #10050823 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10050823 ^property[+].code = #grad5
* #10050823 ^property[=].valueString = "Tod"
* #10057483 "Mediastinuminfektion"
* #10057483 ^designation[+].language = #de-DE
* #10057483 ^designation[=].value = "Mediastinale Infektion"
* #10057483 ^designation[+].language = #de-DE
* #10057483 ^designation[=].value = "Mediastinalinfektion"
* #10057483 ^designation[+].language = #de-DE
* #10057483 ^designation[=].value = "Mediastinitis"
* #10057483 ^designation[+].language = #de-DE
* #10057483 ^designation[=].value = "Abszess intraabdominaler oder intrathorakaler"
* #10057483 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Mediastinum umfasst."
* #10057483 ^property[+].code = #grad3
* #10057483 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10057483 ^property[+].code = #grad4
* #10057483 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10057483 ^property[+].code = #grad5
* #10057483 ^property[=].valueString = "Tod"
* #10027199 "Meningitis"
* #10027199 ^definition = "Eine Erkrankung, gekennzeichnet durch eine akute Entzündung der Häute des Gehirns und des Rückenmarks."
* #10027199 ^property[+].code = #grad3
* #10027199 ^property[=].valueString = "i. v. antibiotische, antifungizide, antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10027199 ^property[+].code = #grad4
* #10027199 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10027199 ^property[+].code = #grad5
* #10027199 ^property[=].valueString = "Tod"
* #10062112 "Milzinfektion"
* #10062112 ^designation[+].language = #de-DE
* #10062112 ^designation[=].value = "Infektiöse Splenitis"
* #10062112 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Milz betrifft."
* #10062112 ^property[+].code = #grad3
* #10062112 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt."
* #10062112 ^property[+].code = #grad4
* #10062112 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10062112 ^property[+].code = #grad5
* #10062112 ^property[=].valueString = "Tod"
* #10061304 "Nagelinfektion"
* #10061304 ^designation[+].language = #de-DE
* #10061304 ^designation[=].value = "Infektiöse Nagelentzündung"
* #10061304 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der einen Nagel betrifft."
* #10061304 ^property[+].code = #grad3
* #10061304 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10061304 ^property[+].code = #grad4
* #10061304 ^property[=].valueString = "-"
* #10061304 ^property[+].code = #grad5
* #10061304 ^property[=].valueString = "-"
* #10033078 "Mittelohrentzündung"
* #10033078 ^designation[+].language = #de-DE
* #10033078 ^designation[=].value = "Otitis media"
* #10033078 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Mittelohr betrifft."
* #10033078 ^property[+].code = #grad3
* #10033078 ^property[=].valueString = "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
* #10033078 ^property[+].code = #grad4
* #10033078 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10033078 ^property[+].code = #grad5
* #10033078 ^property[=].valueString = "Tod"
* #10065764 "Mukositis, infektiöse"
* #10065764 ^designation[+].language = #de-DE
* #10065764 ^designation[=].value = "Schleimhautinfektion"
* #10065764 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der eine Schleimhautoberfläche betrifft."
* #10065764 ^property[+].code = #grad3
* #10065764 ^property[=].valueString = "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
* #10065764 ^property[+].code = #grad4
* #10065764 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10065764 ^property[+].code = #grad5
* #10065764 ^property[=].valueString = "Tod"
* #10023424 "Niereninfektion"
* #10023424 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Nieren betrifft."
* #10023424 ^property[+].code = #grad3
* #10023424 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10023424 ^property[+].code = #grad4
* #10023424 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10023424 ^property[+].code = #grad5
* #10023424 ^property[=].valueString = "Tod"
* #10058804 "Ösophagitis, infektiöse"
* #10058804 ^designation[+].language = #de-DE
* #10058804 ^designation[=].value = "Speiseröhreninfektion"
* #10058804 ^designation[+].language = #de-DE
* #10058804 ^designation[=].value = "infektiöse Speiseröhrenentzündung"
* #10058804 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Speiseröhre betrifft."
* #10058804 ^property[+].code = #grad3
* #10058804 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10058804 ^property[+].code = #grad4
* #10058804 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10058804 ^property[+].code = #grad5
* #10058804 ^property[=].valueString = "Tod"
* #10051741 "Pankreasinfektion"
* #10051741 ^designation[+].language = #de-DE
* #10051741 ^designation[=].value = "Pankreatitis"
* #10051741 ^designation[+].language = #de-DE
* #10051741 ^designation[=].value = "Pankreasentzündung"
* #10051741 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Pankreas betrifft."
* #10051741 ^property[+].code = #grad3
* #10051741 ^property[=].valueString = "i. v. antibiotische, antifungizide, antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10051741 ^property[+].code = #grad4
* #10051741 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10051741 ^property[+].code = #grad5
* #10051741 ^property[=].valueString = "Tod"
* #10069138 "Papulopustulärer Ausschlag"
* #10069138 ^designation[+].language = #de-DE
* #10069138 ^designation[=].value = "Eitriger Hautausschlag"
* #10069138 ^designation[+].language = #de-DE
* #10069138 ^designation[=].value = "Eitriger Ausschlag"
* #10069138 ^definition = "Eine Erkrankung, gekennzeichnet durch einen Ausschlag, bestehend aus Papeln (kleine, erhabene Pickeln) und Pusteln (mit Eiter gefüllte Pusteln), typischerweise im Gesicht, Haarbereich und oberen Brustkorb und Rücken. Anders als Akne, zeigt dieser Ausschlag sich nicht mit Mittessern und kann mit juckenden oder empfindlichen Läsionen symptomatisch sein."
* #10069138 ^property[+].code = #grad3
* #10069138 ^property[=].valueString = "Papeln und/oder Pusteln auf >30% der Körperoberfläche, assoziiert oder nicht mit Symptomen von Juckreiz und Druckschmerz; Einschränkung der selbstversorgenden ATL; assoziiert mit lokaler Superinfektion, (Therapie) mit oralen Antibiotika angezeigt"
* #10069138 ^property[+].code = #grad4
* #10069138 ^property[=].valueString = "Papeln und/oder Pusteln auf jeglicher % der KOF, assoziiert oder nicht mit Symptomen von Juckreiz und Druckschmerz und sind assoziiert mit ausgedehnter Superinfektion, (Therapie) mit i. v. Antibiotika angezeigt; Antibiotika angezeigt; Lebensbedrohliche Folgen"
* #10069138 ^property[+].code = #grad5
* #10069138 ^property[=].valueString = "Tod"
* #10034016 "Paronychie"
* #10034016 ^designation[+].language = #de-DE
* #10034016 ^designation[=].value = "Nagelbettentzündung"
* #10034016 ^designation[+].language = #de-DE
* #10034016 ^designation[=].value = "Nagelfalzentzündung"
* #10034016 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Weichgewebe um den Nagel herum umfasst."
* #10034016 ^property[+].code = #grad3
* #10034016 ^property[=].valueString = "Chirurgische Intervention oder i. v. Antibiotika indiziert; Einschränkung der selbstversorgenden ATL"
* #10034016 ^property[+].code = #grad4
* #10034016 ^property[=].valueString = "-"
* #10034016 ^property[+].code = #grad5
* #10034016 ^property[=].valueString = "Tod"
* #10061912 "Penisinfektion"
* #10061912 ^designation[+].language = #de-DE
* #10061912 ^designation[=].value = "Penisentzündung, infektiös"
* #10061912 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Penis betrifft."
* #10061912 ^property[+].code = #grad3
* #10061912 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10061912 ^property[+].code = #grad4
* #10061912 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10061912 ^property[+].code = #grad5
* #10061912 ^property[=].valueString = "Tod"
* #10065766 "Periphere Nerveninfektion"
* #10065766 ^designation[+].language = #de-DE
* #10065766 ^designation[=].value = "Infektion eines peripheren Nerven"
* #10065766 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der periphere Nerven betrifft."
* #10065766 ^property[+].code = #grad3
* #10065766 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10065766 ^property[+].code = #grad4
* #10065766 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10065766 ^property[+].code = #grad5
* #10065766 ^property[=].valueString = "Tod"
* #10051472 "Periorbitale Infektion"
* #10051472 ^designation[+].language = #de-DE
* #10051472 ^designation[=].value = "Augenhöhleninfektion"
* #10051472 ^definition = "Eine Erkrankung gekennzeichnet durch einen infektiösen Prozess, der die Augenhöhle betrifft."
* #10051472 ^property[+].code = #grad3
* #10051472 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10051472 ^property[+].code = #grad4
* #10051472 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10051472 ^property[+].code = #grad5
* #10051472 ^property[=].valueString = "Tod"
* #10057262 "Peritoneale Infektion"
* #10057262 ^designation[+].language = #de-DE
* #10057262 ^designation[=].value = "Infektiöse Peritonitis"
* #10057262 ^designation[+].language = #de-DE
* #10057262 ^designation[=].value = "peritonealer Abszess"
* #10057262 ^designation[+].language = #de-DE
* #10057262 ^designation[=].value = "Peritonitis"
* #10057262 ^definition = "Eine Erkrankung gekennzeichnet durch einen infektiösen Prozess, der das Bauchfell betrifft."
* #10057262 ^property[+].code = #grad3
* #10057262 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10057262 ^property[+].code = #grad4
* #10057262 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10057262 ^property[+].code = #grad5
* #10057262 ^property[=].valueString = "Tod"
* #10034835 "Pharyngitis"
* #10034835 ^designation[+].language = #de-DE
* #10034835 ^designation[=].value = "Rachenentzündung"
* #10034835 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der den Rachen betrifft."
* #10034835 ^property[+].code = #grad3
* #10034835 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt."
* #10034835 ^property[+].code = #grad4
* #10034835 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10034835 ^property[+].code = #grad5
* #10034835 ^property[=].valueString = "Tod"
* #10061351 "Pleurainfektion"
* #10061351 ^designation[+].language = #de-DE
* #10061351 ^designation[=].value = "Infektiöse Pleuritis (einschließlich Rip'-penfell, Brustfell, Lungenfell, Pleurahöhle)"
* #10061351 ^designation[+].language = #de-DE
* #10061351 ^designation[=].value = "Pleuraempyem"
* #10061351 ^designation[+].language = #de-DE
* #10061351 ^designation[=].value = "pleuraler Abszess"
* #10061351 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Pleura involviert."
* #10061351 ^property[+].code = #grad3
* #10061351 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt."
* #10061351 ^property[+].code = #grad4
* #10061351 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10061351 ^property[+].code = #grad5
* #10061351 ^property[=].valueString = "Tod"
* #10056627 "Phlebitis, infektiöse"
* #10056627 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Venen betrifft. Klinische Manifestationen schließen Rötung, deutliche Beschwerden, Schwellung und Induration im Verlauf der infizierten Vene ein."
* #10056627 ^property[+].code = #grad3
* #10056627 ^property[=].valueString = "i.v.antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt"
* #10056627 ^property[+].code = #grad4
* #10056627 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10056627 ^property[+].code = #grad5
* #10056627 ^property[=].valueString = "Tod"
* #10050662 "Prostatainfektion"
* #10050662 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Prostata betrifft."
* #10050662 ^property[+].code = #grad3
* #10050662 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt."
* #10050662 ^property[+].code = #grad4
* #10050662 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10050662 ^property[+].code = #grad5
* #10050662 ^property[=].valueString = "Tod"
* #10037888 "Pustulöser Hautausschlag"
* #10037888 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebenen und erhabene Hautläsion, gefüllt mit Eiter."
* #10037888 ^property[+].code = #grad3
* #10037888 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
* #10037888 ^property[+].code = #grad4
* #10037888 ^property[=].valueString = "-"
* #10037888 ^property[+].code = #grad5
* #10037888 ^property[=].valueString = "-"
* #10059827 "Rhinitis, infektiöse"
* #10059827 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Nasenschleimhaut umfasst."
* #10059827 ^property[+].code = #grad3
* #10059827 ^property[=].valueString = "-"
* #10059827 ^property[+].code = #grad4
* #10059827 ^property[=].valueString = "-"
* #10059827 ^property[+].code = #grad5
* #10059827 ^property[=].valueString = "-"
* #10039413 "Speicheldrüseninfektion"
* #10039413 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der eine Speicheldrüse betrifft."
* #10039413 ^property[+].code = #grad3
* #10039413 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt."
* #10039413 ^property[+].code = #grad4
* #10039413 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10039413 ^property[+].code = #grad5
* #10039413 ^property[=].valueString = "Tod"
* #10040047 "Sepsis"
* #10040047 ^designation[+].language = #de-DE
* #10040047 ^designation[=].value = "Blutvergiftung"
* #10040047 ^designation[+].language = #de-DE
* #10040047 ^designation[=].value = "septischer Schock"
* #10040047 ^designation[+].language = #de-DE
* #10040047 ^designation[=].value = "Infektiöser Transfusionszwischenfall"
* #10040047 ^definition = "Eine Erkrankung, die durch das Vorhandensein pathogener Mikroorganismen im Blutstrom gekennzeichnet ist, was eine schnell fortschreitende systemische Reaktion verursacht, die zu einem Schock führen kann."
* #10040047 ^property[+].code = #grad3
* #10040047 ^property[=].valueString = "-"
* #10040047 ^property[+].code = #grad4
* #10040047 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10040047 ^property[+].code = #grad5
* #10040047 ^property[=].valueString = "Tod"
* #10040753 "Sinusitis"
* #10040753 ^designation[+].language = #de-DE
* #10040753 ^designation[=].value = "Nasennebenhöhlenentzündung"
* #10040753 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Schleimhäute der Nasennebenhöhlen betrifft."
* #10040753 ^property[+].code = #grad3
* #10040753 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopische oder operative Intervention angezeigt."
* #10040753 ^property[+].code = #grad4
* #10040753 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10040753 ^property[+].code = #grad5
* #10040753 ^property[=].valueString = "Tod"
* #10062156 "Skrotuminfektion"
* #10062156 ^designation[+].language = #de-DE
* #10062156 ^designation[=].value = "Infektiöse Skrotumentzündung"
* #10062156 ^designation[+].language = #de-DE
* #10062156 ^designation[=].value = "Hodensackinfektion"
* #10062156 ^designation[+].language = #de-DE
* #10062156 ^designation[=].value = "skrotale Infektion"
* #10062156 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Skrotum betrifft."
* #10062156 ^property[+].code = #grad3
* #10062156 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt."
* #10062156 ^property[+].code = #grad4
* #10062156 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10062156 ^property[+].code = #grad5
* #10062156 ^property[=].valueString = "Tod"
* #10064505 "Stomatitis, infektiöse"
* #10064505 ^designation[+].language = #de-DE
* #10064505 ^designation[=].value = "Stomainfektion"
* #10064505 ^designation[+].language = #de-DE
* #10064505 ^designation[=].value = "Infektion Stomaregion"
* #10064505 ^designation[+].language = #de-DE
* #10064505 ^designation[=].value = "Infektion im Stomabereich"
* #10064505 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der ein Stoma (chirurgisch erzeugte Öffnung an der Körperoberfläche) betrifft."
* #10064505 ^property[+].code = #grad3
* #10064505 ^property[=].valueString = "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
* #10064505 ^property[+].code = #grad4
* #10064505 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10064505 ^property[+].code = #grad5
* #10064505 ^property[=].valueString = "Tod"
* #10044302 "Tracheitis"
* #10044302 ^designation[+].language = #de-DE
* #10044302 ^designation[=].value = "Luftröhreninfektion"
* #10044302 ^designation[+].language = #de-DE
* #10044302 ^designation[=].value = "Luftröhrenentzündung"
* #10044302 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Luftröhre betrifft."
* #10044302 ^property[+].code = #grad3
* #10044302 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
* #10044302 ^property[+].code = #grad4
* #10044302 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10044302 ^property[+].code = #grad5
* #10044302 ^property[=].valueString = "Tod"
* #10019799 "Virushepatitis"
* #10019799 ^designation[+].language = #de-DE
* #10019799 ^designation[=].value = "Virale Hepatitis"
* #10019799 ^definition = "Eine Erkrankung, gekennzeichnet durch einen viralen pathologischen Prozess, der das Leberparenchym betrifft."
* #10019799 ^property[+].code = #grad3
* #10019799 ^property[=].valueString = "Symptomatische Leberdysfunktion; Fibrose durch Biopsie; kompensierte Zirrhose; Reaktivierung einer chronischen Hepatitis"
* #10019799 ^property[+].code = #grad4
* #10019799 ^property[=].valueString = "Dekompensierte Leberfunktion (z. B. Aszites, Koagulopathie, Enzephalopathie, Koma)"
* #10019799 ^property[+].code = #grad5
* #10019799 ^property[=].valueString = "Tod"
* #10062233 "Uterusinfektion"
* #10062233 ^designation[+].language = #de-DE
* #10062233 ^designation[=].value = "Gebärmutterinfektion"
* #10062233 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Endometrium betrifft. Er kann sich auf das Myometrium und parametriale Gewebe ausdehnen."
* #10062233 ^property[+].code = #grad3
* #10062233 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt."
* #10062233 ^property[+].code = #grad4
* #10062233 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10062233 ^property[+].code = #grad5
* #10062233 ^property[=].valueString = "Tod"
* #10046914 "Vaginale Infektion"
* #10046914 ^designation[+].language = #de-DE
* #10046914 ^designation[=].value = "Infektiöse Vaginitis"
* #10046914 ^designation[+].language = #de-DE
* #10046914 ^designation[=].value = "Vaginaentzündung"
* #10046914 ^designation[+].language = #de-DE
* #10046914 ^designation[=].value = "Scheidenentzündung"
* #10046914 ^designation[+].language = #de-DE
* #10046914 ^designation[=].value = "Vaginalentzündung"
* #10046914 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Vagina betrifft."
* #10046914 ^property[+].code = #grad3
* #10046914 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische oder operative Intervention angezeigt."
* #10046914 ^property[+].code = #grad4
* #10046914 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10046914 ^property[+].code = #grad5
* #10046914 ^property[=].valueString = "Tod"
* #10065772 "Vulvainfektion"
* #10065772 ^designation[+].language = #de-DE
* #10065772 ^designation[=].value = "Infektiöse Vulvitis"
* #10065772 ^designation[+].language = #de-DE
* #10065772 ^designation[=].value = "Vulvaentzündung"
* #10065772 ^designation[+].language = #de-DE
* #10065772 ^designation[=].value = "infektiöse Schamlippenentzündung"
* #10065772 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der die Vulva betrifft."
* #10065772 ^property[+].code = #grad3
* #10065772 ^property[=].valueString = "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
* #10065772 ^property[+].code = #grad4
* #10065772 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10065772 ^property[+].code = #grad5
* #10065772 ^property[=].valueString = "Tod"
* #10062255 "Weichgewebeinfektion"
* #10062255 ^designation[+].language = #de-DE
* #10062255 ^designation[=].value = "Weichteilgewebeinfektion"
* #10062255 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der Weichgewebe betrifft."
* #10062255 ^property[+].code = #grad3
* #10062255 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopisch oder operative Intervention angezeigt"
* #10062255 ^property[+].code = #grad4
* #10062255 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10062255 ^property[+].code = #grad5
* #10062255 ^property[=].valueString = "Tod"
* #10048038 "Wundinfektion"
* #10048038 ^designation[+].language = #de-DE
* #10048038 ^designation[=].value = "Abszess, subfaszialer"
* #10048038 ^definition = "Eine Störung, gekennzeichnet durch einen infektiösen Prozess, der eine Wunde betrifft."
* #10048038 ^property[+].code = #grad3
* #10048038 ^property[=].valueString = "i. v. antibiotische, antifungale oder antivirale Intervention angezeigt radiologische oder operative Intervention angezeigt"
* #10048038 ^property[+].code = #grad4
* #10048038 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10048038 ^property[+].code = #grad5
* #10048038 ^property[=].valueString = "Tod"
* #10018784 "Zahnfleischinfektion"
* #10018784 ^designation[+].language = #de-DE
* #10018784 ^designation[=].value = "Infektiöse Zahnfleischentzündung"
* #10018784 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Zahnfleisch betrifft."
* #10018784 ^property[+].code = #grad3
* #10018784 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10018784 ^property[+].code = #grad4
* #10018784 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10018784 ^property[+].code = #grad5
* #10018784 ^property[=].valueString = "Tod"
* #10048762 "Zahninfektion"
* #10048762 ^designation[+].language = #de-DE
* #10048762 ^designation[=].value = "Pulpitis"
* #10048762 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der einen Zahn betrifft."
* #10048762 ^property[+].code = #grad3
* #10048762 ^property[=].valueString = "i.v. antibiotische, antifungizide oder antivirale Medikation angezeigt; radiologische, endoskopische oder operative Intervention angezeigt."
* #10048762 ^property[+].code = #grad4
* #10048762 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10048762 ^property[+].code = #grad5
* #10048762 ^property[=].valueString = "Tod"
* #10065761 "Zökalinfektion"
* #10065761 ^designation[+].language = #de-DE
* #10065761 ^designation[=].value = "Blinddarminfektion"
* #10065761 ^designation[+].language = #de-DE
* #10065761 ^designation[=].value = "Zökuminfektion"
* #10065761 ^designation[+].language = #de-DE
* #10065761 ^designation[=].value = "Coecalinfektion"
* #10065761 ^definition = "Eine Erkrankung, gekennzeichnet durch einen infektiösen Prozess, der das Zökum betrifft."
* #10065761 ^property[+].code = #grad3
* #10065761 ^property[=].valueString = "i. v. antibiotische, antifungizide oder antivirale Intervention angezeigt; radiologische oder operative Intervention angezeigt"
* #10065761 ^property[+].code = #grad4
* #10065761 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10065761 ^property[+].code = #grad5
* #10065761 ^property[=].valueString = "Tod"
* #10021881 "Infektionen und Infestationen - Sonstige, zu spezifizieren"
* #10021881 ^designation[+].language = #de-DE
* #10021881 ^designation[=].value = "-"
* #10021881 ^definition = "Sonstige zu spezifizierende Infektionen oder Infestationen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10021881 ^property[+].code = #grad3
* #10021881 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10021881 ^property[+].code = #grad4
* #10021881 ^property[=].valueString = "Lebensbedrohliche Folgen; dringende Intervention angezeigt"
* #10021881 ^property[+].code = #grad5
* #10021881 ^property[=].valueString = "Tod"
* #10002899 "Aortenverletzung"
* #10002899 ^designation[+].language = #de-DE
* #10002899 ^designation[=].value = "Aortenschädigung"
* #10002899 ^designation[+].language = #de-DE
* #10002899 ^designation[=].value = "Verletzung der Aorta"
* #10002899 ^definition = "Der Befund einer Aortenverletzung/Schädigung."
* #10002899 ^property[+].code = #grad3
* #10002899 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; behindernd; Reparatur oder Revision angezeigt"
* #10002899 ^property[+].code = #grad4
* #10002899 ^property[=].valueString = "Lebensbedrohliche Folgen; Nachweis einer Endorganschädigung; operative Intervention dringlich angezeigt"
* #10002899 ^property[+].code = #grad5
* #10002899 ^property[=].valueString = "Tod"
* #10003162 "Arterienverletzung"
* #10003162 ^designation[+].language = #de-DE
* #10003162 ^designation[=].value = "Aortenschaden"
* #10003162 ^designation[+].language = #de-DE
* #10003162 ^designation[=].value = "Verletzung einer Arterie"
* #10003162 ^designation[+].language = #de-DE
* #10003162 ^designation[=].value = "Arterienschädigung"
* #10003162 ^definition = "Der Befund einer Arterien Verletzung/Schädigung."
* #10003162 ^property[+].code = #grad3
* #10003162 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; behindernd; Reparatur oder Revision angezeigt"
* #10003162 ^property[+].code = #grad4
* #10003162 ^property[=].valueString = "Lebensbedrohliche Folgen; Nachweis einer Endorganschädigung; operative Intervention dringlich angezeigt"
* #10003162 ^property[+].code = #grad5
* #10003162 ^property[=].valueString = "Tod"
* #10037767 "Bestrahlungs-Recall-Reaktion (dermatologisch)"
* #10037767 ^designation[+].language = #de-DE
* #10037767 ^designation[=].value = "dermatitische Recall'-Reaktion"
* #10037767 ^designation[+].language = #de-DE
* #10037767 ^designation[=].value = "Radiologische Recall'-Reaktion"
* #10037767 ^definition = "Der Befund einer akuten Hautentzündung, verursacht durch Medikamente, speziell Chemotherapeutika, Wochen oder Monate nach Radiotherapie. Die Entzündungsreaktion ist auf die vorher bestrahlte Haut begrenzt und die Symptome verschwinden nach dem Absetzen des pharmazeutischen Agens."
* #10037767 ^property[+].code = #grad3
* #10037767 ^property[=].valueString = "Feuchte Desquamation in Bereichen außerhalb von Hautfalten und Furchen, Blutung induziert durch geringes Trauma oder Abschürfung"
* #10037767 ^property[+].code = #grad4
* #10037767 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Hautnekrose oder Ulzeration der gesamten Kutis spontane Blutungen des betroffenen Gebietes; Hauttransplantation indiziert"
* #10037767 ^property[+].code = #grad5
* #10037767 ^property[=].valueString = "Tod"
* #10050458 "Biliäre Anastomoseninsuffizienz"
* #10050458 ^designation[+].language = #de-DE
* #10050458 ^designation[=].value = "Biliäres Anastomosenleck"
* #10050458 ^designation[+].language = #de-DE
* #10050458 ^designation[=].value = "Gallenanastomoseninsuffizienz"
* #10050458 ^definition = "Der Befund von Gallenflüssigkeitsaustritt aufgrund des Versagens der Gallenanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10050458 ^property[+].code = #grad3
* #10050458 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10050458 ^property[+].code = #grad4
* #10050458 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10050458 ^property[+].code = #grad5
* #10050458 ^property[=].valueString = "Tod"
* #10065891 "Dickdarmanastomoseninsuffizienz"
* #10065891 ^designation[+].language = #de-DE
* #10065891 ^designation[=].value = "Dickdarmanastomosenleck"
* #10065891 ^designation[+].language = #de-DE
* #10065891 ^designation[=].value = "Kolonanastomoseninsuffizienz"
* #10065891 ^designation[+].language = #de-DE
* #10065891 ^designation[=].value = "Kolonleck"
* #10065891 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens einer Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065891 ^property[+].code = #grad3
* #10065891 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065891 ^property[+].code = #grad4
* #10065891 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065891 ^property[+].code = #grad5
* #10065891 ^property[=].valueString = "Tod"
* #10065892 "Dünndarmanastomoseninsuffizienz"
* #10065892 ^designation[+].language = #de-DE
* #10065892 ^designation[=].value = "Dünndarmanastomosenleck"
* #10065892 ^designation[+].language = #de-DE
* #10065892 ^designation[=].value = "Duodenalstumpf"
* #10065892 ^designation[+].language = #de-DE
* #10065892 ^designation[=].value = "Jejunumstumpf"
* #10065892 ^designation[+].language = #de-DE
* #10065892 ^designation[=].value = "Ileumstumpfinsuffizienz"
* #10065892 ^definition = "Der Befund einer Undichtigkeit aufgrund Versagens einer Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen) im Dünndarm."
* #10065892 ^property[+].code = #grad3
* #10065892 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065892 ^property[+].code = #grad4
* #10065892 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065892 ^property[+].code = #grad5
* #10065892 ^property[=].valueString = "Tod"
* #10065788 "Eileiteranastomoseninsuffizienz"
* #10065788 ^designation[+].language = #de-DE
* #10065788 ^designation[=].value = "Tuba uterina / fallopiiinsuffizienz"
* #10065788 ^designation[+].language = #de-DE
* #10065788 ^designation[=].value = "Eileiteranastomosenleck"
* #10065788 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens einer Eileiteranastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065788 ^property[+].code = #grad3
* #10065788 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065788 ^property[+].code = #grad4
* #10065788 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065788 ^property[+].code = #grad5
* #10065788 ^property[=].valueString = "Tod"
* #10065790 "Eileiterperforation"
* #10065790 ^designation[+].language = #de-DE
* #10065790 ^designation[=].value = "Eileiterdurchbruch"
* #10065790 ^designation[+].language = #de-DE
* #10065790 ^designation[=].value = "Eileiterruptur"
* #10065790 ^designation[+].language = #de-DE
* #10065790 ^designation[=].value = "Tuba uterina/fallopiiperforation"
* #10065790 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Eileiterwand."
* #10065790 ^property[+].code = #grad3
* #10065790 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065790 ^property[+].code = #grad4
* #10065790 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt (z. B. Organresektion)"
* #10065790 ^property[+].code = #grad5
* #10065790 ^property[=].valueString = "Tod"
* #10017076 "Fraktur"
* #10017076 ^designation[+].language = #de-DE
* #10017076 ^designation[=].value = "Knochenbruch"
* #10017076 ^definition = "Der Befund der traumatischen Verletzung eines Knochens, durch den die Kontinuität des Knochens unterbrochen ist."
* #10017076 ^property[+].code = #grad3
* #10017076 ^property[=].valueString = "Schwere Symptome; disloziert oder offene Wunde mit Knochenexposition; behindernd; operative Intervention angezeigt"
* #10017076 ^property[+].code = #grad4
* #10017076 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10017076 ^property[+].code = #grad5
* #10017076 ^property[=].valueString = "Tod"
* #10065893 "Gastrische Anastomoseninsuffizienz"
* #10065893 ^designation[+].language = #de-DE
* #10065893 ^designation[=].value = "Magenanastomoseninsuffizienz"
* #10065893 ^designation[+].language = #de-DE
* #10065893 ^designation[=].value = "Magenanastomosenleck"
* #10065893 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens einer Magenanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065893 ^property[+].code = #grad3
* #10065893 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065893 ^property[+].code = #grad4
* #10065893 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065893 ^property[+].code = #grad5
* #10065893 ^property[=].valueString = "Tod"
* #10065879 "Gastrointestinale Anastomoseninsuffizienz"
* #10065879 ^designation[+].language = #de-DE
* #10065879 ^designation[=].value = "Gastrointestinales"
* #10065879 ^designation[+].language = #de-DE
* #10065879 ^designation[=].value = "Anastomosenleck"
* #10065879 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens einer gastrointestinalen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065879 ^property[+].code = #grad3
* #10065879 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065879 ^property[+].code = #grad4
* #10065879 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065879 ^property[+].code = #grad5
* #10065879 ^property[=].valueString = "Tod"
* #10065712 "Gastrointestinale Stomanekrose"
* #10065712 ^designation[+].language = #de-DE
* #10065712 ^designation[=].value = "Komplikation GI- Stomaanlage"
* #10065712 ^designation[+].language = #de-DE
* #10065712 ^designation[=].value = "GI- satomakomplikation"
* #10065712 ^definition = "Der Befund eines nekrotischen Prozesses, der in (an) einem gastrointestinalen Stoma auftritt."
* #10065712 ^property[+].code = #grad3
* #10065712 ^property[=].valueString = "Schwere Symptome; Krankenhauseinweisung angezeigt oder elektive operative Intervention angezeigt"
* #10065712 ^property[+].code = #grad4
* #10065712 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065712 ^property[+].code = #grad5
* #10065712 ^property[=].valueString = "Tod"
* #10065898 "Gastrointestinale Stomastenose"
* #10065898 ^designation[+].language = #de-DE
* #10065898 ^designation[=].value = "Verengung gastrointestinales Stoma"
* #10065898 ^designation[+].language = #de-DE
* #10065898 ^designation[=].value = "GI- Stomaanlagenverengung"
* #10065898 ^definition = "Der Befund einer Verengung des gastrointestinalen Stoma (chirurgisch hergestellte Öffnung an der Körperoberfläche)."
* #10065898 ^property[+].code = #grad3
* #10065898 ^property[=].valueString = "Schwerwiegende gestörte GI Funktion; Sondenernährung, TPE oder Krankenhausaufnahme angezeigt; elektive operative Intervention angezeigt"
* #10065898 ^property[+].code = #grad4
* #10065898 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention  angezeigt"
* #10065898 ^property[+].code = #grad5
* #10065898 ^property[=].valueString = "Tod"
* #10062169 "Gefäßzugangskomplikation"
* #10062169 ^designation[+].language = #de-DE
* #10062169 ^designation[=].value = "Komplikation beim Gefäßzugang"
* #10062169 ^definition = "Der Befund eines vorher nicht dokumentierten Problems in Bezug auf den vaskulären Zugangsort."
* #10062169 ^property[+].code = #grad3
* #10062169 ^property[=].valueString = "Thrombose der tiefen Venen oder kardial; Intervention angezeigt (z. B. Antikoagulation, Lysis, Filter, invasive Prozedur)"
* #10062169 ^property[+].code = #grad4
* #10062169 ^property[=].valueString = "Embolisches Ereignis einschließlich Lungenembolie oder lebensbedrohlicher Thrombus"
* #10062169 ^property[+].code = #grad5
* #10062169 ^property[=].valueString = "Tod"
* #10065802 "Harnblasenanastomoseninsuffizienz"
* #10065802 ^designation[+].language = #de-DE
* #10065802 ^designation[=].value = "Harnblasenanastomosenleck"
* #10065802 ^designation[+].language = #de-DE
* #10065802 ^designation[=].value = "Anastomoseninsuffizienz ableitende Harnwege"
* #10065802 ^definition = "Der Befund von Urinaustritt aufgrund des Versagens einer Harnblasenanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen.)"
* #10065802 ^property[+].code = #grad3
* #10065802 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065802 ^property[+].code = #grad4
* #10065802 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065802 ^property[+].code = #grad5
* #10065802 ^property[=].valueString = "Tod"
* #10048049 "Handgelenksfraktur"
* #10048049 ^designation[+].language = #de-DE
* #10048049 ^designation[=].value = "Handgelenksbruch"
* #10048049 ^definition = "Der Befund einer traumatischen Verletzung des Handgelenks, bei dem die Kontinuität eines Handgelenkknochens unterbrochen ist."
* #10048049 ^property[+].code = #grad3
* #10048049 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; elektive Chirurgie angezeigt"
* #10048049 ^property[+].code = #grad4
* #10048049 ^property[=].valueString = "-"
* #10048049 ^property[+].code = #grad5
* #10048049 ^property[=].valueString = "-"
* #10065814 "Harnleiteranastomoseninsuffizienz"
* #10065814 ^designation[+].language = #de-DE
* #10065814 ^designation[=].value = "Harnleiteranastomosenleck"
* #10065814 ^designation[+].language = #de-DE
* #10065814 ^designation[=].value = "Ureteranastomoseninsuffizien"
* #10065814 ^definition = "Der Befund einer Undichtigkeit aufgrund Versagens einer ureteralen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065814 ^property[+].code = #grad3
* #10065814 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065814 ^property[+].code = #grad4
* #10065814 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt"
* #10065814 ^property[+].code = #grad5
* #10065814 ^property[=].valueString = "Tod"
* #10065815 "Harnröhrenanastomoseninsuffizienz"
* #10065815 ^designation[+].language = #de-DE
* #10065815 ^designation[=].value = "Urethrales Anastomosenleck"
* #10065815 ^designation[+].language = #de-DE
* #10065815 ^designation[=].value = "Urethraanastomoseninsuffizienz"
* #10065815 ^definition = "Der Befund einer Undichtigkeit aufgrund Versagens einer urethralen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065815 ^property[+].code = #grad3
* #10065815 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065815 ^property[+].code = #grad4
* #10065815 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
* #10065815 ^property[+].code = #grad5
* #10065815 ^property[=].valueString = "Tod"
* #10020100 "Hüftfraktur"
* #10020100 ^designation[+].language = #de-DE
* #10020100 ^designation[=].value = "Hüftbruch"
* #10020100 ^designation[+].language = #de-DE
* #10020100 ^designation[=].value = "Schenkelhalsfraktur"
* #10020100 ^definition = "Der Befund einer traumatischen Verletzung der Hüfte, durch den die Kontinuität entweder des Hüftkopfes, des Hüfthalses, des intertrochantären oder subtrochantären Bereiches gebrochen ist."
* #10020100 ^property[+].code = #grad3
* #10020100 ^property[=].valueString = "Schwerer Schmerz; Krankenhauseinweisung zur Schmerzkontrolle angezeigt (z. B. Traktion); operative Intervention angezeigt"
* #10020100 ^property[+].code = #grad4
* #10020100 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Symptome assoziiert mit neurovaskulärer Beeinträchtigung"
* #10020100 ^property[+].code = #grad5
* #10020100 ^property[=].valueString = "Tod"
* #10059095 "Intestinales Stomainsuffizienz"
* #10059095 ^designation[+].language = #de-DE
* #10059095 ^designation[=].value = "Anastomoseninsuffizienz Enterostomie"
* #10059095 ^designation[+].language = #de-DE
* #10059095 ^designation[=].value = "Komplikation einer intestinalen Stomaanlage"
* #10059095 ^definition = "Der Befund des Austritts von Inhalt an einem intestinalen Stoma (chirurgische hergestellte Öffnung an der Körperoberfläche)."
* #10059095 ^property[+].code = #grad3
* #10059095 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10059095 ^property[+].code = #grad4
* #10059095 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10059095 ^property[+].code = #grad5
* #10059095 ^property[=].valueString = "Tod"
* #10065745 "Intestinaler Stomaprolaps"
* #10065745 ^designation[+].language = #de-DE
* #10065745 ^designation[=].value = "Vorfall des künstlichen Darmausganges"
* #10065745 ^designation[+].language = #de-DE
* #10065745 ^designation[=].value = "Vorfall / Prolaps intestinale Stomaanlage"
* #10065745 ^definition = "Der Befund eines intestinalen Stomavorfalls (chirurgisch hergestellte Öffnung an der Körperoberfläche) über das Niveau der Bauchoberfläche."
* #10065745 ^property[+].code = #grad3
* #10065745 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt; Einschränkung der selbstversorgenden ATL"
* #10065745 ^property[+].code = #grad4
* #10065745 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065745 ^property[+].code = #grad5
* #10065745 ^property[=].valueString = "Tod"
* #10059094 "Intestinale Stomaobstruktion"
* #10059094 ^designation[+].language = #de-DE
* #10059094 ^designation[=].value = "Ausflussbehinderung / Verschluss intestinales Stoma"
* #10059094 ^designation[+].language = #de-DE
* #10059094 ^designation[=].value = "Stomaausflussbehinderung"
* #10059094 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte eines intestinalen Stoma."
* #10059094 ^property[+].code = #grad3
* #10059094 ^property[=].valueString = "Schwerwiegende Symptome; i. V. Flüssigkeiten; Sondenernährung oder TPE für >24h; elektive operative Intervention angezeigt"
* #10059094 ^property[+].code = #grad4
* #10059094 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10059094 ^property[+].code = #grad5
* #10059094 ^property[=].valueString = "Tod"
* #10049468 "Intestinale Stomablutung"
* #10049468 ^designation[+].language = #de-DE
* #10049468 ^designation[=].value = "Intestinale Stomahämorrhagie"
* #10049468 ^designation[+].language = #de-DE
* #10049468 ^designation[=].value = "Stomablutungskomplikation"
* #10049468 ^definition = "Der Befund eines Blutaustritts aus einem intestinalen Stoma."
* #10049468 ^property[+].code = #grad3
* #10049468 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10049468 ^property[+].code = #grad4
* #10049468 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10049468 ^property[+].code = #grad5
* #10049468 ^property[=].valueString = "Tod"
* #10065826 "Intraoperative Arterienverletzung"
* #10065826 ^designation[+].language = #de-DE
* #10065826 ^designation[=].value = "Intraoperative Schlagaderverletzung"
* #10065826 ^designation[+].language = #de-DE
* #10065826 ^designation[=].value = "Arterienschädigung, intraoperativ"
* #10065826 ^definition = "Der Befund der Verletzung/Schädigung einer Arterie während einer chirurgischen Prozedur."
* #10065826 ^property[+].code = #grad3
* #10065826 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065826 ^property[+].code = #grad4
* #10065826 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065826 ^property[+].code = #grad5
* #10065826 ^property[=].valueString = "Tod"
* #10055298 "Intraoperative Blutung"
* #10055298 ^designation[+].language = #de-DE
* #10055298 ^designation[=].value = "Intraoperative Hämorrhagie"
* #10055298 ^definition = "Der Befund einer unkontrollierten Blutung während einer chirurgischen Prozedur."
* #10055298 ^property[+].code = #grad3
* #10055298 ^property[=].valueString = "Postoperative radiologische, endoskopische oder operative Intervention angezeigt"
* #10055298 ^property[+].code = #grad4
* #10055298 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10055298 ^property[+].code = #grad5
* #10055298 ^property[=].valueString = "Tod"
* #10065843 "Intraoperative Herzverletzung"
* #10065843 ^designation[+].language = #de-DE
* #10065843 ^designation[=].value = "Intraoperative kardiale Verletzung"
* #10065843 ^designation[+].language = #de-DE
* #10065843 ^designation[=].value = "intraoperative Herzschädigung"
* #10065843 ^definition = "Der Befund einer Verletzung/Schädigung des Herzens während einer chirurgischen Prozedur."
* #10065843 ^property[+].code = #grad3
* #10065843 ^property[=].valueString = "Primäre Wiederherstellung eines(r) verletzten Organs/Struktur angezeigt."
* #10065843 ^property[+].code = #grad4
* #10065843 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065843 ^property[+].code = #grad5
* #10065843 ^property[=].valueString = "Tod"
* #10065834 "Intraoperative endokrine Verletzung"
* #10065834 ^designation[+].language = #de-DE
* #10065834 ^designation[=].value = "Intraoperative Drüsenverletzung"
* #10065834 ^designation[+].language = #de-DE
* #10065834 ^designation[=].value = "intraoperative Drüsenschädigung"
* #10065834 ^definition = "Der Befund der Verletzung / Schädigung einer endokrinen Drüse während einer chirurgischen Prozedur."
* #10065834 ^property[+].code = #grad3
* #10065834 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065834 ^property[+].code = #grad4
* #10065834 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065834 ^property[+].code = #grad5
* #10065834 ^property[=].valueString = "-"
* #10065825 "Intraoperative gastrointestinale Verletzung"
* #10065825 ^designation[+].language = #de-DE
* #10065825 ^designation[=].value = "Intraoperative Darmverletzung"
* #10065825 ^designation[+].language = #de-DE
* #10065825 ^designation[=].value = "intraoperative Darmschädigung"
* #10065825 ^definition = "Der Befund der Verletzung/Schädigung des gastrointestinalen Systems während einer chirurgischen Prozedur."
* #10065825 ^property[+].code = #grad3
* #10065825 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065825 ^property[+].code = #grad4
* #10065825 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065825 ^property[+].code = #grad5
* #10065825 ^property[=].valueString = "Tod"
* #10065831 "Intraoperative Mammaverletzung"
* #10065831 ^designation[+].language = #de-DE
* #10065831 ^designation[=].value = "Intraoperative Brustverletzung"
* #10065831 ^designation[+].language = #de-DE
* #10065831 ^designation[=].value = "Intraoperative Mammaschädigung"
* #10065831 ^definition = "Der Befund der Verletzung/Schädigung des Mammaparenchyms während einer chirurgischen Prozedur."
* #10065831 ^property[+].code = #grad3
* #10065831 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065831 ^property[+].code = #grad4
* #10065831 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065831 ^property[+].code = #grad5
* #10065831 ^property[=].valueString = "Tod"
* #10065844 "Intraoperative Ohrverletzung"
* #10065844 ^designation[+].language = #de-DE
* #10065844 ^designation[=].value = "Intraoperative Ohrschädigung"
* #10065844 ^designation[+].language = #de-DE
* #10065844 ^designation[=].value = "Intraoperative aurikuläre Verletzung"
* #10065844 ^definition = "Der Befund der Verletzung/Schädigung des Ohres während einer chirurgischen Prozedur."
* #10065844 ^property[+].code = #grad3
* #10065844 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd (z. B. beeinträchtigtes Hören; beeinträchtigtes Gleichgewicht)"
* #10065844 ^property[+].code = #grad4
* #10065844 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065844 ^property[+].code = #grad5
* #10065844 ^property[=].valueString = "Tod"
* #10065827 "Intraoperative hepatobiliäre Verletzung"
* #10065827 ^designation[+].language = #de-DE
* #10065827 ^designation[=].value = "Intraoperative Verletzung der Leber und/oder Gallenwege"
* #10065827 ^designation[+].language = #de-DE
* #10065827 ^designation[=].value = "i. o. hepatobiliäre Schädigung"
* #10065827 ^definition = "Der Befund der Verletzung/Schädigung des hepatischen Parenchyms und/oder der Gallengänge während einer chirurgischen Prozedur."
* #10065827 ^property[+].code = #grad3
* #10065827 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065827 ^property[+].code = #grad4
* #10065827 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065827 ^property[+].code = #grad5
* #10065827 ^property[=].valueString = "Tod"
* #10065842 "Intraoperative Kopf/ Halsverletzung"
* #10065842 ^designation[+].language = #de-DE
* #10065842 ^designation[=].value = "Intraoperative Schädigung im Bereich des Kopfes / Halses"
* #10065842 ^definition = "Der Befund der Verletzung/Schädigung des Kopfes und Halses während einer chirurgischen Prozedur."
* #10065842 ^property[+].code = #grad3
* #10065842 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
* #10065842 ^property[+].code = #grad4
* #10065842 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065842 ^property[+].code = #grad5
* #10065842 ^property[=].valueString = "Tod"
* #10065829 "Intraoperative Muskel/ Skelettverletzung"
* #10065829 ^designation[+].language = #de-DE
* #10065829 ^designation[=].value = "Intraoperative Muskel- / Skelettschädigung"
* #10065829 ^definition = "Der Befund der Verletzung/Schädigung des muskuloskelettären Systems während einer chirurgischen Prozedur."
* #10065829 ^property[+].code = #grad3
* #10065829 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
* #10065829 ^property[+].code = #grad4
* #10065829 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065829 ^property[+].code = #grad5
* #10065829 ^property[=].valueString = "Tod"
* #10065830 "Intraoperative neurologische Verletzung"
* #10065830 ^designation[+].language = #de-DE
* #10065830 ^designation[=].value = "intraoperative Nervenverletzung"
* #10065830 ^designation[+].language = #de-DE
* #10065830 ^designation[=].value = "intraoperative Nervenschädigung"
* #10065830 ^definition = "Der Befund der Verletzung/Schädigung des Nervensystems während einer chirurgischen Prozedur."
* #10065830 ^property[+].code = #grad3
* #10065830 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065830 ^property[+].code = #grad4
* #10065830 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065830 ^property[+].code = #grad5
* #10065830 ^property[=].valueString = "Tod"
* #10065841 "Intraoperative okuläre Verletzung"
* #10065841 ^designation[+].language = #de-DE
* #10065841 ^designation[=].value = "Intraoperative Augenverletzung"
* #10065841 ^designation[+].language = #de-DE
* #10065841 ^designation[=].value = "i. o. Augenschädigung"
* #10065841 ^definition = "Der Befund der Verletzung / Schädigung des Auges während einer chirurgischen Prozedur."
* #10065841 ^property[+].code = #grad3
* #10065841 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065841 ^property[+].code = #grad4
* #10065841 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065841 ^property[+].code = #grad5
* #10065841 ^property[=].valueString = "Tod"
* #10065845 "Intraoperative renale Verletzung"
* #10065845 ^designation[+].language = #de-DE
* #10065845 ^designation[=].value = "Intraoperative Nierenverletzung"
* #10065845 ^designation[+].language = #de-DE
* #10065845 ^designation[=].value = "intraoperative Nierenschädigung"
* #10065845 ^definition = "Der Befund der Verletzung/Schädigung der Niere während einer chirurgischen Prozedur."
* #10065845 ^property[+].code = #grad3
* #10065845 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
* #10065845 ^property[+].code = #grad4
* #10065845 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065845 ^property[+].code = #grad5
* #10065845 ^property[=].valueString = "Tod"
* #10065840 "Intraoperative Reproduktionsorganverletzung"
* #10065840 ^designation[+].language = #de-DE
* #10065840 ^designation[=].value = "Intraoperative Schädigung im Bereich des Reproduktionstraktes"
* #10065840 ^designation[+].language = #de-DE
* #10065840 ^designation[=].value = "intraoperative Genitalverletzung"
* #10065840 ^definition = "Der Befund der Verletzung/Schädigung der Reproduktionsorgane während einer chirurgischen Prozedur."
* #10065840 ^property[+].code = #grad3
* #10065840 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065840 ^property[+].code = #grad4
* #10065840 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065840 ^property[+].code = #grad5
* #10065840 ^property[=].valueString = "Tod"
* #10065832 "Intraoperative respiratorische Verletzung"
* #10065832 ^designation[+].language = #de-DE
* #10065832 ^designation[=].value = "Intraoperative Schädigung der Respirationsorgane"
* #10065832 ^designation[+].language = #de-DE
* #10065832 ^designation[=].value = "intraoperative Atemwegsverletzung"
* #10065832 ^definition = "Der Befund der Verletzung/Schädigung des Atemsystems während einer chirurgischen Prozedur."
* #10065832 ^property[+].code = #grad3
* #10065832 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065832 ^property[+].code = #grad4
* #10065832 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065832 ^property[+].code = #grad5
* #10065832 ^property[=].valueString = "Tod"
* #10065846 "Intraoperative Hautverletzung"
* #10065846 ^designation[+].language = #de-DE
* #10065846 ^designation[=].value = "Intraoperative Hautschädigung"
* #10065846 ^designation[+].language = #de-DE
* #10065846 ^designation[=].value = "Kutane Verletzung"
* #10065846 ^designation[+].language = #de-DE
* #10065846 ^designation[=].value = "Kutisverletzung"
* #10065846 ^designation[+].language = #de-DE
* #10065846 ^designation[=].value = "Kutisschädigung"
* #10065846 ^definition = "Der Befund der Verletzung/Schädigung der Haut während einer chirurgischen Prozedur."
* #10065846 ^property[+].code = #grad3
* #10065846 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065846 ^property[+].code = #grad4
* #10065846 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065846 ^property[+].code = #grad5
* #10065846 ^property[=].valueString = "Tod"
* #10065847 "Intraoperative splenische Verletzung"
* #10065847 ^designation[+].language = #de-DE
* #10065847 ^designation[=].value = "Intraoperative Milzverletzung"
* #10065847 ^definition = "Der Befund der Verletzung/Schädigung der Milz während einer chirurgischen Prozedur."
* #10065847 ^property[+].code = #grad3
* #10065847 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs/Struktur angezeigt; behindernd"
* #10065847 ^property[+].code = #grad4
* #10065847 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065847 ^property[+].code = #grad5
* #10065847 ^property[=].valueString = "Tod"
* #10065828 "Intraoperative Verletzung der Harnorgane"
* #10065828 ^designation[+].language = #de-DE
* #10065828 ^designation[=].value = "Intraoperative Schädigung der ableitenden Harnwege"
* #10065828 ^designation[+].language = #de-DE
* #10065828 ^designation[=].value = "i. o. Schädigung des Harntraktes"
* #10065828 ^definition = "Der Befund der Verletzung/Schädigung des Harnsystems während einer chirurgischen Prozedur."
* #10065828 ^property[+].code = #grad3
* #10065828 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
* #10065828 ^property[+].code = #grad4
* #10065828 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065828 ^property[+].code = #grad5
* #10065828 ^property[=].valueString = "Tod"
* #10065848 "Intraoperative venöse Verletzung"
* #10065848 ^designation[+].language = #de-DE
* #10065848 ^designation[=].value = "Intraoperative Schädigung einer Vene"
* #10065848 ^designation[+].language = #de-DE
* #10065848 ^designation[=].value = "intraoperative Schädigung venöses System"
* #10065848 ^definition = "Der Befund der Verletzung/Schädigung einer Vene während einer chirurgischen Prozedur."
* #10065848 ^property[+].code = #grad3
* #10065848 ^property[=].valueString = "Komplette Resektion oder Resektion eines(r) verletzten Organs / Struktur angezeigt; behindernd"
* #10065848 ^property[+].code = #grad4
* #10065848 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065848 ^property[+].code = #grad5
* #10065848 ^property[=].valueString = "Tod"
* #10065849 "Jugularvenenverletzung"
* #10065849 ^designation[+].language = #de-DE
* #10065849 ^designation[=].value = "Drosselvenenverletzung"
* #10065849 ^designation[+].language = #de-DE
* #10065849 ^designation[=].value = "V. jugularisVerletzung"
* #10065849 ^designation[+].language = #de-DE
* #10065849 ^designation[=].value = "Jugularvenenschädigung"
* #10065849 ^definition = "Der Befund einer Verletzung/Schädigung der Jugularvene (Drosselvene)."
* #10065849 ^property[+].code = #grad3
* #10065849 ^property[=].valueString = "Symptomatisch; Einschränkung der selbstversorgenden ATL; behindernd; Wiederherstellung oder Revision angezeigt"
* #10065849 ^property[+].code = #grad4
* #10065849 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10065849 ^property[+].code = #grad5
* #10065849 ^property[=].valueString = "Tod"
* #10022161 "Karotisverletzung/Schädigung"
* #10022161 ^designation[+].language = #de-DE
* #10022161 ^designation[=].value = "Halsschlagaderverletzung"
* #10022161 ^designation[+].language = #de-DE
* #10022161 ^designation[=].value = "Halsschlagader schädigung"
* #10022161 ^designation[+].language = #de-DE
* #10022161 ^designation[=].value = "Carotisverletzung"
* #10022161 ^definition = "Der Befund einer Verletzung/Schädigung der Karotisarterie (A. carotis)."
* #10022161 ^property[+].code = #grad3
* #10022161 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL (z. B. transiente zerebrale Ischämie); Wiederherstellung oder Revision angezeigt"
* #10022161 ^property[+].code = #grad4
* #10022161 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10022161 ^property[+].code = #grad5
* #10022161 ^property[=].valueString = "Tod"
* #10002544 "Knöchelfraktur"
* #10002544 ^designation[+].language = #de-DE
* #10002544 ^designation[=].value = "Knöchelbruch"
* #10002544 ^definition = "Der Befund eines Knöchelgelenksschadens, gekennzeichnet durch einen Bruch des ununterbrochenen Zusammenhangs (Kontinuität) der Knöchelbeine. Symptome schließen deutliche Beschwerden, Schwellung und Bewegungsschwierigkeiten des betroffenen Beines und Fußes ein."
* #10002544 ^property[+].code = #grad3
* #10002544 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; elektive Chirurgie angezeigt"
* #10002544 ^property[+].code = #grad4
* #10002544 ^property[=].valueString = "-"
* #10002544 ^property[+].code = #grad5
* #10002544 ^property[=].valueString = "-"
* #10062548 "Luftröhrenblutung"
* #10062548 ^designation[+].language = #de-DE
* #10062548 ^designation[=].value = "Trachealblutung"
* #10062548 ^definition = "Der Befund einer Blutung aus der Luftröhre."
* #10062548 ^property[+].code = #grad3
* #10062548 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10062548 ^property[+].code = #grad4
* #10062548 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10062548 ^property[+].code = #grad5
* #10062548 ^property[=].valueString = "Tod"
* #10044291 "Luftröhrenobstruktion"
* #10044291 ^designation[+].language = #de-DE
* #10044291 ^designation[=].value = "Tracheale Obstruktion"
* #10044291 ^designation[+].language = #de-DE
* #10044291 ^designation[=].value = "Luftröhrenverschluss"
* #10044291 ^definition = "Der Befund einer Blockierung des Lumens der Trachea."
* #10044291 ^property[+].code = #grad3
* #10044291 ^property[=].valueString = "Stridor; radiologische oder endoskopische Intervention angezeigt (z. B. Stent, Laser); Einschränkung der selbstversorgenden ATL"
* #10044291 ^property[+].code = #grad4
* #10044291 ^property[=].valueString = "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringlich angezeigt (z. B. Tracheotomie oder Intubation)"
* #10044291 ^property[+].code = #grad5
* #10044291 ^property[=].valueString = "Tod"
* #10050457 "Pankreatische Anastomoseninsuffizienz"
* #10050457 ^designation[+].language = #de-DE
* #10050457 ^designation[=].value = "Pankreasanastomoseninsuffizienz"
* #10050457 ^designation[+].language = #de-DE
* #10050457 ^designation[=].value = "Pankreasanastomosenleck"
* #10050457 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens einer pankreatischen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10050457 ^property[+].code = #grad3
* #10050457 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10050457 ^property[+].code = #grad4
* #10050457 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10050457 ^property[+].code = #grad5
* #10050457 ^property[=].valueString = "Tod"
* #10065705 "Pharyngeale Anastomoseninsuffizienz"
* #10065705 ^designation[+].language = #de-DE
* #10065705 ^designation[=].value = "Pharynxanastomoseninsuffizienz"
* #10065705 ^definition = "Der Befund einer Undichtigkeit aufgrund Versagens einer pharyngealen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065705 ^property[+].code = #grad3
* #10065705 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065705 ^property[+].code = #grad4
* #10065705 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065705 ^property[+].code = #grad5
* #10065705 ^property[=].valueString = "Tod"
* #10055322 "Postoperative Blutung"
* #10055322 ^designation[+].language = #de-DE
* #10055322 ^designation[=].value = "Postoperative Hämorrhagie"
* #10055322 ^designation[+].language = #de-DE
* #10055322 ^designation[=].value = "Nachblutung, a. n. e."
* #10055322 ^definition = "Der Befund einer Blutung, die nach einer chirurgischen Prozedur auftritt."
* #10055322 ^property[+].code = #grad3
* #10055322 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10055322 ^property[+].code = #grad4
* #10055322 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10055322 ^property[+].code = #grad5
* #10055322 ^property[=].valueString = "Tod"
* #10056745 "Postoperative Thoraxprozedurkomplikation"
* #10056745 ^designation[+].language = #de-DE
* #10056745 ^designation[=].value = "p. o. Komplikation bei Thoraxprozedur"
* #10056745 ^definition = "Der Befund einer vorher nicht dokumentierten Problems, das nach einer Thoraxprozedur auftritt."
* #10056745 ^property[+].code = #grad3
* #10056745 ^property[=].valueString = "Extubiert > 24-72 h postoperativ, aber vorher Tracheotomie angezeigt"
* #10056745 ^property[+].code = #grad4
* #10056745 ^property[=].valueString = "Lebensbedrohliche Atemwegsbeeinträchtigung; dringliche Intervention angezeigt (z. B. Tracheotomie oder Intubation)"
* #10056745 ^property[+].code = #grad5
* #10056745 ^property[=].valueString = "Tod"
* #10006504 "Quetschung"
* #10006504 ^designation[+].language = #de-DE
* #10006504 ^designation[=].value = "Prellung"
* #10006504 ^designation[+].language = #de-DE
* #10006504 ^designation[=].value = "Kontusion"
* #10006504 ^definition = "Der Befund einer Weichgewebe oder Knochenverletzung, gekennzeichnet durch Einsickern von Blut in das umgebende Gewebe."
* #10006504 ^property[+].code = #grad3
* #10006504 ^property[=].valueString = "-"
* #10006504 ^property[+].code = #grad4
* #10006504 ^property[=].valueString = "-"
* #10006504 ^property[+].code = #grad5
* #10006504 ^property[=].valueString = "-"
* #10065803 "Renale Anastomoseninsuffizienz"
* #10065803 ^designation[+].language = #de-DE
* #10065803 ^designation[=].value = "Renales Anastomosenleck"
* #10065803 ^designation[+].language = #de-DE
* #10065803 ^designation[=].value = "Nierenanastomoseninsuffizienz"
* #10065803 ^definition = "Der Befund des Austritts von Urin aufgrund des Versagens einer Nierenanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065803 ^property[+].code = #grad3
* #10065803 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065803 ^property[+].code = #grad4
* #10065803 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065803 ^property[+].code = #grad5
* #10065803 ^property[=].valueString = "Tod"
* #10065894 "Rektale Anastomoseninsuffizienz"
* #10065894 ^designation[+].language = #de-DE
* #10065894 ^designation[=].value = "Rektales Anastomosenleck"
* #10065894 ^designation[+].language = #de-DE
* #10065894 ^designation[=].value = "Rektumanastomoseninsuffizienz"
* #10065894 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens einer rektalen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065894 ^property[+].code = #grad3
* #10065894 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065894 ^property[+].code = #grad4
* #10065894 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065894 ^property[+].code = #grad5
* #10065894 ^property[=].valueString = "Tod"
* #10065888 "Samenleiteranastomoseninsuffizienz"
* #10065888 ^designation[+].language = #de-DE
* #10065888 ^designation[=].value = "Vas deferens Anastomoseninsuffizienz/leck"
* #10065888 ^definition = "Der Befund einer Undichtigkeit aufgrund Versagens einer Samenleiteranastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065888 ^property[+].code = #grad3
* #10065888 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive OP angezeigt"
* #10065888 ^property[+].code = #grad4
* #10065888 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
* #10065888 ^property[+].code = #grad5
* #10065888 ^property[=].valueString = "Tod"
* #10065897 "Samenstranganastomoseninsuffizienz"
* #10065897 ^designation[+].language = #de-DE
* #10065897 ^designation[=].value = "Samenstranganastomosenleck"
* #10065897 ^designation[+].language = #de-DE
* #10065897 ^designation[=].value = "Funiculus spermaticusinsuffizienz"
* #10065897 ^definition = "Der Befund einer Undichtigkeit aufgrund Versagens einer Samenstranganastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065897 ^property[+].code = #grad3
* #10065897 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065897 ^property[+].code = #grad4
* #10065897 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065897 ^property[+].code = #grad5
* #10065897 ^property[=].valueString = "Tod"
* #10040102 "Serom"
* #10040102 ^designation[+].language = #de-DE
* #10040102 ^designation[=].value = "-"
* #10040102 ^definition = "Der Befund einer tumorähnlichen Ansammlung von Serum in Geweben."
* #10040102 ^property[+].code = #grad3
* #10040102 ^property[=].valueString = "Symptomatisch; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10040102 ^property[+].code = #grad4
* #10040102 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10040102 ^property[+].code = #grad5
* #10040102 ^property[=].valueString = "Tod"
* #10061103 "Strahlendermatitis"
* #10061103 ^designation[+].language = #de-DE
* #10061103 ^designation[=].value = "Epitheliolyse"
* #10061103 ^designation[+].language = #de-DE
* #10061103 ^designation[=].value = "Kontaktblutung"
* #10061103 ^designation[+].language = #de-DE
* #10061103 ^designation[=].value = "Erythem"
* #10061103 ^definition = "Der Befund einer kutanen Entzündungsreaktion, die aufgrund einer Exposition gegenüber einem biologisch effektiven Niveau ionisierender Strahlung auftritt."
* #10061103 ^property[+].code = #grad3
* #10061103 ^property[=].valueString = "Feuchte Desquamation außerhalb von Hautfalten, erhöhte Blutungsneigung durch geringes Trauma oder Abschürfung"
* #10061103 ^property[+].code = #grad4
* #10061103 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Hautnekrose oder Ulzeration der gesamten Kutis spontane Blutungen des betroffenen Gebietes; Hauttransplantation indiziert"
* #10061103 ^property[+].code = #grad5
* #10061103 ^property[=].valueString = "Tod"
* #10065961 "Speiseröhrenanastomoseninsuffizienz"
* #10065961 ^designation[+].language = #de-DE
* #10065961 ^designation[=].value = "Ösophageale Anastomoseninsuffizienz"
* #10065961 ^designation[+].language = #de-DE
* #10065961 ^designation[=].value = "Speiseröhrenanastomosenleck"
* #10065961 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens der Ösophagusanastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065961 ^property[+].code = #grad3
* #10065961 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065961 ^property[+].code = #grad4
* #10065961 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065961 ^property[+].code = #grad5
* #10065961 ^property[=].valueString = "Tod"
* #10042127 "Stomaulkus"
* #10042127 ^designation[+].language = #de-DE
* #10042127 ^designation[=].value = "Stomageschwür"
* #10042127 ^designation[+].language = #de-DE
* #10042127 ^designation[=].value = "Gastroenterostomieulcus"
* #10042127 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene, entzündliche und nekrotischerosive Läsion der jejunalen Schleimhautoberfläche in der Nähe der Anastomosenlokalisation nach Anlage einer Gastroenterostomie."
* #10042127 ^property[+].code = #grad3
* #10042127 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10042127 ^property[+].code = #grad4
* #10042127 ^property[=].valueString = "-"
* #10042127 ^property[+].code = #grad5
* #10042127 ^property[=].valueString = "-"
* #10016173 "Sturz"
* #10016173 ^designation[+].language = #de-DE
* #10016173 ^designation[=].value = "Fall"
* #10016173 ^definition = "Der Befund einer plötzlichen Bewegung nach unten, gewöhnlich mit dem Resultat einer Verletzung."
* #10016173 ^property[+].code = #grad3
* #10016173 ^property[=].valueString = "Krankenhauseinweisung angezeigt"
* #10016173 ^property[+].code = #grad4
* #10016173 ^property[=].valueString = "-"
* #10016173 ^property[+].code = #grad5
* #10016173 ^property[=].valueString = "-"
* #10065749 "Tracheostomablutung"
* #10065749 ^designation[+].language = #de-DE
* #10065749 ^designation[=].value = "Tracheostomahämorrhagie"
* #10065749 ^designation[+].language = #de-DE
* #10065749 ^designation[=].value = "Blutung im Bereich des Tracheostoma"
* #10065749 ^definition = "Der Befund einer Blutung am Ort der Tracheostomie."
* #10065749 ^property[+].code = #grad3
* #10065749 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10065749 ^property[+].code = #grad4
* #10065749 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065749 ^property[+].code = #grad5
* #10065749 ^property[=].valueString = "Tod"
* #10065822 "Urostomaprolaps"
* #10065822 ^designation[+].language = #de-DE
* #10065822 ^designation[=].value = "Urostomavorfall"
* #10065822 ^designation[+].language = #de-DE
* #10065822 ^designation[=].value = "Vorfall künstlicher Harnausgang"
* #10065822 ^definition = "Der Befund einer Urostomaverlagerung."
* #10065822 ^property[+].code = #grad3
* #10065822 ^property[=].valueString = "Dysfunktionelles Stoma; elektive operative Intervention oder größere Stomarevision angezeigt"
* #10065822 ^property[+].code = #grad4
* #10065822 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10065822 ^property[+].code = #grad5
* #10065822 ^property[=].valueString = "Tod"
* #10065748 "Urostomablutung"
* #10065748 ^designation[+].language = #de-DE
* #10065748 ^designation[=].value = "Urostomahämorrhagie"
* #10065748 ^designation[+].language = #de-DE
* #10065748 ^designation[=].value = "Blutung im Bereich des  Urostomas"
* #10065748 ^definition = "Der Befund einer Blutung am Ort des Urostomas."
* #10065748 ^property[+].code = #grad3
* #10065748 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10065748 ^property[+].code = #grad4
* #10065748 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065748 ^property[+].code = #grad5
* #10065748 ^property[=].valueString = "Tod"
* #10065882 "Urostomaleck"
* #10065882 ^designation[+].language = #de-DE
* #10065882 ^designation[=].value = "Harnausgangsinsuffizienz"
* #10065882 ^designation[+].language = #de-DE
* #10065882 ^designation[=].value = "Urostomakomplikation"
* #10065882 ^designation[+].language = #de-DE
* #10065882 ^designation[=].value = "Urostomabehinderung"
* #10065882 ^definition = "Der Befund des Austritts von Inhalt aus einem Urostoma."
* #10065882 ^property[+].code = #grad3
* #10065882 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065882 ^property[+].code = #grad4
* #10065882 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
* #10065882 ^property[+].code = #grad5
* #10065882 ^property[=].valueString = "Tod"
* #10065883 "Urostomaobstruktion"
* #10065883 ^designation[+].language = #de-DE
* #10065883 ^designation[=].value = "Urostomabehinderung"
* #10065883 ^designation[+].language = #de-DE
* #10065883 ^designation[=].value = "Urostomaverschluss"
* #10065883 ^designation[+].language = #de-DE
* #10065883 ^designation[=].value = "Urostomablockade"
* #10065883 ^definition = "Der Befund der Obstruktion eines Urostomas."
* #10065883 ^property[+].code = #grad3
* #10065883 ^property[=].valueString = "Veränderte Organfunktion (z. B. Sepsis oder Hydronephrose, oder renale Dysfunktion); elektive operative Intervention angezeigt"
* #10065883 ^property[+].code = #grad4
* #10065883 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Organversagen; operative Intervention dringend angezeigt"
* #10065883 ^property[+].code = #grad5
* #10065883 ^property[=].valueString = "Tod"
* #10065885 "Urostomastenose"
* #10065885 ^designation[+].language = #de-DE
* #10065885 ^designation[=].value = "Harnausgangsinsuffizienz"
* #10065885 ^designation[+].language = #de-DE
* #10065885 ^designation[=].value = "Urostomaverengung"
* #10065885 ^designation[+].language = #de-DE
* #10065885 ^designation[=].value = "Urostomaabflusskomplikation"
* #10065885 ^definition = "Der Befund einer Verengung des Urostomas."
* #10065885 ^property[+].code = #grad3
* #10065885 ^property[=].valueString = "Symptomatisch (z. B. Hydronephrose oder renale Dysfunktion); elektive operative Intervention angezeigt"
* #10065885 ^property[+].code = #grad4
* #10065885 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065885 ^property[+].code = #grad5
* #10065885 ^property[=].valueString = "Tod"
* #10065886 "Uterine(s) Anastomoseninsuffizienz"
* #10065886 ^designation[+].language = #de-DE
* #10065886 ^designation[=].value = "Anastomosenleck des Uterus"
* #10065886 ^designation[+].language = #de-DE
* #10065886 ^designation[=].value = "Uterusanastomoseninsuffizienz"
* #10065886 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens einer uterinen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065886 ^property[+].code = #grad3
* #10065886 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065886 ^property[+].code = #grad4
* #10065886 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
* #10065886 ^property[+].code = #grad5
* #10065886 ^property[=].valueString = "Tod"
* #10046810 "Uterine Perforation"
* #10046810 ^designation[+].language = #de-DE
* #10046810 ^designation[=].value = "Uterusdurchbruch"
* #10046810 ^designation[+].language = #de-DE
* #10046810 ^designation[=].value = "Uterusruptur"
* #10046810 ^designation[+].language = #de-DE
* #10046810 ^designation[=].value = "Uterusperforation"
* #10046810 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Uteruswand."
* #10046810 ^property[+].code = #grad3
* #10046810 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10046810 ^property[+].code = #grad4
* #10046810 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt (z. B. Organresektion)"
* #10046810 ^property[+].code = #grad5
* #10046810 ^property[=].valueString = "Tod"
* #10065887 "Vaginale(s) Anastomoseninsuffizienz"
* #10065887 ^designation[+].language = #de-DE
* #10065887 ^designation[=].value = "Vaginaanastomoseninsuffizienz"
* #10065887 ^designation[+].language = #de-DE
* #10065887 ^designation[=].value = "Vaginales Anastomosenleck"
* #10065887 ^definition = "Der Befund einer Undichtigkeit aufgrund des Versagens einer vaginalen Anastomose (chirurgische Verbindung zweier getrennter anatomischer Strukturen)."
* #10065887 ^property[+].code = #grad3
* #10065887 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065887 ^property[+].code = #grad4
* #10065887 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringend angezeigt."
* #10065887 ^property[+].code = #grad5
* #10065887 ^property[=].valueString = "Tod"
* #10022356 "Vena cava superior Verletzung"
* #10022356 ^designation[+].language = #de-DE
* #10022356 ^designation[=].value = "Oberen Hohlvenenschädigung"
* #10022356 ^designation[+].language = #de-DE
* #10022356 ^designation[=].value = "Vena cavasuperior Verletzung"
* #10022356 ^definition = "Der Befund einer Verletzung/Schädigung der Vena cava superior (obere Hohlvene)."
* #10022356 ^property[+].code = #grad3
* #10022356 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; behindernd; Wiederherstellung oder Revision angezeigt"
* #10022356 ^property[+].code = #grad4
* #10022356 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt"
* #10022356 ^property[+].code = #grad5
* #10022356 ^property[=].valueString = "Tod"
* #10047228 "Venenverletzung"
* #10047228 ^designation[+].language = #de-DE
* #10047228 ^designation[=].value = "Venenschädigung"
* #10047228 ^designation[+].language = #de-DE
* #10047228 ^designation[=].value = "Venenschaden"
* #10047228 ^definition = "Der Befund der Verletzung/Schädigung einer Vene."
* #10047228 ^property[+].code = #grad3
* #10047228 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; Reparatur oder Revision angezeigt; behindernd"
* #10047228 ^property[+].code = #grad4
* #10047228 ^property[=].valueString = "Lebensbedrohliche Folgen; Nachweis einer Endorganschädigung; operative Intervention dringlich angezeigt"
* #10047228 ^property[+].code = #grad5
* #10047228 ^property[=].valueString = "Tod"
* #10006634 "Verbrennung"
* #10006634 ^designation[+].language = #de-DE
* #10006634 ^designation[=].value = "Thermische Schädigung"
* #10006634 ^definition = "Der Befund einer beschädigten Integrität einer anatomischen Lokalisation durch eine unerwünschte thermische Einwirkung. Verbrennungen können durch Exposition gegenüber chemischen Substanzen, direkter Hitze, Elektrizität, Flammen und Strahlung verursacht werden. Das Ausmaß der Schädigung hängt von der Dauer und Intensität der Exposition und der Zeit bis zur Verfügungstellung der Intervention ab."
* #10006634 ^property[+].code = #grad3
* #10006634 ^property[=].valueString = "Mäßiges bis umfassendes Debridement oder Rekonstruktion angezeigt"
* #10006634 ^property[+].code = #grad4
* #10006634 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10006634 ^property[+].code = #grad5
* #10006634 ^property[=].valueString = "Tod"
* #10022213 "Vena cava inferior Verletzung"
* #10022213 ^designation[+].language = #de-DE
* #10022213 ^designation[=].value = "Untere Hohlvenenverletzung"
* #10022213 ^designation[+].language = #de-DE
* #10022213 ^designation[=].value = "Vena Cava inferior Schädigung"
* #10022213 ^definition = "Der Befund einer Verletzung/Schädigung der Vena cava inferior (untere Hohlvene)."
* #10022213 ^property[+].code = #grad3
* #10022213 ^property[=].valueString = "-"
* #10022213 ^property[+].code = #grad4
* #10022213 ^property[=].valueString = "Lebensbedrohliche Folgen;  Intervention dringlich angezeigt"
* #10022213 ^property[+].code = #grad5
* #10022213 ^property[=].valueString = "Tod"
* #10041569 "Wirbelsäulenfraktur"
* #10041569 ^designation[+].language = #de-DE
* #10041569 ^designation[=].value = "Spinale Fraktur"
* #10041569 ^definition = "Der Befund einer traumatischen Verletzung der Wirbelsäule, bei der die Kontinuität eines Wirbelknochens unterbrochen ist."
* #10041569 ^property[+].code = #grad3
* #10041569 ^property[=].valueString = "Schwere Rückenschmerzen; Krankenhauseinweisung oder Intervention zur Schmerzkontrolle angezeigt (z. B. Vertebroplasty);  Einschränkung der selbstversorgenden ATL"
* #10041569 ^property[+].code = #grad4
* #10041569 ^property[=].valueString = "Lebensbedrohliche Folgen; operative Intervention dringlich angezeigt."
* #10041569 ^property[+].code = #grad5
* #10041569 ^property[=].valueString = "Tod"
* #10053692 "Wundkomplikation"
* #10053692 ^designation[+].language = #de-DE
* #10053692 ^designation[=].value = "Wundheilungsstörung"
* #10053692 ^designation[+].language = #de-DE
* #10053692 ^designation[=].value = "Abszess, subfaszial"
* #10053692 ^definition = "Der Befund der Entwicklung eines neuen Problems am Ort einer bestehenden Wunde."
* #10053692 ^property[+].code = #grad3
* #10053692 ^property[=].valueString = "Hernie ohne Nachweis einer Einklemmung; fasziale Unterbrechung/Dehiszenz; primärer Wundverschluss oder Revision durch operative Intervention angezeigt"
* #10053692 ^property[+].code = #grad4
* #10053692 ^property[=].valueString = "Hernie mit Zeichen der Einklemmung; großer Rekonstruktionslappen, Transplantation, Resektion oder Amputation angezeigt"
* #10053692 ^property[+].code = #grad5
* #10053692 ^property[=].valueString = "Tod"
* #10048031 "Wunddehiszenz"
* #10048031 ^designation[+].language = #de-DE
* #10048031 ^designation[=].value = "Auseinanderweichen der Wundränder"
* #10048031 ^designation[+].language = #de-DE
* #10048031 ^designation[=].value = "Platzbauch"
* #10048031 ^designation[+].language = #de-DE
* #10048031 ^designation[=].value = "Nahtinsuffizienz, a. n. e."
* #10048031 ^designation[+].language = #de-DE
* #10048031 ^designation[=].value = "Wundheilungsstörung, s. c."
* #10048031 ^definition = "Der Befund des Auseinanderweichens der angenäherten (zusammengehörigen) Ränder einer chirurgischen Wunde."
* #10048031 ^property[+].code = #grad3
* #10048031 ^property[=].valueString = "Fasziale Unterbrechung oder Dehiszenz ohne Eviszeration; primärer Wundverschluss oder Revision durch operative Intervention angezeigt"
* #10048031 ^property[+].code = #grad4
* #10048031 ^property[=].valueString = "Lebensbedrohliche Folgen; symptomatische Hernie mit Zeichen der Einklemmung; fasziale Unterbrechung mit Eviszeration; großer Rekonstruktionslappen, Transplantation, Resektion oder Amputation angezeigt"
* #10048031 ^property[+].code = #grad5
* #10048031 ^property[=].valueString = "Tod"
* #10022117 "Verletzung, Vergiftung und prozedurale Komplikationen - Sonstige, zu spezifizieren"
* #10022117 ^designation[+].language = #de-DE
* #10022117 ^designation[=].value = "-"
* #10022117 ^definition = "Sonstige, zu spezifizierende Verletzungen, Vergiftungen und/oder prozedurale Komplikationen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10022117 ^property[+].code = #grad3
* #10022117 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10022117 ^property[+].code = #grad4
* #10022117 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10022117 ^property[+].code = #grad5
* #10022117 ^property[=].valueString = "Tod"
* #10005452 "ACTH (Corticotropin) im Blut erniedrigt"
* #10005452 ^designation[+].language = #de-DE
* #10005452 ^designation[=].value = "Corticotropin"
* #10005452 ^designation[+].language = #de-DE
* #10005452 ^designation[=].value = "Adrenocorticotropin"
* #10005452 ^designation[+].language = #de-DE
* #10005452 ^designation[=].value = "Adrenocorticotropes Hormon"
* #10005452 ^designation[+].language = #de-DE
* #10005452 ^designation[=].value = "ACTH erniedrigt"
* #10005452 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der einen erniedrigten Spiegel von ACTH (Corticotropin) in einer Blutprobe anzeigt."
* #10005452 ^property[+].code = #grad3
* #10005452 ^property[=].valueString = "Krankenhauseinweisung angezeigt"
* #10005452 ^property[+].code = #grad4
* #10005452 ^property[=].valueString = "-"
* #10005452 ^property[+].code = #grad5
* #10005452 ^property[=].valueString = "-"
* #10000636 "Aktivierte partielle Thromboplastinzeit verlängert"
* #10000636 ^designation[+].language = #de-DE
* #10000636 ^designation[=].value = "PTT"
* #10000636 ^designation[+].language = #de-DE
* #10000636 ^designation[=].value = "Partielle Thromboplastinzeit verlängert"
* #10000636 ^definition = "Eine anormales Labortestergebnis, bei dem die partielle Thromboplastinzeit größer als der Kontrollwert gefunden wird. Als ein möglicher Indikator einer Koagulopathie kann eine verlängerte partielle Thromboplastinzeit (PTT) bei verschiedenen Störungen und Krankheiten auftreten, sowohl primär als auch verbunden mit einer Intervention."
* #10000636 ^property[+].code = #grad3
* #10000636 ^property[=].valueString = ">2.5 x obere Normgrenze; Blutung"
* #10000636 ^property[+].code = #grad4
* #10000636 ^property[=].valueString = "-"
* #10000636 ^property[+].code = #grad5
* #10000636 ^property[=].valueString = "-"
* #10001551 "Alanin-Aminotransferase erhöht"
* #10001551 ^designation[+].language = #de-DE
* #10001551 ^designation[=].value = "ALAT"
* #10001551 ^designation[+].language = #de-DE
* #10001551 ^designation[=].value = "ALT"
* #10001551 ^designation[+].language = #de-DE
* #10001551 ^designation[=].value = "GPT erhöht"
* #10001551 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erhöhung des Spiegels der Alanin-Aminotransferase in einer Blutprobe anzeigt."
* #10001551 ^property[+].code = #grad3
* #10001551 ^property[=].valueString = ">5.0-20.0 x obere Normgrenze"
* #10001551 ^property[+].code = #grad4
* #10001551 ^property[=].valueString = ">20.0 x obere Normgrenze"
* #10001551 ^property[+].code = #grad5
* #10001551 ^property[=].valueString = "-"
* #10001675 "Alkalische Phosphatase erhöht"
* #10001675 ^designation[+].language = #de-DE
* #10001675 ^designation[=].value = "AP erhöht"
* #10001675 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erhöhung des Spiegels der Alkalischen Phosphatase in einer Blutprobe anzeigt."
* #10001675 ^property[+].code = #grad3
* #10001675 ^property[=].valueString = ">5.0-20.0 x obere Normgrenze"
* #10001675 ^property[+].code = #grad4
* #10001675 ^property[=].valueString = ">20.0 x obere Normgrenze"
* #10001675 ^property[+].code = #grad5
* #10001675 ^property[=].valueString = "-"
* #10003481 "Aspartat-Aminotransferase erhöht"
* #10003481 ^designation[+].language = #de-DE
* #10003481 ^designation[=].value = "AST, GOT erhöht"
* #10003481 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erhöhung des Spiegels der Aspartat-Aminotransferase in einer Blutprobe anzeigt."
* #10003481 ^property[+].code = #grad3
* #10003481 ^property[=].valueString = ">5.0-20.0 x obere Normgrenze"
* #10003481 ^property[+].code = #grad4
* #10003481 ^property[=].valueString = ">20.0 x obere Normgrenze"
* #10003481 ^property[+].code = #grad5
* #10003481 ^property[=].valueString = "-"
* #10005332 "Antidiuretisches Hormon im Blut außerhalb Norm"
* #10005332 ^designation[+].language = #de-DE
* #10005332 ^designation[=].value = "ADH Vasopression VP"
* #10005332 ^designation[+].language = #de-DE
* #10005332 ^designation[=].value = "Arginin Vasopressin  AVP erhöht"
* #10005332 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erhöhung des Spiegels von Antidiuretischem Hormon in einer Blutprobe anzeigt."
* #10005332 ^property[+].code = #grad3
* #10005332 ^property[=].valueString = "Krankenhauseinweisung angezeigt"
* #10005332 ^property[+].code = #grad4
* #10005332 ^property[=].valueString = "-"
* #10005332 ^property[+].code = #grad5
* #10005332 ^property[=].valueString = "-"
* #10005364 "Bilirubin im Blut erhöht"
* #10005364 ^designation[+].language = #de-DE
* #10005364 ^designation[=].value = "Hyperbilirubinämie"
* #10005364 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der einen anormal hohen Spiegel von Bilirubin in einer Blutprobe anzeigt. Übermäßiges Bilirubin ist mit Ikterus assoziiert."
* #10005364 ^property[+].code = #grad3
* #10005364 ^property[=].valueString = ">3.0-10.0 x obere Normgrenze"
* #10005364 ^property[+].code = #grad4
* #10005364 ^property[=].valueString = ">10.0 x obere Normgrenze"
* #10005364 ^property[+].code = #grad5
* #10005364 ^property[=].valueString = "-"
* #10007839 "CD4-Lymphozyten verringert"
* #10007839 ^designation[+].language = #de-DE
* #10007839 ^designation[=].value = "-"
* #10007839 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erniedrigte Spiegel von CD4-Lympophozyten in einer Blutprobe anzeigt."
* #10007839 ^property[+].code = #grad3
* #10007839 ^property[=].valueString = "<200-50/mm3; <0.2 x 0.05 - 10e9/L"
* #10007839 ^property[+].code = #grad4
* #10007839 ^property[=].valueString = "<50/mm3; <0.05 x 10e9/L"
* #10007839 ^property[+].code = #grad5
* #10007839 ^property[=].valueString = "-"
* #10008661 "Cholesterin hoch"
* #10008661 ^designation[+].language = #de-DE
* #10008661 ^designation[=].value = "Cholesterin erhöht"
* #10008661 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der höhere als normale Spiegel von Cholesterin in einer Blutprobe anzeigt."
* #10008661 ^property[+].code = #grad3
* #10008661 ^property[=].valueString = ">400-500 mg/dL; >10.34 - 12.92 mmol/L"
* #10008661 ^property[+].code = #grad4
* #10008661 ^property[=].valueString = ">500 mg/dL; >12.92 mmol/L"
* #10008661 ^property[+].code = #grad5
* #10008661 ^property[=].valueString = "-"
* #10011268 "Creatinphosphokinase erhöht"
* #10011268 ^designation[+].language = #de-DE
* #10011268 ^designation[=].value = "CPK hoch"
* #10011268 ^designation[+].language = #de-DE
* #10011268 ^designation[=].value = "Creatinkinase erhöht"
* #10011268 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von CPK in einer Blutprobe anzeigt."
* #10011268 ^property[+].code = #grad3
* #10011268 ^property[=].valueString = ">5 x obere Normgrenze 10 x obere Normgrenze"
* #10011268 ^property[+].code = #grad4
* #10011268 ^property[=].valueString = ">10 x obere Normgrenze"
* #10011268 ^property[+].code = #grad5
* #10011268 ^property[=].valueString = "-"
* #10050528 "Ejektionsfraktion herabgesetzt"
* #10050528 ^designation[+].language = #de-DE
* #10050528 ^designation[=].value = "Ejektionsfraktion verringert"
* #10050528 ^definition = "Der Prozentsatz wird errechnet, wenn die Blutmenge, ausgeworfen während einer Kammerkontraktion des Herzens, verglichen wird mit der Menge, die vor der Kontraktion vorhanden war."
* #10050528 ^property[+].code = #grad3
* #10050528 ^property[=].valueString = "Verbleibende Ejektionsfraktion (EF) 39-20%; >20% Abfall gegenüber der Grundlinie"
* #10050528 ^property[+].code = #grad4
* #10050528 ^property[=].valueString = "Verbleibende Ejektionsfraktion (EF) <20%"
* #10050528 ^property[+].code = #grad5
* #10050528 ^property[=].valueString = "-"
* #10014383 "EKG: korrigiertes QT Intervall verlängert"
* #10014383 ^designation[+].language = #de-DE
* #10014383 ^designation[=].value = "EKG: QT Dauer verlängert"
* #10014383 ^definition = "Der Befund einer kardialen Dysrhythmie, gekennzeichnet durch ein anormal langes korrigiertes QT-Intervall."
* #10014383 ^property[+].code = #grad3
* #10014383 ^property[=].valueString = "QTc >= 501 ms bei mindestens zwei getrennten EKGs"
* #10014383 ^property[+].code = #grad4
* #10014383 ^property[=].valueString = "QTc >= 501 oder >60 ms Veränderung gegenüber Grundlinie und Torsade de pointes oder polymorphische ventrikuläre Tachykardie oder Zeichen/Symptome schwerwiegender Arrhythmie"
* #10014383 ^property[+].code = #grad5
* #10014383 ^property[=].valueString = "-"
* #10016987 "FEV1 erniedrigt"
* #10016987 ^designation[+].language = #de-DE
* #10016987 ^designation[=].value = "Forcierte Vitalkapazität verringert"
* #10016987 ^definition = "Ein Befund, basierend auf einem Testergebnis, der eine relative Erniedrigung im Anteil der forcierten Vitalkapazität, die während einer spezifischen Zahl von Sekunden ausgeatmet wird, anzeigt."
* #10016987 ^property[+].code = #grad3
* #10016987 ^property[=].valueString = "50-59%"
* #10016987 ^property[+].code = #grad4
* #10016987 ^property[=].valueString = "<= 49%"
* #10016987 ^property[+].code = #grad5
* #10016987 ^property[=].valueString = "-"
* #10016596 "Fibrinogen verringert"
* #10016596 ^designation[+].language = #de-DE
* #10016596 ^designation[=].value = "-"
* #10016596 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung des Fibrinogenspiegels in einer Blutprobe anzeigt."
* #10016596 ^property[+].code = #grad3
* #10016596 ^property[=].valueString = "<0.5-0.25 x Untere Normgrenze oder 50-<75% Erniedrigung gegenüber der Basislinie"
* #10016596 ^property[+].code = #grad4
* #10016596 ^property[=].valueString = "<0.25 x Untere Normgrenze oder 75% Erniedrigung gegenüber der Basislinie oder dem absoluten Wert <50 mg/dL"
* #10016596 ^property[+].code = #grad5
* #10016596 ^property[=].valueString = "-"
* #10056910 "Gamma-Glutamyltransferase erhöht"
* #10056910 ^designation[+].language = #de-DE
* #10056910 ^designation[=].value = "GGT"
* #10056910 ^designation[+].language = #de-DE
* #10056910 ^designation[=].value = "γ-Glutamyltransferase"
* #10056910 ^designation[+].language = #de-DE
* #10056910 ^designation[=].value = "Gamma-GT"
* #10056910 ^designation[+].language = #de-DE
* #10056910 ^designation[=].value = "γ-Glutamyltranspeptidase"
* #10056910 ^designation[+].language = #de-DE
* #10056910 ^designation[=].value = "γ-GTP erhöht"
* #10056910 ^designation[+].language = #de-DE
* #10056910 ^designation[=].value = "γ-GTP"
* #10056910 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der höhere als normale Spiegel von Gamma-Glutamyltransferase in einer Blutprobe anzeigt. GGT katalysiert den Transfer einer Gammaglutamyl-Gruppe von einem Gammaglutamyl-Peptid zu einem anderen Peptid, einer Aminosäure oder Wasser."
* #10056910 ^property[+].code = #grad3
* #10056910 ^property[=].valueString = ">5.0-20.0 x obere Normgrenze"
* #10056910 ^property[+].code = #grad4
* #10056910 ^property[=].valueString = ">20.0 x obere Normgrenze"
* #10056910 ^property[+].code = #grad5
* #10056910 ^property[=].valueString = "-"
* #10049182 "Gesamt-Leukozyten verringert"
* #10049182 ^designation[+].language = #de-DE
* #10049182 ^designation[=].value = "Leukozytopenie"
* #10049182 ^designation[+].language = #de-DE
* #10049182 ^designation[=].value = "Weiße Blutkörperchenverringerung"
* #10049182 ^designation[+].language = #de-DE
* #10049182 ^designation[=].value = "Leukopenie"
* #10049182 ^designation[+].language = #de-DE
* #10049182 ^designation[=].value = "Leukozytenabfall"
* #10049182 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Zahl der weißen Blutkörperchen in einer Blutprobe anzeigt."
* #10049182 ^property[+].code = #grad3
* #10049182 ^property[=].valueString = "<2000-1000/mm3; <2.0-1.0 x 10e9/L"
* #10049182 ^property[+].code = #grad4
* #10049182 ^property[=].valueString = "<1000/mm3; <1.0 x 10e9/L"
* #10049182 ^property[+].code = #grad5
* #10049182 ^property[=].valueString = "-"
* #10047900 "Gewichtsverlust"
* #10047900 ^designation[+].language = #de-DE
* #10047900 ^designation[=].value = "Körpergewichterniedrigung"
* #10047900 ^definition = "Ein Befund, gekennzeichnet durch eine Erniedrigung des Gesamtkörpergewichts; in der Pädiatrie, weniger als die Grundlinienkurve."
* #10047900 ^property[+].code = #grad3
* #10047900 ^property[=].valueString = ">=20% der Basislinie; Sondenernährung oder TPE angezeigt"
* #10047900 ^property[+].code = #grad4
* #10047900 ^property[=].valueString = "-"
* #10047900 ^property[+].code = #grad5
* #10047900 ^property[=].valueString = "-"
* #10047896 "Gewichtszunahme"
* #10047896 ^designation[+].language = #de-DE
* #10047896 ^designation[=].value = "Körpergewichtserhöhung"
* #10047896 ^definition = "Ein Befund, gekennzeichnet durch ein Ansteigen des Gesamtkörpergewichts; in der Pädiatrie, größer als die Grundlinienkurve."
* #10047896 ^property[+].code = #grad3
* #10047896 ^property[=].valueString = ">=20% der Basislinie"
* #10047896 ^property[+].code = #grad4
* #10047896 ^property[=].valueString = "-"
* #10047896 ^property[+].code = #grad5
* #10047896 ^property[=].valueString = "-"
* #10005561 "Gonadotropin im Blut anormal"
* #10005561 ^designation[+].language = #de-DE
* #10005561 ^designation[=].value = "Luteinisierendes Hormon LH"
* #10005561 ^designation[+].language = #de-DE
* #10005561 ^designation[=].value = "Follikelstimulierendes Hormon FSH"
* #10005561 ^designation[+].language = #de-DE
* #10005561 ^designation[=].value = "Humanes Choriongonadotropin hCG"
* #10005561 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der einen anormalen Spiegel eines Gonadotropins (FSK, LH, hCG) in einer Blutprobe anzeigt."
* #10005561 ^property[+].code = #grad3
* #10005561 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10005561 ^property[+].code = #grad4
* #10005561 ^property[=].valueString = "-"
* #10005561 ^property[+].code = #grad5
* #10005561 ^property[=].valueString = "-"
* #10019150 "Haptoglobin verringert"
* #10019150 ^designation[+].language = #de-DE
* #10019150 ^designation[=].value = "-"
* #10019150 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung des Haptoglobinspiegels in einer Blutprobe anzeigt."
* #10019150 ^property[+].code = #grad3
* #10019150 ^property[=].valueString = "-"
* #10019150 ^property[+].code = #grad4
* #10019150 ^property[=].valueString = "-"
* #10019150 ^property[+].code = #grad5
* #10019150 ^property[=].valueString = "-"
* #10055599 "Hämoglobin erhöht"
* #10055599 ^designation[+].language = #de-DE
* #10055599 ^designation[=].value = "Hb erhöht"
* #10055599 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Hämoglobin in einer Blutprobe anzeigt."
* #10055599 ^property[+].code = #grad3
* #10055599 ^property[=].valueString = "Erhöhung auf >4 g/dL oberhalb der oberen Normgrenze oder oberhalb der Basislinie, wenn die Basislinie oberhalb der oberen Normgrenze liegt."
* #10055599 ^property[+].code = #grad4
* #10055599 ^property[=].valueString = "-"
* #10055599 ^property[+].code = #grad5
* #10055599 ^property[=].valueString = "-"
* #10007612 "Kardiales Troponin I erhöht"
* #10007612 ^designation[+].language = #de-DE
* #10007612 ^designation[=].value = "-"
* #10007612 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von kardialem Troponin I in einer Blutprobe anzeigt."
* #10007612 ^property[+].code = #grad3
* #10007612 ^property[=].valueString = "Spiegel vereinbar mit Myokardinfarkt wie vom Hersteller definiert"
* #10007612 ^property[+].code = #grad4
* #10007612 ^property[=].valueString = "-"
* #10007612 ^property[+].code = #grad5
* #10007612 ^property[=].valueString = "-"
* #10007613 "Kardiales Troponin T erhöht"
* #10007613 ^designation[+].language = #de-DE
* #10007613 ^designation[=].value = "-"
* #10007613 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel kardialen Troponin T‘s in einer Blutprobe anzeigt."
* #10007613 ^property[+].code = #grad3
* #10007613 ^property[=].valueString = "Spiegel vereinbar mit Myokardinfarkt wie vom Hersteller definiert"
* #10007613 ^property[+].code = #grad4
* #10007613 ^property[=].valueString = "-"
* #10007613 ^property[+].code = #grad5
* #10007613 ^property[=].valueString = "-"
* #10011368 "Kreatinin erhöht"
* #10011368 ^designation[+].language = #de-DE
* #10011368 ^designation[=].value = "Creatinin erhöht"
* #10011368 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Kreatinin in einer Blutprobe anzeigt."
* #10011368 ^property[+].code = #grad3
* #10011368 ^property[=].valueString = ">3.0 baseline; >3.0-6.0 x obere Normgrenze"
* #10011368 ^property[+].code = #grad4
* #10011368 ^property[=].valueString = ">6.0 x obere Normgrenze"
* #10011368 ^property[+].code = #grad5
* #10011368 ^property[=].valueString = "-"
* #10024574 "Lipase erhöht"
* #10024574 ^designation[+].language = #de-DE
* #10024574 ^designation[=].value = "Lipoproteinlipase LPL, LP"
* #10024574 ^designation[+].language = #de-DE
* #10024574 ^designation[=].value = "Pankreaslipase"
* #10024574 ^designation[+].language = #de-DE
* #10024574 ^designation[=].value = "Steapsin erhöht"
* #10024574 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Lipase in einer Blutprobe anzeigt."
* #10024574 ^property[+].code = #grad3
* #10024574 ^property[=].valueString = ">2.0-5.0 x obere Normgrenze"
* #10024574 ^property[+].code = #grad4
* #10024574 ^property[=].valueString = ">5.0 x obere Normgrenze"
* #10024574 ^property[+].code = #grad5
* #10024574 ^property[=].valueString = "-"
* #10025256 "Lymphozytopenie"
* #10025256 ^designation[+].language = #de-DE
* #10025256 ^designation[=].value = "-"
* #10025256 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Lymphozytenzahl in einer Blutprobe anzeigt."
* #10025256 ^property[+].code = #grad3
* #10025256 ^property[=].valueString = "<500-200/mm3; <0.5-0.2 x 10e9/L"
* #10025256 ^property[+].code = #grad4
* #10025256 ^property[=].valueString = "<200/mm3; <0.2 x 10e9/L"
* #10025256 ^property[+].code = #grad5
* #10025256 ^property[=].valueString = "-"
* #10025258 "Lymphozytose"
* #10025258 ^designation[+].language = #de-DE
* #10025258 ^designation[=].value = "-"
* #10025258 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine anormale Erhöhung der Lymphozytenzahl im Blut, in Ergüssen oder im Knochenmark anzeigt."
* #10025258 ^property[+].code = #grad3
* #10025258 ^property[=].valueString = ">20,000/mm3"
* #10025258 ^property[+].code = #grad4
* #10025258 ^property[=].valueString = "-"
* #10025258 ^property[+].code = #grad5
* #10025258 ^property[=].valueString = "-"
* #10029366 "Neutrophile Granulozyten verringert"
* #10029366 ^designation[+].language = #de-DE
* #10029366 ^designation[=].value = "Leukozytopenie"
* #10029366 ^designation[+].language = #de-DE
* #10029366 ^designation[=].value = "Leukopenie"
* #10029366 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Zahl der neutrophilen Granulozyten in einer Blutprobe anzeigt."
* #10029366 ^property[+].code = #grad3
* #10029366 ^property[=].valueString = "<1000-500/mm3; <1.0-0.5 x 10e9/L"
* #10029366 ^property[+].code = #grad4
* #10029366 ^property[=].valueString = "<500/mm3; <0.5 x 10e9/L"
* #10029366 ^property[+].code = #grad5
* #10029366 ^property[=].valueString = "-"
* #10062646 "Pankreasenzym verringert"
* #10062646 ^designation[+].language = #de-DE
* #10062646 ^designation[=].value = "Pankreas Amylase"
* #10062646 ^designation[+].language = #de-DE
* #10062646 ^designation[=].value = "Pankreaslipase herabgesetzt"
* #10062646 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Pankreasenzyme in einer Blutprobe anzeigt."
* #10062646 ^property[+].code = #grad3
* #10062646 ^property[=].valueString = "Folgen des Absorptionsmangels"
* #10062646 ^property[+].code = #grad4
* #10062646 ^property[=].valueString = "-"
* #10062646 ^property[+].code = #grad5
* #10062646 ^property[=].valueString = "-"
* #10005778 "Prolaktin im Blut außerhalb Norm"
* #10005778 ^designation[+].language = #de-DE
* #10005778 ^designation[=].value = "Prolaktin"
* #10005778 ^designation[+].language = #de-DE
* #10005778 ^designation[=].value = "PRL Laktotropes Hormon"
* #10005778 ^designation[+].language = #de-DE
* #10005778 ^designation[=].value = "LTH Lactotropin"
* #10005778 ^designation[+].language = #de-DE
* #10005778 ^designation[=].value = "Laktotropin außerhalb der Norm"
* #10005778 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der einen anormalen Spiegel von Prolaktin in einer Blutprobe anzeigt."
* #10005778 ^property[+].code = #grad3
* #10005778 ^property[=].valueString = "-"
* #10005778 ^property[+].code = #grad4
* #10005778 ^property[=].valueString = "-"
* #10005778 ^property[+].code = #grad5
* #10005778 ^property[=].valueString = "-"
* #10065906 "Pulmonale Transferkapazität für Kohlenmonoxid verringert"
* #10065906 ^designation[+].language = #de-DE
* #10065906 ^designation[=].value = "-"
* #10065906 ^definition = "Ein Befund, basierend auf einem Lungenfunktionstestergebnis, der eine Erniedrigung der Lungenkapazität anzeigt, Kohlenstoffmonoxyd zu absorbieren."
* #10065906 ^property[+].code = #grad3
* #10065906 ^property[=].valueString = "Asymptomatische Erniedrigung von >8 Einheiten Abfall; >5 Einheiten Abfall bei Vorhandensein von Lungensymptomen (z.B. >Grad 2 Hypoxie oder >Grad 2 oder höhere Dyspnoe)"
* #10065906 ^property[+].code = #grad4
* #10065906 ^property[=].valueString = "-"
* #10065906 ^property[+].code = #grad5
* #10065906 ^property[=].valueString = "-"
* #10022402 "Prothrombinzeit erhöht"
* #10022402 ^designation[+].language = #de-DE
* #10022402 ^designation[=].value = "INR erhöht"
* #10022402 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der einen anormalen Spiegel von Prolaktin in einer Blutprobe anzeigt."
* #10022402 ^property[+].code = #grad3
* #10022402 ^property[=].valueString = ">2.5 x obere Normgrenze; >2.5 x oberhalb der Basislinie, wenn auf Antikoagulantien Therapie"
* #10022402 ^property[+].code = #grad4
* #10022402 ^property[=].valueString = "-"
* #10022402 ^property[+].code = #grad5
* #10022402 ^property[=].valueString = "-"
* #10040139 "Serum Amylase erhöht"
* #10040139 ^designation[+].language = #de-DE
* #10040139 ^designation[=].value = "α'-Amylase"
* #10040139 ^designation[+].language = #de-DE
* #10040139 ^designation[=].value = "β'-Amylase"
* #10040139 ^designation[+].language = #de-DE
* #10040139 ^designation[=].value = "γ'-Amylase erhöht"
* #10040139 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Amylas in einer Serumprobe anzeigt."
* #10040139 ^property[+].code = #grad3
* #10040139 ^property[=].valueString = ">2.0-5.0 x obere Normgrenze"
* #10040139 ^property[+].code = #grad4
* #10040139 ^property[=].valueString = ">5.0 x obere Normgrenze"
* #10040139 ^property[+].code = #grad5
* #10040139 ^property[=].valueString = "-"
* #10035528 "Thrombozytopenie"
* #10035528 ^designation[+].language = #de-DE
* #10035528 ^designation[=].value = "Thrombopenie"
* #10035528 ^designation[+].language = #de-DE
* #10035528 ^designation[=].value = "Blutplättchen erniedrigt"
* #10035528 ^designation[+].language = #de-DE
* #10035528 ^designation[=].value = "Thrombozytenabfall"
* #10035528 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der eine Erniedrigung der Zahl der Blutplättchen in einer Blutprobe anzeigt."
* #10035528 ^property[+].code = #grad3
* #10035528 ^property[=].valueString = "<50,000-25,000/mm3; <50.0 - 25.0 x 10e9/L"
* #10035528 ^property[+].code = #grad4
* #10035528 ^property[=].valueString = "<25,000/mm3; <25.0 x 10e9/L"
* #10035528 ^property[+].code = #grad5
* #10035528 ^property[=].valueString = "-"
* #10059895 "Urinausscheidung verringert"
* #10059895 ^designation[+].language = #de-DE
* #10059895 ^designation[=].value = "-"
* #10059895 ^definition = "Ein Befund, basierend auf Testergebnissen, der anzeigt, dass die Urinproduktion verringert ist, verglichen mit der vorherigen Menge."
* #10059895 ^property[+].code = #grad3
* #10059895 ^property[=].valueString = "Oligurie (<80 ml in 8 h)"
* #10059895 ^property[+].code = #grad4
* #10059895 ^property[=].valueString = "Anuri (<240 ml in 24 h)"
* #10059895 ^property[+].code = #grad5
* #10059895 ^property[=].valueString = "-"
* #10047580 "Vitalkapazität anormal"
* #10047580 ^designation[+].language = #de-DE
* #10047580 ^designation[=].value = "Maximales Atemvolumen außerhalb der Norm"
* #10047580 ^designation[+].language = #de-DE
* #10047580 ^designation[=].value = "Vitalkapazität außerhalb der Norm"
* #10047580 ^definition = "Ein Befund, basierend auf einem Lungenfunktionstestergebnis, der eine anormale Vitalkapazität (Menge ausgeatmet nach maximaler Einatmung) anzeigt, wenn mit dem prognostizierten Wert verglichen wird."
* #10047580 ^property[+].code = #grad3
* #10047580 ^property[=].valueString = "<50% des prognostizierten Wertes; begrenzte selbstversorgende ATL"
* #10047580 ^property[+].code = #grad4
* #10047580 ^property[=].valueString = "-"
* #10047580 ^property[+].code = #grad5
* #10047580 ^property[=].valueString = "-"
* #10018748 "Wachstumshormon außerhalb Norm"
* #10018748 ^designation[+].language = #de-DE
* #10018748 ^designation[=].value = "growth hormone außerhalb der Norm"
* #10018748 ^designation[+].language = #de-DE
* #10018748 ^designation[=].value = "GH"
* #10018748 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der einen anormalen Spiegel von Wachstumshormon in einer Blutprobe anzeigt."
* #10018748 ^property[+].code = #grad3
* #10018748 ^property[=].valueString = "-"
* #10018748 ^property[+].code = #grad4
* #10018748 ^property[=].valueString = "-"
* #10018748 ^property[+].code = #grad5
* #10018748 ^property[=].valueString = "-"
* #10022891 "Untersuchungen - Sonstige, zu spezifizieren"
* #10022891 ^designation[+].language = #de-DE
* #10022891 ^designation[=].value = "Sonstige Laborwerte"
* #10022891 ^definition = "Sonstige, zu spezifizierende Untersuchungen, die unerwünschte Ereignisse im Rahmen einer Behandlung anzeigen."
* #10022891 ^property[+].code = #grad3
* #10022891 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10022891 ^property[+].code = #grad4
* #10022891 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10022891 ^property[+].code = #grad5
* #10022891 ^property[=].valueString = "Tod"
* #10029883 "Adipositas"
* #10029883 ^designation[+].language = #de-DE
* #10029883 ^designation[=].value = "Fettleibigkeit"
* #10029883 ^designation[+].language = #de-DE
* #10029883 ^designation[=].value = "Übergewicht"
* #10029883 ^designation[+].language = #de-DE
* #10029883 ^designation[=].value = "Obesitas"
* #10029883 ^definition = "Eine Störung, gekennzeichnet durch das Vorhandensein eines hohen Anteils von Körperfett."
* #10029883 ^property[+].code = #grad3
* #10029883 ^property[=].valueString = "BMI 30-39.9 kg/m2"
* #10029883 ^property[+].code = #grad4
* #10029883 ^property[=].valueString = "BMI >=40 kg/m2"
* #10029883 ^property[+].code = #grad5
* #10029883 ^property[=].valueString = "-"
* #10001598 "Alkoholintoleranz"
* #10001598 ^designation[+].language = #de-DE
* #10001598 ^designation[=].value = "Alkoholunverträglichkeit"
* #10001598 ^definition = "Eine Störung, gekennzeichnet durch eine Erhöhung der Empfindlichkeit gegenüber den unerwünschten Wirkungen von Alkohol, was Nasenverstopfung, Hautrötungen, Herzdysrhythmien, Übelkeit, Erbrechen, Verdauungsstörungen und Kopfschmerzen einschließen kann."
* #10001598 ^property[+].code = #grad3
* #10001598 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL;"
* #10001598 ^property[+].code = #grad4
* #10001598 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10001598 ^property[+].code = #grad5
* #10001598 ^property[=].valueString = "Tod"
* #10001680 "Alkalose"
* #10001680 ^designation[+].language = #de-DE
* #10001680 ^designation[=].value = "Blut pH Erhöhung"
* #10001680 ^designation[+].language = #de-DE
* #10001680 ^designation[=].value = "Störung des Flüssigkeits, Elektrolyt und Säurebasenhaushaltes"
* #10001680 ^definition = "Eine Störung, gekennzeichnet durch anormal hohe Alkalinität (niedrige Wasserionenkonzentration) des Blutes und anderen Körpergewebe."
* #10001680 ^property[+].code = #grad3
* #10001680 ^property[=].valueString = "pH >7.5"
* #10001680 ^property[+].code = #grad4
* #10001680 ^property[=].valueString = "Lebensbedrohliche Folgen"
* #10001680 ^property[+].code = #grad5
* #10001680 ^property[=].valueString = "Tod"
* #10002646 "Anorexie"
* #10002646 ^designation[+].language = #de-DE
* #10002646 ^designation[=].value = "Magersuch"
* #10002646 ^definition = "Eine Störung, gekennzeichnet durch Verlust des Appetites."
* #10002646 ^property[+].code = #grad3
* #10002646 ^property[=].valueString = "Assoziiert mit signifikantem Gewichtsverlust oder Fehlernährung (z. B. inadäquate orale kalorische und/oder Flüssigkeitsaufnahme); Sondenernährung oder PE angezeigt"
* #10002646 ^property[+].code = #grad4
* #10002646 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10002646 ^property[+].code = #grad5
* #10002646 ^property[=].valueString = "Tod"
* #10000486 "Azidose"
* #10000486 ^designation[+].language = #de-DE
* #10000486 ^designation[=].value = "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
* #10000486 ^definition = "Eine Störung, gekennzeichnet durch anormal hohe Azidität (hohe Wasserionenkonzentration) des Blutes und anderen Körpergeweben."
* #10000486 ^property[+].code = #grad3
* #10000486 ^property[=].valueString = "pH<7.3"
* #10000486 ^property[+].code = #grad4
* #10000486 ^property[=].valueString = "Lebensbedrohliche Folgen"
* #10000486 ^property[+].code = #grad5
* #10000486 ^property[=].valueString = "Tod"
* #10012174 "Dehydrierung"
* #10012174 ^designation[+].language = #de-DE
* #10012174 ^designation[=].value = "Exsikkose"
* #10012174 ^designation[+].language = #de-DE
* #10012174 ^designation[=].value = "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes, Exsiccose"
* #10012174 ^definition = "Eine Störung, gekennzeichnet durch übermäßigen Verlust an Wasser aus dem Körper. Dies ist in der Regel durch schweren Durchfall, Erbrechen oder Diaphoresis (Schwitzen) verursacht."
* #10012174 ^property[+].code = #grad3
* #10012174 ^property[=].valueString = "i. v. Flüssigkeit oder Krankenhauseinweisung angezeigt"
* #10012174 ^property[+].code = #grad4
* #10012174 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10012174 ^property[+].code = #grad5
* #10012174 ^property[=].valueString = "Tod"
* #10065973 "Eisenüberlastung"
* #10065973 ^designation[+].language = #de-DE
* #10065973 ^designation[=].value = "Erhöhter Eisengehalt"
* #10065973 ^designation[+].language = #de-DE
* #10065973 ^designation[=].value = "Hypersiderinämie"
* #10065973 ^designation[+].language = #de-DE
* #10065973 ^designation[=].value = "Gewebeeisenerhöhung"
* #10065973 ^definition = "Eine Störung, gekennzeichnet durch eine Anreicherung von Eisen in den Geweben."
* #10065973 ^property[+].code = #grad3
* #10065973 ^property[=].valueString = "Schwere Symptome; Intervention angezeigt"
* #10065973 ^property[+].code = #grad4
* #10065973 ^property[=].valueString = "Lebensbedrohliche Folgen; Dringliche Intervention angezeigt"
* #10065973 ^property[+].code = #grad5
* #10065973 ^property[=].valueString = "Tod"
* #10052426 "Glucoseintoleranz"
* #10052426 ^designation[+].language = #de-DE
* #10052426 ^designation[=].value = "Glukosestoffwechselstörung"
* #10052426 ^designation[+].language = #de-DE
* #10052426 ^designation[=].value = "Zuckerintoleranz"
* #10052426 ^definition = "Eine Störung, gekennzeichnet durch die Unfähigkeit, Glukose richtig zu verstoffwechseln."
* #10052426 ^property[+].code = #grad3
* #10052426 ^property[=].valueString = "Schwere Symptome; Insulin angezeigt"
* #10052426 ^property[+].code = #grad4
* #10052426 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10052426 ^property[+].code = #grad5
* #10052426 ^property[=].valueString = "Tod"
* #10020587 "Hyperkalzämie"
* #10020587 ^designation[+].language = #de-DE
* #10020587 ^designation[=].value = "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes Hypercalcämie"
* #10020587 ^definition = "Ein Befund, basierend auf einem Labortestergebnis, der erhöhte Spiegel von Kalzium (korrigiert für Albumin) im Blut anzeigt."
* #10020587 ^property[+].code = #grad3
* #10020587 ^property[=].valueString = "Korrigiertes Serum Calcium von >12.5-13.5 mg/dL; >3.1-3.4 mmol/L; ionisiertes Calcium >1.6 - 1.8 mmol/L; Krankenhauseinweisung angezeigt"
* #10020587 ^property[+].code = #grad4
* #10020587 ^property[=].valueString = "Korrigiertes Serum Calcium von >13.5 mg/dL; >3.4 mmol/L; ionisiertes Calcium >1.8 mmol/L; lebensbedrohliche Folgen"
* #10020587 ^property[+].code = #grad5
* #10020587 ^property[=].valueString = "Tod"
* #10020639 "Hyperglykämie"
* #10020639 ^designation[+].language = #de-DE
* #10020639 ^designation[=].value = "-"
* #10020639 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine erhöhte Konzentration von Blutzucker anzeigt. Es ist normalerweise ein Hinweis auf einen Diabetes mellitus oder eine Glukoseintoleranz."
* #10020639 ^property[+].code = #grad3
* #10020639 ^property[=].valueString = ">250-500 mg/dL; >13.9-27.8 mmol/L; Krankenhauseinweisung angezeigt"
* #10020639 ^property[+].code = #grad4
* #10020639 ^property[=].valueString = ">500 mg/dL; >27.8 mmol/L; lebensbedrohliche Folgen"
* #10020639 ^property[+].code = #grad5
* #10020639 ^property[=].valueString = "Tod"
* #10020647 "Hyperkaliämie"
* #10020647 ^designation[+].language = #de-DE
* #10020647 ^designation[=].value = "Kaliumerhöhung"
* #10020647 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das erhöhte Spiegel von Kalium im Blut anzeigt; assoziiert mit Nierenversagen oder manchmal mit der Anwendung von Diuretika."
* #10020647 ^property[+].code = #grad3
* #10020647 ^property[=].valueString = ">6.0-7.0 mmol/L; Krankenhauseinweisung angezeigt"
* #10020647 ^property[+].code = #grad4
* #10020647 ^property[=].valueString = ">7.0 mmol/L; lebensbedrohliche Folgen"
* #10020647 ^property[+].code = #grad5
* #10020647 ^property[=].valueString = "Tod"
* #10020670 "Hypermagnesiämie"
* #10020670 ^designation[+].language = #de-DE
* #10020670 ^designation[=].value = "Magnesiumerhöhung"
* #10020670 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das erhöhte Spiegel von Magnesium im Blut anzeigt."
* #10020670 ^property[+].code = #grad3
* #10020670 ^property[=].valueString = ">3.0-8.0 mg/dL; >1.23-3.30 mmol/L"
* #10020670 ^property[+].code = #grad4
* #10020670 ^property[=].valueString = ">8.0 mg/dL; >3.30 mmol/L; lebensbedrohliche Folgen"
* #10020670 ^property[+].code = #grad5
* #10020670 ^property[=].valueString = "Tod"
* #10020680 "Hypernatriämie"
* #10020680 ^designation[+].language = #de-DE
* #10020680 ^designation[=].value = "Natriumerhöhung"
* #10020680 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das erhöhte Spiegel von Natrium im Blut anzeigt."
* #10020680 ^property[+].code = #grad3
* #10020680 ^property[=].valueString = ">155-160 mmol/L; Krankenhauseinweisung angezeigt"
* #10020680 ^property[+].code = #grad4
* #10020680 ^property[=].valueString = ">160 mmol/L; lebensbedrohliche Folgen"
* #10020680 ^property[+].code = #grad5
* #10020680 ^property[=].valueString = "Tod"
* #10020870 "Hypertriglyzeridämie"
* #10020870 ^designation[+].language = #de-DE
* #10020870 ^designation[=].value = "Neutralblutfetterhöhung"
* #10020870 ^designation[+].language = #de-DE
* #10020870 ^designation[=].value = "Triglyzeriderhöhung"
* #10020870 ^designation[+].language = #de-DE
* #10020870 ^designation[=].value = "Triacylglycerol-, TAG-, Tri- Oacylglycerol Erhöhung"
* #10020870 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine erhöhte Konzentration von Triglyzeriden im Blut anzeigt."
* #10020870 ^property[+].code = #grad3
* #10020870 ^property[=].valueString = ">500 mg/dL-1000 mg/dL; >5.7 mmol/L-11.4 mmol/L"
* #10020870 ^property[+].code = #grad4
* #10020870 ^property[=].valueString = ">1000 mg/dL; >11.4 mmol/L; lebensbedrohliche Folgen"
* #10020870 ^property[+].code = #grad5
* #10020870 ^property[=].valueString = "Tod"
* #10020907 "Hyperurikämie"
* #10020907 ^designation[+].language = #de-DE
* #10020907 ^designation[=].value = "Harnsäureerhöhung"
* #10020907 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine erhöhte Konzentration von Harnsäure im Blut anzeigt."
* #10020907 ^property[+].code = #grad3
* #10020907 ^property[=].valueString = ">ULN-10 mg/dL (0.59 mmol/L) mit physiologischen Folgen"
* #10020907 ^property[+].code = #grad4
* #10020907 ^property[=].valueString = ">10 mg/dL; >0.59 mmol/L; lebensbedrohliche Folgen"
* #10020907 ^property[+].code = #grad5
* #10020907 ^property[=].valueString = "Tod"
* #10020943 "Hypoalbuminämie"
* #10020943 ^designation[+].language = #de-DE
* #10020943 ^designation[=].value = "Albuminerniedrigung"
* #10020943 ^designation[+].language = #de-DE
* #10020943 ^designation[=].value = "Albuminmangel"
* #10020943 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Albumin im Blut anzeigt."
* #10020943 ^property[+].code = #grad3
* #10020943 ^property[=].valueString = "<2 g/dL; <20 g/L"
* #10020943 ^property[+].code = #grad4
* #10020943 ^property[=].valueString = "Lebensbedrohliche Folgen;  Dringliche Intervention angezeigt"
* #10020943 ^property[+].code = #grad5
* #10020943 ^property[=].valueString = "Tod"
* #10020949 "Hypokalzämie"
* #10020949 ^designation[+].language = #de-DE
* #10020949 ^designation[=].value = "Kalziumerniedrigung"
* #10020949 ^designation[+].language = #de-DE
* #10020949 ^designation[=].value = "niedriges Calcium"
* #10020949 ^designation[+].language = #de-DE
* #10020949 ^designation[=].value = "Calciummangel"
* #10020949 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Kalzium (Calcium) im Blut anzeigt."
* #10020949 ^property[+].code = #grad3
* #10020949 ^property[=].valueString = "Korrigiertes Serum-Calcium von <7.0-6.0 mg/dL; <1.75-1.5 mmol/L; ionisiertes Calcium <0.9 - 0.8 mmol/L; Krankenhauseinweisung angezeigt"
* #10020949 ^property[+].code = #grad4
* #10020949 ^property[=].valueString = "Korrigiertes Serum-Calcium von <6.0 mg/dL; <1.5 mmol/L;  ionisiertes Calcium <0.8 mmol/L; lebensbedrohliche Folgen"
* #10020949 ^property[+].code = #grad5
* #10020949 ^property[=].valueString = "Tod"
* #10021005 "Hypoglykämie"
* #10021005 ^designation[+].language = #de-DE
* #10021005 ^designation[=].value = "Blutzuckererniedrigung"
* #10021005 ^designation[+].language = #de-DE
* #10021005 ^designation[=].value = "Unterzuckerrung"
* #10021005 ^designation[+].language = #de-DE
* #10021005 ^designation[=].value = "Niedriger Blutzucker"
* #10021005 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Glukose im Blut anzeigt."
* #10021005 ^property[+].code = #grad3
* #10021005 ^property[=].valueString = "<40-30 mg/dL; <2.2-1.7 mmol/L"
* #10021005 ^property[+].code = #grad4
* #10021005 ^property[=].valueString = "<30 mg/dL; <1.7 mmol/L; lebensbedrohliche Folgen Krämpfe"
* #10021005 ^property[+].code = #grad5
* #10021005 ^property[=].valueString = "Tod"
* #10021018 "Hypokaliämie"
* #10021018 ^designation[+].language = #de-DE
* #10021018 ^designation[=].value = "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
* #10021018 ^designation[+].language = #de-DE
* #10021018 ^designation[=].value = "Niedriges Kalium"
* #10021018 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Kalium im Blut anzeigt."
* #10021018 ^property[+].code = #grad3
* #10021018 ^property[=].valueString = "<3.0-2.5 mmol/L; Krankenhauseinweisung angezeigt"
* #10021018 ^property[+].code = #grad4
* #10021018 ^property[=].valueString = "<2.5 mmol/L; lebensbedrohliche Folgen"
* #10021018 ^property[+].code = #grad5
* #10021018 ^property[=].valueString = "Tod"
* #10021028 "Hypomagnesiämie"
* #10021028 ^designation[+].language = #de-DE
* #10021028 ^designation[=].value = "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
* #10021028 ^designation[+].language = #de-DE
* #10021028 ^designation[=].value = "Niedriges Magnesium"
* #10021028 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Magnesium im Blut anzeigt."
* #10021028 ^property[+].code = #grad3
* #10021028 ^property[=].valueString = "<0.9-0.7 mg/dL; <0.4-0.3 mmol/L"
* #10021028 ^property[+].code = #grad4
* #10021028 ^property[=].valueString = "<0.7 mg/dL; <0.3 mmol/L; lebensbedrohliche Folgen"
* #10021028 ^property[+].code = #grad5
* #10021028 ^property[=].valueString = "Tod"
* #10021038 "Hyponatriämie"
* #10021038 ^designation[+].language = #de-DE
* #10021038 ^designation[=].value = "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
* #10021038 ^designation[+].language = #de-DE
* #10021038 ^designation[=].value = "Niedriges Natrium"
* #10021038 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Natrium im Blut anzeigt."
* #10021038 ^property[+].code = #grad3
* #10021038 ^property[=].valueString = "<130-120 mmol/L"
* #10021038 ^property[+].code = #grad4
* #10021038 ^property[=].valueString = "<120 mmol/L; lebensbedrohliche Folgen"
* #10021038 ^property[+].code = #grad5
* #10021038 ^property[=].valueString = "Tod"
* #10021059 "Hypophosphatämie"
* #10021059 ^designation[+].language = #de-DE
* #10021059 ^designation[=].value = "Störung des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
* #10021059 ^designation[+].language = #de-DE
* #10021059 ^designation[=].value = "Niedrige Blutphosphate"
* #10021059 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine niedrige Konzentration von Phosphaten im Blut anzeigt."
* #10021059 ^property[+].code = #grad3
* #10021059 ^property[=].valueString = "<2.0-1.0 mg/dL; <0.6-0.3 mmol/L"
* #10021059 ^property[+].code = #grad4
* #10021059 ^property[=].valueString = "<1.0 mg/dL; <0.3 mmol/L; lebensbedrohliche Folgen"
* #10021059 ^property[+].code = #grad5
* #10021059 ^property[=].valueString = "Tod"
* #10045152 "Tumorlyse Syndrom"
* #10045152 ^designation[+].language = #de-DE
* #10045152 ^designation[=].value = "tumor lysis syndrome (engl.)"
* #10045152 ^definition = "Eine Störung, gekennzeichnet durch metabolische Abnormalität, die von einer spontanen oder therapieassoziierten Zytolyse von Tumorzellen resultieren."
* #10045152 ^property[+].code = #grad3
* #10045152 ^property[=].valueString = "Vorhanden"
* #10045152 ^property[+].code = #grad4
* #10045152 ^property[=].valueString = "Lebensbedrohliche Folgen; Dringliche Intervention angezeigt"
* #10045152 ^property[+].code = #grad5
* #10045152 ^property[=].valueString = "Tod"
* #10027433 "Stoffwechsel und Ernährung - Sonstiges, zu spezifizieren"
* #10027433 ^designation[+].language = #de-DE
* #10027433 ^designation[=].value = "-"
* #10027433 ^definition = "Sonstige, zu spezifizierende Stoffwechsel- und Ernährungsstörungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10027433 ^property[+].code = #grad3
* #10027433 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10027433 ^property[+].code = #grad4
* #10027433 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10027433 ^property[+].code = #grad5
* #10027433 ^property[=].valueString = "Tod"
* #10065775 "Abdominale Weichgewebenekrose"
* #10065775 ^designation[+].language = #de-DE
* #10065775 ^designation[=].value = "Abdominale Weichteilnekrose"
* #10065775 ^designation[+].language = #de-DE
* #10065775 ^designation[=].value = "Absterben von Bauchweichgewebe"
* #10065775 ^definition = "Eine Störung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben der Bauchwand auftritt."
* #10065775 ^property[+].code = #grad3
* #10065775 ^property[=].valueString = "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
* #10065775 ^property[+].code = #grad4
* #10065775 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065775 ^property[+].code = #grad5
* #10065775 ^property[=].valueString = "Tod"
* #10003239 "Arthralgie"
* #10003239 ^designation[+].language = #de-DE
* #10003239 ^designation[=].value = "Gelenkschmerz"
* #10003239 ^definition = "Eine Erkrankung, gekennzeichnet durch das Gefühl deutlicher Beschwerden in einem Gelenk."
* #10003239 ^property[+].code = #grad3
* #10003239 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10003239 ^property[+].code = #grad4
* #10003239 ^property[=].valueString = "-"
* #10003239 ^property[+].code = #grad5
* #10003239 ^property[=].valueString = "-"
* #10003246 "Arthritis"
* #10003246 ^designation[+].language = #de-DE
* #10003246 ^designation[=].value = "Gelenkentzündung"
* #10003246 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung, die ein Gelenk einbezieht."
* #10003246 ^property[+].code = #grad3
* #10003246 ^property[=].valueString = "Heftiger Schmerz, assoziiert Zeichen der Entzündung, Rötung und Gelenkschwellung; irreversibler Gelenkschaden; behindernd; Einschränkung der selbstversorgenden ATL"
* #10003246 ^property[+].code = #grad4
* #10003246 ^property[=].valueString = "-"
* #10003246 ^property[+].code = #grad5
* #10003246 ^property[=].valueString = "-"
* #10066480 "Avaskuläre Nekrose"
* #10066480 ^designation[+].language = #de-DE
* #10066480 ^designation[=].value = "Avaskuläre Knochennekrose"
* #10066480 ^definition = "Eine Erkrankung, gekennzeichnet durch nekrotische Veränderungen im Knochen aufgrund der Unterbrechung der Blutzufuhr. Am häufigsten die Epiphyse der langen Knochen betreffend führen die nekrotischen Veränderungen zum Zusammenbruch und zur Zerstörung der Knochenstrukturen."
* #10066480 ^property[+].code = #grad3
* #10066480 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
* #10066480 ^property[+].code = #grad4
* #10066480 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10066480 ^property[+].code = #grad5
* #10066480 ^property[=].valueString = "Tod"
* #10065799 "Bindegewebefibrose, tiefe"
* #10065799 ^designation[+].language = #de-DE
* #10065799 ^designation[=].value = "Fibrose des tiefen Bindegewebes"
* #10065799 ^designation[+].language = #de-DE
* #10065799 ^designation[=].value = "Tiefe Bindegewebsnekrose"
* #10065799 ^definition = "Eine Störung, gekennzeichnet durch fibrotische Degeneration der tiefen Bindegewebe."
* #10065799 ^property[+].code = #grad3
* #10065799 ^property[=].valueString = "Schwere Induration; unfähig, die Haut zu verschieben oder zu kneifen; begrenzende Gelenk oder Öffnungsbewegung (z. B. Mund, Anus); Einschränkung der selbstversorgenden ATL"
* #10065799 ^property[+].code = #grad4
* #10065799 ^property[=].valueString = "Generalisiert; assoziiert mit Zeichen oder Symptomen behindernden Atmens oder der Nahrungsaufnahme"
* #10065799 ^property[+].code = #grad5
* #10065799 ^property[=].valueString = "Tod"
* #10008496 "Brustwandschmerzen"
* #10008496 ^designation[+].language = #de-DE
* #10008496 ^designation[=].value = "Thoraxwandschmerzen"
* #10008496 ^definition = "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl im Bereich der Brustkorbwand."
* #10008496 ^property[+].code = #grad3
* #10008496 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10008496 ^property[+].code = #grad4
* #10008496 ^property[=].valueString = "-"
* #10008496 ^property[+].code = #grad5
* #10008496 ^property[=].valueString = "-"
* #10015688 "Exostose"
* #10015688 ^designation[+].language = #de-DE
* #10015688 ^designation[=].value = "-"
* #10015688 ^definition = "Eine Störung, gekennzeichnet durch eine nichtneoplastische Wucherung von Knochen."
* #10015688 ^property[+].code = #grad3
* #10015688 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
* #10015688 ^property[+].code = #grad4
* #10015688 ^property[=].valueString = "-"
* #10015688 ^property[+].code = #grad5
* #10015688 ^property[=].valueString = "-"
* #10016750 "Flankenschmerz"
* #10016750 ^designation[+].language = #de-DE
* #10016750 ^designation[=].value = "-"
* #10016750 ^definition = "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl des seitlichen Körpers im Bereich unterhalb der Rippen und oberhalb der Hüfte."
* #10016750 ^property[+].code = #grad3
* #10016750 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10016750 ^property[+].code = #grad4
* #10016750 ^property[=].valueString = "-"
* #10016750 ^property[+].code = #grad5
* #10016750 ^property[=].valueString = "-"
* #10062572 "Generelle Muskelschwäche"
* #10062572 ^designation[+].language = #de-DE
* #10062572 ^designation[=].value = "Allgemeine Muskelparese"
* #10062572 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Muskelstärke an mehreren anatomischen Orten."
* #10062572 ^property[+].code = #grad3
* #10062572 ^property[=].valueString = "Schwäche begrenzt die selbstversorgenden ATL"
* #10062572 ^property[+].code = #grad4
* #10062572 ^property[=].valueString = "-"
* #10062572 ^property[+].code = #grad5
* #10062572 ^property[=].valueString = "-"
* #10023215 "Gelenkerguss"
* #10023215 ^designation[+].language = #de-DE
* #10023215 ^designation[=].value = "Flüssigkeitserguss eines Gelenkes"
* #10023215 ^designation[+].language = #de-DE
* #10023215 ^designation[=].value = "Übermäßige Gelenkflüssigkeit"
* #10023215 ^definition = "Eine Störung, gekennzeichnet durch übermäßige Flüssigkeit in einem Gelenk, in der Regel als Ergebnis einer Gelenkentzündung."
* #10023215 ^property[+].code = #grad3
* #10023215 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
* #10023215 ^property[+].code = #grad4
* #10023215 ^property[=].valueString = "-"
* #10023215 ^property[+].code = #grad5
* #10023215 ^property[=].valueString = "-"
* #10048677 "Gesäßschmerzen"
* #10048677 ^designation[+].language = #de-DE
* #10048677 ^designation[=].value = "-"
* #10048677 ^definition = "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl in den Gesäßbacken."
* #10048677 ^property[+].code = #grad3
* #10048677 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10048677 ^property[+].code = #grad4
* #10048677 ^property[=].valueString = "-"
* #10048677 ^property[+].code = #grad5
* #10048677 ^property[=].valueString = "-"
* #10028836 "Halsschmerzen"
* #10028836 ^designation[+].language = #de-DE
* #10028836 ^designation[=].value = "-"
* #10028836 ^definition = "Eine Störung, gekennzeichnet durch deutliche Beschwerden im Halsbereich."
* #10028836 ^property[+].code = #grad3
* #10028836 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10028836 ^property[+].code = #grad4
* #10028836 ^property[=].valueString = "-"
* #10028836 ^property[+].code = #grad5
* #10028836 ^property[=].valueString = "-"
* #10065781 "Halsweichgewebenekrose"
* #10065781 ^designation[+].language = #de-DE
* #10065781 ^designation[=].value = "Bindegewebenekrose im Nackenbereich"
* #10065781 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben des Halses auftritt."
* #10065781 ^property[+].code = #grad3
* #10065781 ^property[=].valueString = "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
* #10065781 ^property[+].code = #grad4
* #10065781 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065781 ^property[+].code = #grad5
* #10065781 ^property[=].valueString = "Tod"
* #10006002 "Knochenschmerzen"
* #10006002 ^designation[+].language = #de-DE
* #10006002 ^designation[=].value = "Ossäre Schmerzen"
* #10006002 ^definition = "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl in den Knochen."
* #10006002 ^property[+].code = #grad3
* #10006002 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10006002 ^property[+].code = #grad4
* #10006002 ^property[=].valueString = "-"
* #10006002 ^property[+].code = #grad5
* #10006002 ^property[=].valueString = "-"
* #10023509 "Kyphose"
* #10023509 ^designation[+].language = #de-DE
* #10023509 ^designation[=].value = "Dorsal konvexe Wirbelsäulenverkrümmung"
* #10023509 ^definition = "Eine Störung, gekennzeichnet durch eine anormale Steigerung der Kurvatur des thorakalen Anteils der Wirbelsäule."
* #10023509 ^property[+].code = #grad3
* #10023509 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
* #10023509 ^property[+].code = #grad4
* #10023509 ^property[=].valueString = "-"
* #10023509 ^property[+].code = #grad5
* #10023509 ^property[=].valueString = "-"
* #10024842 "Lordose"
* #10024842 ^designation[+].language = #de-DE
* #10024842 ^designation[=].value = "Ventral konvexe Wirbelsäulenverkrümmung"
* #10024842 ^definition = "Eine Störung, gekennzeichnet durch eine anormale Steigerung der Kurvatur des lumbalen Anteils der Wirbelsäule."
* #10024842 ^property[+].code = #grad3
* #10024842 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
* #10024842 ^property[+].code = #grad4
* #10024842 ^property[=].valueString = "-"
* #10024842 ^property[+].code = #grad5
* #10024842 ^property[=].valueString = "-"
* #10065780 "Muskelschwäche, linksseitig"
* #10065780 ^designation[+].language = #de-DE
* #10065780 ^designation[=].value = "Hemiparese linksseitig"
* #10065780 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Muskelstärke auf der linken Körperseite."
* #10065780 ^property[+].code = #grad3
* #10065780 ^property[=].valueString = "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
* #10065780 ^property[+].code = #grad4
* #10065780 ^property[=].valueString = "-"
* #10065780 ^property[+].code = #grad5
* #10065780 ^property[=].valueString = "-"
* #10065776 "Muskelschwäche, untere Extremität"
* #10065776 ^designation[+].language = #de-DE
* #10065776 ^designation[=].value = "Muskelschwäche untere Gliedmaßen"
* #10065776 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Stärke der unteren Gliedmaßenmuskulatur."
* #10065776 ^property[+].code = #grad3
* #10065776 ^property[=].valueString = "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
* #10065776 ^property[+].code = #grad4
* #10065776 ^property[=].valueString = "-"
* #10065776 ^property[+].code = #grad5
* #10065776 ^property[=].valueString = "-"
* #10065794 "Muskelschwäche, rechtsseitig"
* #10065794 ^designation[+].language = #de-DE
* #10065794 ^designation[=].value = "Hemiparese rechtsseitig"
* #10065794 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Muskelstärke auf der rechten Körperseite."
* #10065794 ^property[+].code = #grad3
* #10065794 ^property[=].valueString = "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
* #10065794 ^property[+].code = #grad4
* #10065794 ^property[=].valueString = "-"
* #10065794 ^property[+].code = #grad5
* #10065794 ^property[=].valueString = "-"
* #10065795 "Muskelschwäche, Rumpf"
* #10065795 ^designation[+].language = #de-DE
* #10065795 ^designation[=].value = "Muskelschwäche Körperstamm"
* #10065795 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Stärke der Körperstammmuskulatur."
* #10065795 ^property[+].code = #grad3
* #10065795 ^property[=].valueString = "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
* #10065795 ^property[+].code = #grad4
* #10065795 ^property[=].valueString = "-"
* #10065795 ^property[+].code = #grad5
* #10065795 ^property[=].valueString = "-"
* #10065895 "Muskelschwäche, obere Extremität"
* #10065895 ^designation[+].language = #de-DE
* #10065895 ^designation[=].value = "Muskelschwäche obere Gliedmaßen"
* #10065895 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Stärke der oberen Gliedmaßenmuskulatur."
* #10065895 ^property[+].code = #grad3
* #10065895 ^property[=].valueString = "Schwäche begrenzt die selbstversorgenden ATL; behindernd"
* #10065895 ^property[+].code = #grad4
* #10065895 ^property[=].valueString = "-"
* #10065895 ^property[+].code = #grad5
* #10065895 ^property[=].valueString = "-"
* #10065783 "Muskel-Skelett-Deformität"
* #10065783 ^designation[+].language = #de-DE
* #10065783 ^designation[=].value = "Deformierung Bewegungsapparat"
* #10065783 ^definition = "Eine Störung, gekennzeichnet durch eine Malformation des muskuloskelettären Systems."
* #10065783 ^property[+].code = #grad3
* #10065783 ^property[=].valueString = "Signifikante Deformität, Hypoplasie oder Asymmetrie, nicht korrigierbar durch Prothese oder durch Kleidungsbedeckung; behindernd"
* #10065783 ^property[+].code = #grad4
* #10065783 ^property[=].valueString = "-"
* #10065783 ^property[+].code = #grad5
* #10065783 ^property[=].valueString = "-"
* #10028411 "Myalgie"
* #10028411 ^designation[+].language = #de-DE
* #10028411 ^designation[=].value = "Muskelschmerz"
* #10028411 ^definition = "Eine Störung, gekennzeichnet durch deutliche Beschwerden, hervorgerufen durch einen Muskel oder eine Muskelgruppe."
* #10028411 ^property[+].code = #grad3
* #10028411 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10028411 ^property[+].code = #grad4
* #10028411 ^property[=].valueString = "-"
* #10028411 ^property[+].code = #grad5
* #10028411 ^property[=].valueString = "-"
* #10028653 "Myositis"
* #10028653 ^designation[+].language = #de-DE
* #10028653 ^designation[=].value = "Muskelentzündung"
* #10028653 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung der Skelettmuskeln."
* #10028653 ^property[+].code = #grad3
* #10028653 ^property[=].valueString = "Schwerer Schmerz, assoziiert mit starker Schwäche; Einschränkung der selbstversorgenden ATL"
* #10028653 ^property[+].code = #grad4
* #10028653 ^property[=].valueString = "-"
* #10028653 ^property[+].code = #grad5
* #10028653 ^property[=].valueString = "-"
* #10064658 "Osteonekrose Kiefer"
* #10064658 ^designation[+].language = #de-DE
* #10064658 ^designation[=].value = "Kieferknochennekrose"
* #10064658 ^designation[+].language = #de-DE
* #10064658 ^designation[=].value = "Kiefernekrose"
* #10064658 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben des Unterkiefers auftritt."
* #10064658 ^property[+].code = #grad3
* #10064658 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
* #10064658 ^property[+].code = #grad4
* #10064658 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10064658 ^property[+].code = #grad5
* #10064658 ^property[=].valueString = "Tod"
* #10031282 "Osteoporose"
* #10031282 ^designation[+].language = #de-DE
* #10031282 ^designation[=].value = "Knochenschwund"
* #10031282 ^definition = "Eine Erkrankung, gekennzeichnet durch eine verringerte Knochenmasse, mit einer Verminderung der kortikalen Dicke und der Zahl und Größe der Knochenbälkchen der Spongiosa (aber normaler chemischer Zusammensetzung), mit dem Ergebnis einer erhöhten Frakturinzidenz."
* #10031282 ^property[+].code = #grad3
* #10031282 ^property[=].valueString = "Körpergrößenverlust >=2cm; Krankenhauseinweisung angezeigt; Einschränkung der selbstversorgenden ATL"
* #10031282 ^property[+].code = #grad4
* #10031282 ^property[=].valueString = "-"
* #10031282 ^property[+].code = #grad5
* #10031282 ^property[=].valueString = "-"
* #10065793 "Pelvine Weichgewebenekrose"
* #10065793 ^designation[+].language = #de-DE
* #10065793 ^designation[=].value = "Weichgewebenekrose des Beckens"
* #10065793 ^designation[+].language = #de-DE
* #10065793 ^designation[=].value = "Weichgewebenekrose Becken"
* #10065793 ^designation[+].language = #de-DE
* #10065793 ^designation[=].value = "Weichteilgewebenekrose des Beckens"
* #10065793 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben des Beckens auftritt."
* #10065793 ^property[+].code = #grad3
* #10065793 ^property[=].valueString = "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
* #10065793 ^property[+].code = #grad4
* #10065793 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065793 ^property[+].code = #grad5
* #10065793 ^property[=].valueString = "Tod"
* #10003988 "Rückenschmerzen"
* #10003988 ^designation[+].language = #de-DE
* #10003988 ^designation[=].value = "low back pain"
* #10003988 ^designation[+].language = #de-DE
* #10003988 ^designation[=].value = "Lumbago"
* #10003988 ^designation[+].language = #de-DE
* #10003988 ^designation[=].value = "Hexenschuss"
* #10003988 ^definition = "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl im Rückenbereich."
* #10003988 ^property[+].code = #grad3
* #10003988 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10003988 ^property[+].code = #grad4
* #10003988 ^property[=].valueString = "-"
* #10003988 ^property[+].code = #grad5
* #10003988 ^property[=].valueString = "-"
* #10033425 "Schmerz in Extremität"
* #10033425 ^designation[+].language = #de-DE
* #10033425 ^designation[=].value = "Gliederschmerz"
* #10033425 ^definition = "Eine Störung, gekennzeichnet durch deutliches Beschwerdegefühl in den oberen oder unteren Extremitäten."
* #10033425 ^property[+].code = #grad3
* #10033425 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10033425 ^property[+].code = #grad4
* #10033425 ^property[=].valueString = "-"
* #10033425 ^property[+].code = #grad5
* #10033425 ^property[=].valueString = "-"
* #10039722 "Skoliose"
* #10039722 ^designation[+].language = #de-DE
* #10039722 ^designation[=].value = "Seitliche Rückgratverkrümmung"
* #10039722 ^definition = "Eine Störung, gekennzeichnet durch eine Verformung der seitlichen Kurvatur der WS."
* #10039722 ^property[+].code = #grad3
* #10039722 ^property[=].valueString = ">45 Grad; skapulare Prominenz bei Vorwärtsbeugung; operative Intervention angezeigt; Einschränkung der selbstversorgenden ATL; behindernd"
* #10039722 ^property[+].code = #grad4
* #10039722 ^property[=].valueString = "-"
* #10039722 ^property[+].code = #grad5
* #10039722 ^property[=].valueString = "-"
* #10044684 "Trismus"
* #10044684 ^designation[+].language = #de-DE
* #10044684 ^designation[=].value = "Eingeschränkte Mundöffnung"
* #10044684 ^designation[+].language = #de-DE
* #10044684 ^designation[=].value = "Kieferklemme"
* #10044684 ^designation[+].language = #de-DE
* #10044684 ^designation[=].value = "Kiefersperre"
* #10044684 ^definition = "Eine Störung, gekennzeichnet durch die Unfähigkeit, den Mund aufgrund einer Herabsetzung des Bewegungsumfanges der Kaumuskulatur vollständig zu öffnen."
* #10044684 ^property[+].code = #grad3
* #10044684 ^property[=].valueString = "Verminderter Bewegungsumfang unfähig, sich oral zu ernähren oder zu hydratieren (mit Flüssigkeit zu versorgen)"
* #10044684 ^property[+].code = #grad4
* #10044684 ^property[=].valueString = "-"
* #10044684 ^property[+].code = #grad5
* #10044684 ^property[=].valueString = "-"
* #10048706 "Verminderung des Bewegungsumfangs eines Gelenkes"
* #10048706 ^designation[+].language = #de-DE
* #10048706 ^designation[=].value = "Eingeschränkter Bewegungsbereich im Gelenk"
* #10048706 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Beweglichkeit irgendeines Gelenkes."
* #10048706 ^property[+].code = #grad3
* #10048706 ^property[=].valueString = ">50% Verminderung des Bewegungsbereiches; Einschränkung der selbstversorgenden ATL;"
* #10048706 ^property[+].code = #grad4
* #10048706 ^property[=].valueString = "-"
* #10048706 ^property[+].code = #grad5
* #10048706 ^property[=].valueString = "-"
* #10065796 "Verminderung des Bewegungsumfangs der HWS"
* #10065796 ^designation[+].language = #de-DE
* #10065796 ^designation[=].value = "Eingeschränkter Bewegungsbereich der Halswirbelsäule"
* #10065796 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Beweglichkeit der Halswirbelsäulengelenke."
* #10065796 ^property[+].code = #grad3
* #10065796 ^property[=].valueString = "Vollständige Versteifung / verschmolzen über mehrere Segment ohne C-Wirbel Drehung"
* #10065796 ^property[+].code = #grad4
* #10065796 ^property[=].valueString = "-"
* #10065796 ^property[+].code = #grad5
* #10065796 ^property[=].valueString = "-"
* #10065800 "Verminderung des Bewegungsumfanges der LWS"
* #10065800 ^designation[+].language = #de-DE
* #10065800 ^designation[=].value = "Eingeschränkter Bewegungsbereich in Lendenwirbelsäule"
* #10065800 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Beweglichkeit der Lendenwirbelsäulengelenke."
* #10065800 ^property[+].code = #grad3
* #10065800 ^property[=].valueString = ">50% Verminderung des LWS-Bewegungsbereiches; assoziiert mit Symptomen der Versteifung oder verschmolzen über mehrere Segmente ohne L-Wirbelbeugung (z. B. unfähig ein sehr leichtes Objekt aufzuheben)"
* #10065800 ^property[+].code = #grad4
* #10065800 ^property[=].valueString = "-"
* #10065800 ^property[+].code = #grad5
* #10065800 ^property[=].valueString = "-"
* #10018761 "Wachstumshemmung"
* #10018761 ^designation[+].language = #de-DE
* #10018761 ^designation[=].value = "Wachstumsstörung"
* #10018761 ^designation[+].language = #de-DE
* #10018761 ^designation[=].value = "Wachstumsunterdrückung"
* #10018761 ^definition = "Eine Störung gekennzeichnet durch eine Statur, die für das Alter kleiner als normal ist."
* #10018761 ^property[+].code = #grad3
* #10018761 ^property[=].valueString = "Verringerung der Wachstumsgeschwindigkeit um >=50% idealerweise gemessen über die Periode eines Jahres"
* #10018761 ^property[+].code = #grad4
* #10018761 ^property[=].valueString = "-"
* #10018761 ^property[+].code = #grad5
* #10018761 ^property[=].valueString = "-"
* #10065779 "Weichgewebenekrose, Kopf(-bereich)"
* #10065779 ^designation[+].language = #de-DE
* #10065779 ^designation[=].value = "Kopf- Weichgewebenekrose"
* #10065779 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben des Kopfes auftritt."
* #10065779 ^property[+].code = #grad3
* #10065779 ^property[=].valueString = "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
* #10065779 ^property[+].code = #grad4
* #10065779 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065779 ^property[+].code = #grad5
* #10065779 ^property[=].valueString = "Tod"
* #10065777 "Weichgewebenekrose, untere Extremität"
* #10065777 ^designation[+].language = #de-DE
* #10065777 ^designation[=].value = "Weichgewebenekrose untere Gliedmaße"
* #10065777 ^designation[+].language = #de-DE
* #10065777 ^designation[=].value = "Weichteilnekrose der unteren Extremität"
* #10065777 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben der unteren Gliedmaßen auftritt."
* #10065777 ^property[+].code = #grad3
* #10065777 ^property[=].valueString = "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
* #10065777 ^property[+].code = #grad4
* #10065777 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065777 ^property[+].code = #grad5
* #10065777 ^property[=].valueString = "Tod"
* #10065778 "Weichgewebenekrose, obere Extremität"
* #10065778 ^designation[+].language = #de-DE
* #10065778 ^designation[=].value = "Weichgewebenekrose obere Gliedmaßen"
* #10065778 ^designation[+].language = #de-DE
* #10065778 ^designation[=].value = "Weichteilnekrose der oberen Extremität"
* #10065778 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der in den Weichgeweben der oberen Gliedmaßen auftritt."
* #10065778 ^property[+].code = #grad3
* #10065778 ^property[=].valueString = "Operatives Debridement oder andere invasive Intervention angezeigt (z. B. Geweberekonstruktion, Lappen oder Transplantation)"
* #10065778 ^property[+].code = #grad4
* #10065778 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065778 ^property[+].code = #grad5
* #10065778 ^property[=].valueString = "Tod"
* #10065798 "Weichgewebefibrose, oberflächliche"
* #10065798 ^designation[+].language = #de-DE
* #10065798 ^designation[=].value = "Oberflächliche Weichgewebsnekrose"
* #10065798 ^definition = "Eine Störung, gekennzeichnet durch fibrotische Degeneration des oberflächlichen Bindegewebes."
* #10065798 ^property[+].code = #grad3
* #10065798 ^property[=].valueString = "Schwere Induration; unfähig, die Haut zu verschieben oder zu kneifen; begrenzende Gelenk- oder Öffnungsbewegung (z. B. Mund, Anus); Einschränkung der selbstversorgenden ATL"
* #10065798 ^property[+].code = #grad4
* #10065798 ^property[=].valueString = "Generalisiert; assoziiert mit Zeichen oder Symptomen behindernden Atmens oder der Nahrungsaufnahme"
* #10065798 ^property[+].code = #grad5
* #10065798 ^property[=].valueString = "Tod"
* #10065738 "Ungleiche Gliedmaßenlänge"
* #10065738 ^designation[+].language = #de-DE
* #10065738 ^designation[=].value = "-"
* #10065738 ^definition = "Eine Störung, gekennzeichnet durch einen Unterschied (Diskrepanz) zwischen den Längen der oberen oder unteren Extremitäten."
* #10065738 ^property[+].code = #grad3
* #10065738 ^property[=].valueString = "Schwerwiegende Längendiskrepanz >5cm; Einschränkung der selbstversorgenden ATL; elektive operative Intervention angezeigt"
* #10065738 ^property[+].code = #grad4
* #10065738 ^property[=].valueString = "-"
* #10065738 ^property[+].code = #grad5
* #10065738 ^property[=].valueString = "-"
* #10028395 "Bewegungsapparat und Bindegewebe - Sonstiges, zu spezifizieren"
* #10028395 ^designation[+].language = #de-DE
* #10028395 ^designation[=].value = "-"
* #10028395 ^definition = "Sonstige, zu spezifizierende Störungen des Bewegungsapparates und Bindegewebes, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10028395 ^property[+].code = #grad3
* #10028395 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10028395 ^property[+].code = #grad4
* #10028395 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10028395 ^property[+].code = #grad5
* #10028395 ^property[=].valueString = "Tod"
* #10048293 "Leukämie, sekundär durch onkologische Chemotherapie"
* #10048293 ^designation[+].language = #de-DE
* #10048293 ^designation[=].value = "Leukämie, verursacht durch onkologische Chemotherapie"
* #10048293 ^definition = "Eine Erkrankung, charakterisiert als Leukämie, entstanden als Ergebnis mutagener Wirkungen chemotherapeutischer Agentien."
* #10048293 ^property[+].code = #grad3
* #10048293 ^property[=].valueString = "-"
* #10048293 ^property[+].code = #grad4
* #10048293 ^property[=].valueString = "Vorhanden"
* #10048293 ^property[+].code = #grad5
* #10048293 ^property[=].valueString = "Tod"
* #10028533 "Myelodysplastisches Syndrom (MDS)"
* #10028533 ^definition = "Eine Erkrankung, gekennzeichnet durch eine gesundheitlich unzureichende hämatopoietische Zellerzeugung durch das Knochenmark."
* #10028533 ^property[+].code = #grad3
* #10028533 ^property[=].valueString = "-"
* #10028533 ^property[+].code = #grad4
* #10028533 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10028533 ^property[+].code = #grad5
* #10028533 ^property[=].valueString = "Tod"
* #10049737 "Sekundäre Malignität, behandlungsassoziiert"
* #10049737 ^designation[+].language = #de-DE
* #10049737 ^designation[=].value = "Therapiebedingte maligne Zweiterkrankung"
* #10049737 ^designation[+].language = #de-DE
* #10049737 ^designation[=].value = "Bösartige Zweiterkrankung aufgrund Intervention"
* #10049737 ^definition = "Eine Erkrankung, gekennzeichnet durch die Entwicklung einer Malignität, aller Wahrscheinlichkeit nach als Ergebnis der Behandlung einer vorher existierenden Malignität."
* #10049737 ^property[+].code = #grad3
* #10049737 ^property[=].valueString = "Nicht lebensbedrohliche sekundäre Malignität"
* #10049737 ^property[+].code = #grad4
* #10049737 ^property[=].valueString = "Akut lebensbedrohliche sekundäre Malignität; Blastenkrise bei Leukämie"
* #10049737 ^property[+].code = #grad5
* #10049737 ^property[=].valueString = "Tod"
* #10045158 "Tumorschmerz"
* #10045158 ^designation[+].language = #de-DE
* #10045158 ^designation[=].value = "-"
* #10045158 ^definition = "Eine Störung, gekennzeichnet durch deutliche Beschwerden aufgrund einer Neoplasie, die auf einen Nerven drücken, Blutgefäße blockiert, sich entzündet haben oder Frakturen durch Metastasen erzeugen kann."
* #10045158 ^property[+].code = #grad3
* #10045158 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10045158 ^property[+].code = #grad4
* #10045158 ^property[=].valueString = "-"
* #10045158 ^property[+].code = #grad5
* #10045158 ^property[=].valueString = "-"
* #10029104 "Neoplasien, gutartig, bösartig und/oder unbekannten Verhaltens - Sonstige, zu spezifizieren"
* #10029104 ^designation[+].language = #de-DE
* #10029104 ^designation[=].value = "-"
* #10029104 ^definition = "Sonstige, zu spezifizierende Störungen bei gut und bösartigen oder unspezifischen und unsicheren Neoplasien, bei denen unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10029104 ^property[+].code = #grad3
* #10029104 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10029104 ^property[+].code = #grad4
* #10029104 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10029104 ^property[+].code = #grad5
* #10029104 ^property[=].valueString = "Tod"
* #10053662 "Abducens Störung"
* #10053662 ^designation[+].language = #de-DE
* #10053662 ^designation[=].value = "Nervus abducens Erkrankung"
* #10053662 ^designation[+].language = #de-DE
* #10053662 ^designation[=].value = "Hirnnervenausfall"
* #10053662 ^designation[+].language = #de-DE
* #10053662 ^designation[=].value = "Erkrankung im Nervus abducens"
* #10053662 ^definition = "Eine Störung, gekennzeichnet durch die Beteiligung des Nervus abducens (6. Kopfnerv)."
* #10053662 ^property[+].code = #grad3
* #10053662 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10053662 ^property[+].code = #grad4
* #10053662 ^property[=].valueString = "-"
* #10053662 ^property[+].code = #grad5
* #10053662 ^property[=].valueString = "-"
* #10060929 "Accessorius Störung"
* #10060929 ^designation[+].language = #de-DE
* #10060929 ^designation[=].value = "Nervus accessorius Störung"
* #10060929 ^designation[+].language = #de-DE
* #10060929 ^designation[=].value = "Accessorius Krankheit"
* #10060929 ^designation[+].language = #de-DE
* #10060929 ^designation[=].value = "XI. Kopfnervausfall"
* #10060929 ^definition = "Eine Störung, gekennzeichnet durch die Beteiligung des Nervus accessorius (11. Kopfnerv)."
* #10060929 ^property[+].code = #grad3
* #10060929 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10060929 ^property[+].code = #grad4
* #10060929 ^property[=].valueString = "-"
* #10060929 ^property[+].code = #grad5
* #10060929 ^property[=].valueString = "-"
* #10000521 "Akustikus Störung o. n. A"
* #10000521 ^designation[+].language = #de-DE
* #10000521 ^designation[=].value = "Hörnerverkrankung, o. n. A."
* #10000521 ^designation[+].language = #de-DE
* #10000521 ^designation[=].value = "Akustikus'-Nerv'-Erkrankung,"
* #10000521 ^designation[+].language = #de-DE
* #10000521 ^designation[=].value = "8. Hirnnervenausfall"
* #10000521 ^designation[+].language = #de-DE
* #10000521 ^designation[=].value = "Erkrankung des Gehörnerv"
* #10000521 ^designation[+].language = #de-DE
* #10000521 ^designation[=].value = "N. acusticus Erkrankung"
* #10000521 ^definition = "Eine Störung, gekennzeichnet durch die Beteiligung des Nervus acusticus (8. Kopfnerv)."
* #10000521 ^property[+].code = #grad3
* #10000521 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10000521 ^property[+].code = #grad4
* #10000521 ^property[=].valueString = "-"
* #10000521 ^property[+].code = #grad5
* #10000521 ^property[=].valueString = "-"
* #10001540 "Akathisie"
* #10001540 ^designation[+].language = #de-DE
* #10001540 ^designation[=].value = "Psychomotorische Unruhe"
* #10001540 ^definition = "Eine Störung, gekennzeichnet durch ein unangenehmes Gefühl innerer Ruhelosigkeit und Unfähigkeit, still zu sein; dies ist eine Nebenwirkung einiger psychotroper Medikamente."
* #10001540 ^property[+].code = #grad3
* #10001540 ^property[=].valueString = "Heftige Unruhe oder erhöhte motorische Aktivität; Einschränkung der selbstversorgenden ATL"
* #10001540 ^property[+].code = #grad4
* #10001540 ^property[=].valueString = "-"
* #10001540 ^property[+].code = #grad5
* #10001540 ^property[=].valueString = "-"
* #10001949 "Amnesie"
* #10001949 ^designation[+].language = #de-DE
* #10001949 ^designation[=].value = "Gedächtnisverlust"
* #10001949 ^designation[+].language = #de-DE
* #10001949 ^designation[=].value = "Erinnerungsstörung"
* #10001949 ^definition = "Eine Störung, gekennzeichnet durch systematischen und weitgehenden Verlust des Gedächtnisses."
* #10001949 ^property[+].code = #grad3
* #10001949 ^property[=].valueString = "Schwer; Langzeitgedächtnisverlust; Einschränkung der selbstversorgenden ATL"
* #10001949 ^property[+].code = #grad4
* #10001949 ^property[=].valueString = "-"
* #10001949 ^property[+].code = #grad5
* #10001949 ^property[=].valueString = "-"
* #10039906 "Krampfanfall"
* #10039906 ^designation[+].language = #de-DE
* #10039906 ^designation[=].value = "Epilepsie"
* #10039906 ^designation[+].language = #de-DE
* #10039906 ^designation[=].value = "epileptischer Anfall"
* #10039906 ^designation[+].language = #de-DE
* #10039906 ^designation[=].value = "Anfall"
* #10039906 ^definition = "Eine Störung, gekennzeichnet durch plötzliche, unwillkürliche Skelettmuskelkontraktionen mit Ursprung im Gehirn oder Hirnstamm."
* #10039906 ^property[+].code = #grad3
* #10039906 ^property[=].valueString = "Mehrfache Krampfanfälle trotz medizinischer Intervention"
* #10039906 ^property[+].code = #grad4
* #10039906 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10039906 ^property[+].code = #grad5
* #10039906 ^property[=].valueString = "Tod"
* #10002953 "Aphonie"
* #10002953 ^designation[+].language = #de-DE
* #10002953 ^designation[=].value = "Stimmverlust"
* #10002953 ^definition = "Eine Störung, gekennzeichnet durch die Unfähigkeit zu sprechen. Dies kann durch Verletzungen der Stimmlippen oder funktional (psychogen) bedingt sein."
* #10002953 ^property[+].code = #grad3
* #10002953 ^property[=].valueString = "Stimmlosigkeit; unfähig zu sprechen"
* #10002953 ^property[+].code = #grad4
* #10002953 ^property[=].valueString = "-"
* #10002953 ^property[+].code = #grad5
* #10002953 ^property[=].valueString = "-"
* #10003074 "Arachnoiditis"
* #10003074 ^designation[+].language = #de-DE
* #10003074 ^designation[=].value = "Entzündung der Spinnenhaut des ZNS"
* #10003074 ^definition = "Eine Störung, gekennzeichnet durch Entzündung der Arachnoidalmembran (Spinnwebenmembran) und des angrenzenden subarachnoidalen Raumes."
* #10003074 ^property[+].code = #grad3
* #10003074 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10003074 ^property[+].code = #grad4
* #10003074 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10003074 ^property[+].code = #grad5
* #10003074 ^property[=].valueString = "Tod"
* #10003591 "Ataxie"
* #10003591 ^designation[+].language = #de-DE
* #10003591 ^designation[=].value = "Gangunsicherheit"
* #10003591 ^designation[+].language = #de-DE
* #10003591 ^designation[=].value = "Fallneigung"
* #10003591 ^designation[+].language = #de-DE
* #10003591 ^designation[=].value = "Koordinationsstörung"
* #10003591 ^designation[+].language = #de-DE
* #10003591 ^designation[=].value = "Störung der Bewegungskoordination"
* #10003591 ^definition = "Eine Störung, gekennzeichnet durch ein Fehlen der Koordination der Muskelbewegungen, hervorgerufen durch eine Beeinträchtigung oder Unfähigkeit, willentliche Aktivitäten zu vollziehen."
* #10003591 ^property[+].code = #grad3
* #10003591 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10003591 ^property[+].code = #grad4
* #10003591 ^property[=].valueString = "-"
* #10003591 ^property[+].code = #grad5
* #10003591 ^property[=].valueString = "-"
* #10065417 "Brachiale Plexopathie"
* #10065417 ^designation[+].language = #de-DE
* #10065417 ^designation[=].value = "Funktionsbeeinträchtigung des Armplexus"
* #10065417 ^definition = "Eine Störung, gekennzeichnet durch eine regionale Missempfindung des Armplexus, deutliche Beschwerden, Muskelschwäche und begrenzter Bewegung von Arm und Hand."
* #10065417 ^property[+].code = #grad3
* #10065417 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10065417 ^property[+].code = #grad4
* #10065417 ^property[=].valueString = "-"
* #10065417 ^property[+].code = #grad5
* #10065417 ^property[=].valueString = "-"
* #10013887 "Dysarthrie"
* #10013887 ^designation[+].language = #de-DE
* #10013887 ^designation[=].value = "Sprechstörung"
* #10013887 ^designation[+].language = #de-DE
* #10013887 ^designation[=].value = "Sprachstörung"
* #10013887 ^definition = "Eine Störung, gekennzeichnet durch langsames und undeutliches Sprechen, hervorgerufen durch die Unfähigkeit, die beim Sprechen benutzten Muskeln zu koordinieren."
* #10013887 ^property[+].code = #grad3
* #10013887 ^property[=].valueString = "Schwere Beeinträchtigung der Artikulation oder undeutliches Sprechen"
* #10013887 ^property[+].code = #grad4
* #10013887 ^property[=].valueString = "-"
* #10013887 ^property[+].code = #grad5
* #10013887 ^property[=].valueString = "-"
* #10062872 "Dysästhesie"
* #10062872 ^designation[+].language = #de-DE
* #10062872 ^designation[=].value = "Berührungsmissempfindung"
* #10062872 ^designation[+].language = #de-DE
* #10062872 ^designation[=].value = "Störung Sensibilität"
* #10062872 ^designation[+].language = #de-DE
* #10062872 ^designation[=].value = "sensorische Störung"
* #10062872 ^definition = "Eine Störung, gekennzeichnet durch eine Verfälschung der sensorischen Empfindung, mit dem Ergebnis einer anormalen und unangenehmen Empfindung ."
* #10062872 ^property[+].code = #grad3
* #10062872 ^property[=].valueString = "Schwere sensorische Veränderung; Einschränkung der selbstversorgenden ATL"
* #10062872 ^property[+].code = #grad4
* #10062872 ^property[=].valueString = "-"
* #10062872 ^property[+].code = #grad5
* #10062872 ^property[=].valueString = "-"
* #10013951 "Dysphasie"
* #10013951 ^designation[+].language = #de-DE
* #10013951 ^designation[=].value = "Minderung der Sprachausdrucksfähigkeit"
* #10013951 ^designation[+].language = #de-DE
* #10013951 ^designation[=].value = "Minderung der Sprachfähigkeit"
* #10013951 ^definition = "Eine Störung, gekennzeichnet durch Beeinträchtigung der (meist kognitiv bedingten) verbalen Kommunikationsfähigkeiten, oft als Ergebnis einer Gehirnschädigung."
* #10013951 ^property[+].code = #grad3
* #10013951 ^property[=].valueString = "Schwere Aufnahme oder Ausdrucksbesonderheiten; beeinträchtigte Fähigkeit zu lesen, schreiben oder einsichtig zu kommunizieren"
* #10013951 ^property[+].code = #grad4
* #10013951 ^property[=].valueString = "-"
* #10013951 ^property[+].code = #grad5
* #10013951 ^property[=].valueString = "-"
* #10014625 "Enzephalopathie"
* #10014625 ^designation[+].language = #de-DE
* #10014625 ^designation[=].value = "-"
* #10014625 ^definition = "Eine Störung, gekennzeichnet durch einen das Gehirn betreffenden, pathologischen Prozess."
* #10014625 ^property[+].code = #grad3
* #10014625 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10014625 ^property[+].code = #grad4
* #10014625 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10014625 ^property[+].code = #grad5
* #10014625 ^property[=].valueString = "Tod"
* #10015832 "Extrapyramidale Störungen"
* #10015832 ^designation[+].language = #de-DE
* #10015832 ^designation[=].value = "Extrapyramidale Erkrankung"
* #10015832 ^definition = "Eine Störung, gekennzeichnet durch anormale, sich wiederholende, unwillkürliche Muskelbewegungen, hektische Sprechweise und extreme Unruhe."
* #10015832 ^property[+].code = #grad3
* #10015832 ^property[=].valueString = "Schwere unwillentliche Bewegungen und Torticollis; Einschränkung der selbstversorgenden ATL"
* #10015832 ^property[+].code = #grad4
* #10015832 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10015832 ^property[+].code = #grad5
* #10015832 ^property[=].valueString = "Tod"
* #10027175 "Gedächtnisschwäche"
* #10027175 ^designation[+].language = #de-DE
* #10027175 ^designation[=].value = "-"
* #10027175 ^definition = "Eine Störung, gekennzeichnet durch Verschlechterung der Gedächtnisfunktion."
* #10027175 ^property[+].code = #grad3
* #10027175 ^property[=].valueString = "Schwere Gedächtnisbeeinträchtigung; Einschränkung der selbstversorgenden ATL"
* #10027175 ^property[+].code = #grad4
* #10027175 ^property[=].valueString = "-"
* #10027175 ^property[+].code = #grad5
* #10027175 ^property[=].valueString = "-"
* #10013911 "Geschmacksstörung"
* #10013911 ^designation[+].language = #de-DE
* #10013911 ^designation[=].value = "Dygeusie"
* #10013911 ^designation[+].language = #de-DE
* #10013911 ^designation[=].value = "Ageusie"
* #10013911 ^designation[+].language = #de-DE
* #10013911 ^designation[=].value = "Schmekstörung"
* #10013911 ^definition = "Eine Störung, gekennzeichnet durch anormale sensorische Erfahrung mit Nahrungsmitteln; dies kann mit einer Verminderung des Geruchssinnes verbunden sein."
* #10013911 ^property[+].code = #grad3
* #10013911 ^property[=].valueString = "-"
* #10013911 ^property[+].code = #grad4
* #10013911 ^property[=].valueString = "-"
* #10013911 ^property[+].code = #grad5
* #10013911 ^property[=].valueString = "-"
* #10051272 "Gesichtsmuskelschwäche"
* #10051272 ^designation[+].language = #de-DE
* #10051272 ^designation[=].value = "Fazialisparese"
* #10051272 ^designation[+].language = #de-DE
* #10051272 ^designation[=].value = "Gesichtsnervausfall"
* #10051272 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Kraft der Gesichtsmuskeln."
* #10051272 ^property[+].code = #grad3
* #10051272 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10051272 ^property[+].code = #grad4
* #10051272 ^property[=].valueString = "-"
* #10051272 ^property[+].code = #grad5
* #10051272 ^property[=].valueString = "-"
* #10061457 "Gesichtsnervstörung"
* #10061457 ^designation[+].language = #de-DE
* #10061457 ^designation[=].value = "Fazialisparese"
* #10061457 ^designation[+].language = #de-DE
* #10061457 ^designation[=].value = "Gesichtsnervausfall"
* #10061457 ^designation[+].language = #de-DE
* #10061457 ^designation[=].value = "Fazialislähmung"
* #10061457 ^definition = "Eine Störung, gekennzeichnet durch eine Beteiligung des Gesichtsnerven, Nervus facialis (7. Kopfnerv)."
* #10061457 ^property[+].code = #grad3
* #10061457 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10061457 ^property[+].code = #grad4
* #10061457 ^property[=].valueString = "-"
* #10061457 ^property[+].code = #grad5
* #10061457 ^property[=].valueString = "-"
* #10061185 "Glossopharyngeus Störung"
* #10061185 ^designation[+].language = #de-DE
* #10061185 ^designation[=].value = "Nervus glossopharyngeussstörung"
* #10061185 ^designation[+].language = #de-DE
* #10061185 ^designation[=].value = "Hirnnervenausfall"
* #10061185 ^definition = "Eine Störung, gekennzeichnet durch eine Beteiligung des N glossopharyngeus  (9. Kopfnerv)."
* #10061185 ^property[+].code = #grad3
* #10061185 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10061185 ^property[+].code = #grad4
* #10061185 ^property[=].valueString = "-"
* #10061185 ^property[+].code = #grad5
* #10061185 ^property[=].valueString = "-"
* #10014217 "Hirnödem"
* #10014217 ^designation[+].language = #de-DE
* #10014217 ^designation[=].value = "Hirndruck"
* #10014217 ^definition = "Eine Störung, gekennzeichnet durch ein Anschwellen des Gehirns aufgrund einer übermäßigen Ansammlung von Flüssigkeit."
* #10014217 ^property[+].code = #grad3
* #10014217 ^property[=].valueString = "-"
* #10014217 ^property[+].code = #grad4
* #10014217 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10014217 ^property[+].code = #grad5
* #10014217 ^property[=].valueString = "-"
* #10020508 "Hydozephalus"
* #10020508 ^designation[+].language = #de-DE
* #10020508 ^designation[=].value = "Wasserkopf"
* #10020508 ^definition = "Eine Störung, gekennzeichnet durch einen anormalen Anstieg zerebrospinaler Flüssigkeit in den Hirnventrikeln."
* #10020508 ^property[+].code = #grad3
* #10020508 ^property[=].valueString = "Schwere Symptome oder neurologische Defizite; Intervention angezeigt"
* #10020508 ^property[+].code = #grad4
* #10020508 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10020508 ^property[+].code = #grad5
* #10020508 ^property[=].valueString = "Tod"
* #10020765 "Hypersomnie"
* #10020765 ^designation[+].language = #de-DE
* #10020765 ^designation[=].value = "Exzessives Schlafbedürfnis"
* #10020765 ^designation[+].language = #de-DE
* #10020765 ^designation[=].value = "Tagesschlafbedürfnis"
* #10020765 ^definition = "Eine Störung, gekennzeichnet durch übermäßige Schläfrigkeit während des Tages."
* #10020765 ^property[+].code = #grad3
* #10020765 ^property[=].valueString = "Schwerwiegend erhöhter Bedarf an Schlaf"
* #10020765 ^property[+].code = #grad4
* #10020765 ^property[=].valueString = "-"
* #10020765 ^property[+].code = #grad5
* #10020765 ^property[=].valueString = "-"
* #10061212 "Hypoglossus Störung"
* #10061212 ^designation[+].language = #de-DE
* #10061212 ^designation[=].value = "Nervus hypoglossus Störung"
* #10061212 ^designation[+].language = #de-DE
* #10061212 ^designation[=].value = "Störung des Unterzungennerven"
* #10061212 ^definition = "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus hypoglossus. Unterzungennerven (12. Kopfnerv)."
* #10061212 ^property[+].code = #grad3
* #10061212 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10061212 ^property[+].code = #grad4
* #10061212 ^property[=].valueString = "-"
* #10061212 ^property[+].code = #grad5
* #10061212 ^property[=].valueString = "-"
* #10022763 "Intrakranielle Blutung"
* #10022763 ^designation[+].language = #de-DE
* #10022763 ^designation[=].value = "Zerebrale Blutung"
* #10022763 ^designation[+].language = #de-DE
* #10022763 ^designation[=].value = "Hirnblutung"
* #10022763 ^designation[+].language = #de-DE
* #10022763 ^designation[=].value = "Schädelblutung"
* #10022763 ^definition = "Eine Störung, gekennzeichnet durch Bluten im Schädel (innerhalb des Schädels)."
* #10022763 ^property[+].code = #grad3
* #10022763 ^property[=].valueString = "Ventikulostomie, ICP Monitoring, intraventrikuläre Thrombolyse oder operative Intervention angezeigt"
* #10022763 ^property[+].code = #grad4
* #10022763 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10022763 ^property[+].code = #grad5
* #10022763 ^property[=].valueString = "Tod"
* #10009845 "Kognitionsstörung"
* #10009845 ^designation[+].language = #de-DE
* #10009845 ^designation[=].value = "Kognitive Störung"
* #10009845 ^designation[+].language = #de-DE
* #10009845 ^designation[=].value = "Desorientiertheit"
* #10009845 ^designation[+].language = #de-DE
* #10009845 ^designation[=].value = "Wahrnehmungsstörung"
* #10009845 ^definition = "Eine Störung, gekennzeichnet durch eine auffällige Veränderung der kognitiven Funktion."
* #10009845 ^property[+].code = #grad3
* #10009845 ^property[=].valueString = "Schwere kognitive Behinderung; Signifikante Beeinträchtigung der Arbeits/Schul/Lebensleistung"
* #10009845 ^property[+].code = #grad4
* #10009845 ^property[=].valueString = "-"
* #10009845 ^property[+].code = #grad5
* #10009845 ^property[=].valueString = "-"
* #10010250 "Konzentrationsschwäche"
* #10010250 ^designation[+].language = #de-DE
* #10010250 ^designation[=].value = "-"
* #10010250 ^definition = "Eine Störung, gekennzeichnet durch eine Verschlechterung der Konzentrationsfähigkeit."
* #10010250 ^property[+].code = #grad3
* #10010250 ^property[=].valueString = "Schwerwiegende Beeinträchtigung der Aufmerksamkeit oder herabgemindertes Niveau der Konzentration; Einschränkung der selbstversorgenden ATL"
* #10010250 ^property[+].code = #grad4
* #10010250 ^property[=].valueString = "-"
* #10010250 ^property[+].code = #grad5
* #10010250 ^property[=].valueString = "-"
* #10019211 "Kopfschmerzen"
* #10019211 ^designation[+].language = #de-DE
* #10019211 ^designation[=].value = "Cephalgie"
* #10019211 ^definition = "Eine Störung, gekennzeichnet durch deutliche Beschwerden in verschiedenen Teilen des Kopfes, nicht begrenzt auf den Bereich irgendeines Nerven."
* #10019211 ^property[+].code = #grad3
* #10019211 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10019211 ^property[+].code = #grad4
* #10019211 ^property[=].valueString = "-"
* #10019211 ^property[+].code = #grad5
* #10019211 ^property[=].valueString = "-"
* #10024264 "Lethargie"
* #10024264 ^designation[+].language = #de-DE
* #10024264 ^designation[=].value = "-"
* #10024264 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung des Bewusstseins, charakterisiert durch geistige und körperliche Trägheit."
* #10024264 ^property[+].code = #grad3
* #10024264 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10024264 ^property[+].code = #grad4
* #10024264 ^property[=].valueString = "-"
* #10024264 ^property[+].code = #grad5
* #10024264 ^property[=].valueString = "-"
* #10024382 "Leukenzephalopathie"
* #10024382 ^designation[+].language = #de-DE
* #10024382 ^designation[=].value = "Krankhafte Veränderung der weißen Hirnsubstanz"
* #10024382 ^designation[+].language = #de-DE
* #10024382 ^designation[=].value = "Nichtentzündliche nekrotische Herde in der weißen Hirnsubstanz"
* #10024382 ^definition = "Eine Störung, gekennzeichnet durch diffuse reaktive Astrozytose mit multiplen Bereichen nekrotischer Herde ohne Entzündung."
* #10024382 ^property[+].code = #grad3
* #10024382 ^property[=].valueString = "Schwere Symptome; ausgedehnte T2/FLAIR Hyperintensitäten mit Beteiligung periventrikulärer weißer Substanz und Beteiligung von 2/3 oder mehr anfälliger Bereiche des Gehirns +/- mäßige bis schwere Vergrößerung des SAS und/oder mäßige bis schwere Ventrikulomegalie"
* #10024382 ^property[+].code = #grad4
* #10024382 ^property[=].valueString = "Lebensbedrohliche Folgen; ausgedehnte T2/FLAIR Hyperintensitäten mit Beteiligung periventrikulärer weißer Substanz und Beteiligung der meisten der anfälligen Bereiche des Gehirns +/- mäßige bis schwere Vergrößerung des SAS und/oder mäßige bis schwere Ventrikulomegalie"
* #10024382 ^property[+].code = #grad5
* #10024382 ^property[=].valueString = "Tod"
* #10027198 "Meningismus"
* #10027198 ^designation[+].language = #de-DE
* #10027198 ^designation[=].value = "-"
* #10027198 ^definition = "Eine Störung, gekennzeichnet durch Halssteifheit, Kopfschmerzen und Lichtscheu, hervorgerufen durch Reizung der zerebralen Meningen."
* #10027198 ^property[+].code = #grad3
* #10027198 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10027198 ^property[+].code = #grad4
* #10027198 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10027198 ^property[+].code = #grad5
* #10027198 ^property[=].valueString = "Tod"
* #10028524 "Myelitis"
* #10028524 ^designation[+].language = #de-DE
* #10028524 ^designation[=].value = "Rückenmarksentzündung"
* #10028524 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung des Rückenmarks. Symptome schließen Schwäche, Parästhesien, Sensibilitätsverlust, deutliche Beschwerden und Inkontinenz ein."
* #10028524 ^property[+].code = #grad3
* #10028524 ^property[=].valueString = "Schwere Schwäche oder schwerer Sensibilitätsverlust; Einschränkung der selbstversorgenden ATL"
* #10028524 ^property[+].code = #grad4
* #10028524 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10028524 ^property[+].code = #grad5
* #10028524 ^property[=].valueString = "Tod"
* #10040747 "Nasennebenhöhlenschmerz"
* #10040747 ^designation[+].language = #de-DE
* #10040747 ^designation[=].value = "Sinusschmerz"
* #10040747 ^designation[+].language = #de-DE
* #10040747 ^designation[=].value = "Stirnhöhlenschmerz"
* #10040747 ^definition = "Eine Störung, gekennzeichnet durch deutliche Beschwerden im Gesicht, zwischen den Augen oder an den oberen Zähnen, die ihren Ursprung in den Nebenhöhlen haben."
* #10040747 ^property[+].code = #grad3
* #10040747 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10040747 ^property[+].code = #grad4
* #10040747 ^property[=].valueString = "-"
* #10040747 ^property[+].code = #grad5
* #10040747 ^property[=].valueString = "-"
* #10065784 "Nekrose des Zentralnervensystems"
* #10065784 ^designation[+].language = #de-DE
* #10065784 ^designation[=].value = "Nekrose im Zentralnervensystem"
* #10065784 ^designation[+].language = #de-DE
* #10065784 ^designation[=].value = "ZNS- Nekrose"
* #10065784 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der im Gehirn und/oder Rückenmark auftritt."
* #10065784 ^property[+].code = #grad3
* #10065784 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10065784 ^property[+].code = #grad4
* #10065784 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065784 ^property[+].code = #grad5
* #10065784 ^property[=].valueString = "Tod"
* #10029223 "Neuralgie"
* #10029223 ^designation[+].language = #de-DE
* #10029223 ^designation[=].value = "Nervenschmerz"
* #10029223 ^definition = "Eine Störung, gekennzeichnet durch eine intensive schmerzhafte Empfindung entlang eines Nerven oder einer Gruppe von Nerven."
* #10029223 ^property[+].code = #grad3
* #10029223 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10029223 ^property[+].code = #grad4
* #10029223 ^property[=].valueString = "-"
* #10029223 ^property[+].code = #grad5
* #10029223 ^property[=].valueString = "-"
* #10029864 "Nystagmus"
* #10029864 ^designation[+].language = #de-DE
* #10029864 ^designation[=].value = "Unkontrollierte Augenbewegungen"
* #10029864 ^definition = "Eine Störung, gekennzeichnet durch unwillkürliche Bewegungen der Augäpfel."
* #10029864 ^property[+].code = #grad3
* #10029864 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10029864 ^property[+].code = #grad4
* #10029864 ^property[=].valueString = "-"
* #10029864 ^property[+].code = #grad5
* #10029864 ^property[=].valueString = "-"
* #10053661 "Oculomotorius Störung"
* #10053661 ^designation[+].language = #de-DE
* #10053661 ^designation[=].value = "Nervus oculomotorius Störung"
* #10053661 ^designation[+].language = #de-DE
* #10053661 ^designation[=].value = "Hirnnervenausfall, Okulomotoriuserkrankung"
* #10053661 ^definition = "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus oculomotorius (3. Kopfnerv)."
* #10053661 ^property[+].code = #grad3
* #10053661 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10053661 ^property[+].code = #grad4
* #10053661 ^property[=].valueString = "-"
* #10053661 ^property[+].code = #grad5
* #10053661 ^property[=].valueString = "-"
* #10056388 "Olfactorius Störung"
* #10056388 ^designation[+].language = #de-DE
* #10056388 ^designation[=].value = "Nervus olfactorius Störung"
* #10056388 ^designation[+].language = #de-DE
* #10056388 ^designation[=].value = "Hirnnervenausfall"
* #10056388 ^designation[+].language = #de-DE
* #10056388 ^designation[=].value = "Okulomotoriuserkrankung"
* #10056388 ^definition = "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus olfactorius (1. Kopfnerv)."
* #10056388 ^property[+].code = #grad3
* #10056388 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10056388 ^property[+].code = #grad4
* #10056388 ^property[=].valueString = "-"
* #10056388 ^property[+].code = #grad5
* #10056388 ^property[=].valueString = "-"
* #10034580 "Periphere motorische Neuropathie"
* #10034580 ^designation[+].language = #de-DE
* #10034580 ^designation[=].value = "Motorische Neuropathie"
* #10034580 ^designation[+].language = #de-DE
* #10034580 ^designation[=].value = "Periphere Parese"
* #10034580 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung oder Degeneration eines peripheren motorischen Nerven."
* #10034580 ^property[+].code = #grad3
* #10034580 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10034580 ^property[+].code = #grad4
* #10034580 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10034580 ^property[+].code = #grad5
* #10034580 ^property[=].valueString = "Tod"
* #10034620 "Periphere sensorische Neuropathie"
* #10034620 ^designation[+].language = #de-DE
* #10034620 ^designation[=].value = "Empfindungsstörung"
* #10034620 ^designation[+].language = #de-DE
* #10034620 ^designation[=].value = "Sensibilitätsstörung"
* #10034620 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung oder Degeneration eines peripheren sensorischen Nerven."
* #10034620 ^property[+].code = #grad3
* #10034620 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10034620 ^property[+].code = #grad4
* #10034620 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10034620 ^property[+].code = #grad5
* #10034620 ^property[=].valueString = "Tod"
* #10056238 "Phantomschmerz"
* #10056238 ^designation[+].language = #de-DE
* #10056238 ^designation[=].value = "-"
* #10056238 ^definition = "Eine Störung, gekennzeichnet durch deutliche Beschwerden, mit Bezug zu einem Gliedmaß oder Organ, das vom Körper entfernt oder physikalisch nicht Teil des Körpers ist."
* #10056238 ^property[+].code = #grad3
* #10056238 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10056238 ^property[+].code = #grad4
* #10056238 ^property[=].valueString = "-"
* #10056238 ^property[+].code = #grad5
* #10056238 ^property[=].valueString = "-"
* #10036653 "Präsynkope"
* #10036653 ^designation[+].language = #de-DE
* #10036653 ^designation[=].value = "Zustand von Ohnmacht"
* #10036653 ^definition = "Eine Störung, gekennzeichnet durch eine Episode von Benommenheit und Schwindel, die einer Synkope vorausgehen kann."
* #10036653 ^property[+].code = #grad3
* #10036653 ^property[=].valueString = "-"
* #10036653 ^property[+].code = #grad4
* #10036653 ^property[=].valueString = "-"
* #10036653 ^property[+].code = #grad5
* #10036653 ^property[=].valueString = "-"
* #10063636 "Pyramidenbahn-Syndrom"
* #10063636 ^designation[+].language = #de-DE
* #10063636 ^designation[=].value = "-"
* #10063636 ^definition = "Eine Störung, gekennzeichnet durch eine Dysfunktion der corticospinalen (pyramidalen) Bahnen des Rückenmarks. Symptome schließen einen Anstieg des Muskeltonus der unteren Extremitäten, Hyperreflexie, einen positiven Babinski und die Herabsetzung der feinmotorischen Koordination ein."
* #10063636 ^property[+].code = #grad3
* #10063636 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10063636 ^property[+].code = #grad4
* #10063636 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10063636 ^property[+].code = #grad5
* #10063636 ^property[=].valueString = "Tod"
* #10061928 "Radikulitis"
* #10061928 ^designation[+].language = #de-DE
* #10061928 ^designation[=].value = "Radikulopathie"
* #10061928 ^designation[+].language = #de-DE
* #10061928 ^designation[=].value = "Wurzelsyndrom"
* #10061928 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung, die eine Nervenwurzel betrifft. Patienten erfahren deutliche Beschwerden, die aufgrund des spinalen Drucks auf die damit verbundene Nervenwurzel entlang des Nervenverlaufs ausstrahlen."
* #10061928 ^property[+].code = #grad3
* #10061928 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10061928 ^property[+].code = #grad4
* #10061928 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10061928 ^property[+].code = #grad5
* #10061928 ^property[=].valueString = "Tod"
* #10038130 "Recurrensparese"
* #10038130 ^designation[+].language = #de-DE
* #10038130 ^designation[=].value = "Rekurrenslähmung"
* #10038130 ^designation[+].language = #de-DE
* #10038130 ^designation[=].value = "Lähmung des Nervus laryngeusrecur"
* #10038130 ^designation[+].language = #de-DE
* #10038130 ^designation[=].value = "Rekurrensparese"
* #10038130 ^definition = "Eine Störung, gekennzeichnet durch Lähmung des Nervus recurrens."
* #10038130 ^property[+].code = #grad3
* #10038130 ^property[=].valueString = "Schwere Symptome; medizinische Intervention angezeigt (z. B. Thyroplasty, Stimmlippeninjektion)"
* #10038130 ^property[+].code = #grad4
* #10038130 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10038130 ^property[+].code = #grad5
* #10038130 ^property[=].valueString = "Tod"
* #10063761 "Reversibles posteriores Leukenzephalopathie-Syndrom (RPLS)"
* #10063761 ^designation[+].language = #de-DE
* #10063761 ^designation[=].value = "Posteriores reversibles enzephalopathie-Syndrom"
* #10063761 ^definition = "Eine Störung, gekennzeichnet durch Kopfschmerzen, Veränderungen des Geisteszustandes, visuelle Störungen und Krämpfe, assoziiert mit bildgebenden Befunden einer posterioren Leukenzephalopathie. Diese wurde in Assoziation mit hypertensiver Enzephalopathie, Eklampsie und Immunsuppressiver und zytotoxischer Medikamententherapie beobachtet. Es handelt sich um einen akuten oder subakuten, reversiblen Zustand."
* #10063761 ^property[+].code = #grad3
* #10063761 ^property[=].valueString = "Schwere Symptome; sehr anormale Bildgebungsbefunde; Einschränkung der selbstversorgenden ATL"
* #10063761 ^property[+].code = #grad4
* #10063761 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10063761 ^property[+].code = #grad5
* #10063761 ^property[=].valueString = "Tod"
* #10041349 "Schläfrigkeit"
* #10041349 ^designation[+].language = #de-DE
* #10041349 ^designation[=].value = "Somnolenz"
* #10041349 ^definition = "Eine Störung, gekennzeichnet durch übermäßige Schläfrigkeit und Benommenheit."
* #10041349 ^property[+].code = #grad3
* #10041349 ^property[=].valueString = "Sopor (tiefer Schlaf) oder Stupor (Erstarrung)"
* #10041349 ^property[+].code = #grad4
* #10041349 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10041349 ^property[+].code = #grad5
* #10041349 ^property[=].valueString = "Tod"
* #10042244 "Schlaganfall"
* #10042244 ^designation[+].language = #de-DE
* #10042244 ^designation[=].value = "Apoplex"
* #10042244 ^designation[+].language = #de-DE
* #10042244 ^designation[=].value = "Zerebrovaskulären Insult"
* #10042244 ^designation[+].language = #de-DE
* #10042244 ^designation[=].value = "apoplexie"
* #10042244 ^designation[+].language = #de-DE
* #10042244 ^designation[=].value = "Hinrnschlag"
* #10042244 ^designation[+].language = #de-DE
* #10042244 ^designation[=].value = "Cerebrovaskuläres Ereignis"
* #10042244 ^designation[+].language = #de-DE
* #10042244 ^designation[=].value = "Apoplektischer Insult"
* #10042244 ^definition = "Eine Krankheitsbild, gekennzeichnet durch einen plötzlichen Verlust der sensorischen Funktionen, aufgrund eines intrakraniellen Ereignisses."
* #10042244 ^property[+].code = #grad3
* #10042244 ^property[=].valueString = "Schwere neurologische Defizite"
* #10042244 ^property[+].code = #grad4
* #10042244 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10042244 ^property[+].code = #grad5
* #10042244 ^property[=].valueString = "Tod"
* #10013573 "Schwindel"
* #10013573 ^designation[+].language = #de-DE
* #10013573 ^designation[=].value = "Benommenheit"
* #10013573 ^definition = "Eine Störung, gekennzeichnet durch eine verstörende Empfindung von Benommenheit, Unruhe, Schwindelgefühl, Drehen oder Schaukeln."
* #10013573 ^property[+].code = #grad3
* #10013573 ^property[=].valueString = "Schwere Unsicherheit oder Bewegungsempfindung; Einschränkung der selbstversorgenden ATL"
* #10013573 ^property[+].code = #grad4
* #10013573 ^property[=].valueString = "-"
* #10013573 ^property[+].code = #grad5
* #10013573 ^property[=].valueString = "-"
* #10033987 "Sensibilitätsstörung"
* #10033987 ^designation[+].language = #de-DE
* #10033987 ^designation[=].value = "Parästhesie"
* #10033987 ^definition = "Eine Störung, gekennzeichnet durch funktionelle Störungen sensibler Neuronen, mit dem Ergebnis anormaler kutaner Empfindungen von Kribbeln, Taubheit, Druck, Kälte und Wärme, die in Abwesenheit eines Reizes erfahren werden."
* #10033987 ^property[+].code = #grad3
* #10033987 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10033987 ^property[+].code = #grad4
* #10033987 ^property[=].valueString = "-"
* #10033987 ^property[+].code = #grad5
* #10033987 ^property[=].valueString = "-"
* #10041416 "Spastische Lähmung"
* #10041416 ^designation[+].language = #de-DE
* #10041416 ^designation[=].value = "Spastizität"
* #10041416 ^definition = "Eine Erkrankung, gekennzeichnet durch einen erhöhten unwillkürlichen Muskeltonus, der die Bereiche befällt, die mit willkürlichen Bewegungen interferieren. Dies verursacht Gang-, Bewegungs- und Sprachstörungen."
* #10041416 ^property[+].code = #grad3
* #10041416 ^property[=].valueString = "Schwerer Anstieg des Muskeltonus und Erhöhung des Widerstandes im Bewegungsbereich"
* #10041416 ^property[+].code = #grad4
* #10041416 ^property[=].valueString = "Lebensbedrohliche Folgen; unfähig, sich aktiv oder passiv im Bewegungsbereich zu bewegen"
* #10041416 ^property[+].code = #grad5
* #10041416 ^property[=].valueString = "Tod"
* #10042772 "Synkope"
* #10042772 ^designation[+].language = #de-DE
* #10042772 ^designation[=].value = "Ohnmacht"
* #10042772 ^designation[+].language = #de-DE
* #10042772 ^designation[=].value = "Kollaps"
* #10042772 ^definition = "Eine Störung, gekennzeichnet durch einen spontanen Verlust des Bewusstseins, verursacht durch ungenügende Blutversorgung des Gehirns."
* #10042772 ^property[+].code = #grad3
* #10042772 ^property[=].valueString = "Ohnmacht; orthostatische Kollaps"
* #10042772 ^property[+].code = #grad4
* #10042772 ^property[=].valueString = "-"
* #10042772 ^property[+].code = #grad5
* #10042772 ^property[=].valueString = "-"
* #10044391 "Transistorische ischämische Attacke (TIA)"
* #10044391 ^designation[+].language = #de-DE
* #10044391 ^designation[=].value = "Vorübergehende Durchblutungsstörung des Gehirns"
* #10044391 ^designation[+].language = #de-DE
* #10044391 ^designation[=].value = "TIA"
* #10044391 ^designation[+].language = #de-DE
* #10044391 ^designation[=].value = "transitorische ischämische Attacke"
* #10044391 ^designation[+].language = #de-DE
* #10044391 ^designation[=].value = "RIND"
* #10044391 ^designation[+].language = #de-DE
* #10044391 ^designation[=].value = "reversibles ischämisches neurologisches Defizit"
* #10044391 ^definition = "Ein Krankheitsbild, gekennzeichnet durch eine kurze Attacke (weniger als 24 h) einer zerebralen Dysfunktion vaskulären Ursprungs, ohne anhaltenden neurologischen Ausfall."
* #10044391 ^property[+].code = #grad3
* #10044391 ^property[=].valueString = "-"
* #10044391 ^property[+].code = #grad4
* #10044391 ^property[=].valueString = "-"
* #10044391 ^property[+].code = #grad5
* #10044391 ^property[=].valueString = "-"
* #10044565 "Tremor"
* #10044565 ^designation[+].language = #de-DE
* #10044565 ^designation[=].value = "-"
* #10044565 ^definition = "Eine Störung, gekennzeichnet durch unkontrolliertes Schütteln des ganzen Körpers oder individueller Teile."
* #10044565 ^property[+].code = #grad3
* #10044565 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10044565 ^property[+].code = #grad4
* #10044565 ^property[=].valueString = "-"
* #10044565 ^property[+].code = #grad5
* #10044565 ^property[=].valueString = "-"
* #10060890 "Trigeminus Störung"
* #10060890 ^designation[+].language = #de-DE
* #10060890 ^designation[=].value = "Trigeminuserkrankung"
* #10060890 ^designation[+].language = #de-DE
* #10060890 ^designation[=].value = "Nervus trigeminus Störung"
* #10060890 ^definition = "Eine Krankheit, gekennzeichnet durch eine Beteiligung des Nervus trigeminus (5. Kopfnerv)."
* #10060890 ^property[+].code = #grad3
* #10060890 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10060890 ^property[+].code = #grad4
* #10060890 ^property[=].valueString = "-"
* #10060890 ^property[+].code = #grad5
* #10060890 ^property[=].valueString = "-"
* #10065836 "Trochlearis Störung"
* #10065836 ^designation[+].language = #de-DE
* #10065836 ^designation[=].value = "Nervus trochlearis Störung"
* #10065836 ^designation[+].language = #de-DE
* #10065836 ^designation[=].value = "Störung des schrägen, oberen Augenmuskels"
* #10065836 ^definition = "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus trochlearis (4. Kopfnerv)."
* #10065836 ^property[+].code = #grad3
* #10065836 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10065836 ^property[+].code = #grad4
* #10065836 ^property[=].valueString = "-"
* #10065836 ^property[+].code = #grad5
* #10065836 ^property[=].valueString = "-"
* #10028041 "Unwillkürliche Bewegungen"
* #10028041 ^designation[+].language = #de-DE
* #10028041 ^designation[=].value = "-"
* #10028041 ^definition = "Eine Störung, gekennzeichnet durch unkontrollierte und ziellose Bewegungen."
* #10028041 ^property[+].code = #grad3
* #10028041 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10028041 ^property[+].code = #grad4
* #10028041 ^property[=].valueString = "-"
* #10028041 ^property[+].code = #grad5
* #10028041 ^property[=].valueString = "-"
* #10061403 "Vagus Störung"
* #10061403 ^designation[+].language = #de-DE
* #10061403 ^designation[=].value = "Vagusnerv Erkrankung"
* #10061403 ^designation[+].language = #de-DE
* #10061403 ^designation[=].value = "Hirnnervenausfall"
* #10061403 ^designation[+].language = #de-DE
* #10061403 ^designation[=].value = "Nervus vagus Störung"
* #10061403 ^definition = "Eine Störung, gekennzeichnet durch eine Beteiligung des Nervus vagus (10. Kopfnerv)."
* #10061403 ^property[+].code = #grad3
* #10061403 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; mechanische Assistenz angezeigt"
* #10061403 ^property[+].code = #grad4
* #10061403 ^property[=].valueString = "-"
* #10061403 ^property[+].code = #grad5
* #10061403 ^property[=].valueString = "-"
* #10047166 "Vasovakale Synkope"
* #10047166 ^designation[+].language = #de-DE
* #10047166 ^designation[=].value = "Kurze Bewusstlosigkeit"
* #10047166 ^designation[+].language = #de-DE
* #10047166 ^designation[=].value = "Boygroup'-Syndrom"
* #10047166 ^designation[+].language = #de-DE
* #10047166 ^designation[=].value = "Vasovagale Reaktion"
* #10047166 ^definition = "Eine Störung, gekennzeichnet durch einen plötzlichen Blutdruckabfall, Bradykardie und periphere Vasodilation, die zum Bewusstseinsverlust führen kann. Dies resultiert aus einem Anstieg der Stimulation des Nervus vagus."
* #10047166 ^property[+].code = #grad3
* #10047166 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10047166 ^property[+].code = #grad4
* #10047166 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10047166 ^property[+].code = #grad5
* #10047166 ^property[=].valueString = "Tod"
* #10012373 "Verminderter Bewusstseinszustand"
* #10012373 ^designation[+].language = #de-DE
* #10012373 ^designation[=].value = "Verringerter Bewusstseinszustand"
* #10012373 ^designation[+].language = #de-DE
* #10012373 ^designation[=].value = "reduzierter Bewusstseinszustand"
* #10012373 ^designation[+].language = #de-DE
* #10012373 ^designation[=].value = "erniedrigter Bewusstseinszustand"
* #10012373 ^definition = "Eine Störung, gekennzeichnet durch eine Herabsetzung der Fähigkeit wahrzunehmen und zu antworten."
* #10012373 ^property[+].code = #grad3
* #10012373 ^property[=].valueString = "Schwierig aufzuwecken"
* #10012373 ^property[+].code = #grad4
* #10012373 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10012373 ^property[+].code = #grad5
* #10012373 ^property[=].valueString = "Tod"
* #10008164 "Zerbrospinales Flüssigkeitsleck"
* #10008164 ^designation[+].language = #de-DE
* #10008164 ^designation[=].value = "Verlust von Hirn'-/ Rückenmarksflüssigkeit"
* #10008164 ^definition = "Eine Störung, gekennzeichnet durch einen Verlust zerebrospinaler Flüssigkeit in das umgebende Gewebe."
* #10008164 ^property[+].code = #grad3
* #10008164 ^property[=].valueString = "Schwere Symptome; medizinische Intervention angezeigt"
* #10008164 ^property[+].code = #grad4
* #10008164 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10008164 ^property[+].code = #grad5
* #10008164 ^property[=].valueString = "Tod"
* #10023030 "Zerebrovaskuläre Ischämie"
* #10023030 ^designation[+].language = #de-DE
* #10023030 ^designation[=].value = "Zerebrovaskuläre Mangeldurchblutung"
* #10023030 ^designation[+].language = #de-DE
* #10023030 ^designation[=].value = "Hirnminderdurchblutung"
* #10023030 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung oder das Fehlen der Blutversorgung des Gehirns, verursacht durch Obstruktion (Thrombose oder Embolie) einer Arterie, mit der Folge neurologischer Schädigung."
* #10023030 ^property[+].code = #grad3
* #10023030 ^property[=].valueString = "-"
* #10023030 ^property[+].code = #grad4
* #10023030 ^property[=].valueString = "-"
* #10023030 ^property[+].code = #grad5
* #10023030 ^property[=].valueString = "-"
* #10029205 "Erkrankungen des Nervensystems - Sonstige  zu spezifizieren"
* #10029205 ^designation[+].language = #de-DE
* #10029205 ^designation[=].value = "Hemiparese"
* #10029205 ^definition = "Sonstige, zu spezifizierende Störungen des Nervensystems, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10029205 ^property[+].code = #grad3
* #10029205 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10029205 ^property[+].code = #grad4
* #10029205 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10029205 ^property[+].code = #grad5
* #10029205 ^property[=].valueString = "Tod"
* #10016479 "Fetaler Tod"
* #10016479 ^designation[+].language = #de-DE
* #10016479 ^designation[=].value = "Fetaltod"
* #10016479 ^designation[+].language = #de-DE
* #10016479 ^designation[=].value = "Todgeburt"
* #10016479 ^designation[+].language = #de-DE
* #10016479 ^designation[=].value = "Fötaler Tod"
* #10016479 ^definition = "Eine Störung, gekennzeichnet durch Tod in utero; Unvermögen des Konzeptionsproduktes (Fetus), Zeichen einer Atmung, eines Herzschlags oder einer definitiven Bewegung willkürlicher Muskulatur nach Ausstoß aus der Gebärmutter zu zeigen, ohne Möglichkeit einer Wiederbelebung."
* #10016479 ^property[+].code = #grad3
* #10016479 ^property[=].valueString = "-"
* #10016479 ^property[+].code = #grad4
* #10016479 ^property[=].valueString = "Fötaler Verlust jeglichen Schwangerschaftsalters"
* #10016479 ^property[+].code = #grad5
* #10016479 ^property[=].valueString = "-"
* #10054746 "Fetale Wachstumsverzögerung"
* #10054746 ^designation[+].language = #de-DE
* #10054746 ^designation[=].value = "Fetale Retardation"
* #10054746 ^designation[+].language = #de-DE
* #10054746 ^designation[=].value = "fetale Verzögerung"
* #10054746 ^definition = "Eine Störung, gekennzeichnet durch eine Hemmung des fetalen Wachstums, die in der Unfähigkeit des Fetus resultiert, sein potentielles Gewicht zu erreichen."
* #10054746 ^property[+].code = #grad3
* #10054746 ^property[=].valueString = "<5% Perzentile des Gewichts nach Schwangerschaftsalter"
* #10054746 ^property[+].code = #grad4
* #10054746 ^property[=].valueString = "<1% Perzentile des Gewichts nach Schwangerschaftsalter"
* #10054746 ^property[+].code = #grad5
* #10054746 ^property[=].valueString = "-"
* #10036595 "Frühgeburt"
* #10036595 ^designation[+].language = #de-DE
* #10036595 ^designation[=].value = "Prämature Geburt"
* #10036595 ^definition = "Eine Störung, gekennzeichnet durch Entbindung eines lebensfähigen Kindes vor dem Ende der Schwangerschaft. Typischerweise ist die Lebensfähigkeit zwischen der 20. und 37. Schwangerschaftswoche erreichbar."
* #10036595 ^property[+].code = #grad3
* #10036595 ^property[=].valueString = "Entbindung eines lebendgeborenen Kindes nach 24 bis 28 Schwangerschaftswochen"
* #10036595 ^property[+].code = #grad4
* #10036595 ^property[=].valueString = "Entbindung eines lebendgeborenen Kindes nach 24 Schwangerschaftswochen oder weniger"
* #10036595 ^property[+].code = #grad5
* #10036595 ^property[=].valueString = "-"
* #10045542 "Unbeabsichtigte Schwangerschaft"
* #10045542 ^designation[+].language = #de-DE
* #10045542 ^designation[=].value = "Ungewollte Schwangerschaft"
* #10045542 ^definition = "Eine Störung, gekennzeichnet durch eine unerwartete Schwangerschaft zur Zeit der Empfängnis."
* #10045542 ^property[+].code = #grad3
* #10045542 ^property[=].valueString = "Unbeabsichtigte Schwangerschaft"
* #10045542 ^property[+].code = #grad4
* #10045542 ^property[=].valueString = "-"
* #10045542 ^property[+].code = #grad5
* #10045542 ^property[=].valueString = "-"
* #10036585 "Schwangerschaft, Kindbett, perinatale Erkrankungen - Sonstiges, zu spezifizieren"
* #10036585 ^designation[+].language = #de-DE
* #10036585 ^designation[=].value = "-"
* #10036585 ^definition = "Sonstige, zu spezifizierende Störung der Schwangerschaft, des Wochenbettes und der Perinatalzeit, die als unerwünschtes Ereignis im Rahmen einer Behandlung auftritt."
* #10036585 ^property[+].code = #grad3
* #10036585 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10036585 ^property[+].code = #grad4
* #10036585 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10036585 ^property[+].code = #grad5
* #10036585 ^property[=].valueString = "Tod"
* #10001497 "Agitiertheit"
* #10001497 ^designation[+].language = #de-DE
* #10001497 ^designation[=].value = "Unruhe"
* #10001497 ^designation[+].language = #de-DE
* #10001497 ^designation[=].value = "Aufgeregtheit"
* #10001497 ^definition = "Eine Störung, gekennzeichnet durch einen Zustand der Gemütserregung mit unangenehmen Empfindungen der Reizbarkeit und Anspannung."
* #10001497 ^property[+].code = #grad3
* #10001497 ^property[=].valueString = "Schwere Agitiertheit; Krankenhauseinweisung nicht angezeigt"
* #10001497 ^property[+].code = #grad4
* #10001497 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10001497 ^property[+].code = #grad5
* #10001497 ^property[=].valueString = "Tod"
* #10002855 "Angstgefühl"
* #10002855 ^designation[+].language = #de-DE
* #10002855 ^designation[=].value = "Innere Unruhe"
* #10002855 ^designation[+].language = #de-DE
* #10002855 ^designation[=].value = "Andauernde Furcht"
* #10002855 ^designation[+].language = #de-DE
* #10002855 ^designation[=].value = "Beklemmung"
* #10002855 ^definition = "Eine Störung, gekennzeichnet durch die Befürchtung einer Gefahr und eines Schreckens, begleitet von Unruhe, Anspannung, Tachykardie und Atemnot, unabhängig von einem klar identifizierbaren Auslöseimpuls."
* #10002855 ^property[+].code = #grad3
* #10002855 ^property[=].valueString = "Schwere Symptome; Krankenhauseinweisung nicht angezeigt"
* #10002855 ^property[+].code = #grad4
* #10002855 ^property[=].valueString = "Lebensbedrohliche Folgen; Krankenhauseinweisung angezeigt"
* #10002855 ^property[+].code = #grad5
* #10002855 ^property[=].valueString = "Tod"
* #10002652 "Anorgasmie"
* #10002652 ^designation[+].language = #de-DE
* #10002652 ^designation[=].value = "Orgasmusunfähigkeit"
* #10002652 ^definition = "Eine Störung, gekennzeichnet durch die Unfähigkeit, einen Orgasmus zu erlangen."
* #10002652 ^property[+].code = #grad3
* #10002652 ^property[=].valueString = "-"
* #10002652 ^property[+].code = #grad4
* #10002652 ^property[=].valueString = "-"
* #10002652 ^property[+].code = #grad5
* #10002652 ^property[=].valueString = "-"
* #10012218 "Delirium"
* #10012218 ^designation[+].language = #de-DE
* #10012218 ^designation[=].value = "Wahn"
* #10012218 ^designation[+].language = #de-DE
* #10012218 ^designation[=].value = "Alkoholentzugspsychose"
* #10012218 ^designation[+].language = #de-DE
* #10012218 ^designation[=].value = "Entzugspsychosen, andere"
* #10012218 ^designation[+].language = #de-DE
* #10012218 ^designation[=].value = "Drogenentzugspsychose"
* #10012218 ^designation[+].language = #de-DE
* #10012218 ^designation[=].value = "Hirnorganisches Psychosyndrom"
* #10012218 ^designation[+].language = #de-DE
* #10012218 ^designation[=].value = "HOP (z.B. \"Durchgangssyndrom\")"
* #10012218 ^designation[+].language = #de-DE
* #10012218 ^designation[=].value = "kurzzeitiges Delir"
* #10012218 ^definition = "Eine Störung, gekennzeichnet durch eine akute und plötzliche Entwicklung von Konfusion, Sinnestäuschungen, Bewegungswechseln, Agitiertheit und Halluzinationen. Gewöhnlich ist dies ein umkehrbarer Zustand."
* #10012218 ^property[+].code = #grad3
* #10012218 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; Krankenhauseinweisung angezeigt"
* #10012218 ^property[+].code = #grad4
* #10012218 ^property[=].valueString = "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
* #10012218 ^property[+].code = #grad5
* #10012218 ^property[=].valueString = "Tod"
* #10012378 "Depression"
* #10012378 ^designation[+].language = #de-DE
* #10012378 ^designation[=].value = "Schwere Niedergeschlagenheit"
* #10012378 ^designation[+].language = #de-DE
* #10012378 ^designation[=].value = "tiefe Verstimmung"
* #10012378 ^designation[+].language = #de-DE
* #10012378 ^designation[=].value = "Schwermut"
* #10012378 ^definition = "Eine Störung, gekennzeichnet durch melancholische Gefühle von Trauer oder Elend."
* #10012378 ^property[+].code = #grad3
* #10012378 ^property[=].valueString = "Schwere depressive Symptome; Einschränkung der selbstversorgenden ATL; Krankenhauseinweisung angezeigt"
* #10012378 ^property[+].code = #grad4
* #10012378 ^property[=].valueString = "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
* #10012378 ^property[+].code = #grad5
* #10012378 ^property[=].valueString = "Tod"
* #10015533 "Euphorie"
* #10015533 ^designation[+].language = #de-DE
* #10015533 ^designation[=].value = "Hochstimmung"
* #10015533 ^definition = "Eine Störung, gekennzeichnet durch ein übertriebenes Gefühl von Wohlsein, das zu Ereignissen oder Reizen unverhältnismäßig erscheint."
* #10015533 ^property[+].code = #grad3
* #10015533 ^property[=].valueString = "Schwerwiegende Anhebung der Stimmungslage (z. B. Hypomanie)"
* #10015533 ^property[+].code = #grad4
* #10015533 ^property[=].valueString = "-"
* #10015533 ^property[+].code = #grad5
* #10015533 ^property[=].valueString = "-"
* #10019077 "Halluzinationen"
* #10019077 ^designation[+].language = #de-DE
* #10019077 ^designation[=].value = "Wahnvorstellungen"
* #10019077 ^definition = "Eine Störung, gekennzeichnet durch abwegige sinnliche Empfindungen in der Abwesenheit eines äußerlichen Reizes."
* #10019077 ^property[+].code = #grad3
* #10019077 ^property[=].valueString = "Schwere Halluzinationen; Krankenhauseinweisung nicht angezeigt"
* #10019077 ^property[+].code = #grad4
* #10019077 ^property[=].valueString = "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
* #10019077 ^property[+].code = #grad5
* #10019077 ^property[=].valueString = "Tod"
* #10024419 "Libido, vermindert"
* #10024419 ^designation[+].language = #de-DE
* #10024419 ^designation[=].value = "-"
* #10024419 ^definition = "Eine Störung, gekennzeichnet durch die Verringerung sexuellen Verlangens."
* #10024419 ^property[+].code = #grad3
* #10024419 ^property[=].valueString = "-"
* #10024419 ^property[+].code = #grad4
* #10024419 ^property[=].valueString = "-"
* #10024419 ^property[+].code = #grad5
* #10024419 ^property[=].valueString = "-"
* #10024421 "Libido, gesteigert"
* #10024421 ^designation[+].language = #de-DE
* #10024421 ^designation[=].value = "-"
* #10024421 ^definition = "Eine Störung, gekennzeichnet durch die Steigerung sexuellen Verlangens."
* #10024421 ^property[+].code = #grad3
* #10024421 ^property[=].valueString = "Starke Steigerung sexuellen Verlangens, die zu gefährdendem Verhalten führt"
* #10024421 ^property[+].code = #grad4
* #10024421 ^property[=].valueString = "-"
* #10024421 ^property[+].code = #grad5
* #10024421 ^property[=].valueString = "-"
* #10026749 "Manie"
* #10026749 ^designation[+].language = #de-DE
* #10026749 ^designation[=].value = "Wahnsinn"
* #10026749 ^designation[+].language = #de-DE
* #10026749 ^designation[=].value = "manische Episode"
* #10026749 ^definition = "Eine Störung, gekennzeichnet durch eine Erregung psychotischen Ausmaßes, die sich durch mentale und körperliche Hyperaktivität, Desorganisation des Verhaltens und erhöhte Stimmungslage zeigt."
* #10026749 ^property[+].code = #grad3
* #10026749 ^property[=].valueString = "Schwerwiegend manische Symptome (z. B. Hypomanie; größere sexuelle oder finanzielle Indiskretionen); Krankenhauseinweisung nicht angezeigt"
* #10026749 ^property[+].code = #grad4
* #10026749 ^property[=].valueString = "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
* #10026749 ^property[+].code = #grad5
* #10026749 ^property[=].valueString = "Tod"
* #10057066 "Orgasmus, verzögert"
* #10057066 ^designation[+].language = #de-DE
* #10057066 ^designation[=].value = "Verzögerter Höhepunkt"
* #10057066 ^definition = "Eine Störung, gekennzeichnet durch die sexuelle Dysfunktion einer Verzögerung der Klimax."
* #10057066 ^property[+].code = #grad3
* #10057066 ^property[=].valueString = "-"
* #10057066 ^property[+].code = #grad4
* #10057066 ^property[=].valueString = "-"
* #10057066 ^property[+].code = #grad5
* #10057066 ^property[=].valueString = "-"
* #10034719 "Persönlichkeitsveränderung"
* #10034719 ^designation[+].language = #de-DE
* #10034719 ^designation[=].value = "personality change"
* #10034719 ^designation[+].language = #de-DE
* #10034719 ^designation[=].value = "verzögerter Klimax"
* #10034719 ^designation[+].language = #de-DE
* #10034719 ^designation[=].value = "Persönlichkeitswechsel"
* #10034719 ^definition = "Eine Störung, gekennzeichnet durch eine auffällige Veränderung im Verhalten und Denken einer Person."
* #10034719 ^property[+].code = #grad3
* #10034719 ^property[=].valueString = "Schwere Persönlichkeitsveränderung; Krankenhauseinweisung nicht angezeigt"
* #10034719 ^property[+].code = #grad4
* #10034719 ^property[=].valueString = "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
* #10034719 ^property[+].code = #grad5
* #10034719 ^property[=].valueString = "Tod"
* #10037234 "Psychose"
* #10037234 ^designation[+].language = #de-DE
* #10037234 ^designation[=].value = "Bewusstseinsspaltung"
* #10037234 ^designation[+].language = #de-DE
* #10037234 ^designation[=].value = "Psychotische Störung"
* #10037234 ^definition = "Eine Störung, gekennzeichnet durch eine Persönlichkeitsveränderung, beeinträchtigtes Funktionieren und Realitätsverlust. Dies kann die Manifestation einer Schizophrenie, bipolaren Störung oder eines Hirntumors sein."
* #10037234 ^property[+].code = #grad3
* #10037234 ^property[=].valueString = "Schwere psychotische Symptome (z. B. paranoid; extreme Ungeordnetheit) Krankenhauseinweisung nicht angezeigt"
* #10037234 ^property[+].code = #grad4
* #10037234 ^property[=].valueString = "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
* #10037234 ^property[+].code = #grad5
* #10037234 ^property[=].valueString = "Tod"
* #10022437 "Schlaflosigkeit"
* #10022437 ^designation[+].language = #de-DE
* #10022437 ^designation[=].value = "Schlafstörung"
* #10022437 ^designation[+].language = #de-DE
* #10022437 ^designation[=].value = "Insomnia"
* #10022437 ^definition = "Eine Störung, gekennzeichnet durch die Schwierigkeit einzuschlafen und/oder schlafen zu bleiben."
* #10022437 ^property[+].code = #grad3
* #10022437 ^property[=].valueString = "Schwerwiegende Schwierigkeit einzuschlafen, durchzuschlafen oder frühes Erwachen"
* #10022437 ^property[+].code = #grad4
* #10022437 ^property[=].valueString = "-"
* #10022437 ^property[+].code = #grad5
* #10022437 ^property[=].valueString = "-"
* #10042458 "Suizidgedanken"
* #10042458 ^designation[+].language = #de-DE
* #10042458 ^designation[=].value = "Suizidvorstellungen"
* #10042458 ^definition = "Eine Störung, gekennzeichnet durch Gedanken, sich selbst das Leben zu nehmen."
* #10042458 ^property[+].code = #grad3
* #10042458 ^property[=].valueString = "Spezifischer Plan, Suizid zu begehen, ohne ernsthafte Absicht zu sterben, was eine Krankenhauseinweisung nicht erfordern muss"
* #10042458 ^property[+].code = #grad4
* #10042458 ^property[=].valueString = "Spezifischer Plan, Suizid zu begehen, mit ernsthafter Absicht zu sterben, was eine Krankenhauseinweisung erforderlich macht"
* #10042458 ^property[+].code = #grad5
* #10042458 ^property[=].valueString = "-"
* #10042464 "Suizidversuche"
* #10042464 ^designation[+].language = #de-DE
* #10042464 ^designation[=].value = "Selbstmordversuch"
* #10042464 ^designation[+].language = #de-DE
* #10042464 ^designation[=].value = "Selbsttötungsversuch"
* #10042464 ^designation[+].language = #de-DE
* #10042464 ^designation[=].value = "Freitodversuch"
* #10042464 ^definition = "Eine Störung, gekennzeichnet durch einen sich selbst zugefügten Schaden beim Versuch, das eigene Leben zu beenden."
* #10042464 ^property[+].code = #grad3
* #10042464 ^property[=].valueString = "Selbsttötungsversuch oder Geste ohne Absicht zu sterben, was eine Krankenhauseinweisung nicht erfordern muss"
* #10042464 ^property[+].code = #grad4
* #10042464 ^property[=].valueString = "Selbsttötungsversuch mit der Absicht zu sterben, was eine Krankenhauseinweisung erforderlich macht"
* #10042464 ^property[+].code = #grad5
* #10042464 ^property[=].valueString = "Tod"
* #10038743 "Unruhe"
* #10038743 ^designation[+].language = #de-DE
* #10038743 ^designation[=].value = "Ruhelosigkeit"
* #10038743 ^definition = "Eine Störung, gekennzeichnet durch die Unfähigkeit, sich auszuruhen, zu entspannen oder still zu sein."
* #10038743 ^property[+].code = #grad3
* #10038743 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10038743 ^property[+].code = #grad4
* #10038743 ^property[=].valueString = "-"
* #10038743 ^property[+].code = #grad5
* #10038743 ^property[=].valueString = "-"
* #10010300 "Verwirrung"
* #10010300 ^designation[+].language = #de-DE
* #10010300 ^designation[=].value = "Desorientiertheit"
* #10010300 ^designation[+].language = #de-DE
* #10010300 ^designation[=].value = "Konfusion"
* #10010300 ^definition = "Eine Störung, gekennzeichnet durch das Fehlen klaren geordneten Denkens und Verhaltens."
* #10010300 ^property[+].code = #grad3
* #10010300 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10010300 ^property[+].code = #grad4
* #10010300 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10010300 ^property[+].code = #grad5
* #10010300 ^property[=].valueString = "Tod"
* #10012260 "Wahnvorstellungen"
* #10012260 ^designation[+].language = #de-DE
* #10012260 ^designation[=].value = "Drogenentzugspsychose"
* #10012260 ^definition = "Eine Störung, gekennzeichnet durch abwegige persönliche Glaubensvorstellungen, trotz gegenteiliger Belege und gesundem Menschenverstand."
* #10012260 ^property[+].code = #grad3
* #10012260 ^property[=].valueString = "Schwere Einbildungssymptome; Einschränkung der selbstversorgenden ATL; Krankenhauseinweisung angezeigt"
* #10012260 ^property[+].code = #grad4
* #10012260 ^property[=].valueString = "Lebensbedrohliche Folgen, Gefahr, sich selbst oder andere zu schädigen; Krankenhauseinweisung angezeigt"
* #10012260 ^property[+].code = #grad5
* #10012260 ^property[=].valueString = "Tod"
* #10037175 "Psychiatrische Störungen - Sonstige, zu spezifizieren"
* #10037175 ^designation[+].language = #de-DE
* #10037175 ^designation[=].value = "-"
* #10037175 ^definition = "Sonstige, zu spezifizierende psychiatrische Störungen, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10037175 ^property[+].code = #grad3
* #10037175 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; behindernd; Einschränkung der selbstversorgenden ATL"
* #10037175 ^property[+].code = #grad4
* #10037175 ^property[=].valueString = "Lebensbedrohliche Folgen; Krankenhauseinweisung oder dringende Intervention angezeigt"
* #10037175 ^property[+].code = #grad5
* #10037175 ^property[=].valueString = "Tod"
* #10069339 "Akutes Nierenversagen"
* #10069339 ^designation[+].language = #de-DE
* #10069339 ^designation[=].value = "Akutes renales Versagen"
* #10069339 ^designation[+].language = #de-DE
* #10069339 ^designation[=].value = "Akute Niereninsufizienz"
* #10069339 ^designation[+].language = #de-DE
* #10069339 ^designation[=].value = "Akuter Nierenfunktionsverlust"
* #10069339 ^definition = "Eine Störung, gekennzeichnet durch einen akuten Verlust der Nierenfunktion, der traditionell als prärenal (niedriger Blutzufluss in die Niere), renal (Nierenschaden) und postrenal (Harnleiter- oder Blasenabflussbehinderung) klassifiziert wird."
* #10069339 ^property[+].code = #grad3
* #10069339 ^property[=].valueString = "Kreatinin >3 x Ausgangswert oder >4.0 mg/dL; Krankenhauseinweisung angezeigt"
* #10069339 ^property[+].code = #grad4
* #10069339 ^property[=].valueString = "Lebensbedrohliche Folgen; Dialyse angezeigt"
* #10069339 ^property[+].code = #grad5
* #10069339 ^property[=].valueString = "Tod"
* #10063057 "Blasenentzündung, nichtinfektiöse"
* #10063057 ^designation[+].language = #de-DE
* #10063057 ^designation[=].value = "Abakterielle Harnblasenentzündung"
* #10063057 ^designation[+].language = #de-DE
* #10063057 ^designation[=].value = "abakterielle Zystitis"
* #10063057 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung der Blase, die nicht durch eine Infektion der ableitenden Harnwege verursacht ist."
* #10063057 ^property[+].code = #grad3
* #10063057 ^property[=].valueString = "Makroskopische Hämaturie; Transfusion, i. v. Medikationen oder Krankenhauseinweisung angezeigt; elektive endoskopische, radiologische oder operative Intervention angezeigt"
* #10063057 ^property[+].code = #grad4
* #10063057 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende radiologische oder operative Intervention angezeigt"
* #10063057 ^property[+].code = #grad5
* #10063057 ^property[=].valueString = "Tod"
* #10048994 "Blasenkrampf"
* #10048994 ^designation[+].language = #de-DE
* #10048994 ^designation[=].value = "Harnblasenspassmus"
* #10048994 ^designation[+].language = #de-DE
* #10048994 ^designation[=].value = "Schmerzhafter Harndrang"
* #10048994 ^definition = "Eine Erkrankung, gekennzeichnet durch eine plötzliche und unwillkürliche Kontraktion der Blasenwand."
* #10048994 ^property[+].code = #grad3
* #10048994 ^property[=].valueString = "Krankenhauseinweisung angezeigt"
* #10048994 ^property[+].code = #grad4
* #10048994 ^property[=].valueString = "-"
* #10048994 ^property[+].code = #grad5
* #10048994 ^property[=].valueString = "Tod"
* #10063575 "Blasenperforation"
* #10063575 ^designation[+].language = #de-DE
* #10063575 ^designation[=].value = "-"
* #10063575 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Blasenwand."
* #10063575 ^property[+].code = #grad3
* #10063575 ^property[=].valueString = "Schwere Symptome; elektive radiologische, endoskopische oder operative Intervention angezeigt"
* #10063575 ^property[+].code = #grad4
* #10063575 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Organversagen; dringende operative Intervention angezeigt"
* #10063575 ^property[+].code = #grad5
* #10063575 ^property[=].valueString = "Tod"
* #10064848 "Chronische Nierenerkrankung"
* #10064848 ^designation[+].language = #de-DE
* #10064848 ^designation[=].value = "Chronische Niereninsuffizienz"
* #10064848 ^designation[+].language = #de-DE
* #10064848 ^designation[=].value = "chronisches Nierenversagen"
* #10064848 ^definition = "Eine Störung, gekennzeichnet durch den graduellen und normalerweise permanenten Verlust der Nierenfunktion mit dem Resultat eines Nierenversagens."
* #10064848 ^property[+].code = #grad3
* #10064848 ^property[=].valueString = "eGFR oder CrCl 29-15 ml/min/1.73 m2"
* #10064848 ^property[+].code = #grad4
* #10064848 ^property[=].valueString = "eGFR oder CrCl <15 ml/min/1.73 m2; Dialyse oder Nierentransplantation angezeigt"
* #10064848 ^property[+].code = #grad5
* #10064848 ^property[=].valueString = "Tod"
* #10019450 "Hämaturie"
* #10019450 ^designation[+].language = #de-DE
* #10019450 ^designation[=].value = "Blutiger Urin"
* #10019450 ^designation[+].language = #de-DE
* #10019450 ^designation[=].value = "Blutharnen"
* #10019450 ^designation[+].language = #de-DE
* #10019450 ^designation[=].value = "Blut im Urin"
* #10019450 ^definition = "Eine Störung, gekennzeichnet durch Laborergebnisse, die Blut im Urin anzeigen."
* #10019450 ^property[+].code = #grad3
* #10019450 ^property[=].valueString = "Makroskopische Hämaturie; Transfusion, i. v. Medikationen oder Krankenhauseinweisung angezeigt; elektive endoskopische, radiologische oder operative Intervention angezeigt; Einschränkung der selbstversorgenden ATL"
* #10019450 ^property[+].code = #grad4
* #10019450 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende radiologische oder operative Intervention angezeigt"
* #10019450 ^property[+].code = #grad5
* #10019450 ^property[=].valueString = "Tod"
* #10019489 "Hämoglobinurie"
* #10019489 ^designation[+].language = #de-DE
* #10019489 ^designation[=].value = "-"
* #10019489 ^definition = "Eine Störung, gekennzeichnet durch Laborergebnisse, die das Vorhandensein von freiem Hämoglobin im Urin anzeigen."
* #10019489 ^property[+].code = #grad3
* #10019489 ^property[=].valueString = "-"
* #10019489 ^property[+].code = #grad4
* #10019489 ^property[=].valueString = "-"
* #10019489 ^property[+].code = #grad5
* #10019489 ^property[=].valueString = "-"
* #10046593 "Harndrang,  vermehrter"
* #10046593 ^designation[+].language = #de-DE
* #10046593 ^designation[=].value = "Urindrang"
* #10046593 ^designation[+].language = #de-DE
* #10046593 ^designation[=].value = "Miktionsdran"
* #10046593 ^designation[+].language = #de-DE
* #10046593 ^designation[=].value = "Pollakisurie"
* #10046593 ^designation[+].language = #de-DE
* #10046593 ^designation[=].value = "Polyurie"
* #10046593 ^designation[+].language = #de-DE
* #10046593 ^designation[=].value = "Nykturei"
* #10046593 ^definition = "Eine Befindlichkeitsstörung, gekennzeichnet durch eine plötzlichen unwiderstehlichen Drang zu urinieren."
* #10046593 ^property[+].code = #grad3
* #10046593 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10046593 ^property[+].code = #grad4
* #10046593 ^property[=].valueString = "-"
* #10046593 ^property[+].code = #grad5
* #10046593 ^property[=].valueString = "-"
* #10046628 "Harnfarbveränderung"
* #10046628 ^designation[+].language = #de-DE
* #10046628 ^designation[=].value = "Urindiskoloration"
* #10046628 ^designation[+].language = #de-DE
* #10046628 ^designation[=].value = "Urinverfärbung"
* #10046628 ^designation[+].language = #de-DE
* #10046628 ^designation[=].value = "Veränderung der Harnfarbe"
* #10046628 ^definition = "Eine Störung, gekennzeichnet durch eine Farbveränderung des Urins."
* #10046628 ^property[+].code = #grad3
* #10046628 ^property[=].valueString = "-"
* #10046628 ^property[+].code = #grad4
* #10046628 ^property[=].valueString = "-"
* #10046628 ^property[+].code = #grad5
* #10046628 ^property[=].valueString = "-"
* #10046555 "Harnstau"
* #10046555 ^designation[+].language = #de-DE
* #10046555 ^designation[=].value = "Harnretention"
* #10046555 ^designation[+].language = #de-DE
* #10046555 ^designation[=].value = "Urinretention"
* #10046555 ^definition = "Eine Störung, gekennzeichnet durch die Ansammlung von Urin in der Blase aufgrund der Unfähigkeit zu urinieren."
* #10046555 ^property[+].code = #grad3
* #10046555 ^property[=].valueString = "Elektive operative oder radiologische Intervention angezeigt; substantieller Verlust der betroffenen Nierenfunktion oder Masse"
* #10046555 ^property[+].code = #grad4
* #10046555 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Organversagen; dringende operative Intervention angezeigt"
* #10046555 ^property[+].code = #grad5
* #10046555 ^property[=].valueString = "Tod"
* #10062225 "Harnwegsschmerz"
* #10062225 ^designation[+].language = #de-DE
* #10062225 ^designation[=].value = "Algurie"
* #10062225 ^definition = "Eine Befindlichkeitsstörung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Harntrakt."
* #10062225 ^property[+].code = #grad3
* #10062225 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10062225 ^property[+].code = #grad4
* #10062225 ^property[=].valueString = "-"
* #10062225 ^property[+].code = #grad5
* #10062225 ^property[=].valueString = "-"
* #10061574 "Harnwegsverschluss"
* #10061574 ^designation[+].language = #de-DE
* #10061574 ^designation[=].value = "Blasenverschluss"
* #10061574 ^designation[+].language = #de-DE
* #10061574 ^designation[=].value = "Harnwegsobstruktion"
* #10061574 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Obstruktion des normalen Flusses der Inhalte des Harntraktes."
* #10061574 ^property[+].code = #grad3
* #10061574 ^property[=].valueString = "Symptomatisch und veränderte Organfunktion (z. B. Hydronephrose oder renale Dysfunktion); elektive radiologische, endoskopische oder operative Intervention angezeigt"
* #10061574 ^property[+].code = #grad4
* #10061574 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10061574 ^property[+].code = #grad5
* #10061574 ^property[=].valueString = "Tod"
* #10046543 "Inkontinenz"
* #10046543 ^designation[+].language = #de-DE
* #10046543 ^designation[=].value = "Harnblasenschwäche"
* #10046543 ^definition = "Eine Störung, gekennzeichnet durch die Unfähigkeit, den Harnfluss der Blase zu kontrollieren."
* #10046543 ^property[+].code = #grad3
* #10046543 ^property[=].valueString = "Intervention angezeigt (z. B. Klemme, Kollageninjektionen); operative Intervention angezeigt; Einschränkung der selbstversorgenden ATL"
* #10046543 ^property[+].code = #grad4
* #10046543 ^property[=].valueString = "-"
* #10046543 ^property[+].code = #grad5
* #10046543 ^property[=].valueString = "-"
* #10038463 "Nierenblutung"
* #10038463 ^designation[+].language = #de-DE
* #10038463 ^designation[=].value = "Renale Hämorrhagie"
* #10038463 ^definition = "Eine Störung, gekennzeichnet durch Blutung aus der Niere."
* #10038463 ^property[+].code = #grad3
* #10038463 ^property[=].valueString = "Transfusion, Bestrahlung oder Krankenhauseinweisung angezeigt; elektive radiologische, endoskopische oder operative Intervention angezeigt"
* #10038463 ^property[+].code = #grad4
* #10038463 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende radiologische oder operative Intervention angezeigt"
* #10038463 ^property[+].code = #grad5
* #10038463 ^property[=].valueString = "Tod"
* #10038419 "Nierenkolik"
* #10038419 ^designation[+].language = #de-DE
* #10038419 ^designation[=].value = "-"
* #10038419 ^definition = "Eine Störung, gekennzeichnet durch anfallsweise und ernsthafte Beschwerden im Bereich der Flanke mit Ausstrahlung in die Leistengegend. Oft ist der Grund ein Abgang von Nierensteinen."
* #10038419 ^property[+].code = #grad3
* #10038419 ^property[=].valueString = "Krankenhauseinweisung angezeigt; Einschränkung der selbstversorgenden ATL"
* #10038419 ^property[+].code = #grad4
* #10038419 ^property[=].valueString = "-"
* #10038419 ^property[+].code = #grad5
* #10038419 ^property[=].valueString = "-"
* #10038385 "Nierenstein"
* #10038385 ^designation[+].language = #de-DE
* #10038385 ^designation[=].value = "Calculus renalis"
* #10038385 ^designation[+].language = #de-DE
* #10038385 ^designation[=].value = "Harnstein"
* #10038385 ^designation[+].language = #de-DE
* #10038385 ^designation[=].value = "Nierenbeckenstein"
* #10038385 ^definition = "Eine Störung, gekennzeichnet durch die Bildung von Kristallen im Nierenbecken."
* #10038385 ^property[+].code = #grad3
* #10038385 ^property[=].valueString = "Krankenhauseinweisung angezeigt; i. v. Intervention (z. B. Schmerzmittel, Antiemetika); elektive endoskopische, radiologische oder operative Intervention angezeigt"
* #10038385 ^property[+].code = #grad4
* #10038385 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende radiologische, endoskopische oder operative Intervention angezeigt"
* #10038385 ^property[+].code = #grad5
* #10038385 ^property[=].valueString = "Tod"
* #10046539 "Pollakisurie"
* #10046539 ^designation[+].language = #de-DE
* #10046539 ^designation[=].value = "häufiges Wasser lassen"
* #10046539 ^definition = "Eine Störung, gekennzeichnet durch kurze zeitliche Intervalle des Wasserlassens."
* #10046539 ^property[+].code = #grad3
* #10046539 ^property[=].valueString = "-"
* #10046539 ^property[+].code = #grad4
* #10046539 ^property[=].valueString = "-"
* #10046539 ^property[+].code = #grad5
* #10046539 ^property[=].valueString = "-"
* #10037032 "Proteinurie"
* #10037032 ^designation[+].language = #de-DE
* #10037032 ^designation[=].value = "-"
* #10037032 ^definition = "Eine Störung, gekennzeichnet durch Laborergebnisse, die das Vorhandensein von übermäßigem Eiweiß im Urin anzeigen. Es handelt sich überwiegend um Albumin, aber auch Globulin."
* #10037032 ^property[+].code = #grad3
* #10037032 ^property[=].valueString = "Erwachsene: Urin-protein >3,5 g g/24 h; Kinder: Urin-P/C >1,9"
* #10037032 ^property[+].code = #grad4
* #10037032 ^property[=].valueString = "-"
* #10037032 ^property[+].code = #grad5
* #10037032 ^property[=].valueString = "-"
* #10065368 "Urinfistel"
* #10065368 ^designation[+].language = #de-DE
* #10065368 ^designation[=].value = "Harnfistel"
* #10065368 ^designation[+].language = #de-DE
* #10065368 ^designation[=].value = "Blasenfistel"
* #10065368 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen irgendeinem Teil des Harnsystems und einem anderen Organ oder anatomischen Ort."
* #10065368 ^property[+].code = #grad3
* #10065368 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; elektive radiologische, endoskopische oder operative Intervention angezeigt; permanente Harnableitung angezeigt"
* #10065368 ^property[+].code = #grad4
* #10065368 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende radiologische oder operative Intervention angezeigt"
* #10065368 ^property[+].code = #grad5
* #10065368 ^property[=].valueString = "Tod"
* #10038359 "Störungen der Nieren-und Harnorganen - Sonstige, zu spezifizieren"
* #10038359 ^designation[+].language = #de-DE
* #10038359 ^designation[=].value = "-"
* #10038359 ^definition = "Sonstige, zu spezifizierende Störungen der Nieren und Harnorgane, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10038359 ^property[+].code = #grad3
* #10038359 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10038359 ^property[+].code = #grad4
* #10038359 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10038359 ^property[+].code = #grad5
* #10038359 ^property[=].valueString = "Tod"
* #10003883 "Azoospermie"
* #10003883 ^designation[+].language = #de-DE
* #10003883 ^designation[=].value = "-"
* #10003883 ^definition = "Eine Störung, gekennzeichnet durch ein Labortestergebnis, das eine vollständige Abwesenheit von Spermatozoen in der Samenflüssigkeit anzeigt."
* #10003883 ^property[+].code = #grad3
* #10003883 ^property[=].valueString = "Abwesenheit von Spermien im Ejakulat"
* #10003883 ^property[+].code = #grad4
* #10003883 ^property[=].valueString = "-"
* #10003883 ^property[+].code = #grad5
* #10003883 ^property[=].valueString = "-"
* #10064026 "Beckenbodenmuskelschwäche"
* #10064026 ^designation[+].language = #de-DE
* #10064026 ^designation[=].value = "-"
* #10064026 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung der Muskelstärke des Beckenbodens."
* #10064026 ^property[+].code = #grad3
* #10064026 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10064026 ^property[+].code = #grad4
* #10064026 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende Intervention angezeigt"
* #10064026 ^property[+].code = #grad5
* #10064026 ^property[=].valueString = "Tod"
* #10034263 "Beckenschmerz"
* #10034263 ^designation[+].language = #de-DE
* #10034263 ^designation[=].value = "-"
* #10034263 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Becken."
* #10034263 ^property[+].code = #grad3
* #10034263 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10034263 ^property[+].code = #grad4
* #10034263 ^property[=].valueString = "-"
* #10034263 ^property[+].code = #grad5
* #10034263 ^property[=].valueString = "-"
* #10006179 "Brustatrophie"
* #10006179 ^designation[+].language = #de-DE
* #10006179 ^designation[=].value = "Mammaatrophie"
* #10006179 ^designation[+].language = #de-DE
* #10006179 ^designation[=].value = "Brustschwund"
* #10006179 ^designation[+].language = #de-DE
* #10006179 ^designation[=].value = "Atrophie der Mamma"
* #10006179 ^definition = "Eine Störung, gekennzeichnet durch eine Unterentwicklung der Brust (Mamma)."
* #10006179 ^property[+].code = #grad3
* #10006179 ^property[=].valueString = "Asymmetrie >1/3 des Mammavolumens; schwere Atrophie"
* #10006179 ^property[+].code = #grad4
* #10006179 ^property[=].valueString = "-"
* #10006179 ^property[+].code = #grad5
* #10006179 ^property[=].valueString = "-"
* #10006298 "Brustschmerzen"
* #10006298 ^designation[+].language = #de-DE
* #10006298 ^designation[=].value = "Mammaschmerz"
* #10006298 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Brustregion."
* #10006298 ^property[+].code = #grad3
* #10006298 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10006298 ^property[+].code = #grad4
* #10006298 ^property[=].valueString = "-"
* #10006298 ^property[+].code = #grad5
* #10006298 ^property[=].valueString = "-"
* #10065823 "Brustwarzendeformierung"
* #10065823 ^definition = "Eine Störung, gekennzeichnet durch eine Fehlbildung der Brustwarze."
* #10065823 ^property[+].code = #grad3
* #10065823 ^property[=].valueString = "-"
* #10065823 ^property[+].code = #grad4
* #10065823 ^property[=].valueString = "-"
* #10065823 ^property[+].code = #grad5
* #10065823 ^property[=].valueString = "-"
* #10061339 "Dammschmerz"
* #10061339 ^designation[+].language = #de-DE
* #10061339 ^designation[=].value = "Perinealer Schmerz"
* #10061339 ^designation[+].language = #de-DE
* #10061339 ^designation[=].value = "Perineumschmerz"
* #10061339 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Region zwischen den Geschlechtsorganen und dem Anus."
* #10061339 ^property[+].code = #grad3
* #10061339 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10061339 ^property[+].code = #grad4
* #10061339 ^property[=].valueString = "-"
* #10061339 ^property[+].code = #grad5
* #10061339 ^property[=].valueString = "-"
* #10013934 "Dysmenorrhoe"
* #10013934 ^designation[+].language = #de-DE
* #10013934 ^designation[=].value = "Menstruationsbeschwerden"
* #10013934 ^designation[+].language = #de-DE
* #10013934 ^designation[=].value = "Dysmenorrhö"
* #10013934 ^definition = "Eine Störung, gekennzeichnet durch anormale schmerzhafte abdominelle Krämpfe während der Menstruation."
* #10013934 ^property[+].code = #grad3
* #10013934 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10013934 ^property[+].code = #grad4
* #10013934 ^property[=].valueString = "-"
* #10013934 ^property[+].code = #grad5
* #10013934 ^property[=].valueString = "-"
* #10013941 "Dyspareunie"
* #10013941 ^designation[+].language = #de-DE
* #10013941 ^designation[=].value = "Beschwerden beim Geschlechtsverkehr"
* #10013941 ^designation[+].language = #de-DE
* #10013941 ^designation[=].value = "Schmerzen beim Geschlechtsverkehr"
* #10013941 ^definition = "Eine Störung, gekennzeichnet durch schmerzhaften oder schwierigen Koitus."
* #10013941 ^property[+].code = #grad3
* #10013941 ^property[=].valueString = "Mäßige Beschwerden oder Schmerzen assoziiert mit vaginaler Penetration; Beschwerden ungelindert bei Gebrauch vaginaler Gleitmittel oder Östrogen"
* #10013941 ^property[+].code = #grad4
* #10013941 ^property[=].valueString = "-"
* #10013941 ^property[+].code = #grad5
* #10013941 ^property[=].valueString = "-"
* #10033279 "Eierstockruptur"
* #10033279 ^designation[+].language = #de-DE
* #10033279 ^designation[=].value = "Eierstockeinriss"
* #10033279 ^designation[+].language = #de-DE
* #10033279 ^designation[=].value = "ovarielle Ruptur"
* #10033279 ^designation[+].language = #de-DE
* #10033279 ^designation[=].value = "Ovarrptur"
* #10033279 ^definition = "Eine Störung, gekennzeichnet durch eine Zerreißung oder Ruptur des ovariellem Gewebe."
* #10033279 ^property[+].code = #grad3
* #10033279 ^property[=].valueString = "Transfusion angezeigt; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10033279 ^property[+].code = #grad4
* #10033279 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende Intervention angezeigt"
* #10033279 ^property[+].code = #grad5
* #10033279 ^property[=].valueString = "Tod"
* #10065763 "Eierstockblutung"
* #10065763 ^designation[+].language = #de-DE
* #10065763 ^designation[=].value = "Ovarialblutung"
* #10065763 ^designation[+].language = #de-DE
* #10065763 ^designation[=].value = "Ovarielle Blutung"
* #10065763 ^definition = "Eine Störung, gekennzeichnet durch Blutung aus den Eierstöcken."
* #10065763 ^property[+].code = #grad3
* #10065763 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10065763 ^property[+].code = #grad4
* #10065763 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065763 ^property[+].code = #grad5
* #10065763 ^property[=].valueString = "Tod"
* #10065789 "Eileiterobstruktion"
* #10065789 ^designation[+].language = #de-DE
* #10065789 ^designation[=].value = "Eileiterverschluss"
* #10065789 ^definition = "Eine Störung, gekennzeichnet durch die Behinderung (Obstruktion) des normalen Flusses der Inhalte im Eileiter."
* #10065789 ^property[+].code = #grad3
* #10065789 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065789 ^property[+].code = #grad4
* #10065789 ^property[=].valueString = "-"
* #10065789 ^property[+].code = #grad5
* #10065789 ^property[=].valueString = "-"
* #10065791 "Eileiterstenose"
* #10065791 ^designation[+].language = #de-DE
* #10065791 ^designation[=].value = "Eileiterverenung"
* #10065791 ^definition = "Eine Störung, gekennzeichnet durch eine Verengung des Eileiterlumens."
* #10065791 ^property[+].code = #grad3
* #10065791 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065791 ^property[+].code = #grad4
* #10065791 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (z. B. Organresektion)"
* #10065791 ^property[+].code = #grad5
* #10065791 ^property[=].valueString = "Tod"
* #10014326 "Ejakulationsstörung"
* #10014326 ^designation[+].language = #de-DE
* #10014326 ^designation[=].value = "Samenergusssstörung"
* #10014326 ^definition = "Eine Störung, gekennzeichnet durch Probleme bezogen auf die Ejakulation. Diese Kategorie schließt vorzeitige, verzögerte, retrograde und schmerzhafte Ejakulation ein."
* #10014326 ^property[+].code = #grad3
* #10014326 ^property[=].valueString = "-"
* #10014326 ^property[+].code = #grad4
* #10014326 ^property[=].valueString = "-"
* #10014326 ^property[+].code = #grad5
* #10014326 ^property[=].valueString = "-"
* #10061461 "Erektionsstörung"
* #10061461 ^designation[+].language = #de-DE
* #10061461 ^designation[=].value = "Erektile Dysfunktion"
* #10061461 ^designation[+].language = #de-DE
* #10061461 ^designation[=].value = "Erektionsschwierigkeiten"
* #10061461 ^designation[+].language = #de-DE
* #10061461 ^designation[=].value = "Potenzstörungen"
* #10061461 ^definition = "Eine Störung, gekennzeichnet durch persistierende oder rekurrierende Unfähigkeit, während sexueller Aktivität eine Erektion zu erreichen oder aufrechtzuerhalten."
* #10061461 ^property[+].code = #grad3
* #10061461 ^property[=].valueString = "Herabsetzung der erektilen Funktion (Häufigkeit / Rigidität der Erektionen), aber erektile Intervention nicht hilfreich (z. B. Medikation oder mechanische Mittel wie Penispumpe); Setzen einer permanenten Penisprothese angezeigt (vorher nicht vorhanden)"
* #10061461 ^property[+].code = #grad4
* #10061461 ^property[=].valueString = "-"
* #10061461 ^property[+].code = #grad5
* #10061461 ^property[=].valueString = "-"
* #10054382 "Feminisierung, erworbene"
* #10054382 ^designation[+].language = #de-DE
* #10054382 ^designation[=].value = "Erworbene Verweiblichung"
* #10054382 ^definition = "Eine Störung, gekennzeichnet durch die Entwicklung sekundärer weiblicher Kennzeichen bei Männern aufgrund äußerer Faktoren."
* #10054382 ^property[+].code = #grad3
* #10054382 ^property[=].valueString = "-"
* #10054382 ^property[+].code = #grad4
* #10054382 ^property[=].valueString = "-"
* #10054382 ^property[+].code = #grad5
* #10054382 ^property[=].valueString = "-"
* #10018146 "Genitales Ödem"
* #10018146 ^designation[+].language = #de-DE
* #10018146 ^designation[=].value = "Genitale Schwellung"
* #10018146 ^definition = "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund einer übermäßigen Ansammlung von Flüssigkeit in den Genitalien."
* #10018146 ^property[+].code = #grad3
* #10018146 ^property[=].valueString = "Lymphorrhö; grobe Abweichung von der normalen anatomischen Umrisslinie; Einschränkung der selbstversorgenden ATL"
* #10018146 ^property[+].code = #grad4
* #10018146 ^property[=].valueString = "-"
* #10018146 ^property[+].code = #grad5
* #10018146 ^property[=].valueString = "-"
* #10061149 "Genitalfistel, weibliches Geschlecht"
* #10061149 ^designation[+].language = #de-DE
* #10061149 ^designation[=].value = "Weibliche Genitalfistel"
* #10061149 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen dem weiblichen Reproduktionssystem und einem anderen Organ oder anatomischen Ort."
* #10061149 ^property[+].code = #grad3
* #10061149 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10061149 ^property[+].code = #grad4
* #10061149 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10061149 ^property[+].code = #grad5
* #10061149 ^property[=].valueString = "Tod"
* #10018801 "Gynäkomastie"
* #10018801 ^designation[+].language = #de-DE
* #10018801 ^designation[=].value = "Vergrößerung der männlichen Brustdrüsen"
* #10018801 ^definition = "Eine Störung, gekennzeichnet durch die übermäßige Entwicklung der Brüste beim Mann."
* #10018801 ^property[+].code = #grad3
* #10018801 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10018801 ^property[+].code = #grad4
* #10018801 ^property[=].valueString = "-"
* #10018801 ^property[+].code = #grad5
* #10018801 ^property[=].valueString = "-"
* #10060602 "Hämatosalpinx"
* #10060602 ^designation[+].language = #de-DE
* #10060602 ^designation[=].value = "Eileiterblutung"
* #10060602 ^designation[+].language = #de-DE
* #10060602 ^designation[=].value = "Eileiterblutstau"
* #10060602 ^definition = "Eine Störung, gekennzeichnet durch das Vorhandensein von Blut im Eileiter."
* #10060602 ^property[+].code = #grad3
* #10060602 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10060602 ^property[+].code = #grad4
* #10060602 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10060602 ^property[+].code = #grad5
* #10060602 ^property[=].valueString = "Tod"
* #10055347 "Hodenblutung"
* #10055347 ^designation[+].language = #de-DE
* #10055347 ^designation[=].value = "Testeshämorrhagie"
* #10055347 ^designation[+].language = #de-DE
* #10055347 ^designation[=].value = "Hodenhämorrhagie"
* #10055347 ^designation[+].language = #de-DE
* #10055347 ^designation[=].value = "testikuläre Blutung"
* #10055347 ^designation[+].language = #de-DE
* #10055347 ^designation[=].value = "testikuläre Hämorrhagie"
* #10055347 ^definition = "Eine Störung, gekennzeichnet durch Blutung aus dem Samenstrang."
* #10055347 ^property[+].code = #grad3
* #10055347 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10055347 ^property[+].code = #grad4
* #10055347 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10055347 ^property[+].code = #grad5
* #10055347 ^property[=].valueString = "Tod"
* #10043306 "Hodenerkrankung"
* #10043306 ^designation[+].language = #de-DE
* #10043306 ^designation[=].value = "Hodenfunktionsstörung"
* #10043306 ^definition = "Eine Störung, gekennzeichnet durch eine Beteiligung des Hodens."
* #10043306 ^property[+].code = #grad3
* #10043306 ^property[=].valueString = "Schwere Symptome; mit dem Urinieren oder sexuellen Aktivitäten interferierend; Einschränkung der selbstversorgenden ATL; Intervention angezeigt"
* #10043306 ^property[+].code = #grad4
* #10043306 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende Intervention angezeigt"
* #10043306 ^property[+].code = #grad5
* #10043306 ^property[=].valueString = "Tod"
* #10043345 "Hodenschmerz"
* #10043345 ^designation[+].language = #de-DE
* #10043345 ^designation[=].value = "Testesschmerz"
* #10043345 ^designation[+].language = #de-DE
* #10043345 ^designation[=].value = "testikulärer Schmerz"
* #10043345 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Hoden."
* #10043345 ^property[+].code = #grad3
* #10043345 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10043345 ^property[+].code = #grad4
* #10043345 ^property[=].valueString = "-"
* #10043345 ^property[+].code = #grad5
* #10043345 ^property[=].valueString = "-"
* #10061261 "Laktationsstörung"
* #10061261 ^designation[+].language = #de-DE
* #10061261 ^designation[=].value = "Störung der Milchproduktion"
* #10061261 ^definition = "Eine Störung, gekennzeichnet durch Störungen der Milchsekretion. Diese muss nicht notwendigerweise schwangerschaftsbezogen sein, wie bei Frauen beobachtet, sie wird auch bei Männern gesehen."
* #10061261 ^property[+].code = #grad3
* #10061261 ^property[=].valueString = "-"
* #10061261 ^property[+].code = #grad4
* #10061261 ^property[=].valueString = "-"
* #10061261 ^property[+].code = #grad5
* #10061261 ^property[=].valueString = "-"
* #10036601 "Menopause, verfrühte"
* #10036601 ^designation[+].language = #de-DE
* #10036601 ^designation[=].value = "Verfrühtes Klimakterium"
* #10036601 ^designation[+].language = #de-DE
* #10036601 ^designation[=].value = "Climacterium präcox"
* #10036601 ^designation[+].language = #de-DE
* #10036601 ^designation[=].value = "vorzeitige Wechseljahre"
* #10036601 ^definition = "Eine Störung, gekennzeichnet durch ovarielles Versagen vor dem 40. Lebensjahr. Symptome schließen Hitzewallungen, Nachtschweiß, Stimmungsschwankungen und eine Verminderung des Geschlechtstriebes ein."
* #10036601 ^property[+].code = #grad3
* #10036601 ^property[=].valueString = "Vorhanden"
* #10036601 ^property[+].code = #grad4
* #10036601 ^property[=].valueString = "-"
* #10036601 ^property[+].code = #grad5
* #10036601 ^property[=].valueString = "-"
* #10027313 "Menorrhagie"
* #10027313 ^designation[+].language = #de-DE
* #10027313 ^designation[=].value = "Schwere Menstruationsblutungen"
* #10027313 ^designation[+].language = #de-DE
* #10027313 ^designation[=].value = "Andauernde Menstruation"
* #10027313 ^designation[+].language = #de-DE
* #10027313 ^designation[=].value = "abnormale uterine Blutung (AUB)"
* #10027313 ^definition = "Eine Störung, gekennzeichnet durch anormal starke vaginale Blutungen während der Menses."
* #10027313 ^property[+].code = #grad3
* #10027313 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; operative Intervention angezeigt (z. B. Hysterektomie)"
* #10027313 ^property[+].code = #grad4
* #10027313 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10027313 ^property[+].code = #grad5
* #10027313 ^property[=].valueString = "Tod"
* #10022992 "Menstruation, unregelmäßige"
* #10022992 ^designation[+].language = #de-DE
* #10022992 ^designation[=].value = "-"
* #10022992 ^definition = "Eine Störung, gekennzeichnet durch irreguläre Zyklen oder Dauer der Menses."
* #10022992 ^property[+].code = #grad3
* #10022992 ^property[=].valueString = "Amenorrhö für mehr als 6 Monate vorhanden"
* #10022992 ^property[+].code = #grad4
* #10022992 ^property[=].valueString = "-"
* #10022992 ^property[+].code = #grad5
* #10022992 ^property[=].valueString = "-"
* #10030300 "Oligospermie"
* #10030300 ^designation[+].language = #de-DE
* #10030300 ^designation[=].value = "Verminderte Spermienzahl"
* #10030300 ^definition = "Eine Störung, gekennzeichnet durch eine Verminderung in der Zahl der Spermatozoen in der Samenflüssigkeit."
* #10030300 ^property[+].code = #grad3
* #10030300 ^property[=].valueString = "Spermienkonzentration <13 Million/mL oder Beweglichkeit <32%"
* #10030300 ^property[+].code = #grad4
* #10030300 ^property[=].valueString = "-"
* #10030300 ^property[+].code = #grad5
* #10030300 ^property[=].valueString = "-"
* #10033314 "Ovulationsschmerz"
* #10033314 ^designation[+].language = #de-DE
* #10033314 ^designation[=].value = "Mittelschmerz"
* #10033314 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden auf einer Seite des Abdomens zwischen menstruellen Zyklen, um die Zeit des Austritts des Eies aus dem ovariellen Follikel."
* #10033314 ^property[+].code = #grad3
* #10033314 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10033314 ^property[+].code = #grad4
* #10033314 ^property[=].valueString = "-"
* #10033314 ^property[+].code = #grad5
* #10033314 ^property[=].valueString = "-"
* #10034310 "Penisschmerz"
* #10034310 ^designation[+].language = #de-DE
* #10034310 ^designation[=].value = "Peniler Schmerz"
* #10034310 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden im Penis."
* #10034310 ^property[+].code = #grad3
* #10034310 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10034310 ^property[+].code = #grad4
* #10034310 ^property[=].valueString = "-"
* #10034310 ^property[+].code = #grad5
* #10034310 ^property[=].valueString = "-"
* #10055325 "Prostatablutung"
* #10055325 ^designation[+].language = #de-DE
* #10055325 ^designation[=].value = "Blutung der Vorsteherdrüse"
* #10055325 ^designation[+].language = #de-DE
* #10055325 ^designation[=].value = "Prostatahämorrhagie"
* #10055325 ^definition = "Eine Störung, gekennzeichnet durch Blutung aus der Prostatadrüse."
* #10055325 ^property[+].code = #grad3
* #10055325 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10055325 ^property[+].code = #grad4
* #10055325 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10055325 ^property[+].code = #grad5
* #10055325 ^property[=].valueString = "Tod"
* #10055026 "Prostataobstruktion"
* #10055026 ^designation[+].language = #de-DE
* #10055026 ^designation[=].value = "Prostataverschluss"
* #10055026 ^designation[+].language = #de-DE
* #10055026 ^designation[=].value = "Behinderung (des Wasserlassens durch die Prostata)"
* #10055026 ^definition = "Eine Störung, gekennzeichnet durch eine Kompression der Harnröhre, aufgrund der Vergrößerung der Prostatadrüse. Daraus ergeben sich Schwierigkeiten beim Wasserlassen (Anstrengung bei der Entleerung, langsamer Urinfluss und inkomplette Entleerung der Blase)."
* #10055026 ^property[+].code = #grad3
* #10055026 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10055026 ^property[+].code = #grad4
* #10055026 ^property[=].valueString = "-"
* #10055026 ^property[+].code = #grad5
* #10055026 ^property[=].valueString = "-"
* #10036968 "Prostataschmerz"
* #10036968 ^designation[+].language = #de-DE
* #10036968 ^designation[=].value = "-"
* #10036968 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Prostatadrüse."
* #10036968 ^property[+].code = #grad3
* #10036968 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10036968 ^property[+].code = #grad4
* #10036968 ^property[=].valueString = "-"
* #10036968 ^property[+].code = #grad5
* #10036968 ^property[=].valueString = "-"
* #10065762 "Samenstrangblutung"
* #10065762 ^designation[+].language = #de-DE
* #10065762 ^designation[=].value = "Corda spermatica Blutung"
* #10065762 ^designation[+].language = #de-DE
* #10065762 ^designation[=].value = "Samenstranghämorrhagie"
* #10065762 ^definition = "Eine Störung, gekennzeichnet durch eine Blutung aus dem Samenstrang."
* #10065762 ^property[+].code = #grad3
* #10065762 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10065762 ^property[+].code = #grad4
* #10065762 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065762 ^property[+].code = #grad5
* #10065762 ^property[=].valueString = "Tod"
* #10065805 "Samenstrangobstruktion"
* #10065805 ^designation[+].language = #de-DE
* #10065805 ^designation[=].value = "Samenstrangverschluss"
* #10065805 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des normalen Flusses der Inhalte des Samenstranges."
* #10065805 ^property[+].code = #grad3
* #10065805 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065805 ^property[+].code = #grad4
* #10065805 ^property[=].valueString = "-"
* #10065805 ^property[+].code = #grad5
* #10065805 ^property[=].valueString = "-"
* #10039757 "Skrotalschmerz"
* #10039757 ^designation[+].language = #de-DE
* #10039757 ^designation[=].value = "Hodensackschermz"
* #10039757 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Skrotalregion."
* #10039757 ^property[+].code = #grad3
* #10039757 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10039757 ^property[+].code = #grad4
* #10039757 ^property[=].valueString = "-"
* #10039757 ^property[+].code = #grad5
* #10039757 ^property[=].valueString = "-"
* #10065811 "Uterusfistel"
* #10065811 ^designation[+].language = #de-DE
* #10065811 ^designation[=].value = "Gebärmutterfistel"
* #10065811 ^designation[+].language = #de-DE
* #10065811 ^designation[=].value = "uterinale Fistel"
* #10065811 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Gebärmutter und einem anderen Organ oder anatomischen Ort."
* #10065811 ^property[+].code = #grad3
* #10065811 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065811 ^property[+].code = #grad4
* #10065811 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065811 ^property[+].code = #grad5
* #10065811 ^property[=].valueString = "Tod"
* #10046789 "Uterusblutung"
* #10046789 ^designation[+].language = #de-DE
* #10046789 ^designation[=].value = "Uterushämorrhagie"
* #10046789 ^designation[+].language = #de-DE
* #10046789 ^designation[=].value = "uterine Blutung"
* #10046789 ^designation[+].language = #de-DE
* #10046789 ^designation[=].value = "uterine Hämorrhagie"
* #10046789 ^definition = "Eine Störung, gekennzeichnet durch Blutung aus der Gebärmutter."
* #10046789 ^property[+].code = #grad3
* #10046789 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10046789 ^property[+].code = #grad4
* #10046789 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10046789 ^property[+].code = #grad5
* #10046789 ^property[=].valueString = "Tod"
* #10065928 "Uterusobstruktion"
* #10065928 ^designation[+].language = #de-DE
* #10065928 ^designation[=].value = "Gebärmutterverschluss"
* #10065928 ^designation[+].language = #de-DE
* #10065928 ^designation[=].value = "Uterus Verschluss"
* #10065928 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung (Obstruktion) des Uterusausgangs."
* #10065928 ^property[+].code = #grad3
* #10065928 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065928 ^property[+].code = #grad4
* #10065928 ^property[=].valueString = "-"
* #10065928 ^property[+].code = #grad5
* #10065928 ^property[=].valueString = "-"
* #10046809 "Uterusschmerz"
* #10046809 ^designation[+].language = #de-DE
* #10046809 ^designation[=].value = "Gebärmutterschmerz"
* #10046809 ^designation[+].language = #de-DE
* #10046809 ^designation[=].value = "uteriner Schmerz"
* #10046809 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Gebärmutter."
* #10046809 ^property[+].code = #grad3
* #10046809 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10046809 ^property[+].code = #grad4
* #10046809 ^property[=].valueString = "-"
* #10046809 ^property[+].code = #grad5
* #10046809 ^property[=].valueString = "-"
* #10046901 "Vaginaler Ausfluss"
* #10046901 ^designation[+].language = #de-DE
* #10046901 ^designation[=].value = "Vaginale Sekretion"
* #10046901 ^designation[+].language = #de-DE
* #10046901 ^designation[=].value = "Scheidensekretion"
* #10046901 ^designation[+].language = #de-DE
* #10046901 ^designation[=].value = "Scheidenausfluss"
* #10046901 ^definition = "Eine Störung, gekennzeichnet durch vaginale Sekretionen. Schleim, erzeugt durch die Gebärmutterhalsdrüsen, wird natürlicherweise von der Vagina abgeführt, insbesondere während der fruchtbaren Jahre."
* #10046901 ^property[+].code = #grad3
* #10046901 ^property[=].valueString = "-"
* #10046901 ^property[+].code = #grad4
* #10046901 ^property[=].valueString = "-"
* #10046901 ^property[+].code = #grad5
* #10046901 ^property[=].valueString = "-"
* #10046904 "Vaginale Trockenheit"
* #10046904 ^definition = "Eine Störung, gekennzeichnet durch unangenehmes Gefühl des Juckens und Brennens in der Vagina."
* #10046904 ^property[+].code = #grad3
* #10046904 ^property[=].valueString = "Schwere vaginale Trockenheit, die Dyspareunie oder schwerwiegende Beschwerden hervorruft"
* #10046904 ^property[+].code = #grad4
* #10046904 ^property[=].valueString = "-"
* #10046904 ^property[+].code = #grad5
* #10046904 ^property[=].valueString = "-"
* #10046912 "Vaginalblutung"
* #10046912 ^designation[+].language = #de-DE
* #10046912 ^designation[=].value = "Vaginalhämorrhagie"
* #10046912 ^designation[+].language = #de-DE
* #10046912 ^designation[=].value = "Scheidenblutung"
* #10046912 ^definition = "Eine Störung, gekennzeichnet durch Blutung aus der Vagina."
* #10046912 ^property[+].code = #grad3
* #10046912 ^property[=].valueString = "Schwere Blutung; Transfusion angezeigt; radiologische oder endoskopische Intervention angezeigt"
* #10046912 ^property[+].code = #grad4
* #10046912 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10046912 ^property[+].code = #grad5
* #10046912 ^property[=].valueString = "Tod"
* #10046916 "Vaginalentzündung"
* #10046916 ^designation[+].language = #de-DE
* #10046916 ^designation[=].value = "Scheidenentzündung"
* #10046916 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung, die die Vagina umfasst."
* #10046916 ^property[+].code = #grad3
* #10046916 ^property[=].valueString = "Heftige(r) Beschwerden oder Schmerz, Ödem oder Rötung; Einschränkung der instrumentellen ATL; kleine Bereiche von Schleimhautulzerationen"
* #10046916 ^property[+].code = #grad4
* #10046916 ^property[=].valueString = "Ausgedehnte Bereiche mukosaler Ulzerationen; lebensbedrohliche Folgen; Intervention dringlich angezeigt."
* #10046916 ^property[+].code = #grad5
* #10046916 ^property[=].valueString = "Tod"
* #10065813 "Vaginafistel"
* #10065813 ^designation[+].language = #de-DE
* #10065813 ^designation[=].value = "Vaginale Fistel"
* #10065813 ^designation[+].language = #de-DE
* #10065813 ^designation[=].value = "Scheidenfistel"
* #10065813 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen der Vagina und einem anderen Organ oder anatomischen Ort."
* #10065813 ^property[+].code = #grad3
* #10065813 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065813 ^property[+].code = #grad4
* #10065813 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Intervention dringend angezeigt"
* #10065813 ^property[+].code = #grad5
* #10065813 ^property[=].valueString = "Tod"
* #10065818 "Vaginalperforation"
* #10065818 ^designation[+].language = #de-DE
* #10065818 ^designation[=].value = "Scheidenperforation"
* #10065818 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Perforation (Ruptur) der Vaginalwand."
* #10065818 ^property[+].code = #grad3
* #10065818 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065818 ^property[+].code = #grad4
* #10065818 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; operative Intervention dringend angezeigt"
* #10065818 ^property[+].code = #grad5
* #10065818 ^property[=].valueString = "Tod"
* #10046937 "Vaginalschmerz"
* #10046937 ^designation[+].language = #de-DE
* #10046937 ^designation[=].value = "Scheidenschmerz"
* #10046937 ^designation[+].language = #de-DE
* #10046937 ^designation[=].value = "vaginaler Schmerz"
* #10046937 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Scheide."
* #10046937 ^property[+].code = #grad3
* #10046937 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10046937 ^property[+].code = #grad4
* #10046937 ^property[=].valueString = "-"
* #10046937 ^property[+].code = #grad5
* #10046937 ^property[=].valueString = "-"
* #10053496 "Vaginalstenose"
* #10053496 ^designation[+].language = #de-DE
* #10053496 ^designation[=].value = "Scheidenverengung"
* #10053496 ^designation[+].language = #de-DE
* #10053496 ^designation[=].value = "Vaginalverenung"
* #10053496 ^definition = "Eine Störung, gekennzeichnet durch die Verengung des Scheidenkanals."
* #10053496 ^property[+].code = #grad3
* #10053496 ^property[=].valueString = "Vaginalverengung und/oder verkürzung, den Gebrauch von Tampons, die sexuelle Aktivität oder die körperliche Untersuchung beeinträchtigend"
* #10053496 ^property[+].code = #grad4
* #10053496 ^property[=].valueString = "-"
* #10053496 ^property[+].code = #grad5
* #10053496 ^property[=].valueString = "Tod"
* #10065817 "Vaginalverschluss"
* #10065817 ^designation[+].language = #de-DE
* #10065817 ^designation[=].value = "Scheidenverschlusss"
* #10065817 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Behinderung im (Obstruktion des) Scheidenkanal(s)."
* #10065817 ^property[+].code = #grad3
* #10065817 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10065817 ^property[+].code = #grad4
* #10065817 ^property[=].valueString = "-"
* #10065817 ^property[+].code = #grad5
* #10065817 ^property[=].valueString = "-"
* #10046947 "Vaginismus"
* #10046947 ^designation[+].language = #de-DE
* #10046947 ^designation[=].value = "Scheidenkrampf"
* #10046947 ^designation[+].language = #de-DE
* #10046947 ^designation[=].value = "Scheidenspasmen"
* #10046947 ^designation[+].language = #de-DE
* #10046947 ^designation[=].value = "Vaginalspasmen"
* #10046947 ^definition = "Eine Störung, gekennzeichnet durch unwillkürliche Verkrampfungen (Spasmen) der Beckenbodenmuskulatur, sodass eine krankhafte Anspannung der Scheidenwand während der Penetration wie beim Geschlechtsverkehr entsteht."
* #10046947 ^property[+].code = #grad3
* #10046947 ^property[=].valueString = "Mäßige Beschwerden oder Schmerzen, assoziiert mit vaginalen(r) Spasmen/Verengung; unfähig, vaginale Penetration oder körperliche Untersuchung zu tolerieren"
* #10046947 ^property[+].code = #grad4
* #10046947 ^property[=].valueString = "-"
* #10046947 ^property[+].code = #grad5
* #10046947 ^property[=].valueString = "-"
* #10038604 "Störungen der Fortpflanzungsorgane und der Brust - Sonstige, zu spezifizieren"
* #10038604 ^designation[+].language = #de-DE
* #10038604 ^designation[=].value = "-"
* #10038604 ^definition = "Sonstige, zu spezifizierende Störungen der Fortpflanzungsorgane und der Brust, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10038604 ^property[+].code = #grad3
* #10038604 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10038604 ^property[+].code = #grad4
* #10038604 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10038604 ^property[+].code = #grad5
* #10038604 ^property[=].valueString = "Tod"
* #10001723 "Allergische Rhinitis"
* #10001723 ^designation[+].language = #de-DE
* #10001723 ^designation[=].value = "-"
* #10001723 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung der nasalen Schleimhäute, hervorgerufen durch eine IgE-vermittelte Antwort auf externe Allergene. Die Entzündung kann auch die Schleimhäute der Nasennebenhöhlen, der Augen, des Mittelohres und des Rachens umfassen. Symptome können Niesen, Nasenverstopfung, Nasenlaufen und Jucken einschließen."
* #10001723 ^property[+].code = #grad3
* #10001723 ^property[=].valueString = "-"
* #10001723 ^property[+].code = #grad4
* #10001723 ^property[=].valueString = "-"
* #10001723 ^property[+].code = #grad5
* #10001723 ^property[=].valueString = "Tod"
* #10003504 "Aspiration"
* #10003504 ^designation[+].language = #de-DE
* #10003504 ^designation[=].value = "-"
* #10003504 ^definition = "Ein Krankheitsbild, gekennzeichnet durch die Inhalation (Einatmung) fester oder flüssiger Stoffe in die Lunge."
* #10003504 ^property[+].code = #grad3
* #10003504 ^property[=].valueString = "Atemnot und Symptome der Lungenentzündung (z. B. Aspirationspneumonie); medizinische Intervention angezeigt (z. B. Absaugung oder Sauerstoff); Krankenhauseinweisung angezeigt; Unfähigkeit zur oralen Ernährung"
* #10003504 ^property[+].code = #grad4
* #10003504 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
* #10003504 ^property[+].code = #grad5
* #10003504 ^property[=].valueString = "Tod"
* #10003598 "Atelektasen"
* #10003598 ^designation[+].language = #de-DE
* #10003598 ^designation[=].value = "Sekundäre Atelektase"
* #10003598 ^designation[+].language = #de-DE
* #10003598 ^designation[=].value = "Lungenkollaps"
* #10003598 ^definition = "Ein Krankheitsbild, gekennzeichnet durch den Kollaps von Teilen oder der ganzen Lunge."
* #10003598 ^property[+].code = #grad3
* #10003598 ^property[=].valueString = "Sauerstoff angezeigt; Krankenhauseinweisung oder elektive operative Intervention angezeigt (z. B. Stent, Laser)"
* #10003598 ^property[+].code = #grad4
* #10003598 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
* #10003598 ^property[+].code = #grad5
* #10003598 ^property[=].valueString = "Tod"
* #10001409 "Atemnotsyndrom des Erwachsenen"
* #10001409 ^designation[+].language = #de-DE
* #10001409 ^designation[=].value = "Akutes respiratorisches Distress Syndrom"
* #10001409 ^designation[+].language = #de-DE
* #10001409 ^designation[=].value = "ARDS"
* #10001409 ^designation[+].language = #de-DE
* #10001409 ^designation[=].value = "respiratorisches Distress Syndrom RDS"
* #10001409 ^designation[+].language = #de-DE
* #10001409 ^designation[=].value = "Schocklunge"
* #10001409 ^designation[+].language = #de-DE
* #10001409 ^designation[=].value = "adultes respiratorisches Distress Syndrom"
* #10001409 ^definition = "Eine Störung, gekennzeichnet durch zunehmende und lebensbedrohliche pulmonale Atemnot in Abwesenheit eines zugrundeliegenden pulmonalen Leidens, gewöhnlich als Folge einer schwerwiegenden Gewalteinwirkung / Wunde oder chirurgischen Intervention."
* #10001409 ^property[+].code = #grad3
* #10001409 ^property[=].valueString = "Vorhanden mit radiologischen Befunden; Intubation nicht angezeigt"
* #10001409 ^property[+].code = #grad4
* #10001409 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder Intervention dringend angezeigt"
* #10001409 ^property[+].code = #grad5
* #10001409 ^property[=].valueString = "Tod"
* #10002972 "Atemstillstand"
* #10002972 ^designation[+].language = #de-DE
* #10002972 ^designation[=].value = "Apnoe"
* #10002972 ^definition = "Ein Krankheitsbild, gekennzeichnet durch Stillstand des Atmens."
* #10002972 ^property[+].code = #grad3
* #10002972 ^property[=].valueString = "Vorhanden; medizinische Intervention angezeigt"
* #10002972 ^property[+].code = #grad4
* #10002972 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder  Intervention dringend angezeigt"
* #10002972 ^property[+].code = #grad5
* #10002972 ^property[=].valueString = "Tod"
* #10035742 "Atypische Pneumonie"
* #10035742 ^designation[+].language = #de-DE
* #10035742 ^designation[=].value = "Interstielle Pneumonie"
* #10035742 ^designation[+].language = #de-DE
* #10035742 ^designation[=].value = "Atypische Lungenentzündung"
* #10035742 ^definition = "Eine Erkrankung, gekennzeichnet durch Entzündung, fokal oder diffus, die das Lungenparenchym betrifft."
* #10035742 ^property[+].code = #grad3
* #10035742 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; Sauerstoff angezeigt"
* #10035742 ^property[+].code = #grad4
* #10035742 ^property[=].valueString = "Lebensbedrohliche respiratorische Beeinträchtigung; dringende Intervention angezeigt (z. B. Tracheotomie oder Intubation)"
* #10035742 ^property[+].code = #grad5
* #10035742 ^property[=].valueString = "Tod"
* #10006437 "Bronchialfistel"
* #10006437 ^designation[+].language = #de-DE
* #10006437 ^designation[=].value = "Bronchusstumpfinsuffizienz"
* #10006437 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Bronchus und einem anderen Organ oder anatomischen Ort."
* #10006437 ^property[+].code = #grad3
* #10006437 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
* #10006437 ^property[+].code = #grad4
* #10006437 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (Thorakoplastik, chronische offene Drainage oder multiple Thorakotomien)"
* #10006437 ^property[+].code = #grad5
* #10006437 ^property[=].valueString = "Tod"
* #10006440 "Bronchiale Obstruktion"
* #10006440 ^designation[+].language = #de-DE
* #10006440 ^designation[=].value = "Bronchialverschluss"
* #10006440 ^definition = "Der Befund der Behinderung (Obstruktion) eines Bronchusdurchgangs, am häufigsten durch bronchiale Sekretionen oder Exsudate."
* #10006440 ^property[+].code = #grad3
* #10006440 ^property[=].valueString = "Kurzatmigkeit mit Stridor; endoskopische Intervention angezeigt (z. B. Laser, Stentplatzierung)"
* #10006440 ^property[+].code = #grad4
* #10006440 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder Intervention dingend angezeigt"
* #10006440 ^property[+].code = #grad5
* #10006440 ^property[=].valueString = "Tod"
* #10063524 "Bronchialstenose"
* #10063524 ^designation[+].language = #de-DE
* #10063524 ^designation[=].value = "Bronchialverengung"
* #10063524 ^definition = "Eine Erkrankung, gekennzeichnet durch Verengung der Bronchialröhre."
* #10063524 ^property[+].code = #grad3
* #10063524 ^property[=].valueString = "Kurzatmigkeit mit Stridor; endoskopische Intervention angezeigt (z. B. Laser, Stentplatzierung)"
* #10063524 ^property[+].code = #grad4
* #10063524 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder Intervention dringend angezeigt"
* #10063524 ^property[+].code = #grad5
* #10063524 ^property[=].valueString = "Tod"
* #10053481 "Bronchopleurale Fistel"
* #10053481 ^designation[+].language = #de-DE
* #10053481 ^designation[=].value = "Bronchus- Pleura- Fistel"
* #10053481 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Bronchus und der Pleurahöhle."
* #10053481 ^property[+].code = #grad3
* #10053481 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
* #10053481 ^property[+].code = #grad4
* #10053481 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (Thorakoplastik, chronische offene Drainage oder multiple Thorakotomien)"
* #10053481 ^property[+].code = #grad5
* #10053481 ^property[=].valueString = "Tod"
* #10065746 "Bronchopulmonale Blutung"
* #10065746 ^designation[+].language = #de-DE
* #10065746 ^designation[=].value = "Bronchialblutung"
* #10065746 ^designation[+].language = #de-DE
* #10065746 ^designation[=].value = "Bronchialhämorrhagie"
* #10065746 ^definition = "Ein Krankheitsbild, gekennzeichnet durch Blutung aus der Bronchialwand und/oder dem Lungenparenchym."
* #10065746 ^property[+].code = #grad3
* #10065746 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
* #10065746 ^property[+].code = #grad4
* #10065746 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
* #10065746 ^property[+].code = #grad5
* #10065746 ^property[=].valueString = "Tod"
* #10006482 "Bronchospasmus"
* #10006482 ^designation[+].language = #de-DE
* #10006482 ^designation[=].value = "Bronchialkrampf"
* #10006482 ^definition = "Eine Störung, gekennzeichnet durch plötzliche Kontraktion der glatten Muskulatur der Bronchialwand."
* #10006482 ^property[+].code = #grad3
* #10006482 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; Sauerstoffsättigung herabgesetzt"
* #10006482 ^property[+].code = #grad4
* #10006482 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
* #10006482 ^property[+].code = #grad5
* #10006482 ^property[=].valueString = "Tod"
* #10051228 "Chylothorax"
* #10051228 ^designation[+].language = #de-DE
* #10051228 ^designation[=].value = "Lymphe in der Pleurahöhle"
* #10051228 ^designation[+].language = #de-DE
* #10051228 ^designation[=].value = "pleurale Lymphansammlung"
* #10051228 ^designation[+].language = #de-DE
* #10051228 ^designation[=].value = "pleuraler Lympherguss"
* #10051228 ^definition = "Ein Krankheitsbild, gekennzeichnet durch einen milchigen pleuralen Erguss (anormale Ansammlung von Flüssigkeit), der durch die Ansammlung von Lymphflüssigkeit in der Pleurahöhle hervorgerufen wird."
* #10051228 ^property[+].code = #grad3
* #10051228 ^property[=].valueString = "Schwere Symptome; elektive operative Intervention angezeigt"
* #10051228 ^property[+].code = #grad4
* #10051228 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (Thorakoplastik, chronische offene Drainage oder multiple Thorakotomien)"
* #10051228 ^property[+].code = #grad5
* #10051228 ^property[=].valueString = "Tod"
* #10013963 "Dyspnoe"
* #10013963 ^designation[+].language = #de-DE
* #10013963 ^designation[=].value = "Kurzatmigkeit"
* #10013963 ^designation[+].language = #de-DE
* #10013963 ^designation[=].value = "Atemnot"
* #10013963 ^definition = "Eine Störung, gekennzeichnet durch die unangenehme Empfindung von Atemschwierigkeiten (Atemnot)."
* #10013963 ^property[+].code = #grad3
* #10013963 ^property[=].valueString = "Kurzatmigkeit in Ruhe; Einschränkung der selbstversorgenden ATL"
* #10013963 ^property[+].code = #grad4
* #10013963 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10013963 ^property[+].code = #grad5
* #10013963 ^property[=].valueString = "Tod"
* #10015090 "Epistaxis"
* #10015090 ^designation[+].language = #de-DE
* #10015090 ^designation[=].value = "Nasenbluten"
* #10015090 ^definition = "Eine Störung, gekennzeichnet durch eine Blutung aus der Nase."
* #10015090 ^property[+].code = #grad3
* #10015090 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
* #10015090 ^property[+].code = #grad4
* #10015090 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10015090 ^property[+].code = #grad5
* #10015090 ^property[=].valueString = "Tod"
* #10047924 "Giemen"
* #10047924 ^designation[+].language = #de-DE
* #10047924 ^designation[=].value = "Pfeifen"
* #10047924 ^definition = "Eine Störung, gekennzeichnet durch ein hellklingendes, pfeifendes Geräusch während des Atmens."
* #10047924 ^property[+].code = #grad3
* #10047924 ^property[=].valueString = "Schwere Atemsymptome, Einschränkung der selbstversorgenden ATL; Sauerstofftherapie oder Krankenhauseinweisung angezeigt"
* #10047924 ^property[+].code = #grad4
* #10047924 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende  Intervention angezeigt"
* #10047924 ^property[+].code = #grad5
* #10047924 ^property[=].valueString = "Tod"
* #10041367 "Halsentzündung, Rachenentzündung"
* #10041367 ^designation[+].language = #de-DE
* #10041367 ^designation[=].value = "Haslschmerzen"
* #10041367 ^designation[+].language = #de-DE
* #10041367 ^designation[=].value = "Halsentzündung"
* #10041367 ^designation[+].language = #de-DE
* #10041367 ^designation[=].value = "Rachenentzündung"
* #10041367 ^designation[+].language = #de-DE
* #10041367 ^designation[=].value = "Halsbeschwerden"
* #10041367 ^designation[+].language = #de-DE
* #10041367 ^designation[=].value = "Rachenbeschwerden"
* #10041367 ^definition = "Eine Störung, gekennzeichnet durch ausgeprägte Beschwerden im Hals."
* #10041367 ^property[+].code = #grad3
* #10041367 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL; Fähigkeit zu schlucken ist eingeschränkt"
* #10041367 ^property[+].code = #grad4
* #10041367 ^property[=].valueString = "-"
* #10041367 ^property[+].code = #grad5
* #10041367 ^property[=].valueString = "-"
* #10020201 "Heiserkeit"
* #10020201 ^designation[+].language = #de-DE
* #10020201 ^designation[=].value = "-"
* #10020201 ^definition = "Eine Störung, gekennzeichnet durch eine harsche und kratzende Stimme, die vom Kehlkopf herkommt oder zu diesem sich ausbreitet."
* #10020201 ^property[+].code = #grad3
* #10020201 ^property[=].valueString = "Schwere Stimmveränderungen einschließlich hauptsächlich Flüstersprache"
* #10020201 ^property[+].code = #grad4
* #10020201 ^property[=].valueString = "-"
* #10020201 ^property[+].code = #grad5
* #10020201 ^property[=].valueString = "-"
* #10011224 "Husten"
* #10011224 ^designation[+].language = #de-DE
* #10011224 ^designation[=].value = "-"
* #10011224 ^definition = "Eine Störung, gekennzeichnet durch plötzliche, oft sich wiederholende, krampfartige Kontraktionen der Brusthöhle (des Brustkorbes), mit der Folge einer gewaltsamen Freigabe von Luft aus den Lungen und gewöhnlich begleitet von einem charakteristischen Geräusch."
* #10011224 ^property[+].code = #grad3
* #10011224 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10011224 ^property[+].code = #grad4
* #10011224 ^property[=].valueString = "-"
* #10011224 ^property[+].code = #grad5
* #10011224 ^property[=].valueString = "-"
* #10021143 "Hypoxie"
* #10021143 ^designation[+].language = #de-DE
* #10021143 ^designation[=].value = "Sauerstoffmangel"
* #10021143 ^definition = "Eine Störung, gekennzeichnet durch eine Verringerung der Sauerstoffkonzentration im Körper."
* #10021143 ^property[+].code = #grad3
* #10021143 ^property[=].valueString = "Herabgesetzte Sauerstoffsättigung in Ruhe (z. B. Pulsoximeter <88% oder PaO2 <=55 mmHG); Intermittierende Gabe von zusätzlichem Sauerstoff"
* #10021143 ^property[+].code = #grad4
* #10021143 ^property[=].valueString = "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringend angezeigt (z. B. Tracheotomie oder Intubation)"
* #10021143 ^property[+].code = #grad5
* #10021143 ^property[=].valueString = "Tod"
* #10065735 "Laryngitis"
* #10065735 ^designation[+].language = #de-DE
* #10065735 ^designation[=].value = "Larynxentzündung"
* #10065735 ^designation[+].language = #de-DE
* #10065735 ^designation[=].value = "Kehlkopfentzündung"
* #10065735 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung, die den Kehlkopf umfasst."
* #10065735 ^property[+].code = #grad3
* #10065735 ^property[=].valueString = "Heftige Halsschmerzen; endoskopische Intervention angezeigt"
* #10065735 ^property[+].code = #grad4
* #10065735 ^property[=].valueString = "-"
* #10065735 ^property[+].code = #grad5
* #10065735 ^property[=].valueString = "-"
* #10062667 "Laryngopharyngeale Dysästhesie"
* #10062667 ^designation[+].language = #de-DE
* #10062667 ^designation[=].value = "Larynx'-Pharynx'-Dysästhesie"
* #10062667 ^designation[+].language = #de-DE
* #10062667 ^designation[=].value = "Larynxdysästhesie"
* #10062667 ^definition = "Eine Erkrankung, gekennzeichnet durch eine unangenehme, persistierende Empfindung im Bereich des Laryngopharynx."
* #10062667 ^property[+].code = #grad3
* #10062667 ^property[=].valueString = "Schwere Symptome; Atemnot und Schluckschwierigkeiten; Einschränkung der selbstversorgenden ATL"
* #10062667 ^property[+].code = #grad4
* #10062667 ^property[=].valueString = "Lebensbedrohliche Folgen"
* #10062667 ^property[+].code = #grad5
* #10062667 ^property[=].valueString = "Tod"
* #10023891 "Laryngospasmus"
* #10023891 ^designation[+].language = #de-DE
* #10023891 ^designation[=].value = "Stimmlippenkrampf"
* #10023891 ^definition = "Ein Krankheitsbild, gekennzeichnet durch anfallsweise krampfartige Kontraktion der Stimmlippen."
* #10023891 ^property[+].code = #grad3
* #10023891 ^property[=].valueString = "Wiederholte Episoden; nichtinvasive Intervention angezeigt (Atemtechniken, Druckpunktmassage)"
* #10023891 ^property[+].code = #grad4
* #10023891 ^property[=].valueString = "Persistierende oder schwere Episoden assoziiert mit Ohnmacht; dringende Intervention angezeigt (z. B. fiberoptische Laryngyskopie, Intubation, Botoxinjektion)"
* #10023891 ^property[+].code = #grad5
* #10023891 ^property[=].valueString = "Tod"
* #10065759 "Larynxblutung"
* #10065759 ^designation[+].language = #de-DE
* #10065759 ^designation[=].value = "Kehlkopfblutung"
* #10065759 ^definition = "Eine Störung, gekennzeichnet durch eine Blutung aus dem Kehlkopf."
* #10065759 ^property[+].code = #grad3
* #10065759 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
* #10065759 ^property[+].code = #grad4
* #10065759 ^property[=].valueString = "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringend angezeigt (z. B. Tracheotomie oder Intubation)"
* #10065759 ^property[+].code = #grad5
* #10065759 ^property[=].valueString = "Tod"
* #10065786 "Larynxfistel"
* #10065786 ^designation[+].language = #de-DE
* #10065786 ^designation[=].value = "Kehlkopffistel"
* #10065786 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Kehlkopf und einem anderen Organ oder anatomischen Ort."
* #10065786 ^property[+].code = #grad3
* #10065786 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
* #10065786 ^property[+].code = #grad4
* #10065786 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (z. B. Thorakoplastik, chronische offene Drainage oder multiple Thorakotomien)"
* #10065786 ^property[+].code = #grad5
* #10065786 ^property[=].valueString = "Tod"
* #10023838 "Larynxödem"
* #10023838 ^designation[+].language = #de-DE
* #10023838 ^designation[=].value = "Kehlkopfödem"
* #10023838 ^definition = "Ein Krankheitsbild, gekennzeichnet durch Anschwellung (hauptsächlich der Kehlkopfschleimhaut) aufgrund einer übermäßigen Ansammlung von Flüssigkeit im Kehlkopf."
* #10023838 ^property[+].code = #grad3
* #10023838 ^property[=].valueString = "Stridor; Atemnot; Krankenhauseinweisung angezeigt"
* #10023838 ^property[+].code = #grad4
* #10023838 ^property[=].valueString = "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringend angezeigt (z. B. Tracheotomie oder Intubation)"
* #10023838 ^property[+].code = #grad5
* #10023838 ^property[=].valueString = "Tod"
* #10059639 "Larynxobstruktion"
* #10059639 ^designation[+].language = #de-DE
* #10059639 ^designation[=].value = "Laryngeale Obstruktion"
* #10059639 ^designation[+].language = #de-DE
* #10059639 ^designation[=].value = "Kehlkopfhindernis"
* #10059639 ^designation[+].language = #de-DE
* #10059639 ^designation[=].value = "Kehlkopfobstruktion"
* #10059639 ^designation[+].language = #de-DE
* #10059639 ^designation[=].value = "Larynxverschluss"
* #10059639 ^designation[+].language = #de-DE
* #10059639 ^designation[=].value = "Kehlkopfverschluss"
* #10059639 ^definition = "Eine Störung, gekennzeichnet durch eine Behinderung (Obstruktion) der Atemwege des Kehlkopfes."
* #10059639 ^property[+].code = #grad3
* #10059639 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; Stridor; endoskopische Intervention angezeigt (z. B. Stent, Laser)"
* #10059639 ^property[+].code = #grad4
* #10059639 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10059639 ^property[+].code = #grad5
* #10059639 ^property[=].valueString = "Tod"
* #10065880 "Larynxschleimhautentzündung"
* #10065880 ^designation[+].language = #de-DE
* #10065880 ^designation[=].value = "Larynxhindernis"
* #10065880 ^designation[+].language = #de-DE
* #10065880 ^designation[=].value = "Kehlkopfschleimhautentzündung"
* #10065880 ^designation[+].language = #de-DE
* #10065880 ^designation[=].value = "laryngeale Mukositis"
* #10065880 ^designation[+].language = #de-DE
* #10065880 ^designation[=].value = "Larynxmukositis"
* #10065880 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Kehlkopfschleimhaut."
* #10065880 ^property[+].code = #grad3
* #10065880 ^property[=].valueString = "Schwerer Schmerz; schwerwiegend verändertes Essen/Schlucken; medizinische Intervention angezeigt"
* #10065880 ^property[+].code = #grad4
* #10065880 ^property[=].valueString = "Lebensbedrohliche Atemwegsbeeinträchtigung; Intervention dringend angezeigt (z. B. Tracheotomie oder Intubation)"
* #10065880 ^property[+].code = #grad5
* #10065880 ^property[=].valueString = "Tod"
* #10023862 "Larynxstenose"
* #10023862 ^designation[+].language = #de-DE
* #10023862 ^designation[=].value = "Kehlkopfverenugung"
* #10023862 ^designation[+].language = #de-DE
* #10023862 ^designation[=].value = "Larynxverenungung"
* #10023862 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Verengung im Bereich des Pharyngolarynx."
* #10023862 ^property[+].code = #grad3
* #10023862 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; Stridor; endoskopische Intervention angezeigt (z. B. Stent, Laser)"
* #10023862 ^property[+].code = #grad4
* #10023862 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10023862 ^property[+].code = #grad5
* #10023862 ^property[=].valueString = "Tod"
* #10037383 "Lungenfibrose"
* #10037383 ^designation[+].language = #de-DE
* #10037383 ^designation[=].value = "Pulmonalfibrose"
* #10037383 ^designation[+].language = #de-DE
* #10037383 ^designation[=].value = "interstitielle Lungenerkrankung"
* #10037383 ^definition = "Eine Erkrankung, gekennzeichnet durch den Ersatz von Lungengewebe durch Bindegewebe, das zu fortschreitender Atemnot, Atemversagen oder Rechtherzversagen führt, Störungen des Gasaustausches verursacht und zum Atemversagen führen kann."
* #10037383 ^property[+].code = #grad3
* #10037383 ^property[=].valueString = "Schwere Hypoxämie; Zeichen eines Rechtsherzversagens; radiographische pulmonale Fibrose >5075%"
* #10037383 ^property[+].code = #grad4
* #10037383 ^property[=].valueString = "Lebensbedrohliche Folgen (z. B. hämodynamisch/pulmonale Komplikationen): Intubation mit Atemunterstützung angezeigt; radiographische pulmonale Fibrose >75% mit schwerer Bienenwabenbildung"
* #10037383 ^property[+].code = #grad5
* #10037383 ^property[=].valueString = "Tod"
* #10065873 "Lungenfistel"
* #10065873 ^designation[+].language = #de-DE
* #10065873 ^designation[=].value = "Pulmonalfistel"
* #10065873 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Lunge und einem anderen Organ oder anatomischen Ort."
* #10065873 ^property[+].code = #grad3
* #10065873 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; endoskopische Stenting oder operative Intervention angezeigt"
* #10065873 ^property[+].code = #grad4
* #10065873 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065873 ^property[+].code = #grad5
* #10065873 ^property[=].valueString = "Tod"
* #10037375 "Lungenödem"
* #10037375 ^designation[+].language = #de-DE
* #10037375 ^designation[=].value = "Pulmonales Ödem"
* #10037375 ^designation[+].language = #de-DE
* #10037375 ^designation[=].value = "Wasserlunge"
* #10037375 ^definition = "Eine Erkrankung, gekennzeichnet durch Ansammlung von Flüssigkeit in den Lungengeweben, das Störungen des Gasaustausches verursacht und zum Atemversagen führen kann."
* #10037375 ^property[+].code = #grad3
* #10037375 ^property[=].valueString = "Schwere Atemnot oder Ruhedyspnoe; Sauerstoff angezeigt; Einschränkung der selbstversorgenden ATL"
* #10037375 ^property[+].code = #grad4
* #10037375 ^property[=].valueString = "Lebensbedrohliche respiratorische Beeinträchtigung; dringende Intervention oder Intubation mit Atemunterstützung angezeigt"
* #10037375 ^property[+].code = #grad5
* #10037375 ^property[=].valueString = "Tod"
* #10056356 "Mediastinale Blutung"
* #10056356 ^designation[+].language = #de-DE
* #10056356 ^designation[=].value = "Mittelfellblutung"
* #10056356 ^designation[+].language = #de-DE
* #10056356 ^designation[=].value = "mediastinale Thoraxblutung"
* #10056356 ^definition = "Eine Störung, gekennzeichnet durch eine Blutung aus dem Mediastinum."
* #10056356 ^property[+].code = #grad3
* #10056356 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
* #10056356 ^property[+].code = #grad4
* #10056356 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10056356 ^property[+].code = #grad5
* #10056356 ^property[=].valueString = "Tod"
* #10062244 "Nasennebenhöhlenerkrankung"
* #10062244 ^designation[+].language = #de-DE
* #10062244 ^designation[=].value = "Paranasale Sinuserkrankung"
* #10062244 ^definition = "Eine Erkrankung, gekennzeichnet durch Beteiligung der Nasennebenhöhlen."
* #10062244 ^property[+].code = #grad3
* #10062244 ^property[=].valueString = "Stenose mit signifikanter nasaler Behinderung; Einschränkung der selbstversorgenden ATL"
* #10062244 ^property[+].code = #grad4
* #10062244 ^property[=].valueString = "Nekrose von Weichgewebe oder Knochen, dringend operative Intervention angezeigt"
* #10062244 ^property[+].code = #grad5
* #10062244 ^property[=].valueString = "Tod"
* #10028735 "Nasenverstopfung"
* #10028735 ^designation[+].language = #de-DE
* #10028735 ^designation[=].value = "Nasenkongestion"
* #10028735 ^definition = "Eine Störung, gekennzeichnet durch eine Behinderung der nasalen Passage aufgrund eines Schleimhautödems."
* #10028735 ^property[+].code = #grad3
* #10028735 ^property[=].valueString = "Assoziiert mit blutigem nasalen Ausfluss oder Epistaxis"
* #10028735 ^property[+].code = #grad4
* #10028735 ^property[=].valueString = "-"
* #10028735 ^property[+].code = #grad5
* #10028735 ^property[=].valueString = "-"
* #10041232 "Niesen"
* #10041232 ^designation[+].language = #de-DE
* #10041232 ^designation[=].value = "-"
* #10041232 ^definition = "Eine Auffälligkeit, gekennzeichnet durch unwillkürliche Ausstoß von Luft aus der Nase."
* #10041232 ^property[+].code = #grad3
* #10041232 ^property[=].valueString = "-"
* #10041232 ^property[+].code = #grad4
* #10041232 ^property[=].valueString = "-"
* #10041232 ^property[+].code = #grad5
* #10041232 ^property[=].valueString = "-"
* #10065881 "Pharyngeale Mukositis"
* #10065881 ^designation[+].language = #de-DE
* #10065881 ^designation[=].value = "Rachenschleimhautentzündung"
* #10065881 ^designation[+].language = #de-DE
* #10065881 ^designation[=].value = "Pharynxschleimhautentzündung"
* #10065881 ^designation[+].language = #de-DE
* #10065881 ^designation[=].value = "Pharynxmukositis"
* #10065881 ^definition = "Eine Störung, gekennzeichnet durch eine Entzündung der Rachenschleimhaut."
* #10065881 ^property[+].code = #grad3
* #10065881 ^property[=].valueString = "Schwerer Schmerz; Unfähigkeit einer angemessenen oralen Ernährung und Flüssigkeitsaufnahme; Einschränkung der selbstversorgenden ATL"
* #10065881 ^property[+].code = #grad4
* #10065881 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende  Intervention angezeigt"
* #10065881 ^property[+].code = #grad5
* #10065881 ^property[=].valueString = "Tod"
* #10055315 "Pharyngxblutung"
* #10055315 ^designation[+].language = #de-DE
* #10055315 ^designation[=].value = "Rachenblutung"
* #10055315 ^definition = "Eine Störung, gekennzeichnet durch eine Blutung aus dem Pharynx."
* #10055315 ^property[+].code = #grad3
* #10055315 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder operative Intervention angezeigt (z. B. Hämostasis des Blutungsortes)"
* #10055315 ^property[+].code = #grad4
* #10055315 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder dringende Intervention angezeigt"
* #10055315 ^property[+].code = #grad5
* #10055315 ^property[=].valueString = "Tod"
* #10034825 "Pharynxfistel"
* #10034825 ^designation[+].language = #de-DE
* #10034825 ^designation[=].value = "Rachenfistel"
* #10034825 ^designation[+].language = #de-DE
* #10034825 ^designation[=].value = "Hypopharynsfistel"
* #10034825 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Pharynx und einem anderen Organ oder einer anderen anatomischen Ort."
* #10034825 ^property[+].code = #grad3
* #10034825 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
* #10034825 ^property[+].code = #grad4
* #10034825 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10034825 ^property[+].code = #grad5
* #10034825 ^property[=].valueString = "Tod"
* #10034844 "Pharynx-Larynx-Schmerzen"
* #10034844 ^designation[+].language = #de-DE
* #10034844 ^designation[=].value = "Rachen- Kehlkopf- Schmerzen"
* #10034844 ^designation[+].language = #de-DE
* #10034844 ^designation[=].value = "Rachen- Hals- Schmerzen"
* #10034844 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Rachen-Kehlkopf-Region."
* #10034844 ^property[+].code = #grad3
* #10034844 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10034844 ^property[+].code = #grad4
* #10034844 ^property[=].valueString = "-"
* #10034844 ^property[+].code = #grad5
* #10034844 ^property[=].valueString = "-"
* #10065706 "Pharynxnekrose"
* #10065706 ^designation[+].language = #de-DE
* #10065706 ^designation[=].value = "Rachennekrose"
* #10065706 ^definition = "Eine Erkrankung, gekennzeichnet durch einen nekrotischen Prozess, der im Pharynx auftritt."
* #10065706 ^property[+].code = #grad3
* #10065706 ^property[=].valueString = "Unfähigkeit der Ernährung über den GI-Trakt; Sondenernährung oder TPE angezeigt; radiologische, endoskopische oder operative Intervention angezeigt"
* #10065706 ^property[+].code = #grad4
* #10065706 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt"
* #10065706 ^property[+].code = #grad5
* #10065706 ^property[=].valueString = "Tod"
* #10050028 "Pharynxstenose"
* #10050028 ^designation[+].language = #de-DE
* #10050028 ^designation[=].value = "Rachenverengung"
* #10050028 ^designation[+].language = #de-DE
* #10050028 ^designation[=].value = "Pharynxverengung"
* #10050028 ^definition = "Eine Störung, gekennzeichnet durch eine Verengung im Bereich der pharyngealen Atemwege."
* #10050028 ^property[+].code = #grad3
* #10050028 ^property[=].valueString = "Einschränkung der selbstversorgenden ATL; Stridor; endoskopische Intervention angezeigt (z. B. Stent, Laser)"
* #10050028 ^property[+].code = #grad4
* #10050028 ^property[=].valueString = "Lebensbedrohliche respiratorische Beeinträchtigung; dringende Intervention angezeigt (z. B. Tracheotomie oder Intubation)"
* #10050028 ^property[+].code = #grad5
* #10050028 ^property[=].valueString = "Tod"
* #10055319 "Pleurablutung"
* #10055319 ^designation[+].language = #de-DE
* #10055319 ^designation[=].value = "Pleurahämorrhagie"
* #10055319 ^definition = "Eine Störung, gekennzeichnet durch eine Blutung aus der Pleurahöhle."
* #10055319 ^property[+].code = #grad3
* #10055319 ^property[=].valueString = ">1000 ml Blut abpunktiert; persistierende Blutung (150-200ml/h über 2-4 h); persistierende Transfusion angezeigt; elektive operative Intervention angezeigt"
* #10055319 ^property[+].code = #grad4
* #10055319 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder Intervention dingend angezeigt"
* #10055319 ^property[+].code = #grad5
* #10055319 ^property[=].valueString = "Tod"
* #10035598 "Pleuraerguss"
* #10035598 ^designation[+].language = #de-DE
* #10035598 ^designation[=].value = "Brustfellerguss"
* #10035598 ^designation[+].language = #de-DE
* #10035598 ^designation[=].value = "Pleuraeffusion"
* #10035598 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Erhöhung der Flüssigkeitsmenge innerhalb der Pleurahöhle. Symptome schließen Kurzatmigkeit, Husten und ausgeprägte Brustbeschwerden ein."
* #10035598 ^property[+].code = #grad3
* #10035598 ^property[=].valueString = "Symptomatisch mit Atemnot und Hypoxie; chirurgische Intervention einschließlich Pleuradrainage oder Pleurodese angezeigt."
* #10035598 ^property[+].code = #grad4
* #10035598 ^property[=].valueString = "Lebensbedrohliche respiratorische oder hämodynamische Beeinträchtigung; Intubation oder  Intervention dringlich angezeigt (z. B. Tracheotomie oder Intubation)"
* #10035598 ^property[+].code = #grad5
* #10035598 ^property[=].valueString = "Tod"
* #10035623 "Pleuraschmerz"
* #10035623 ^designation[+].language = #de-DE
* #10035623 ^designation[=].value = "-"
* #10035623 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Pleura."
* #10035623 ^property[+].code = #grad3
* #10035623 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10035623 ^property[+].code = #grad4
* #10035623 ^property[=].valueString = "-"
* #10035623 ^property[+].code = #grad5
* #10035623 ^property[=].valueString = "-"
* #10035759 "Pneumothorax"
* #10035759 ^designation[+].language = #de-DE
* #10035759 ^designation[=].value = "Pneu"
* #10035759 ^definition = "Eine Störung, gekennzeichnet durch das anormale Vorhandensein von Luft in der Brustfellhöhle mit der Folge eines Lungenkollaps."
* #10035759 ^property[+].code = #grad3
* #10035759 ^property[=].valueString = "Operative Intervention angezeigt; Krankenhauseinweisung angezeigt"
* #10035759 ^property[+].code = #grad4
* #10035759 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10035759 ^property[+].code = #grad5
* #10035759 ^property[=].valueString = "Tod"
* #10036790 "Produktiver Husten"
* #10036790 ^designation[+].language = #de-DE
* #10036790 ^designation[=].value = "Husten mit Auswurf"
* #10036790 ^designation[+].language = #de-DE
* #10036790 ^designation[=].value = "Husten mit Expektoration"
* #10036790 ^definition = "Eine Störung, gekennzeichnet durch Auswurf von Absonderungen bei Husten."
* #10036790 ^property[+].code = #grad3
* #10036790 ^property[=].valueString = "-"
* #10036790 ^property[+].code = #grad4
* #10036790 ^property[=].valueString = "-"
* #10036790 ^property[+].code = #grad5
* #10036790 ^property[=].valueString = "-"
* #10037400 "Pulmonale Hypertonie"
* #10037400 ^designation[+].language = #de-DE
* #10037400 ^designation[=].value = "Lungenhochdruck"
* #10037400 ^designation[+].language = #de-DE
* #10037400 ^designation[=].value = "Pulmonalhypertonie"
* #10037400 ^designation[+].language = #de-DE
* #10037400 ^designation[=].value = "Hypertonie des kleinen Kreislaufs"
* #10037400 ^designation[+].language = #de-DE
* #10037400 ^designation[=].value = "Lungenkreislaufhypertonus"
* #10037400 ^definition = "Eine Erkrankung, gekennzeichnet durch einen Druckanstieg im Lungenkreislauf aufgrund einer Lungen- oder Herzerkrankung."
* #10037400 ^property[+].code = #grad3
* #10037400 ^property[=].valueString = "Schwere Symptome, assoziiert mit Hypoxämie, rechtem Herzversagen; Sauerstoff angezeigt"
* #10037400 ^property[+].code = #grad4
* #10037400 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende operative Intervention angezeigt (z. B. Tracheotomie oder Intubation)"
* #10037400 ^property[+].code = #grad5
* #10037400 ^property[=].valueString = "Tod"
* #10038695 "Respirationsversagen"
* #10038695 ^designation[+].language = #de-DE
* #10038695 ^designation[=].value = "Atemversagen"
* #10038695 ^designation[+].language = #de-DE
* #10038695 ^designation[=].value = "Respiratorische Insuffizienz"
* #10038695 ^designation[+].language = #de-DE
* #10038695 ^designation[=].value = "Respiratorisches Versagen"
* #10038695 ^definition = "Eine Erkrankung, gekennzeichnet durch einen behinderten Gasaustausch im Atemsystem mit der Folge einer Hypoxämie und Verminderung der Sauerstoffversorgung der Gewebe, was mit einem Anstieg der arteriellen Konzentration von Kohlendioxid assoziiert sein kann."
* #10038695 ^property[+].code = #grad3
* #10038695 ^property[=].valueString = "-"
* #10038695 ^property[+].code = #grad4
* #10038695 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende  Intervention, Intubation oder Atemunterstützung angezeigt"
* #10038695 ^property[+].code = #grad5
* #10038695 ^property[=].valueString = "Tod"
* #10038921 "Retinsäure Syndrom"
* #10038921 ^designation[+].language = #de-DE
* #10038921 ^designation[=].value = "ATRA'-Syndrom"
* #10038921 ^designation[+].language = #de-DE
* #10038921 ^designation[=].value = "Retinolsäuresyndrom"
* #10038921 ^definition = "Eine Erkrankung, gekennzeichnet durch Gewichtszunahme, Atemnot, pleurale und perikardiale Ergüsse, Leukozytose und oder Nierenversagen, ursprünglich beschrieben bei mit alltrans Retinsäure behandelten Patienten."
* #10038921 ^property[+].code = #grad3
* #10038921 ^property[=].valueString = "Schwere Symptome; Krankenhauseinweisung angezeigt"
* #10038921 ^property[+].code = #grad4
* #10038921 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; Atemunterstützung angezeigt"
* #10038921 ^property[+].code = #grad5
* #10038921 ^property[=].valueString = "Tod"
* #10040975 "Schlaf-Apnoe Syndrom (SAS)"
* #10040975 ^designation[+].language = #de-DE
* #10040975 ^designation[=].value = "-"
* #10040975 ^definition = "Eine Störung, gekennzeichnet durch Aufhören der Atmung für kurze Perioden während des Schlafes."
* #10040975 ^property[+].code = #grad3
* #10040975 ^property[=].valueString = "Herabsetzung der Sauerstoffsättigung; assoziiert mit Hochdruck; medizinische Intervention angezeigt; Einschränkung der selbstversorgenden ATL"
* #10040975 ^property[+].code = #grad4
* #10040975 ^property[=].valueString = "Kardiovaskuläre oder neuropsychiatrische Symptome; dringend operative Intervention angezeigt"
* #10040975 ^property[+].code = #grad5
* #10040975 ^property[=].valueString = "Tod"
* #10020039 "Schluckauf"
* #10020039 ^designation[+].language = #de-DE
* #10020039 ^designation[=].value = "Hicksen"
* #10020039 ^definition = "Eine Störung, gekennzeichnet durch wiederholte Schluckgeräusche, die aus der unwillkürlichen Öffnung und Schließung der Stimmritze resultieren."
* #10020039 ^property[+].code = #grad3
* #10020039 ^property[=].valueString = "Schwere Symptome; beeinträchtigt den Schlaf; Einschränkung der selbstversorgenden ATL"
* #10020039 ^property[+].code = #grad4
* #10020039 ^property[=].valueString = "-"
* #10020039 ^property[+].code = #grad5
* #10020039 ^property[=].valueString = "-"
* #10036402 "Sinubronchiales Syndrom"
* #10036402 ^designation[+].language = #de-DE
* #10036402 ^designation[=].value = "Airway Cough Syndrome"
* #10036402 ^designation[+].language = #de-DE
* #10036402 ^designation[=].value = "UACS"
* #10036402 ^designation[+].language = #de-DE
* #10036402 ^designation[=].value = "Postnasal'-Drip'-Syndrom"
* #10036402 ^designation[+].language = #de-DE
* #10036402 ^designation[=].value = "PNDS"
* #10036402 ^definition = "Eine Störung, gekennzeichnet durch übermäßige Schleimhautsekretion an der Rückwand der Nasenhöhle oder des Rachens, die Halsschmerzen und/oder Husten herruft."
* #10036402 ^property[+].code = #grad3
* #10036402 ^property[=].valueString = "-"
* #10036402 ^property[+].code = #grad4
* #10036402 ^property[=].valueString = "-"
* #10036402 ^property[+].code = #grad5
* #10036402 ^property[=].valueString = "-"
* #10047681 "Stimmänderung"
* #10047681 ^designation[+].language = #de-DE
* #10047681 ^designation[=].value = "-"
* #10047681 ^definition = "Eine Störung, gekennzeichnet durch eine Veränderung in dem Klang und/oder der Geschwindigkeit der Stimme."
* #10047681 ^property[+].code = #grad3
* #10047681 ^property[=].valueString = "Schwerwiegende Stimmänderung einschließlich hauptsächlich flüsternde Sprache; kann für Verständlichkeit häufige Wiederholung oder facetoface Kontakt notwendig machen"
* #10047681 ^property[+].code = #grad4
* #10047681 ^property[=].valueString = "-"
* #10047681 ^property[+].code = #grad5
* #10047681 ^property[=].valueString = "-"
* #10042241 "Stridor"
* #10042241 ^designation[+].language = #de-DE
* #10042241 ^designation[=].value = "Atemgeräusch"
* #10042241 ^definition = "Eine Störung, gekennzeichnet durch ein hellklingendes Atemgeräusch aufgrund Kehlkopf- oder oberer Luftwegsbehinderung."
* #10042241 ^property[+].code = #grad3
* #10042241 ^property[=].valueString = "Respiratorische Atemnot, die selbstversorgenden ATL begrenzend; med. Intervention angezeigt"
* #10042241 ^property[+].code = #grad4
* #10042241 ^property[=].valueString = "Lebensbedrohliche Luftwegbehinderung; Intervention dringlich angezeigt (z. B. Tracheotomie oder Intubation)"
* #10042241 ^property[+].code = #grad5
* #10042241 ^property[=].valueString = "Tod"
* #10065787 "Trachealfistel"
* #10065787 ^designation[+].language = #de-DE
* #10065787 ^designation[=].value = "Luftröhrenfistel"
* #10065787 ^definition = "Eine Erkrankung, gekennzeichnet durch eine anormale Verbindung zwischen Trachea und einem anderen Organ oder anatomischen Ort."
* #10065787 ^property[+].code = #grad3
* #10065787 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL; endoskopische oder operative Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
* #10065787 ^property[+].code = #grad4
* #10065787 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende Intervention angezeigt"
* #10065787 ^property[+].code = #grad5
* #10065787 ^property[=].valueString = "Tod"
* #10050816 "Trachealstenose"
* #10050816 ^designation[+].language = #de-DE
* #10050816 ^designation[=].value = "Luftröhrenstenose"
* #10050816 ^designation[+].language = #de-DE
* #10050816 ^designation[=].value = "Luftföhrenversagung"
* #10050816 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Verengung der Trachea."
* #10050816 ^property[+].code = #grad3
* #10050816 ^property[=].valueString = "Stridor oder Atemnot; Einschränkung der selbstversorgenden ATL; endoskopische Intervention angezeigt (z. B. Stent oder primärer Verschluss)"
* #10050816 ^property[+].code = #grad4
* #10050816 ^property[=].valueString = "Lebensbedrohliche Luftwegbehinderung; Intervention dringlich angezeigt (z. B. Tracheotomie oder Intubation)"
* #10050816 ^property[+].code = #grad5
* #10050816 ^property[=].valueString = "Tod"
* #10065900 "Tracheitis"
* #10065900 ^designation[+].language = #de-DE
* #10065900 ^designation[=].value = "Luftröhrenschleimhautentzündung"
* #10065900 ^designation[+].language = #de-DE
* #10065900 ^designation[=].value = "Tracheale Mukositis"
* #10065900 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Luftröhrenschleimhaut."
* #10065900 ^property[+].code = #grad3
* #10065900 ^property[=].valueString = "Schwerer Schmerz; Hämorrhagie oder Atemsymptome; Einschränkung der selbstversorgenden ATL"
* #10065900 ^property[+].code = #grad4
* #10065900 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende  Intervention angezeigt"
* #10065900 ^property[+].code = #grad5
* #10065900 ^property[=].valueString = "Tod"
* #10038738 "Störungen der Atmungsorgane, des Thorax und Mediastinums - Sonstige,  zu spezifizieren"
* #10038738 ^designation[+].language = #de-DE
* #10038738 ^designation[=].value = "-"
* #10038738 ^definition = "Sonstige, zu spezifizierende Störungen der Atmungsorgane, des Thorax und Mediastinums, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10038738 ^property[+].code = #grad3
* #10038738 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10038738 ^property[+].code = #grad4
* #10038738 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10038738 ^property[+].code = #grad5
* #10038738 ^property[=].valueString = "Tod"
* #10037847 "Akneiformes Exanthem"
* #10037847 ^designation[+].language = #de-DE
* #10037847 ^designation[=].value = "Akneähnlicher Ausschlag"
* #10037847 ^definition = "Eine Störung, gekennzeichnet durch einen Ausschlag von Papeln und Pusteln, die typischerweise im Gesicht, der Kopfschwarte, dem oberen Brustkorb und dem Rücken auftreten."
* #10037847 ^property[+].code = #grad3
* #10037847 ^property[=].valueString = "Papeln und/oder Pusteln auf >30% der Körperoberfläche, assoziiert oder nicht mit Symptomen von Juckreiz und Druckschmerz; Einschränkung der selbstversorgenden ATL; assoziiert mit lokaler Superinfektion, (Therapie) mit oralen Antibiotika angezeigt;"
* #10037847 ^property[+].code = #grad4
* #10037847 ^property[=].valueString = "Papeln und/oder Pusteln auf jeglicher % der Körperoberfläche, assoziiert oder nicht mit Symptomen von Juckreiz und Druckschmerz und sind assoziiert mit ausgedehnter Superinfektion, (Therapie) mit i. v. Antibiotika angezeigt; lebensbedrohliche Folgen"
* #10037847 ^property[+].code = #grad5
* #10037847 ^property[=].valueString = "Tod"
* #10006556 "Bullöse Dermatitis"
* #10006556 ^designation[+].language = #de-DE
* #10006556 ^designation[=].value = "Blasige Hautentzündung"
* #10006556 ^designation[+].language = #de-DE
* #10006556 ^designation[=].value = "Dermatitis mit Blausenbildung"
* #10006556 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Haut, charakterisiert durch das Vorhandensein von flüssigkeitsgefüllten Blasen."
* #10006556 ^property[+].code = #grad3
* #10006556 ^property[=].valueString = "Blasen bedecken >30% der KOF; Einschränkung der selbstversorgenden ATL"
* #10006556 ^property[+].code = #grad4
* #10006556 ^property[=].valueString = "Blasen bedecken >30% der KOF; assoziiert mit Flüssigkeits oder Elektrolyt Anormalitäten; Intensivstation ICU (intensive care unit) angezeigt"
* #10006556 ^property[+].code = #grad5
* #10006556 ^property[=].valueString = "Tod"
* #10015218 "Erythema exsudativum multiforme"
* #10015218 ^designation[+].language = #de-DE
* #10015218 ^designation[=].value = "Erythema multiforme"
* #10015218 ^definition = "Eine Erkrankung, gekennzeichnet durch Schießscheibenläsionen (rosaroter Ring um ein blasses Zentrum)."
* #10015218 ^property[+].code = #grad3
* #10015218 ^property[=].valueString = "Schießscheibenläsionen bedecken >30% der KOF und assoziiert mit oralen oder genitale Erosionen"
* #10015218 ^property[+].code = #grad4
* #10015218 ^property[=].valueString = "-"
* #10015218 ^property[+].code = #grad5
* #10015218 ^property[=].valueString = "-"
* #10015277 "Erythrodemie"
* #10015277 ^designation[+].language = #de-DE
* #10015277 ^designation[=].value = "Hautrötung"
* #10015277 ^definition = "Eine Störung, gekennzeichnet durch ein generalisiertes entzündliches Erythem und Exfoliation."
* #10015277 ^property[+].code = #grad3
* #10015277 ^property[=].valueString = "Erythem bedeckt >90% der KOF mit assoziierten Symptomen (z. B. Juckreiz oder Druckschmerzhaftigkeit); Einschränkung der selbstversorgenden ATL"
* #10015277 ^property[+].code = #grad4
* #10015277 ^property[=].valueString = "Erythem bedeckt >90% der KOF mit assoziierten Flüssigkeits- oder Elektrolytanormalitäten; Symptomen (z. B. Juckreiz oder Druckschmerzhaftigkeit); Intensivstation ICU (intensive care unit) angezeigt"
* #10015277 ^property[+].code = #grad5
* #10015277 ^property[=].valueString = "Tod"
* #10016241 "Fettatrophie"
* #10016241 ^designation[+].language = #de-DE
* #10016241 ^designation[=].value = "Fettschwund"
* #10016241 ^definition = "Eine Störung, gekennzeichnet durch Schrumpfen des Fettgewebes."
* #10016241 ^property[+].code = #grad3
* #10016241 ^property[=].valueString = "Betroffen >30% der KOF und assoziiert mit Erythem oder Druckschmerzhaftigkeit; Einschränkung der selbstversorgenden ATL"
* #10016241 ^property[+].code = #grad4
* #10016241 ^property[=].valueString = "-"
* #10016241 ^property[+].code = #grad5
* #10016241 ^property[=].valueString = "Tod"
* #10001760 "Haarausfall"
* #10001760 ^designation[+].language = #de-DE
* #10001760 ^designation[=].value = "Alopezie"
* #10001760 ^designation[+].language = #de-DE
* #10001760 ^designation[=].value = "Alopecia"
* #10001760 ^definition = "Eine Störung, gekennzeichnet durch eine Abnahme der Haardichte im Vergleich zum Normalen für ein gegebenes Individuum eines bestimmten Alters und der Körperlokalisation."
* #10001760 ^property[+].code = #grad3
* #10001760 ^property[=].valueString = "-"
* #10001760 ^property[+].code = #grad4
* #10001760 ^property[=].valueString = "-"
* #10001760 ^property[+].code = #grad5
* #10001760 ^property[=].valueString = "-"
* #10054524 "Hand-Fuß-Syndrom"
* #10054524 ^designation[+].language = #de-DE
* #10054524 ^designation[=].value = "Palmarplantare"
* #10054524 ^designation[+].language = #de-DE
* #10054524 ^designation[=].value = "Erythrodyästhesie PPE"
* #10054524 ^definition = "Eine Störung, gekennzeichnet durch Rötung, ausgeprägte Beschwerden, Schwellung und Kribbeln der Handflächen und Fußsohlen."
* #10054524 ^property[+].code = #grad3
* #10054524 ^property[=].valueString = "Schwere Hautveränderungen (z. B. Abschälen, Blasen, Bluten, Ödem oder Hyperkeratose) mit Schmerz; Einschränkung der selbstversorgenden ATL"
* #10054524 ^property[+].code = #grad4
* #10054524 ^property[=].valueString = "-"
* #10054524 ^property[+].code = #grad5
* #10054524 ^property[=].valueString = "Tod"
* #10040799 "Hautatropie"
* #10040799 ^designation[+].language = #de-DE
* #10040799 ^designation[=].value = "Hautschwund"
* #10040799 ^definition = "Eine Störung, gekennzeichnet durch die Degeneration und Verdünnung der Epidermis und der Dermis."
* #10040799 ^property[+].code = #grad3
* #10040799 ^property[=].valueString = "Betroffen >30% der KOF; assoziiert mit Ulzeration"
* #10040799 ^property[+].code = #grad4
* #10040799 ^property[=].valueString = "-"
* #10040799 ^property[+].code = #grad5
* #10040799 ^property[=].valueString = "Tod"
* #10040865 "Hauthyperpigmentierung"
* #10040865 ^designation[+].language = #de-DE
* #10040865 ^designation[=].value = "Chloasma"
* #10040865 ^designation[+].language = #de-DE
* #10040865 ^designation[=].value = "Melasma"
* #10040865 ^definition = "Eine Störung, gekennzeichnet durch ein Dunkelwerden der Haut aufgrund übermäßiger Melaninablagerung."
* #10040865 ^property[+].code = #grad3
* #10040865 ^property[=].valueString = "-"
* #10040865 ^property[+].code = #grad4
* #10040865 ^property[=].valueString = "-"
* #10040865 ^property[+].code = #grad5
* #10040865 ^property[=].valueString = "-"
* #10040868 "Hauthypopigmentierung"
* #10040868 ^designation[+].language = #de-DE
* #10040868 ^designation[=].value = "Depigemtierung"
* #10040868 ^definition = "Eine Störung, gekennzeichnet durch Verlust von Hautpigment."
* #10040868 ^property[+].code = #grad3
* #10040868 ^property[=].valueString = "-"
* #10040868 ^property[+].code = #grad4
* #10040868 ^property[=].valueString = "-"
* #10040868 ^property[+].code = #grad5
* #10040868 ^property[=].valueString = "-"
* #10033474 "Hautschmerz"
* #10033474 ^designation[+].language = #de-DE
* #10033474 ^designation[=].value = "-"
* #10033474 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Haut."
* #10033474 ^property[+].code = #grad3
* #10033474 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10033474 ^property[+].code = #grad4
* #10033474 ^property[=].valueString = "-"
* #10033474 ^property[+].code = #grad5
* #10033474 ^property[=].valueString = "-"
* #10051837 "Hautverhärtung"
* #10051837 ^designation[+].language = #de-DE
* #10051837 ^designation[=].value = "Hautinduration"
* #10051837 ^designation[+].language = #de-DE
* #10051837 ^designation[=].value = "kutane Induration"
* #10051837 ^definition = "Eine Störung, gekennzeichnet durch ein Areal der Verhärtung in der Haut."
* #10051837 ^property[+].code = #grad3
* #10051837 ^property[=].valueString = "Schwere Induration; unfähig, die Haut zu verschieben oder zu kneifen; begrenzende Gelenk- oder Öffnungsbewegung (z. B. Mund, Anus); Einschränkung der selbstversorgenden ATL"
* #10051837 ^property[+].code = #grad4
* #10051837 ^property[=].valueString = "Generalisiert; assoziiert mit Zeichen oder Symptomen behindernden Atmens oder der Nahrungsaufnahme"
* #10051837 ^property[+].code = #grad5
* #10051837 ^property[=].valueString = "Tod"
* #10020112 "Hirsutismus"
* #10020112 ^designation[+].language = #de-DE
* #10020112 ^designation[=].value = "Vermehrte Behaarung"
* #10020112 ^definition = "Eine Störung, die durch das Vorhandensein von überschüssigem Haarwachstum bei Frauen an anatomischen Stellen gekennzeichnet ist, an denen Wachstum als ein sekundäres männliches Merkmal und unter androgener Kontrolle stehend gilt (Bart, Moustache, Brust, Bauch)."
* #10020112 ^property[+].code = #grad3
* #10020112 ^property[=].valueString = "-"
* #10020112 ^property[+].code = #grad4
* #10020112 ^property[=].valueString = "-"
* #10020112 ^property[+].code = #grad5
* #10020112 ^property[=].valueString = "-"
* #10020642 "Hyperhidrose"
* #10020642 ^designation[+].language = #de-DE
* #10020642 ^designation[=].value = "Vermehrte Schweißbildung"
* #10020642 ^definition = "Eine Störung, gekennzeichnet durch übermäßige Perspiration."
* #10020642 ^property[+].code = #grad3
* #10020642 ^property[=].valueString = "Generalisiert, mit Betroffenheit anderer Lokalisationen außer Handflächen, Fußsohlen oder Achselhöhlen; assoziiert mit Flüssigkeits oder Elektrolytunausgeglichenheit"
* #10020642 ^property[+].code = #grad4
* #10020642 ^property[=].valueString = "-"
* #10020642 ^property[+].code = #grad5
* #10020642 ^property[=].valueString = "-"
* #10020864 "Hypertrichosis"
* #10020864 ^designation[+].language = #de-DE
* #10020864 ^designation[=].value = "Verstärkte Behaarung"
* #10020864 ^designation[+].language = #de-DE
* #10020864 ^designation[=].value = "starke Behaarung"
* #10020864 ^definition = "Eine Störung, die durch eine Haardichte oder -länge gekennzeichnet ist, die über die akzeptierte Grenze des Normalen in einer bestimmten Körperregion für ein(e) besondere(s) Alter oder Rasse hinausgeht."
* #10020864 ^property[+].code = #grad3
* #10020864 ^property[=].valueString = "-"
* #10020864 ^property[+].code = #grad4
* #10020864 ^property[=].valueString = "-"
* #10020864 ^property[+].code = #grad5
* #10020864 ^property[=].valueString = "-"
* #10021013 "Hypohidrose"
* #10021013 ^designation[+].language = #de-DE
* #10021013 ^designation[=].value = "Verminderte Schweißbildung"
* #10021013 ^definition = "Eine Störung, gekennzeichnet durch vermindertes Schwitzen."
* #10021013 ^property[+].code = #grad3
* #10021013 ^property[=].valueString = "Anstieg der Körpertemperatur; Einschränkung der selbstversorgenden ATL"
* #10021013 ^property[+].code = #grad4
* #10021013 ^property[=].valueString = "Hitzschlag"
* #10021013 ^property[+].code = #grad5
* #10021013 ^property[=].valueString = "Tod"
* #10005901 "Körpergeruch"
* #10005901 ^designation[+].language = #de-DE
* #10005901 ^designation[=].value = "Schweißgeruch Ketose"
* #10005901 ^definition = "Eine Störung, gekennzeichnet durch einen anormalen Körpergeruch, als Folge von Bakterienwachstum auf dem Körper."
* #10005901 ^property[+].code = #grad3
* #10005901 ^property[=].valueString = "-"
* #10005901 ^property[+].code = #grad4
* #10005901 ^property[=].valueString = "-"
* #10005901 ^property[+].code = #grad5
* #10005901 ^property[=].valueString = "-"
* #10049120 "Kopfhautschmerz"
* #10049120 ^designation[+].language = #de-DE
* #10049120 ^designation[=].value = "-"
* #10049120 ^definition = "Eine Störung, gekennzeichnet durch das Gefühl ausgeprägter Beschwerden in der Haut, die den oberen und den hinteren Teil des Kopfes bedeckt."
* #10049120 ^property[+].code = #grad3
* #10049120 ^property[=].valueString = "Schwerer Schmerz; Einschränkung der selbstversorgenden ATL"
* #10049120 ^property[+].code = #grad4
* #10049120 ^property[=].valueString = "-"
* #10049120 ^property[+].code = #grad5
* #10049120 ^property[=].valueString = "-"
* #10034966 "Lichtempfindlichkeit"
* #10034966 ^designation[+].language = #de-DE
* #10034966 ^designation[=].value = "Photosensibilität"
* #10034966 ^designation[+].language = #de-DE
* #10034966 ^designation[=].value = "Photohypersensibilität"
* #10034966 ^designation[+].language = #de-DE
* #10034966 ^designation[=].value = "Lichtüberempfindlichkeit"
* #10034966 ^definition = "Eine Störung, gekennzeichnet durch erhöhte Empfindlichkeit der Haut auf Licht."
* #10034966 ^property[+].code = #grad3
* #10034966 ^property[=].valueString = "Rötung >30% der KOF betreffend und Erythem mit Blasenbildung; Lichtüberempfindlichkeit; orale Corticosteroidtherapie angezeigt; Schmerzkontrolle angezeigt (z. B. Betäubungsmittel oder NSAIDs)"
* #10034966 ^property[+].code = #grad4
* #10034966 ^property[=].valueString = "Lebensbedrohliche Auswirkungen; dringende  Intervention angezeigt"
* #10034966 ^property[+].code = #grad5
* #10034966 ^property[=].valueString = "Tod"
* #10062315 "Lipohypertrophy"
* #10062315 ^designation[+].language = #de-DE
* #10062315 ^designation[=].value = "Vermehrung von Fettgewebe"
* #10062315 ^definition = "Eine Störung, gekennzeichnet durch eine Hypertrophy des subkutanen Fettgewebes am Ort mehrfacher subkutaner Insulininjektionen."
* #10062315 ^property[+].code = #grad3
* #10062315 ^property[=].valueString = "Betroffen >30% der KOF und assoziiert mit Druckschmerzhaftigkeit und Betäubungsmittel oder NSAIDs angezeigt; Lipohypertrophy; Einschränkung der selbstversorgenden ATL"
* #10062315 ^property[+].code = #grad4
* #10062315 ^property[=].valueString = "-"
* #10062315 ^property[+].code = #grad5
* #10062315 ^property[=].valueString = "-"
* #10044223 "Lyell-Syndrom medikamentöses"
* #10044223 ^designation[+].language = #de-DE
* #10044223 ^designation[=].value = "Medikamentöse bedingte toxische Nekrolyse der Epidermis"
* #10044223 ^designation[+].language = #de-DE
* #10044223 ^designation[=].value = "toxic epidermal necrolysis"
* #10044223 ^designation[+].language = #de-DE
* #10044223 ^designation[=].value = "TEN"
* #10044223 ^definition = "Eine Erkrankung, gekennzeichnet durch Ablösung von mehr als 30% der Gesamtkörperhaut. Das Syndrom wird einem Hypersensitivitätskomplex zugeschrieben, der Haut und Schleimhäute betrifft."
* #10044223 ^property[+].code = #grad3
* #10044223 ^property[=].valueString = "-"
* #10044223 ^property[+].code = #grad4
* #10044223 ^property[=].valueString = "Hautabschälung von >=30% der KOF mit assoziierten Zeichen (z. B. Erythem, Purpura, epidermale Ablösung)"
* #10044223 ^property[+].code = #grad5
* #10044223 ^property[=].valueString = "Tod"
* #10037868 "Makulopapulöses Hautexanthem"
* #10037868 ^designation[+].language = #de-DE
* #10037868 ^designation[=].value = "Knotigfleckiger Hautausschlag"
* #10037868 ^designation[+].language = #de-DE
* #10037868 ^designation[=].value = "makulopapulöses Exanthem"
* #10037868 ^definition = "Eine Erkrankung, gekennzeichnet durch einen Ausschlag von Papeln und Pusteln, die typischerweise im Gesicht, der Kopfschwarte, dem oberen Brustkorb und dem Rücken auftreten."
* #10037868 ^property[+].code = #grad3
* #10037868 ^property[=].valueString = "Papeln und/oder Pusteln auf >30% der KOF, assoziiert oder nicht mit Symptomen (z. B. Juckreiz, Brennen, Spannung); Einschränkung der selbstversorgenden ATL"
* #10037868 ^property[+].code = #grad4
* #10037868 ^property[=].valueString = "-"
* #10037868 ^property[+].code = #grad5
* #10037868 ^property[=].valueString = "-"
* #10028691 "Nagelverfärbungen"
* #10028691 ^designation[+].language = #de-DE
* #10028691 ^designation[=].value = "Nageldiskoloration"
* #10028691 ^definition = "Eine Störung, gekennzeichnet durch eine Farbveränderung der Nagelplatte."
* #10028691 ^property[+].code = #grad3
* #10028691 ^property[=].valueString = "-"
* #10028691 ^property[+].code = #grad4
* #10028691 ^property[=].valueString = "-"
* #10028691 ^property[+].code = #grad5
* #10028691 ^property[=].valueString = "-"
* #10049281 "Nagelverlust"
* #10049281 ^designation[+].language = #de-DE
* #10049281 ^designation[=].value = "Nagelausfall"
* #10049281 ^definition = "Eine Störung, gekennzeichnet durch den Verlust des ganzen oder eines Teils des Nagels."
* #10049281 ^property[+].code = #grad3
* #10049281 ^property[=].valueString = "-"
* #10049281 ^property[+].code = #grad4
* #10049281 ^property[=].valueString = "-"
* #10049281 ^property[+].code = #grad5
* #10049281 ^property[=].valueString = "-"
* #10062283 "Nagelrinnen"
* #10062283 ^designation[+].language = #de-DE
* #10062283 ^designation[=].value = "Nagelfurchen"
* #10062283 ^definition = "Eine Störung, gekennzeichnet durch vertikale oder horizontale Rinnen auf den Nägeln."
* #10062283 ^property[+].code = #grad3
* #10062283 ^property[=].valueString = "-"
* #10062283 ^property[+].code = #grad4
* #10062283 ^property[=].valueString = "-"
* #10062283 ^property[+].code = #grad5
* #10062283 ^property[=].valueString = "-"
* #10054541 "Periorbitales Ödem"
* #10054541 ^designation[+].language = #de-DE
* #10054541 ^designation[=].value = "Periorbitale Schwelllung"
* #10054541 ^designation[+].language = #de-DE
* #10054541 ^designation[=].value = "Augenhöhlenschwellung"
* #10054541 ^designation[+].language = #de-DE
* #10054541 ^designation[=].value = "Augenödem"
* #10054541 ^definition = "Eine Störung, gekennzeichnet durch eine Schwellung aufgrund übermäßige Ansammlung von Flüssigkeit um die Augenhöhle herum."
* #10054541 ^property[+].code = #grad3
* #10054541 ^property[=].valueString = "Ödem assoziiert mit Sehstörungen; erhöhter intraokularer Druck, Glaukom oder retinale Blutung; Neuritis des Opticus; Diuretika angezeigt; operative Intervention angezeigt"
* #10054541 ^property[+].code = #grad4
* #10054541 ^property[=].valueString = "-"
* #10054541 ^property[+].code = #grad5
* #10054541 ^property[=].valueString = "-"
* #10037087 "Pruritus"
* #10037087 ^designation[+].language = #de-DE
* #10037087 ^designation[=].value = "Juckreiz"
* #10037087 ^definition = "Eine Störung, gekennzeichnet durch eine intensive Juckempfindung."
* #10037087 ^property[+].code = #grad3
* #10037087 ^property[=].valueString = "Intensiv und großflächig; konstant; Einschränkung der selbstversorgenden ATL oder des Schlafes; orale Corticosteroide oder immunsuppressive Therapie angezeigt"
* #10037087 ^property[+].code = #grad4
* #10037087 ^property[=].valueString = "-"
* #10037087 ^property[+].code = #grad5
* #10037087 ^property[=].valueString = "-"
* #10037549 "Purpura"
* #10037549 ^designation[+].language = #de-DE
* #10037549 ^designation[=].value = "Kapilarbutungen der Haut, Unterhaut oder Schleimhäuten"
* #10037549 ^designation[+].language = #de-DE
* #10037549 ^designation[=].value = "Petichien"
* #10037549 ^designation[+].language = #de-DE
* #10037549 ^designation[=].value = "Rötung"
* #10037549 ^definition = "Eine Erkrankung, gekennzeichnet durch hämorrhagische Bereiche der Haut und Schleimhäute. Neuere Läsionen erscheinen rötlich in der Farbe.  Ältere Läsionen sind gewöhnlich von violetter Farbe und werden letztendlich bräunlich-gelblich in der Farbe."
* #10037549 ^property[+].code = #grad3
* #10037549 ^property[=].valueString = "Zusammengenommener Bereich von Läsionen >30% der KOF; spontane Blutungen"
* #10037549 ^property[+].code = #grad4
* #10037549 ^property[=].valueString = "-"
* #10037549 ^property[+].code = #grad5
* #10037549 ^property[=].valueString = "-"
* #10042033 "Stevens-Johnson-Syndrom, SJS"
* #10042033 ^designation[+].language = #de-DE
* #10042033 ^designation[=].value = "Dermatostomatitis Baader"
* #10042033 ^designation[+].language = #de-DE
* #10042033 ^designation[=].value = "Fiessinger'-Rendu'-Syndrom"
* #10042033 ^designation[+].language = #de-DE
* #10042033 ^designation[=].value = "bullöses Erythema exsudativum multiforme"
* #10042033 ^designation[+].language = #de-DE
* #10042033 ^designation[=].value = "kutane Arzneimittelhautallergie"
* #10042033 ^designation[+].language = #de-DE
* #10042033 ^designation[=].value = "infektallergische Hautallergie"
* #10042033 ^definition = "Eine Erkrankung, gekennzeichnet durch Ablösung von weniger als 10% der Gesamtkörperhaut. Das Syndrom wird einem Hypersensitivitätskomplex zugeschrieben, der Haut und Schleimhäute betrifft."
* #10042033 ^property[+].code = #grad3
* #10042033 ^property[=].valueString = "Hautabschälung von 10% der KOF mit assoziierten Zeichen (z. B. Erythem, Purpura, epidermale Ablösung und Schleimhautablösung)"
* #10042033 ^property[+].code = #grad4
* #10042033 ^property[=].valueString = "Hautabschälung von 10-30% der KOF mit assoziierten Zeichen (z. B. Erythem, Purpura, epidermale Ablösung und Schleimhautablösung)"
* #10042033 ^property[+].code = #grad5
* #10042033 ^property[=].valueString = "Tod"
* #10043189 "Teleangiektasie"
* #10043189 ^designation[+].language = #de-DE
* #10043189 ^designation[=].value = "Erweiterung der (kapillären) Haut'-Blutgefäße"
* #10043189 ^definition = "Eine Störung, gekennzeichnet durch eine lokale Erweiterung von kleinen Gefäßen mit der Folge einer roten Verfärbung der Haut oder der Schleimhäute."
* #10043189 ^property[+].code = #grad3
* #10043189 ^property[=].valueString = "-"
* #10043189 ^property[+].code = #grad4
* #10043189 ^property[=].valueString = "-"
* #10043189 ^property[+].code = #grad5
* #10043189 ^property[=].valueString = "-"
* #10013786 "Trockene Haut"
* #10013786 ^designation[+].language = #de-DE
* #10013786 ^designation[=].value = "-"
* #10013786 ^definition = "Eine Störung, gekennzeichnet durch schuppenartige und schlaffe Haut; die Poren sind allgemein fein, die Textur ist von papierener Beschaffenheit."
* #10013786 ^property[+].code = #grad3
* #10013786 ^property[=].valueString = "Ausbreitung >30% der BSA und assoziiert mit Jucken; Einschränkung der selbstversorgenden ATL"
* #10013786 ^property[+].code = #grad4
* #10013786 ^property[=].valueString = "-"
* #10013786 ^property[+].code = #grad5
* #10013786 ^property[=].valueString = "-"
* #10040947 "Ulzeration der Haut"
* #10040947 ^designation[+].language = #de-DE
* #10040947 ^designation[=].value = "Hautulzeration"
* #10040947 ^designation[+].language = #de-DE
* #10040947 ^designation[=].value = "Hautulceration"
* #10040947 ^designation[+].language = #de-DE
* #10040947 ^designation[=].value = "Hautgeschwürbildung"
* #10040947 ^designation[+].language = #de-DE
* #10040947 ^designation[=].value = "Hautulkus"
* #10040947 ^designation[+].language = #de-DE
* #10040947 ^designation[=].value = "Hautulcus"
* #10040947 ^designation[+].language = #de-DE
* #10040947 ^designation[=].value = "Druck'- und Lagerungsschäden, z.B. Dekubitalulzera"
* #10040947 ^definition = "Eine Erkrankung, gekennzeichnet durch eine umschriebene entzündliche und nekrotische erosive Läsion der Haut."
* #10040947 ^property[+].code = #grad3
* #10040947 ^property[=].valueString = "Zusammengenommener Bereich der Ulcera >2 cm; Hautverlust in voller Dicke, der die Schädigung oder Nekrose des subkutanen Gewebes umfasst und die sich bis zur Faszie ausdehnen kann"
* #10040947 ^property[+].code = #grad4
* #10040947 ^property[=].valueString = "Jegliche Geschwürgröße mit ausgedehnter Zerstörung, Gewebenekrose oder Schädigung von Muskeln, Knochen oder Stützstrukturen, mit oder ohne Verlust der Haut in voller Dicke"
* #10040947 ^property[+].code = #grad5
* #10040947 ^property[=].valueString = "Tod"
* #10046735 "Urtikaria"
* #10046735 ^designation[+].language = #de-DE
* #10046735 ^designation[=].value = "Nesselfiber"
* #10046735 ^designation[+].language = #de-DE
* #10046735 ^designation[=].value = "Nesselsucht"
* #10046735 ^definition = "Eine Störung, gekennzeichnet durch einen juckenden Hautausschlag, charakterisiert durch Quaddeln mit blassem Innenhof und gut definierten roten Rändern."
* #10046735 ^property[+].code = #grad3
* #10046735 ^property[=].valueString = "Urtikarielle Läsionen >30% der KOF betreffend; i. v. Intervention angezeigt"
* #10046735 ^property[+].code = #grad4
* #10046735 ^property[=].valueString = "-"
* #10046735 ^property[+].code = #grad5
* #10046735 ^property[=].valueString = "-"
* #10040785 "Störungen der Haut und Unterhautgewebe - Sonstige, zu spezifizieren"
* #10040785 ^designation[+].language = #de-DE
* #10040785 ^designation[=].value = "-"
* #10040785 ^definition = "Sonstige, zu spezifizierende Störungen der Haut und des Unterhautgewebes, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10040785 ^property[+].code = #grad3
* #10040785 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10040785 ^property[+].code = #grad4
* #10040785 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10040785 ^property[+].code = #grad5
* #10040785 ^property[=].valueString = "Tod"
* #10027308 "Menopause"
* #10027308 ^designation[+].language = #de-DE
* #10027308 ^designation[=].value = "Klimakterium"
* #10027308 ^designation[+].language = #de-DE
* #10027308 ^designation[=].value = "Wechseljahre"
* #10027308 ^definition = "Eine Störung, gekennzeichnet durch ein andauerndes Aufhören der Menstruationsblutung, gewöhnlich definiert durch 12 aufeinander folgende Monate der Amenorrhoe einer Frau über 45 Jahre."
* #10027308 ^property[+].code = #grad3
* #10027308 ^property[=].valueString = "Menopause im Alter vor dem 40. Lebensjahr"
* #10027308 ^property[+].code = #grad4
* #10027308 ^property[=].valueString = "-"
* #10027308 ^property[+].code = #grad5
* #10027308 ^property[=].valueString = "-"
* #10041244 "Störungen der sozialen Umstände - Sonstige, zu spezifizieren"
* #10041244 ^designation[+].language = #de-DE
* #10041244 ^designation[=].value = "-"
* #10041244 ^definition = "Sonstige, zu spezifizierende Störungen der sozialen Umstände, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10041244 ^property[+].code = #grad3
* #10041244 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10041244 ^property[+].code = #grad4
* #10041244 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10041244 ^property[+].code = #grad5
* #10041244 ^property[=].valueString = "Tod"
* #10042613 "Chirurgische und medizinische Prozeduren - Sonstige,  zu spezifizieren"
* #10042613 ^designation[+].language = #de-DE
* #10042613 ^designation[=].value = "-"
* #10042613 ^definition = "Sonstige, zu spezifizierende Störungen chirurgischer oder medizinischer Prozeduren, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10042613 ^property[+].code = #grad3
* #10042613 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10042613 ^property[+].code = #grad4
* #10042613 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10042613 ^property[+].code = #grad5
* #10042613 ^property[=].valueString = "Tod"
* #10016825 "Hautrötung"
* #10016825 ^designation[+].language = #de-DE
* #10016825 ^designation[=].value = "Flush"
* #10016825 ^designation[+].language = #de-DE
* #10016825 ^designation[=].value = "Errötung"
* #10016825 ^definition = "Eine Störung, gekennzeichnet durch eine episodische Rötung des Gesichtes."
* #10016825 ^property[+].code = #grad3
* #10016825 ^property[=].valueString = "Symptomatisch; assoziiert mit Hypotonie und /oder Tachykardie; Einschränkung der selbstversorgenden ATL"
* #10016825 ^property[+].code = #grad4
* #10016825 ^property[=].valueString = "-"
* #10016825 ^property[+].code = #grad5
* #10016825 ^property[=].valueString = "-"
* #10019428 "Hämatom"
* #10019428 ^designation[+].language = #de-DE
* #10019428 ^designation[=].value = "Wundhämatom (konservativ therapiert)"
* #10019428 ^definition = "Eine Störung, gekennzeichnet durch eine lokalisierte Ansammlung von normalerweise geronnenem Blut in einem Organ, Raum oder Gewebe, als Folge einer Zerreissung der Wand eines Blutgefäßes."
* #10019428 ^property[+].code = #grad3
* #10019428 ^property[=].valueString = "Transfusion; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10019428 ^property[+].code = #grad4
* #10019428 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10019428 ^property[+].code = #grad5
* #10019428 ^property[=].valueString = "Tod"
* #10020407 "Hitzewallung"
* #10020407 ^designation[+].language = #de-DE
* #10020407 ^designation[=].value = "-"
* #10020407 ^definition = "Eine Störung, gekennzeichnet durch eine unangenehme und vorübergehende Empfindung intensiver Körperwärme, Erröten, manchmal begleitet von Schwitzen bei Abkühlung."
* #10020407 ^property[+].code = #grad3
* #10020407 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10020407 ^property[+].code = #grad4
* #10020407 ^property[=].valueString = "-"
* #10020407 ^property[+].code = #grad5
* #10020407 ^property[=].valueString = "-"
* #10020772 "Hypertonie"
* #10020772 ^designation[+].language = #de-DE
* #10020772 ^designation[=].value = "Bluthochdruck"
* #10020772 ^designation[+].language = #de-DE
* #10020772 ^designation[=].value = "Hypertonus"
* #10020772 ^designation[+].language = #de-DE
* #10020772 ^designation[=].value = "Hochdruck"
* #10020772 ^definition = "Eine Erkrankung, gekennzeichnet durch eine krankhafte Erhöhung des Blutdrucks; eine wiederholte Erhöhung des Blutdrucks, 140 zu 90 mmHg übersteigend."
* #10020772 ^property[+].code = #grad3
* #10020772 ^property[=].valueString = "Hypertonus Stadium 2 (systolisch RR 160 mm Hg oder diastolisch RR >100 mm Hg); medizinische Intervention angezeigt; mehr als ein Medikament oder intensivere Behandlung als vorher angewendet indiziert; Kinderheilkunde: dasselbe wie beim Erwachsenen"
* #10020772 ^property[+].code = #grad4
* #10020772 ^property[=].valueString = "Lebensbedrohliche Folgen (z. B. maligne Hypertonie, vorübergehende oder permanente neurologische Defizite, hypertensive Krise); Intervention dringend angezeigt; Kinderheilkunde: dasselbe wie beim Erwachsenen"
* #10020772 ^property[+].code = #grad5
* #10020772 ^property[=].valueString = "Tod"
* #10021097 "Hypotonie"
* #10021097 ^designation[+].language = #de-DE
* #10021097 ^designation[=].value = "Blutdruckerniedrigung"
* #10021097 ^designation[+].language = #de-DE
* #10021097 ^designation[=].value = "Hypotonus"
* #10021097 ^designation[+].language = #de-DE
* #10021097 ^designation[=].value = "Blultdruckabfall"
* #10021097 ^designation[+].language = #de-DE
* #10021097 ^designation[=].value = "niedriger Blutdruck"
* #10021097 ^definition = "Eine Störung gekennzeichnet durch einen Blutdruck, der unterhalb des Normalen liegt und für ein Individuum in einer gegebenen Umgebung erwartet wird."
* #10021097 ^property[+].code = #grad3
* #10021097 ^property[=].valueString = "Medizinische Intervention oder Krankenhauseinweisung angezeigt"
* #10021097 ^property[+].code = #grad4
* #10021097 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10021097 ^property[+].code = #grad5
* #10021097 ^property[=].valueString = "Tod"
* #10007196 "Kapillarlecksyndrom"
* #10007196 ^designation[+].language = #de-DE
* #10007196 ^designation[=].value = "Clarkson'-Syndrom"
* #10007196 ^designation[+].language = #de-DE
* #10007196 ^designation[=].value = "capillary leakage syndrome, CLS"
* #10007196 ^designation[+].language = #de-DE
* #10007196 ^designation[=].value = "systemic capillary leak syndrome, SCLS"
* #10007196 ^definition = "Eine Erkrankung, gekennzeichnet durch das Austreten (Leckage) intravaskulärer Flüssigkeit in den extravaskulären Raum. Das Syndrom wird bei Patienten beobachtet, die einen Zustand generalisiert undichter Kapillaren zeigen, in der Folge eines Schocksyndroms, niedriger Perfusionszustände, Ischämie-Reperfusions Schädigung, Toxämien (Sepsis, Blutvergiftung), Medikationen oder Vergiftung. Es kann zu einem generalisierten Ödem oder Multiorganversagen führen."
* #10007196 ^property[+].code = #grad3
* #10007196 ^property[=].valueString = "Schwere Symptome; medizinische Intervention angezeigt"
* #10007196 ^property[+].code = #grad4
* #10007196 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10007196 ^property[+].code = #grad5
* #10007196 ^property[=].valueString = "Tod"
* #10065773 "Lymphaustritt"
* #10065773 ^designation[+].language = #de-DE
* #10065773 ^designation[=].value = "Lymphleck"
* #10065773 ^designation[+].language = #de-DE
* #10065773 ^designation[=].value = "Lymphleckage"
* #10065773 ^definition = "Eine Störung, gekennzeichnet durch den Verlust von Lymphflüssigkeit in die umgebenden Gewebe oder in eine Körperhöhle."
* #10065773 ^property[+].code = #grad3
* #10065773 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10065773 ^property[+].code = #grad4
* #10065773 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10065773 ^property[+].code = #grad5
* #10065773 ^property[=].valueString = "Tod"
* #10025233 "Lymphödem"
* #10025233 ^designation[+].language = #de-DE
* #10025233 ^designation[=].value = "Lymphschwellung"
* #10025233 ^definition = "Eine Störung, gekennzeichnet durch übermäßige Flüssigkeitsansammlung in Geweben, die eine Schwellung verursacht."
* #10025233 ^property[+].code = #grad3
* #10025233 ^property[=].valueString = "Schwere Symptome; Einschränkung der selbstversorgenden ATL"
* #10025233 ^property[+].code = #grad4
* #10025233 ^property[=].valueString = "-"
* #10025233 ^property[+].code = #grad5
* #10025233 ^property[=].valueString = "-"
* #10048642 "Lymphozele"
* #10048642 ^designation[+].language = #de-DE
* #10048642 ^designation[=].value = "Lymphansammlung"
* #10048642 ^definition = "Eine Störung, gekennzeichnet durch eine zystenartige Läsion, die Lymphe enthält."
* #10048642 ^property[+].code = #grad3
* #10048642 ^property[=].valueString = "Schwere Symptome; radiologische, endoskopische oder elektive operative Intervention angezeigt"
* #10048642 ^property[+].code = #grad4
* #10048642 ^property[=].valueString = "-"
* #10048642 ^property[+].code = #grad5
* #10048642 ^property[=].valueString = "-"
* #10034578 "Periphere Ischämie"
* #10034578 ^designation[+].language = #de-DE
* #10034578 ^designation[=].value = "Periphere Durchblutungsstörung"
* #10034578 ^designation[+].language = #de-DE
* #10034578 ^designation[=].value = "peripherer arterieller Verschluß"
* #10034578 ^designation[+].language = #de-DE
* #10034578 ^designation[=].value = "arterielle Embolie/Thrombose"
* #10034578 ^definition = "Eine Störung, gekennzeichnet durch beeinträchtigte Zirkulation in einer Extremität."
* #10034578 ^property[+].code = #grad3
* #10034578 ^property[=].valueString = "Wiederholt und anhaltend (>=24h) und/oder invasive Intervention angezeigt"
* #10034578 ^property[+].code = #grad4
* #10034578 ^property[=].valueString = "Lebensbedrohliche Folgen; Evidenz einer Endorganschädigung; dringende operative Intervention angezeigt"
* #10034578 ^property[+].code = #grad5
* #10034578 ^property[=].valueString = "Tod"
* #10034879 "Phlebitis"
* #10034879 ^designation[+].language = #de-DE
* #10034879 ^designation[=].value = "Venenentzündung"
* #10034879 ^definition = "Eine Erkrankung, gekennzeichnet durch eine Entzündung der Venenwand."
* #10034879 ^property[+].code = #grad3
* #10034879 ^property[=].valueString = "-"
* #10034879 ^property[+].code = #grad4
* #10034879 ^property[=].valueString = "-"
* #10034879 ^property[+].code = #grad5
* #10034879 ^property[=].valueString = "-"
* #10043565 "Thromboembolisches Ereignis"
* #10043565 ^designation[+].language = #de-DE
* #10043565 ^designation[=].value = "Thromboembolie"
* #10043565 ^designation[+].language = #de-DE
* #10043565 ^designation[=].value = "Ileofemorale Venenthrombose"
* #10043565 ^designation[+].language = #de-DE
* #10043565 ^designation[=].value = "Pulmonalarterienembolie"
* #10043565 ^designation[+].language = #de-DE
* #10043565 ^designation[=].value = "Embolie"
* #10043565 ^designation[+].language = #de-DE
* #10043565 ^designation[=].value = "thrombotischer Gefäßverschluss"
* #10043565 ^definition = "Eine Störung, gekennzeichnet durch den Verschluss eines Gefäßes durch einen Thrombus, der von einem entfernten Ort über den Blutstrom gewandert ist."
* #10043565 ^property[+].code = #grad3
* #10043565 ^property[=].valueString = "Thrombose (z. B. unkomplizierte Lungenembolie [venös], nichtembolische Herzwand[arterielle] Thrombose, medizinische Intervention angezeigt"
* #10043565 ^property[+].code = #grad4
* #10043565 ^property[=].valueString = "Lebensbedrohlich (z. B. Lungenembolie, zerebrovaskuläres Ereignis, arterielle Insuffizienz); hämodynamische oder neurologische Instabilität; dringende Intervention angezeigt"
* #10043565 ^property[+].code = #grad5
* #10043565 ^property[=].valueString = "Tod"
* #10042554 "Thrombophlebitis, oberflächliche"
* #10042554 ^designation[+].language = #de-DE
* #10042554 ^designation[=].value = "Oberflächen'-Thrombophlebitis"
* #10042554 ^definition = "Eine Erkrankung, gekennzeichnet durch ein Blutgerinnsel und eine Entzündung, die eine oberflächliche Vene der Extremitäten betrifft."
* #10042554 ^property[+].code = #grad3
* #10042554 ^property[=].valueString = "-"
* #10042554 ^property[+].code = #grad4
* #10042554 ^property[=].valueString = "-"
* #10042554 ^property[+].code = #grad5
* #10042554 ^property[=].valueString = "-"
* #10047115 "Vaskulitis"
* #10047115 ^designation[+].language = #de-DE
* #10047115 ^designation[=].value = "Gefäßwandentzündung"
* #10047115 ^definition = "Eine Störung, gekennzeichnet durch die Entzündung einer Blutgefäßwand."
* #10047115 ^property[+].code = #grad3
* #10047115 ^property[=].valueString = "Schwere Symptome; medizinische Intervention angezeigt (z. B. Steroide)"
* #10047115 ^property[+].code = #grad4
* #10047115 ^property[=].valueString = "Lebensbedrohlich; Evidenz einer peripheren oder viszeralen Ischämie; Intervention dringend angezeigt"
* #10047115 ^property[+].code = #grad5
* #10047115 ^property[=].valueString = "Tod"
* #10042569 "Vena-cava-superior-(VCS) Syndrom"
* #10042569 ^designation[+].language = #de-DE
* #10042569 ^designation[=].value = "Syndrom der oberen Einflussstauung"
* #10042569 ^designation[+].language = #de-DE
* #10042569 ^designation[=].value = "Vena Cava Syndrom"
* #10042569 ^definition = "Eine Störung, gekennzeichnet durch Behinderung des Blutflusses in der oberen Vena cava. Zeichen und Symptome umfassen Schwellung und Zyanose des Gesichts, des Halses und der oberen Arme, Husten, Atemnot im Liegen und Kopfschmerzen."
* #10042569 ^property[+].code = #grad3
* #10042569 ^property[=].valueString = "Schwere Symptome; multimodale Intervention angezeigt (z. B. Antikoagulation, Chemotherapie, Bestrahlung, Stenting)"
* #10042569 ^property[+].code = #grad4
* #10042569 ^property[=].valueString = "Lebensbedrohliche Folgen; dringend mulktimodale Intervention angezeigt (z. B. Lyse, Thrombektomie, Chirurgie)"
* #10042569 ^property[+].code = #grad5
* #10042569 ^property[=].valueString = "Tod"
* #10054692 "Viszerale arterielle Ischämie"
* #10054692 ^designation[+].language = #de-DE
* #10054692 ^designation[=].value = "Viszerale Ischämie"
* #10054692 ^designation[+].language = #de-DE
* #10054692 ^designation[=].value = "Leriche- Syndrom"
* #10054692 ^designation[+].language = #de-DE
* #10054692 ^designation[=].value = "Bauchschlagaderischämie"
* #10054692 ^designation[+].language = #de-DE
* #10054692 ^designation[=].value = "Mesesenterialarterien- oder venenthrombose"
* #10054692 ^definition = "Eine Störung, gekennzeichnet durch Verminderung der Blutversorgung aufgrund einer Verengung oder Obstruktion eines viszeralen (mesenterischen) Gefäßes."
* #10054692 ^property[+].code = #grad3
* #10054692 ^property[=].valueString = "Anhaltend (>=24h) oder wiederholte Symptome und/oder invasive Intervention angezeigt"
* #10054692 ^property[+].code = #grad4
* #10054692 ^property[=].valueString = "Lebensbedrohliche Folgen; Evidenz einer Endorganschädigung; dringende operative Intervention angezeigt"
* #10054692 ^property[+].code = #grad5
* #10054692 ^property[=].valueString = "Tod"
* #10047065 "Vaskuläre Störung  - Sonstige,  zu spezifizieren"
* #10047065 ^designation[+].language = #de-DE
* #10047065 ^designation[=].value = "-"
* #10047065 ^definition = "Sonstige, zu spezifizierende Störungen des Gefäßsystems, die als unerwünschte Ereignisse im Rahmen einer Behandlung auftreten."
* #10047065 ^property[+].code = #grad3
* #10047065 ^property[=].valueString = "Schwerwiegend oder medizinisch signifikant, aber nicht unmittelbar lebensbedrohlich; Krankenhauseinweisung oder Verlängerung des bestehenden Krankenhausaufenthaltes angezeigt; behindernd; Einschränkung der selbstversorgenden ATL"
* #10047065 ^property[+].code = #grad4
* #10047065 ^property[=].valueString = "Lebensbedrohliche Folgen; Intervention dringend angezeigt"
* #10047065 ^property[+].code = #grad5
* #10047065 ^property[=].valueString = "Tod"
