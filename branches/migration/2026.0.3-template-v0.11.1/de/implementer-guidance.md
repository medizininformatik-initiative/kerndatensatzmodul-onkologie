# Anleitung für Implementierende - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Implementierende**

## Anleitung für Implementierende

### Kontext im Gesamtprojekt — Bezüge zu anderen Modulen

Das KDS-Modul Onkologie bedient sich umfassend der Basismodule des MII:

* Die onkologische Primärdiagnose basiert auf dem MII-Modul [Diagnose](https://simplifier.net/mii-basismodul-diagnose-2024).
* Die Therapiedokumentation von Operationen, Strahlentherapien und allgemeine Angaben zu Systemischen Therapien basieren auf dem MII-Modul [Prozedur](https://simplifier.net/mii-basismodul-prozedur-2024).
* Die spezifische Kodierung von Wirkstoffen als Teil der Systemischen Therapie basiert auf dem MII-Modul [Medikation](https://simplifier.net/mii-basismodul-medikation-2024).

Da die Datenerfassung für den oBDS auf den Krebsregistermeldungen basiert, ist eine Abbildung über die oben genannten Module jedoch nur teilweise möglich.

Für eine weitergehende Verknüpfung der onkologischen Registerdaten sind besonders folgende KDS-Module relevant:

* [Pathologiebefundbericht](https://simplifier.net/medizininformatikinitiative-modulpathologie)
* [Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank)
* [Molekulargenetischer Befundbericht](https://simplifier.net/medizininformatikinitiative-modulomics)
* [Bildgebung](https://simplifier.net/Medizininformatik-Initiative-Modul-Bildgebung) (noch nicht umgesetzt, Integration geplant für Version 2027)
* [Dokument](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument) — für die Dokumentenebene, siehe die Zuordnung der onkologie-relevanten KDL-Dokumentklassen im [Intro der KDL-Werteliste](ValueSet-mii-vs-onko-kdl-dokumentklassen.md)

Langfristig ist eine enge Verzahnung mit den genannten Modulen geplant. In den ersten Versionen ist diese jedoch komplett optional, vor allem aus einem Grund: Die Erzeugung von FHIR-Ressourcen aus anderen Modulen erfordert teilweise die Existenz von Daten, die in dieser Form nicht Teil des oBDS sind (Beispiel: das Modul Bioprobe erfordert bei der Erstellung zwingend die Angabe der Verfügbarkeit). Da FHIR-Ressourcen noch nicht flächendeckend aus Primärsystemen ausgespielt werden können und nicht jeder DIZ-Standort alle KDS-Module in ETL-Strecken erzeugen kann, ist die Verwendung anderer MII-Module angedacht, aber optional.

Das KDS-Modul Onkologie bildet darüber hinaus die Grundlage für das [KDS-Modul Molekulares Tumorboard](https://simplifier.net/mii-erweiterungsmodul-molekulares-tumorboard), in dem tiefergehende onkologisch relevante Fragestellungen wie Leitlinien-Behandlung, Next-Generation-Sequencing und personalisierte Therapien detailliert abgebildet werden können. Benötigte Anpassungen wurden für das MTB-Modul ausspezifiziert und in die Version v2026 übernommen.

### Profil-Beziehungen und Referenzen

Die folgende Übersicht stellt die Referenzen der Ressourcen untereinander dar:

#### Zukünftig angedachte Einbindung der Module Biobank, MolGen-Befundbericht und Pathologiebefund

### oBDS-SNOMED-CT-Mapping: Methodik

Die ConceptMap-Artefakte dieses Moduls enthalten die Ergebnisse eines Mappings der oBDS-Antwortlisten auf SNOMED CT, durchgeführt mit der internationalen SNOMED-CT-Version März 2024, ergänzt um die UICC-TNM- und Residualtumorkonzepte aus dem März 2025.

1. Der Fokus lag auf den im oBDS hinterlegten Antwortlisten. Für das Mapping anderer nationaler und internationaler Klassifikationen und Terminologien (ICD-10, ICD-O, OPS, ATC, …) ist das BfArM der zuständige Ansprechpartner.
1. Neben den Antwortlisten sind die Datenfelder selbst häufig ebenfalls in SNOMED CT und/oder LOINC kodiert (zu finden als`code`-Element an den meisten Ressourcen).
1. Äquivalenz-Bewertung: Jeder Code trägt eine von vier Kodierungen, die die inhaltliche Beziehung von Quell- und Zielkonzept beschreibt:
* `equivalent`: inhaltlich (nahezu) identisch und gleichwertig zu behandeln
* `wider`: das Zielkonzept ist allgemeiner als das Quellkonzept
* `narrower`: das Zielkonzept ist spezifischer als das Quellkonzept
* `unmatched`: kein adäquat vergleichbares Zielkonzept gefunden

Die einzelnen Mappings sind als Intro-Texte auf den jeweiligen ConceptMap-Seiten dokumentiert (siehe [Artefakt-Übersicht](artifacts.md)).

#### Mapping-Gesamtübersicht (aus den ConceptMaps generiert)

Die folgenden Tabellen werden beim Build per SQL direkt aus den ConceptMap-Ressourcen dieses IGs erzeugt (Datenbasis `package.db` des IG Publishers) — sie können daher nicht von den Artefakten abweichen.

**Verteilung der Äquivalenzlevel (alle ConceptMaps):**

| | |
| :--- | :--- |
| Beziehung | Anzahl |
| equivalent | 1315 |
| source-is-narrower-than-target | 84 |
| source-is-broader-than-target | 59 |

**Alle Mappings der oBDS-Antwortlisten** (modul-eigene CodeSysteme → SNOMED CT/LOINC; die jahresversionierten ATC-/ICD-O-Überleitungen sind auf [ATC](atc-terminologie.md) bzw. [ICD-O](icd-o-terminologie.md) beschrieben):

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Quellsystem | Code | Beziehung | Zielsystem | Zielcode |
| allgemeiner-leistungszustand-ecog | 0 | equivalent | LOINC | LA9622-7 |
| allgemeiner-leistungszustand-ecog | 0 | equivalent | SNOMED CT | 425389002 |
| allgemeiner-leistungszustand-ecog | U | equivalent | SNOMED CT | 261665006 |
| allgemeiner-leistungszustand-ecog | 1 | equivalent | LOINC | LA9623-5 |
| allgemeiner-leistungszustand-ecog | 1 | equivalent | SNOMED CT | 422512005 |
| allgemeiner-leistungszustand-ecog | 2 | equivalent | LOINC | LA9624-3 |
| allgemeiner-leistungszustand-ecog | 2 | equivalent | SNOMED CT | 422894000 |
| allgemeiner-leistungszustand-ecog | 3 | equivalent | LOINC | LA9625-0 |
| allgemeiner-leistungszustand-ecog | 3 | equivalent | SNOMED CT | 423053003 |
| allgemeiner-leistungszustand-ecog | 4 | equivalent | LOINC | LA9626-8 |
| allgemeiner-leistungszustand-ecog | 4 | equivalent | SNOMED CT | 423237006 |
| allgemeiner-leistungszustand-karnofsky | 0% | equivalent | LOINC | LA9627-6 |
| allgemeiner-leistungszustand-karnofsky | 10% | equivalent | LOINC | LA29184-1 |
| allgemeiner-leistungszustand-karnofsky | 20% | equivalent | LOINC | LA29183-3 |
| allgemeiner-leistungszustand-karnofsky | 30% | equivalent | LOINC | LA29182-5 |
| allgemeiner-leistungszustand-karnofsky | 40% | equivalent | LOINC | LA29181-7 |
| allgemeiner-leistungszustand-karnofsky | 50% | equivalent | LOINC | LA29180-9 |
| allgemeiner-leistungszustand-karnofsky | 60% | equivalent | LOINC | LA29179-1 |
| allgemeiner-leistungszustand-karnofsky | 70% | equivalent | LOINC | LA29178-3 |
| allgemeiner-leistungszustand-karnofsky | 80% | equivalent | LOINC | LA29177-5 |
| allgemeiner-leistungszustand-karnofsky | 90% | equivalent | LOINC | LA29176-7 |
| allgemeiner-leistungszustand-karnofsky | 100% | equivalent | LOINC | LA29175-9 |
| asa-obds | 1 | equivalent | LOINC | LA28813-6 |
| asa-obds | 2 | equivalent | LOINC | LA28814-4 |
| asa-obds | 3 | equivalent | LOINC | LA28815-1 |
| asa-obds | 4 | equivalent | LOINC | LA28816-9 |
| asa-obds | 5 | equivalent | LOINC | LA28817-7 |
| asa-obds | 6 | equivalent | LOINC | LA28818-5 |
| fernmetastasen | ADR | equivalent | SNOMED CT | 258339009 |
| fernmetastasen | BRA | equivalent | SNOMED CT | 313367003 |
| fernmetastasen | GEN | equivalent | SNOMED CT | 405843009 |
| fernmetastasen | HEP | equivalent | SNOMED CT | 258334004 |
| fernmetastasen | LYM | equivalent | SNOMED CT | 258336002 |
| fernmetastasen | MAR | equivalent | SNOMED CT | 14016003 |
| fernmetastasen | OSS | equivalent | SNOMED CT | 258333005 |
| fernmetastasen | OTH | equivalent | SNOMED CT | 258348004 |
| fernmetastasen | PER | equivalent | SNOMED CT | 258338001 |
| fernmetastasen | PLE | equivalent | SNOMED CT | 258337006 |
| fernmetastasen | PUL | equivalent | SNOMED CT | 258332000 |
| fernmetastasen | SKI | equivalent | SNOMED CT | 258340006 |
| genetische-variante-auspraegung | M | equivalent | SNOMED CT | 55446002 |
| genetische-variante-auspraegung | N | equivalent | SNOMED CT | 1156316003 |
| genetische-variante-auspraegung | P | equivalent | SNOMED CT | 50334000 |
| genetische-variante-auspraegung | S | equivalent | SNOMED CT | 74964007 |
| genetische-variante-auspraegung | U | equivalent | SNOMED CT | 261665006 |
| genetische-variante-auspraegung | W | equivalent | SNOMED CT | 412730000 |
| grading | 0 | equivalent | SNOMED CT | 415175000 |
| grading | B | equivalent | SNOMED CT | 1268929003 |
| grading | H | equivalent | SNOMED CT | 1155707008 |
| grading | L | equivalent | SNOMED CT | 1155708003 |
| grading | M | equivalent | SNOMED CT | 1286893008 |
| grading | T | equivalent | SNOMED CT | 385432009 |
| grading | U | equivalent | SNOMED CT | 261665006 |
| grading | X | equivalent | SNOMED CT | 1155705000 |
| grading | 1 | equivalent | SNOMED CT | 373375007 |
| grading | 2 | equivalent | SNOMED CT | 373377004 |
| grading | 3 | equivalent | SNOMED CT | 373373000 |
| grading | 4 | equivalent | SNOMED CT | 373374006 |
| [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende) | E | equivalent | SNOMED CT | 385656004 |
| [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende) | P | source-is-narrower-than-target | SNOMED CT | 419835002 |
| [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende) | S | source-is-narrower-than-target | SNOMED CT | 74964007 |
| [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende) | T | equivalent | SNOMED CT | 419099009 |
| [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende) | U | equivalent | SNOMED CT | 261665006 |
| [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende) | V | equivalent | SNOMED CT | 183948000 |
| intention | D | equivalent | SNOMED CT | 261004008 |
| intention | K | equivalent | SNOMED CT | 373808002 |
| intention | O | source-is-narrower-than-target | SNOMED CT | 373808002 |
| intention | P | equivalent | SNOMED CT | 363676003 |
| intention | R | equivalent | SNOMED CT | 255231005 |
| intention | S | equivalent | SNOMED CT | 74964007 |
| intention | X | equivalent | SNOMED CT | 1287211007 |
| krk-stoma-anzeichnung | K | equivalent | SNOMED CT | 428119001 |
| krk-stoma-anzeichnung | N | equivalent | SNOMED CT | 262008008 |
| krk-stoma-anzeichnung | S | equivalent | SNOMED CT | 373068000 |
| krk-stoma-anzeichnung | U | equivalent | SNOMED CT | 261665006 |
| nebenwirkung-ctcae-grad | K | equivalent | SNOMED CT | 260413007 |
| nebenwirkung-ctcae-grad | U | equivalent | SNOMED CT | 261665006 |
| nebenwirkung-ctcae-grad | 1 | equivalent | SNOMED CT | 255604002 |
| nebenwirkung-ctcae-grad | 2 | equivalent | SNOMED CT | 1255665007 |
| nebenwirkung-ctcae-grad | 3 | equivalent | SNOMED CT | 24484000 |
| nebenwirkung-ctcae-grad | 4 | equivalent | SNOMED CT | 442452003 |
| nebenwirkung-ctcae-grad | 5 | equivalent | SNOMED CT | 399166001 |
| operation-komplikation |  | source-is-broader-than-target | SNOMED CT | 405950009 |
| operation-komplikation |  | source-is-narrower-than-target | SNOMED CT | 128477000 |
| operation-komplikation |  | equivalent | SNOMED CT | 236090001 |
| operation-komplikation |  | source-is-broader-than-target | SNOMED CT | 60168000 |
| operation-komplikation | ABD | source-is-narrower-than-target | SNOMED CT | 128477000 |
| operation-komplikation | ABS | source-is-broader-than-target | SNOMED CT | 75100008 |
| operation-komplikation | AEP | equivalent | SNOMED CT | 8635005 |
| operation-komplikation | ALR | equivalent | SNOMED CT | 419076005 |
| operation-komplikation | ANI | equivalent | SNOMED CT | 723189000 |
| operation-komplikation | ANS | equivalent | SNOMED CT | 735173007 |
| operation-komplikation | API | equivalent | SNOMED CT | 230690007 |
| operation-komplikation | ASF | source-is-narrower-than-target | SNOMED CT | 128477000 |
| operation-komplikation | BIF | equivalent | SNOMED CT | 53206008 |
| operation-komplikation | BOG | equivalent | SNOMED CT | 37372002 |
| operation-komplikation | CHI | equivalent | SNOMED CT | 82403002 |
| operation-komplikation | DAI | source-is-broader-than-target | SNOMED CT | 236091002 |
| operation-komplikation | DEP | equivalent | SNOMED CT | 772133000 |
| operation-komplikation | DIC | equivalent | SNOMED CT | 67406007 |
| operation-komplikation | DLU | equivalent | SNOMED CT | 1163215007 |
| operation-komplikation | DPS | equivalent | SNOMED CT | 81060008 |
| operation-komplikation | DSI | equivalent | SNOMED CT | 236089005 |
| operation-komplikation | ENF | equivalent | SNOMED CT | 735426009 |
| operation-komplikation | GER | equivalent | SNOMED CT | 64779008 |
| operation-komplikation | HAE | equivalent | SNOMED CT | 355001 |
| operation-komplikation | HEM | equivalent | SNOMED CT | 8765009 |
| operation-komplikation | HFI | equivalent | SNOMED CT | 57243009 |
| operation-komplikation | HNA | equivalent | SNOMED CT | 73013002 |
| operation-komplikation | HNK | equivalent | SNOMED CT | 95347000 |
| operation-komplikation | HOP | equivalent | SNOMED CT | 2776000 |
| operation-komplikation | HRS | equivalent | SNOMED CT | 698247007 |
| operation-komplikation | HUR | equivalent | SNOMED CT | 34436003 |
| operation-komplikation | HYB | equivalent | SNOMED CT | 14783006 |
| operation-komplikation | HYF | equivalent | SNOMED CT | 126663003 |
| operation-komplikation | HZI | equivalent | SNOMED CT | 84114007 |
| operation-komplikation | IFV | equivalent | SNOMED CT | 234044007 |
| operation-komplikation | KAS | equivalent | SNOMED CT | 89138009 |
| operation-komplikation | KDS | equivalent | SNOMED CT | 26629001 |
| operation-komplikation | KIM | equivalent | SNOMED CT | 19220005 |
| operation-komplikation | KRA | equivalent | SNOMED CT | 91175000 |
| operation-komplikation | LEV | equivalent | SNOMED CT | 59927004 |
| operation-komplikation | LOE | equivalent | SNOMED CT | 19242006 |
| operation-komplikation | LYE | equivalent | SNOMED CT | 234109007 |
| operation-komplikation | LYF | equivalent | SNOMED CT | 234105001 |
| operation-komplikation | MAT | source-is-broader-than-target | SNOMED CT | 243410003 |
| operation-komplikation | MED | equivalent | SNOMED CT | 373409004 |
| operation-komplikation | MES | equivalent | SNOMED CT | 386211005 |
| operation-komplikation | MIL | equivalent | SNOMED CT | 46420000 |
| operation-komplikation | MYI | equivalent | SNOMED CT | 22298006 |
| operation-komplikation | N | equivalent | SNOMED CT | 373067005 |
| operation-komplikation | NAB | equivalent | SNOMED CT | 110265006 |
| operation-komplikation | OES | equivalent | SNOMED CT | 16761005 |
| operation-komplikation | OSM | source-is-broader-than-target | SNOMED CT | 274144001 |
| operation-komplikation | PAB | equivalent | SNOMED CT | 6072007 |
| operation-komplikation | PAE | equivalent | SNOMED CT | 59282003 |
| operation-komplikation | PAF | equivalent | SNOMED CT | 25803005 |
| operation-komplikation | PAV | equivalent | SNOMED CT | 399957001 |
| operation-komplikation | PDA | equivalent | SNOMED CT | 1162567000 |
| operation-komplikation | PER | equivalent | SNOMED CT | 48661000 |
| operation-komplikation | PEY | equivalent | SNOMED CT | 58554001 |
| operation-komplikation | PIT | equivalent | SNOMED CT | 75694006 |
| operation-komplikation | PLB | equivalent | SNOMED CT | 698817002 |
| operation-komplikation | PLE | equivalent | SNOMED CT | 60046008 |
| operation-komplikation | PMN | equivalent | SNOMED CT | 233604007 |
| operation-komplikation | PNT | equivalent | SNOMED CT | 36118008 |
| operation-komplikation | RIN | equivalent | SNOMED CT | 409623005 |
| operation-komplikation | RNB | equivalent | SNOMED CT | 308896002 |
| operation-komplikation | RPA | source-is-broader-than-target | SNOMED CT | 1052240009 |
| operation-komplikation | SES | equivalent | SNOMED CT | 76571007 |
| operation-komplikation | SFH | equivalent | SNOMED CT | 76314005 |
| operation-komplikation | SKI | source-is-narrower-than-target | SNOMED CT | 19220005 |
| operation-komplikation | STK | equivalent | SNOMED CT | 302918009 |
| operation-komplikation | TIA | equivalent | SNOMED CT | 266257000 |
| operation-komplikation | TRZ | equivalent | SNOMED CT | 82545002 |
| operation-komplikation | TZP | equivalent | SNOMED CT | 302215000 |
| operation-komplikation | U | equivalent | SNOMED CT | 261665006 |
| operation-komplikation | WSS | equivalent | SNOMED CT | 271618001 |
| operation-komplikation | WUH | equivalent | SNOMED CT | 239160006 |
| primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | 363680008 |
| primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | 423827005 |
| primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | 363679005 |
| primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | 16310003 |
| primaertumor-diagnosesicherung |  | source-is-broader-than-target | SNOMED CT | 122458006 |
| primaertumor-diagnosesicherung | 1 | equivalent | SNOMED CT | 373795004 |
| primaertumor-diagnosesicherung | 2 | equivalent | SNOMED CT | 373796003 |
| primaertumor-diagnosesicherung | 4 | equivalent | SNOMED CT | 373797007 |
| primaertumor-diagnosesicherung | 5 | equivalent | SNOMED CT | 373798002 |
| primaertumor-diagnosesicherung | 6 | equivalent | SNOMED CT | 373799005 |
| primaertumor-diagnosesicherung | 7 | equivalent | SNOMED CT | 373800009 |
| primaertumor-diagnosesicherung | 7.1 | equivalent | SNOMED CT | 373800009 |
| primaertumor-diagnosesicherung | 7.2 | equivalent | SNOMED CT | 373799005 |
| primaertumor-diagnosesicherung | 8 | equivalent | SNOMED CT | 394804000 |
| primaertumor-diagnosesicherung | 9 | equivalent | SNOMED CT | 261665006 |
| [ExtensionSeitenlokalisation](seitenlokalisation) | B | equivalent | SNOMED CT | 51440002 |
| [ExtensionSeitenlokalisation](seitenlokalisation) | L | equivalent | SNOMED CT | 7771000 |
| [ExtensionSeitenlokalisation](seitenlokalisation) | M | equivalent | SNOMED CT | 260528009 |
| [ExtensionSeitenlokalisation](seitenlokalisation) | R | equivalent | SNOMED CT | 24028007 |
| [ExtensionSeitenlokalisation](seitenlokalisation) | T | equivalent | SNOMED CT | 385432009 |
| [ExtensionSeitenlokalisation](seitenlokalisation) | U | equivalent | SNOMED CT | 261665006 |
| strahlentherapie-applikationsart | I | equivalent | SNOMED CT | 113120007 |
| strahlentherapie-applikationsart | IHDR | source-is-narrower-than-target | SNOMED CT | 113120007 |
| strahlentherapie-applikationsart | ILDR | source-is-narrower-than-target | SNOMED CT | 113120007 |
| strahlentherapie-applikationsart | IPDR | source-is-narrower-than-target | SNOMED CT | 113120007 |
| strahlentherapie-applikationsart | K | equivalent | SNOMED CT | 384692006 |
| strahlentherapie-applikationsart | KHDR | source-is-narrower-than-target | SNOMED CT | 384692006 |
| strahlentherapie-applikationsart | KLDR | source-is-narrower-than-target | SNOMED CT | 384692006 |
| strahlentherapie-applikationsart | KPDR | source-is-narrower-than-target | SNOMED CT | 384692006 |
| strahlentherapie-applikationsart | M | source-is-narrower-than-target | SNOMED CT | 399315003 |
| strahlentherapie-applikationsart | MRIT | equivalent | SNOMED CT | 118640001 |
| strahlentherapie-applikationsart | MRJT | equivalent | SNOMED CT | 64291000052106 |
| strahlentherapie-applikationsart | P | equivalent | SNOMED CT | 33195004 |
| strahlentherapie-applikationsart | P-4D | equivalent | SNOMED CT | 721061000124106 |
| strahlentherapie-applikationsart | P-ST | equivalent | SNOMED CT | 395096001 |
| strahlentherapie-applikationsart | S | equivalent | SNOMED CT | 74964007 |
| strahlentherapie-boost | J | equivalent | SNOMED CT | 445232009 |
| strahlentherapie-boost | KON | source-is-narrower-than-target | SNOMED CT | 445232009 |
| strahlentherapie-boost | N | equivalent | SNOMED CT | 373067005 |
| strahlentherapie-boost | SEQ | source-is-narrower-than-target | SNOMED CT | 445232009 |
| strahlentherapie-boost | SIB | source-is-narrower-than-target | SNOMED CT | 445232009 |
| strahlentherapie-strahlenart | Ac-225 | equivalent | SNOMED CT | 32059002 |
| strahlentherapie-strahlenart | Co-60 | equivalent | SNOMED CT | 5405008 |
| strahlentherapie-strahlenart | EL | equivalent | SNOMED CT | 46602004 |
| strahlentherapie-strahlenart | Ir-192 | equivalent | SNOMED CT | 48341001 |
| strahlentherapie-strahlenart | J-131 | equivalent | SNOMED CT | 1368003 |
| strahlentherapie-strahlenart | Lu-177 | equivalent | SNOMED CT | 447553000 |
| strahlentherapie-strahlenart | Lu-177 | source-is-broader-than-target | SNOMED CT | 1263784000 |
| strahlentherapie-strahlenart | NE | equivalent | SNOMED CT | 58607005 |
| strahlentherapie-strahlenart | PN | equivalent | SNOMED CT | 89177007 |
| strahlentherapie-strahlenart | RO | equivalent | SNOMED CT | 286630003 |
| strahlentherapie-strahlenart | Ra-223 | equivalent | SNOMED CT | 24853006 |
| strahlentherapie-strahlenart | SI | equivalent | SNOMED CT | 312253001 |
| strahlentherapie-strahlenart | [Sequence Ontology](SO) | equivalent | SNOMED CT | 74964007 |
| strahlentherapie-strahlenart | SONU | equivalent | SNOMED CT | 89457008 |
| strahlentherapie-strahlenart | Sm-153 | equivalent | SNOMED CT | 419804008 |
| strahlentherapie-strahlenart | Sr-89 | equivalent | SNOMED CT | 7770004 |
| strahlentherapie-strahlenart | UH | equivalent | SNOMED CT | 290006006 |
| strahlentherapie-strahlenart | Y-90 | equivalent | SNOMED CT | 14691008 |
| strahlentherapie-strahlenart | Y-90 | source-is-broader-than-target | SNOMED CT | 764677008 |
| strahlentherapie-zielgebiet | 1.1 | equivalent | SNOMED CT | 258335003 |
| strahlentherapie-zielgebiet | 1.2 | equivalent | SNOMED CT | 119235005 |
| strahlentherapie-zielgebiet | 1.3 | equivalent | SNOMED CT | 389079005 |
| strahlentherapie-zielgebiet | 1.4 | equivalent | SNOMED CT | 56329008 |
| strahlentherapie-zielgebiet | 1.5 | equivalent | SNOMED CT | 74964007 |
| strahlentherapie-zielgebiet | 2.1 | equivalent | SNOMED CT | 81745001 |
| strahlentherapie-zielgebiet | 2.10 | equivalent | SNOMED CT | 4596009 |
| strahlentherapie-zielgebiet | 2.11 | equivalent | SNOMED CT | 69748006 |
| strahlentherapie-zielgebiet | 2.12 | equivalent | SNOMED CT | 774007 |
| strahlentherapie-zielgebiet | 2.2 | equivalent | SNOMED CT | 1286894002 |
| strahlentherapie-zielgebiet | 2.3 | equivalent | SNOMED CT | 74262004 |
| strahlentherapie-zielgebiet | 2.4 | equivalent | SNOMED CT | 117590005 |
| strahlentherapie-zielgebiet | 2.5 | equivalent | SNOMED CT | 385294005 |
| strahlentherapie-zielgebiet | 2.6 | equivalent | SNOMED CT | 54066008 |
| strahlentherapie-zielgebiet | 2.7 | equivalent | SNOMED CT | 71836000 |
| strahlentherapie-zielgebiet | 2.8 | equivalent | SNOMED CT | 31389004 |
| strahlentherapie-zielgebiet | 2.9 | equivalent | SNOMED CT | 81502006 |
| strahlentherapie-zielgebiet | 3.1 | equivalent | SNOMED CT | 181131000 |
| strahlentherapie-zielgebiet | 3.2 | equivalent | SNOMED CT | 119184005 |
| strahlentherapie-zielgebiet | 3.3 | equivalent | SNOMED CT | 78904004 |
| strahlentherapie-zielgebiet | 3.4 | equivalent | SNOMED CT | 39607008 |
| strahlentherapie-zielgebiet | 3.5 | equivalent | SNOMED CT | 32849002 |
| strahlentherapie-zielgebiet | 3.6 | equivalent | SNOMED CT | 72410000 |
| strahlentherapie-zielgebiet | 3.7 | equivalent | SNOMED CT | 9875009 |
| strahlentherapie-zielgebiet | 3.8 | equivalent | SNOMED CT | 51185008 |
| strahlentherapie-zielgebiet | 4.1 | equivalent | SNOMED CT | 69695003 |
| strahlentherapie-zielgebiet | 4.10 | equivalent | SNOMED CT | 80581009 |
| strahlentherapie-zielgebiet | 4.11 | equivalent | SNOMED CT | 28273000 |
| strahlentherapie-zielgebiet | 4.12 | equivalent | SNOMED CT | 28231008 |
| strahlentherapie-zielgebiet | 4.13 | equivalent | SNOMED CT | 818983003 |
| strahlentherapie-zielgebiet | 4.2 | equivalent | SNOMED CT | 15776009 |
| strahlentherapie-zielgebiet | 4.3 | source-is-narrower-than-target | SNOMED CT | 10200004 |
| strahlentherapie-zielgebiet | 4.4 | equivalent | SNOMED CT | 78961009 |
| strahlentherapie-zielgebiet | 4.5 | equivalent | SNOMED CT | 64033007 |
| strahlentherapie-zielgebiet | 4.6 | equivalent | SNOMED CT | 23451007 |
| strahlentherapie-zielgebiet | 4.7 | equivalent | SNOMED CT | 82849001 |
| strahlentherapie-zielgebiet | 4.8 | equivalent | SNOMED CT | 87953007 |
| strahlentherapie-zielgebiet | 4.9 | equivalent | SNOMED CT | 822992007 |
| strahlentherapie-zielgebiet | 5.1 | equivalent | SNOMED CT | 34402009 |
| strahlentherapie-zielgebiet | 5.10 | equivalent | SNOMED CT | 76784001 |
| strahlentherapie-zielgebiet | 5.11 | equivalent | SNOMED CT | 3665003 |
| strahlentherapie-zielgebiet | 5.12 | equivalent | SNOMED CT | 826984001 |
| strahlentherapie-zielgebiet | 5.2 | equivalent | SNOMED CT | 53505006 |
| strahlentherapie-zielgebiet | 5.3 | equivalent | SNOMED CT | 89837001 |
| strahlentherapie-zielgebiet | 5.4 | equivalent | SNOMED CT | 41216001 |
| strahlentherapie-zielgebiet | 5.5 | equivalent | SNOMED CT | 40689003 |
| strahlentherapie-zielgebiet | 5.6 | equivalent | SNOMED CT | 18911002 |
| strahlentherapie-zielgebiet | 5.7 | equivalent | SNOMED CT | 35039007 |
| strahlentherapie-zielgebiet | 5.8 | equivalent | SNOMED CT | 71252005 |
| strahlentherapie-zielgebiet | 5.9 | equivalent | SNOMED CT | 45292006 |
| strahlentherapie-zielgebiet | 6.1 | equivalent | SNOMED CT | 89546000 |
| strahlentherapie-zielgebiet | 6.10 | source-is-narrower-than-target | SNOMED CT | 896747000 |
| strahlentherapie-zielgebiet | 6.11 | equivalent | SNOMED CT | 85050009 |
| strahlentherapie-zielgebiet | 6.12 | equivalent | SNOMED CT | 299701004 |
| strahlentherapie-zielgebiet | 6.13 | equivalent | SNOMED CT | 24097009 |
| strahlentherapie-zielgebiet | 6.14 | equivalent | SNOMED CT | 12921003 |
| strahlentherapie-zielgebiet | 6.15 | equivalent | SNOMED CT | 28254004 |
| strahlentherapie-zielgebiet | 6.16 | equivalent | SNOMED CT | 71341001 |
| strahlentherapie-zielgebiet | 6.17 | equivalent | SNOMED CT | 702468001 |
| strahlentherapie-zielgebiet | 6.18 | equivalent | SNOMED CT | 84167007 |
| strahlentherapie-zielgebiet | 6.19 | source-is-narrower-than-target | SNOMED CT | 74964007 |
| strahlentherapie-zielgebiet | 6.2 | equivalent | SNOMED CT | 31467002 |
| strahlentherapie-zielgebiet | 6.3 | equivalent | SNOMED CT | 363654007 |
| strahlentherapie-zielgebiet | 6.4 | equivalent | SNOMED CT | 84667006 |
| strahlentherapie-zielgebiet | 6.5 | equivalent | SNOMED CT | 35769007 |
| strahlentherapie-zielgebiet | 6.6 | equivalent | SNOMED CT | 73903008 |
| strahlentherapie-zielgebiet | 6.7 | equivalent | SNOMED CT | 699698002 |
| strahlentherapie-zielgebiet | 6.8 | equivalent | SNOMED CT | 113197003 |
| strahlentherapie-zielgebiet | 6.9 | equivalent | SNOMED CT | 56873002 |
| strahlentherapie-zielgebiet | 7.1 | equivalent | SNOMED CT | 774007 |
| strahlentherapie-zielgebiet | 7.2 | equivalent | SNOMED CT | 53120007 |
| strahlentherapie-zielgebiet | 7.3 | equivalent | SNOMED CT | 61685007 |
| strahlentherapie-zielgebiet | 7.4 | equivalent | SNOMED CT | 51185008 |
| strahlentherapie-zielgebiet | 7.5 | equivalent | SNOMED CT | 302553009 |
| strahlentherapie-zielgebiet | 7.6 | equivalent | SNOMED CT | 12921003 |
| strahlentherapie-zielgebiet | 7.7 | equivalent | SNOMED CT | 1490004 |
| strahlentherapie-zielgebiet | 7.8 | equivalent | SNOMED CT | 276825009 |
| strahlentherapie-zielgebiet | 7.9 | source-is-narrower-than-target | SNOMED CT | 74964007 |
| strahlentherapie-zielgebiet | 8.1 | equivalent | SNOMED CT | 181469002 |
| strahlentherapie-zielgebiet | 8.2 | equivalent | SNOMED CT | 119181002 |
| strahlentherapie-zielgebiet | 9.1 | equivalent | SNOMED CT | 81105003 |
| strahlentherapie-zielgebiet | 9.10 | equivalent | SNOMED CT | 54268001 |
| strahlentherapie-zielgebiet | 9.11 | equivalent | SNOMED CT | 8928004 |
| strahlentherapie-zielgebiet | 9.13 | equivalent | SNOMED CT | 397440000 |
| strahlentherapie-zielgebiet | 9.15 | source-is-narrower-than-target | SNOMED CT | 59441001 |
| strahlentherapie-zielgebiet | 9.2 | equivalent | SNOMED CT | 9659009 |
| strahlentherapie-zielgebiet | 9.3 | equivalent | SNOMED CT | 245269009 |
| strahlentherapie-zielgebiet | 9.4 | source-is-broader-than-target | SNOMED CT | 245282001 |
| strahlentherapie-zielgebiet | 9.5 | equivalent | SNOMED CT | 62683002 |
| strahlentherapie-zielgebiet | 9.6 | equivalent | SNOMED CT | 264016003 |
| strahlentherapie-zielgebiet | 9.7 | equivalent | SNOMED CT | 818991007 |
| strahlentherapie-zielgebiet | 9.8 | source-is-broader-than-target | SNOMED CT | 245285004 |
| strahlentherapie-zielgebiet | 9.9 | equivalent | SNOMED CT | 91394001 |
| strahlentherapie-zielgebiet | 10.1 | source-is-narrower-than-target | SNOMED CT | 38266002 |
| strahlentherapie-zielgebiet | 10.2 | equivalent | SNOMED CT | 309795001 |
| strahlentherapie-zielgebiet | 10.3 | equivalent | SNOMED CT | 74964007 |
| studienteilnahme | J | equivalent | SNOMED CT | 373066001 |
| studienteilnahme | N | equivalent | SNOMED CT | 373067005 |
| studienteilnahme | U | equivalent | SNOMED CT | 261665006 |
| therapie-stellungzurop | A | equivalent | SNOMED CT | 373846009 |
| therapie-stellungzurop | I | equivalent | SNOMED CT | 277671009 |
| therapie-stellungzurop | N | equivalent | SNOMED CT | 373847000 |
| therapie-stellungzurop | S | equivalent | SNOMED CT | 74964007 |
| therapie-stellungzurop | Z | equivalent | SNOMED CT | 260364009 |
| therapie-typ |  | source-is-broader-than-target | SNOMED CT | 1255831008 |
| therapie-typ |  | source-is-broader-than-target | SNOMED CT | 1255831008 |
| therapie-typ | AS | equivalent | SNOMED CT | 424313000 |
| therapie-typ | CH | equivalent | SNOMED CT | 367336001 |
| therapie-typ | CI | equivalent | SNOMED CT | 897713009 |
| therapie-typ | CIZ | source-is-broader-than-target | SNOMED CT | 897713009 |
| therapie-typ | CZ | equivalent | SNOMED CT | 1255831008 |
| therapie-typ | HO | equivalent | SNOMED CT | 169413002 |
| therapie-typ | IM | equivalent | SNOMED CT | 897713009 |
| therapie-typ | IZ | source-is-broader-than-target | SNOMED CT | 76334006 |
| therapie-typ | KW | equivalent | SNOMED CT | 897016006 |
| therapie-typ | OP | equivalent | SNOMED CT | 387713003 |
| therapie-typ | [Sequence Ontology](SO) | equivalent | SNOMED CT | 74964007 |
| therapie-typ | ST | equivalent | SNOMED CT | 1287742003 |
| therapie-typ | SZ | equivalent | SNOMED CT | 1269349006 |
| therapie-typ | WS | equivalent | SNOMED CT | 310341009 |
| therapie-typ | WW | equivalent | SNOMED CT | 373818007 |
| therapie-typ | ZS | equivalent | SNOMED CT | 1255831008 |
| therapieabweichung | J | equivalent | SNOMED CT | 373066001 |
| therapieabweichung | N | equivalent | SNOMED CT | 373067005 |
| therapieabweichung | U | equivalent | SNOMED CT | 261665006 |
| therapieplanung-typ | postop | source-is-narrower-than-target | SNOMED CT | 262061000 |
| therapieplanung-typ | postth | source-is-narrower-than-target | SNOMED CT | 303110006 |
| therapieplanung-typ | praeth | source-is-narrower-than-target | SNOMED CT | 307153007 |
| tod | J | source-is-narrower-than-target | SNOMED CT | 373066001 |
| tod | N | source-is-narrower-than-target | SNOMED CT | 373067005 |
| tod | U | source-is-narrower-than-target | SNOMED CT | 261665006 |
| verlauf-fernmetastasen |  | source-is-broader-than-target | SNOMED CT | 263855007 |
| verlauf-fernmetastasen | F | equivalent | SNOMED CT | 64957009 |
| verlauf-fernmetastasen | K | equivalent | SNOMED CT | 261985008 |
| verlauf-fernmetastasen | N | equivalent | SNOMED CT | 260388006 |
| verlauf-fernmetastasen | P | equivalent | SNOMED CT | 255314001 |
| verlauf-fernmetastasen | R | source-is-broader-than-target | SNOMED CT | 7147002 |
| verlauf-fernmetastasen | T | equivalent | SNOMED CT | 65320000 |
| verlauf-fernmetastasen | U | equivalent | SNOMED CT | 261665006 |
| verlauf-fernmetastasen | X | equivalent | SNOMED CT | 1287211007 |
| verlauf-gesamtbeurteilung | B | equivalent | SNOMED CT | 84190002 |
| verlauf-gesamtbeurteilung | K | equivalent | SNOMED CT | 260388006 |
| verlauf-gesamtbeurteilung | P | equivalent | SNOMED CT | 419835002 |
| verlauf-gesamtbeurteilung | R | source-is-narrower-than-target | SNOMED CT | 550991000124107 |
| verlauf-gesamtbeurteilung | T | equivalent | SNOMED CT | 551001000124108 |
| verlauf-gesamtbeurteilung | U | equivalent | SNOMED CT | 385432009 |
| verlauf-gesamtbeurteilung | V | equivalent | SNOMED CT | 550991000124107 |
| verlauf-gesamtbeurteilung | X | equivalent | SNOMED CT | 1287211007 |
| verlauf-gesamtbeurteilung | Y | equivalent | SNOMED CT | 1259237005 |
| verlauf-lymphknoten | F | equivalent | SNOMED CT | 64957009 |
| verlauf-lymphknoten | K | equivalent | SNOMED CT | 399647000 |
| verlauf-lymphknoten | N | equivalent | SNOMED CT | 260388006 |
| verlauf-lymphknoten | P | equivalent | SNOMED CT | 255314001 |
| verlauf-lymphknoten | R | equivalent | SNOMED CT | 263855007 |
| verlauf-lymphknoten | T | equivalent | SNOMED CT | 65320000 |
| verlauf-lymphknoten | U | equivalent | SNOMED CT | 261665006 |
| verlauf-lymphknoten | X | equivalent | SNOMED CT | 1287211007 |
| verlauf-primaertumor | F | equivalent | SNOMED CT | 64957009 |
| verlauf-primaertumor | K | equivalent | SNOMED CT | 58899004 |
| verlauf-primaertumor | N | equivalent | SNOMED CT | 260388006 |
| verlauf-primaertumor | P | equivalent | SNOMED CT | 255314001 |
| verlauf-primaertumor | R | equivalent | SNOMED CT | 1259237005 |
| verlauf-primaertumor | T | equivalent | SNOMED CT | 65320000 |
| verlauf-primaertumor | U | equivalent | SNOMED CT | 261665006 |
| verlauf-primaertumor | X | equivalent | SNOMED CT | 1287211007 |

### Referenzen

Das KDS-Modul Onkologie basiert auf dem onkologischen Basisdatensatz (oBDS) in der im Bundesanzeiger 2021 veröffentlichten Version. Die Inhalte sind öffentlich verfügbar:

* Webseite des oBDS mit allen relevanten Datenfeldern, Beschreibungen und Antwortmöglichkeiten: [basisdatensatz.de/basisdatensatz](https://basisdatensatz.de/basisdatensatz)
* Das oBDS-XML-Schema (Hierarchie, Feld-IDs, Datenvalidierung): [aktuelle Version](https://basisdatensatz.de/xml/oBDS_v3.0.3.xsd), [ältere Versionen](https://basisdatensatz.de/xml/)
* Umsetzungsleitfaden der Krebsregister-Plattform §65c auf [Confluence](https://plattform65c.atlassian.net/wiki/spaces/UMK/overview), insbesondere das [Datenmodell](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532576/Datenmodell) und die [Meldungsinhalte](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532143/Meldungsinhalte)
* Ältere Vorarbeiten zur Abbildung des oBDS als Informationsmodell auf [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.62&conceptEffectiveDate=2018-06-06T06%3A13%3A32) (bilden den aktuellen Stand nicht vollständig ab)

### Qualitätssicherung und Validierung

> Mit dem Umzug auf den HL7 IG Publisher entsteht der maßgebliche QA-Report bei jedem Build automatisch (siehe `qa.html` im publizierten Guide). Die Validierungskonfiguration mit begründeten Unterdrückungen liegt in [`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/dev/advisor.json); die kontinuierliche Validierung läuft über [GitHub Actions](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/actions).

Der folgende, zuletzt zur Version 2026.0.0 manuell gepflegte Stand (2025-12-16) wird als historische Dokumentation der Simplifier-Ära beibehalten:

* **Actionable Fehler**: 9 · **Gefilterte Meldungen**: ~700+ (via advisor.json)
* Gefiltert wurden insbesondere `Terminology_TX_NoValid_16` (~310, externe TX-Server-Limitation), `eld-20` (~294, Validator-Limitation), `UNABLE_TO_INFER_CODESYSTEM` (~100), `MSG_DRAFT` (~14) und `dom-6`.
* Verbleibende Fehlerkategorien betrafen u. a. Mamma-Rezeptorstatus-Codes, das MedDRA-Binding des AdverseEvent (proprietäre Terminologie, extern) und die TX-Server-Verfügbarkeit einzelner ICD-O-Morphologie-Codes.

Wenn Sie zur Verbesserung der Validierung beitragen möchten: Prüfen Sie die aktuellen CI-Läufe, laden Sie die Validierungs-Artefakte herunter und erstellen Sie einen Issue oder Pull Request im [GitHub-Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie).

