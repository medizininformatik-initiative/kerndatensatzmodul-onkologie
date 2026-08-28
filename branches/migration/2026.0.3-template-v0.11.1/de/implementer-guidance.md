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
| equivalent | 680 |
| source-is-narrower-than-target | 38 |
| source-is-broader-than-target | 32 |

**Alle Mappings der oBDS-Antwortlisten** (modul-eigene CodeSysteme → SNOMED CT/LOINC; die jahresversionierten ATC-/ICD-O-Überleitungen sind auf [ATC](atc-terminologie.md) bzw. [ICD-O](icd-o-terminologie.md) beschrieben):

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Quellsystem | Code | Beziehung | Zielsystem | Zielcode |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 0 | equivalent | LOINC | LA9622-7 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 0 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 425389002 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 1 | equivalent | LOINC | LA9623-5 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 422512005 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 2 | equivalent | LOINC | LA9624-3 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 422894000 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 3 | equivalent | LOINC | LA9625-0 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 423053003 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 4 | equivalent | LOINC | LA9626-8 |
| [MII CS Onkologie Allgemeiner Leistungszustand ECOG](mii-cs-onko-allgemeiner-leistungszustand-ecog) | 4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 423237006 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 0% | equivalent | LOINC | LA9627-6 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 10% | equivalent | LOINC | LA29184-1 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 20% | equivalent | LOINC | LA29183-3 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 30% | equivalent | LOINC | LA29182-5 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 40% | equivalent | LOINC | LA29181-7 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 50% | equivalent | LOINC | LA29180-9 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 60% | equivalent | LOINC | LA29179-1 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 70% | equivalent | LOINC | LA29178-3 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 80% | equivalent | LOINC | LA29177-5 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 90% | equivalent | LOINC | LA29176-7 |
| [MII CS Onkologie Allgemeiner Leistungszustand Karnofsky](mii-cs-onko-allgemeiner-leistungszustand-karnofsky) | 100% | equivalent | LOINC | LA29175-9 |
| [MII CS Onkologie ASA-Klassifikation oBDS](mii-cs-onko-asa-obds) | 1 | equivalent | LOINC | LA28813-6 |
| [MII CS Onkologie ASA-Klassifikation oBDS](mii-cs-onko-asa-obds) | 2 | equivalent | LOINC | LA28814-4 |
| [MII CS Onkologie ASA-Klassifikation oBDS](mii-cs-onko-asa-obds) | 3 | equivalent | LOINC | LA28815-1 |
| [MII CS Onkologie ASA-Klassifikation oBDS](mii-cs-onko-asa-obds) | 4 | equivalent | LOINC | LA28816-9 |
| [MII CS Onkologie ASA-Klassifikation oBDS](mii-cs-onko-asa-obds) | 5 | equivalent | LOINC | LA28817-7 |
| [MII CS Onkologie ASA-Klassifikation oBDS](mii-cs-onko-asa-obds) | 6 | equivalent | LOINC | LA28818-5 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | ADR | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258339009 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | BRA | equivalent | SNOMED CT/900000000000207008/version/20240401 | 313367003 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | GEN | equivalent | SNOMED CT/900000000000207008/version/20240401 | 405843009 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | HEP | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258334004 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | LYM | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258336002 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | MAR | equivalent | SNOMED CT/900000000000207008/version/20240401 | 14016003 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | OSS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258333005 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | OTH | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258348004 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | PER | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258338001 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | PLE | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258337006 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | PUL | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258332000 |
| [MII CS Onkologie Fernmetastasen](mii-cs-onko-fernmetastasen) | SKI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258340006 |
| [MII CS Onkologie Genetische Variante Ausprägung](mii-cs-onko-genetische-variante-auspraegung) | M | equivalent | SNOMED CT/900000000000207008/version/20240401 | 55446002 |
| [MII CS Onkologie Genetische Variante Ausprägung](mii-cs-onko-genetische-variante-auspraegung) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1156316003 |
| [MII CS Onkologie Genetische Variante Ausprägung](mii-cs-onko-genetische-variante-auspraegung) | P | equivalent | SNOMED CT/900000000000207008/version/20240401 | 50334000 |
| [MII CS Onkologie Genetische Variante Ausprägung](mii-cs-onko-genetische-variante-auspraegung) | S | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Genetische Variante Ausprägung](mii-cs-onko-genetische-variante-auspraegung) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Genetische Variante Ausprägung](mii-cs-onko-genetische-variante-auspraegung) | W | equivalent | SNOMED CT/900000000000207008/version/20240401 | 412730000 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | 0 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 415175000 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | B | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1268929003 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | H | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1155707008 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | L | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1155708003 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | M | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1286893008 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | T | equivalent | SNOMED CT/900000000000207008/version/20240401 | 385432009 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | X | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1155705000 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | 1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373375007 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | 2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373377004 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | 3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373373000 |
| [MII CS Onkologie Grading](mii-cs-onko-grading) | 4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373374006 |
| [MII CS Onkologie Intention](mii-cs-onko-intention) | D | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261004008 |
| [MII CS Onkologie Intention](mii-cs-onko-intention) | K | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373808002 |
| [MII CS Onkologie Intention](mii-cs-onko-intention) | O | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 373808002 |
| [MII CS Onkologie Intention](mii-cs-onko-intention) | P | equivalent | SNOMED CT/900000000000207008/version/20240401 | 363676003 |
| [MII CS Onkologie Intention](mii-cs-onko-intention) | R | equivalent | SNOMED CT/900000000000207008/version/20240401 | 255231005 |
| [MII CS Onkologie Intention](mii-cs-onko-intention) | S | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Intention](mii-cs-onko-intention) | X | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1287211007 |
| [MII CS Onkologie KRK Stoma Anzeichnung](mii-cs-onko-krk-stoma-anzeichnung) | K | equivalent | SNOMED CT | 428119001 |
| [MII CS Onkologie KRK Stoma Anzeichnung](mii-cs-onko-krk-stoma-anzeichnung) | N | equivalent | SNOMED CT | 262008008 |
| [MII CS Onkologie KRK Stoma Anzeichnung](mii-cs-onko-krk-stoma-anzeichnung) | S | equivalent | SNOMED CT | 373068000 |
| [MII CS Onkologie KRK Stoma Anzeichnung](mii-cs-onko-krk-stoma-anzeichnung) | U | equivalent | SNOMED CT | 261665006 |
| [MII CS Onko Nebenwirkung nach CTCAE-Grad](mii-cs-onko-nebenwirkung-ctcae-grad) | K | equivalent | SNOMED CT/900000000000207008/version/20240401 | 260413007 |
| [MII CS Onko Nebenwirkung nach CTCAE-Grad](mii-cs-onko-nebenwirkung-ctcae-grad) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onko Nebenwirkung nach CTCAE-Grad](mii-cs-onko-nebenwirkung-ctcae-grad) | 1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 255604002 |
| [MII CS Onko Nebenwirkung nach CTCAE-Grad](mii-cs-onko-nebenwirkung-ctcae-grad) | 2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1255665007 |
| [MII CS Onko Nebenwirkung nach CTCAE-Grad](mii-cs-onko-nebenwirkung-ctcae-grad) | 3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 24484000 |
| [MII CS Onko Nebenwirkung nach CTCAE-Grad](mii-cs-onko-nebenwirkung-ctcae-grad) | 4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 442452003 |
| [MII CS Onko Nebenwirkung nach CTCAE-Grad](mii-cs-onko-nebenwirkung-ctcae-grad) | 5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 399166001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 405950009 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) |  | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 128477000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) |  | equivalent | SNOMED CT/900000000000207008/version/20240401 | 236090001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 60168000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | ABD | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 128477000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | ABS | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 75100008 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | AEP | equivalent | SNOMED CT/900000000000207008/version/20240401 | 8635005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | ALR | equivalent | SNOMED CT/900000000000207008/version/20240401 | 419076005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | ANI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 723189000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | ANS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 735173007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | API | equivalent | SNOMED CT/900000000000207008/version/20240401 | 230690007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | ASF | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 128477000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | BIF | equivalent | SNOMED CT/900000000000207008/version/20240401 | 53206008 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | BOG | equivalent | SNOMED CT/900000000000207008/version/20240401 | 37372002 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | CHI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 82403002 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | DAI | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 236091002 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | DEP | equivalent | SNOMED CT/900000000000207008/version/20240401 | 772133000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | DIC | equivalent | SNOMED CT/900000000000207008/version/20240401 | 67406007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | DLU | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1163215007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | DPS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 81060008 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | DSI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 236089005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | ENF | equivalent | SNOMED CT/900000000000207008/version/20240401 | 735426009 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | GER | equivalent | SNOMED CT/900000000000207008/version/20240401 | 64779008 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HAE | equivalent | SNOMED CT/900000000000207008/version/20240401 | 355001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HEM | equivalent | SNOMED CT/900000000000207008/version/20240401 | 8765009 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HFI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 57243009 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HNA | equivalent | SNOMED CT/900000000000207008/version/20240401 | 73013002 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HNK | equivalent | SNOMED CT/900000000000207008/version/20240401 | 95347000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HOP | equivalent | SNOMED CT/900000000000207008/version/20240401 | 2776000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HRS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 698247007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HUR | equivalent | SNOMED CT/900000000000207008/version/20240401 | 34436003 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HYB | equivalent | SNOMED CT/900000000000207008/version/20240401 | 14783006 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HYF | equivalent | SNOMED CT/900000000000207008/version/20240401 | 126663003 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | HZI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 84114007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | IFV | equivalent | SNOMED CT/900000000000207008/version/20240401 | 234044007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | KAS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 89138009 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | KDS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 26629001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | KIM | equivalent | SNOMED CT/900000000000207008/version/20240401 | 19220005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | KRA | equivalent | SNOMED CT/900000000000207008/version/20240401 | 91175000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | LEV | equivalent | SNOMED CT/900000000000207008/version/20240401 | 59927004 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | LOE | equivalent | SNOMED CT/900000000000207008/version/20240401 | 19242006 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | LYE | equivalent | SNOMED CT/900000000000207008/version/20240401 | 234109007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | LYF | equivalent | SNOMED CT/900000000000207008/version/20240401 | 234105001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | MAT | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 243410003 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | MED | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373409004 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | MES | equivalent | SNOMED CT/900000000000207008/version/20240401 | 386211005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | MIL | equivalent | SNOMED CT/900000000000207008/version/20240401 | 46420000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | MYI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 22298006 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373067005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | NAB | equivalent | SNOMED CT/900000000000207008/version/20240401 | 110265006 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | OES | equivalent | SNOMED CT/900000000000207008/version/20240401 | 16761005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | OSM | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 274144001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PAB | equivalent | SNOMED CT/900000000000207008/version/20240401 | 6072007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PAE | equivalent | SNOMED CT/900000000000207008/version/20240401 | 59282003 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PAF | equivalent | SNOMED CT/900000000000207008/version/20240401 | 25803005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PAV | equivalent | SNOMED CT/900000000000207008/version/20240401 | 399957001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PDA | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1162567000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PER | equivalent | SNOMED CT/900000000000207008/version/20240401 | 48661000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PEY | equivalent | SNOMED CT/900000000000207008/version/20240401 | 58554001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PIT | equivalent | SNOMED CT/900000000000207008/version/20240401 | 75694006 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PLB | equivalent | SNOMED CT/900000000000207008/version/20240401 | 698817002 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PLE | equivalent | SNOMED CT/900000000000207008/version/20240401 | 60046008 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PMN | equivalent | SNOMED CT/900000000000207008/version/20240401 | 233604007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | PNT | equivalent | SNOMED CT/900000000000207008/version/20240401 | 36118008 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | RIN | equivalent | SNOMED CT/900000000000207008/version/20240401 | 409623005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | RNB | equivalent | SNOMED CT/900000000000207008/version/20240401 | 308896002 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | RPA | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 1052240009 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | SES | equivalent | SNOMED CT/900000000000207008/version/20240401 | 76571007 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | SFH | equivalent | SNOMED CT/900000000000207008/version/20240401 | 76314005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | SKI | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 19220005 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | STK | equivalent | SNOMED CT/900000000000207008/version/20240401 | 302918009 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | TIA | equivalent | SNOMED CT/900000000000207008/version/20240401 | 266257000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | TRZ | equivalent | SNOMED CT/900000000000207008/version/20240401 | 82545002 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | TZP | equivalent | SNOMED CT/900000000000207008/version/20240401 | 302215000 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | WSS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 271618001 |
| [MII CS Onkologie Operation Komplikationen](mii-cs-onko-operation-komplikation) | WUH | equivalent | SNOMED CT/900000000000207008/version/20240401 | 239160006 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 363680008 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 423827005 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 363679005 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 16310003 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 122458006 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373795004 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373796003 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373797007 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373798002 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 6 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373799005 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 7 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373800009 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 7.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373800009 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 7.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373799005 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 8 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 394804000 |
| [MII CS Onkologie Primärtumor Diagnosesicherung](mii-cs-onko-primaertumor-diagnosesicherung) | 9 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Primärtumor Seitenlokalisation](mii-cs-onko-seitenlokalisation) | B | equivalent | SNOMED CT/900000000000207008/version/20240401 | 51440002 |
| [MII CS Onkologie Primärtumor Seitenlokalisation](mii-cs-onko-seitenlokalisation) | L | equivalent | SNOMED CT/900000000000207008/version/20240401 | 7771000 |
| [MII CS Onkologie Primärtumor Seitenlokalisation](mii-cs-onko-seitenlokalisation) | M | equivalent | SNOMED CT/900000000000207008/version/20240401 | 260528009 |
| [MII CS Onkologie Primärtumor Seitenlokalisation](mii-cs-onko-seitenlokalisation) | R | equivalent | SNOMED CT/900000000000207008/version/20240401 | 24028007 |
| [MII CS Onkologie Primärtumor Seitenlokalisation](mii-cs-onko-seitenlokalisation) | T | equivalent | SNOMED CT/900000000000207008/version/20240401 | 385432009 |
| [MII CS Onkologie Primärtumor Seitenlokalisation](mii-cs-onko-seitenlokalisation) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | I | equivalent | SNOMED CT/900000000000207008/version/20240401 | 113120007 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | IHDR | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 113120007 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | ILDR | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 113120007 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | IPDR | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 113120007 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | K | equivalent | SNOMED CT/900000000000207008/version/20240401 | 384692006 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | KHDR | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 384692006 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | KLDR | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 384692006 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | KPDR | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 384692006 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | M | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 399315003 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | MRIT | equivalent | SNOMED CT/900000000000207008/version/20240401 | 118640001 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | MRJT | equivalent | SNOMED CT/900000000000207008/version/20240401 | 64291000052106 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | P | equivalent | SNOMED CT/900000000000207008/version/20240401 | 33195004 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | P-4D | equivalent | SNOMED CT/900000000000207008/version/20240401 | 721061000124106 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | P-ST | equivalent | SNOMED CT/900000000000207008/version/20240401 | 395096001 |
| [MII CS Onkologie Strahlentherapie Applikationsart](mii-cs-onko-strahlentherapie-applikationsart) | S | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Strahlentherapie Boost](mii-cs-onko-strahlentherapie-boost) | J | equivalent | SNOMED CT/900000000000207008/version/20240401 | 445232009 |
| [MII CS Onkologie Strahlentherapie Boost](mii-cs-onko-strahlentherapie-boost) | KON | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 445232009 |
| [MII CS Onkologie Strahlentherapie Boost](mii-cs-onko-strahlentherapie-boost) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373067005 |
| [MII CS Onkologie Strahlentherapie Boost](mii-cs-onko-strahlentherapie-boost) | SEQ | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 445232009 |
| [MII CS Onkologie Strahlentherapie Boost](mii-cs-onko-strahlentherapie-boost) | SIB | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 445232009 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Ac-225 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 32059002 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Co-60 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 5405008 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | EL | equivalent | SNOMED CT/900000000000207008/version/20240401 | 46602004 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Ir-192 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 48341001 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | J-131 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1368003 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Lu-177 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 447553000 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Lu-177 | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 1263784000 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | NE | equivalent | SNOMED CT/900000000000207008/version/20240401 | 58607005 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | PN | equivalent | SNOMED CT/900000000000207008/version/20240401 | 89177007 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | RO | equivalent | SNOMED CT/900000000000207008/version/20240401 | 286630003 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Ra-223 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 24853006 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | SI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 312253001 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | [Sequence Ontology](SO) | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | SONU | equivalent | SNOMED CT/900000000000207008/version/20240401 | 89457008 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Sm-153 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 419804008 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Sr-89 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 7770004 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | UH | equivalent | SNOMED CT/900000000000207008/version/20240401 | 290006006 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Y-90 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 14691008 |
| [MII CS Onkologie Strahlentherapie Strahlenart](mii-cs-onko-strahlentherapie-strahlenart) | Y-90 | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 764677008 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 1.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 258335003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 1.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 119235005 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 1.3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 389079005 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 1.4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 56329008 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 1.5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 81745001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.10 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 4596009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.11 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 69748006 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.12 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 774007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1286894002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74262004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 117590005 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 385294005 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.6 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 54066008 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.7 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 71836000 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.8 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 31389004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 2.9 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 81502006 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 3.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 181131000 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 3.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 119184005 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 3.3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 78904004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 3.4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 39607008 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 3.5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 32849002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 3.6 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 72410000 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 3.7 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 9875009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 3.8 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 51185008 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 69695003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.10 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 80581009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.11 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 28273000 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.12 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 28231008 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.13 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 818983003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 15776009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.3 | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 10200004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 78961009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 64033007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.6 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 23451007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.7 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 82849001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.8 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 87953007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 4.9 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 822992007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 34402009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.10 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 76784001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.11 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 3665003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.12 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 826984001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 53505006 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 89837001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 41216001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 40689003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.6 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 18911002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.7 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 35039007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.8 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 71252005 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 5.9 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 45292006 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 89546000 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.10 | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 896747000 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.11 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 85050009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.12 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 299701004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.13 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 24097009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.14 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 12921003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.15 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 28254004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.16 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 71341001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.17 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 702468001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.18 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 84167007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.19 | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 31467002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 363654007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 84667006 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 35769007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.6 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 73903008 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.7 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 699698002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.8 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 113197003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 6.9 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 56873002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 774007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 53120007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 61685007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.4 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 51185008 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 302553009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.6 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 12921003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.7 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1490004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.8 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 276825009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 7.9 | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 8.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 181469002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 8.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 119181002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.1 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 81105003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.10 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 54268001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.11 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 8928004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.13 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 397440000 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.15 | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 59441001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 9659009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 245269009 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.4 | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 245282001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.5 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 62683002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.6 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 264016003 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.7 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 818991007 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.8 | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 245285004 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 9.9 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 91394001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 10.1 | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 38266002 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 10.2 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 309795001 |
| [MII CS Onkologie Strahlentherapie Zielgebiet](mii-cs-onko-strahlentherapie-zielgebiet) | 10.3 | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Studienteilnahme](mii-cs-onko-studienteilnahme) | J | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373066001 |
| [MII CS Onkologie Studienteilnahme](mii-cs-onko-studienteilnahme) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373067005 |
| [MII CS Onkologie Studienteilnahme](mii-cs-onko-studienteilnahme) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Therapie Stellung](mii-cs-onko-therapie-stellungzurop) | A | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373846009 |
| [MII CS Onkologie Therapie Stellung](mii-cs-onko-therapie-stellungzurop) | I | equivalent | SNOMED CT/900000000000207008/version/20240401 | 277671009 |
| [MII CS Onkologie Therapie Stellung](mii-cs-onko-therapie-stellungzurop) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373847000 |
| [MII CS Onkologie Therapie Stellung](mii-cs-onko-therapie-stellungzurop) | S | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onkologie Therapie Stellung](mii-cs-onko-therapie-stellungzurop) | Z | equivalent | SNOMED CT/900000000000207008/version/20240401 | 260364009 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 1255831008 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 1255831008 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | AS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 424313000 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | CH | equivalent | SNOMED CT/900000000000207008/version/20240401 | 367336001 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | CI | equivalent | SNOMED CT/900000000000207008/version/20240401 | 897713009 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | CIZ | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 897713009 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | CZ | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1255831008 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | HO | equivalent | SNOMED CT/900000000000207008/version/20240401 | 169413002 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | IM | equivalent | SNOMED CT/900000000000207008/version/20240401 | 897713009 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | IZ | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 76334006 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | KW | equivalent | SNOMED CT/900000000000207008/version/20240401 | 897016006 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | OP | equivalent | SNOMED CT/900000000000207008/version/20240401 | 387713003 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | [Sequence Ontology](SO) | equivalent | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | ST | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1287742003 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | SZ | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1269349006 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | WS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 310341009 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | WW | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373818007 |
| [MII CS Onko Therapie Typ](mii-cs-onko-therapie-typ) | ZS | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1255831008 |
| [MII CS Onkologie Therapieabweichung](mii-cs-onko-therapieabweichung) | J | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373066001 |
| [MII CS Onkologie Therapieabweichung](mii-cs-onko-therapieabweichung) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 373067005 |
| [MII CS Onkologie Therapieabweichung](mii-cs-onko-therapieabweichung) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Therapieplanung Typ](mii-cs-onko-therapieplanung-typ) | postop | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 262061000 |
| [MII CS Onkologie Therapieplanung Typ](mii-cs-onko-therapieplanung-typ) | postth | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 303110006 |
| [MII CS Onkologie Therapieplanung Typ](mii-cs-onko-therapieplanung-typ) | praeth | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 307153007 |
| [MII CS Onkologie Tod](mii-cs-onko-tod) | J | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 373066001 |
| [MII CS Onkologie Tod](mii-cs-onko-tod) | N | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 373067005 |
| [MII CS Onkologie Tod](mii-cs-onko-tod) | U | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) |  | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 263855007 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) | F | equivalent | SNOMED CT/900000000000207008/version/20240401 | 64957009 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) | K | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261985008 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 260388006 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) | P | equivalent | SNOMED CT/900000000000207008/version/20240401 | 255314001 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) | R | source-is-broader-than-target | SNOMED CT/900000000000207008/version/20240401 | 7147002 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) | T | equivalent | SNOMED CT/900000000000207008/version/20240401 | 65320000 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Verlauf Fernmetastasen](mii-cs-onko-verlauf-fernmetastasen) | X | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1287211007 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | B | equivalent | SNOMED CT/900000000000207008/version/20240401 | 84190002 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | K | equivalent | SNOMED CT/900000000000207008/version/20240401 | 260388006 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | P | equivalent | SNOMED CT/900000000000207008/version/20240401 | 419835002 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | R | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 550991000124107 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | T | equivalent | SNOMED CT/900000000000207008/version/20240401 | 551001000124108 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 385432009 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | V | equivalent | SNOMED CT/900000000000207008/version/20240401 | 550991000124107 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | X | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1287211007 |
| [MII CS Onkologie Verlauf Gesamtbeurteilung](mii-cs-onko-verlauf-gesamtbeurteilung) | Y | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1259237005 |
| [MII CS Onkologie Verlauf Lymphknoten](mii-cs-onko-verlauf-lymphknoten) | F | equivalent | SNOMED CT/900000000000207008/version/20240401 | 64957009 |
| [MII CS Onkologie Verlauf Lymphknoten](mii-cs-onko-verlauf-lymphknoten) | K | equivalent | SNOMED CT/900000000000207008/version/20240401 | 399647000 |
| [MII CS Onkologie Verlauf Lymphknoten](mii-cs-onko-verlauf-lymphknoten) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 260388006 |
| [MII CS Onkologie Verlauf Lymphknoten](mii-cs-onko-verlauf-lymphknoten) | P | equivalent | SNOMED CT/900000000000207008/version/20240401 | 255314001 |
| [MII CS Onkologie Verlauf Lymphknoten](mii-cs-onko-verlauf-lymphknoten) | R | equivalent | SNOMED CT/900000000000207008/version/20240401 | 263855007 |
| [MII CS Onkologie Verlauf Lymphknoten](mii-cs-onko-verlauf-lymphknoten) | T | equivalent | SNOMED CT/900000000000207008/version/20240401 | 65320000 |
| [MII CS Onkologie Verlauf Lymphknoten](mii-cs-onko-verlauf-lymphknoten) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Verlauf Lymphknoten](mii-cs-onko-verlauf-lymphknoten) | X | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1287211007 |
| [MII CS Onkologie Verlauf Primärtumor](mii-cs-onko-verlauf-primaertumor) | F | equivalent | SNOMED CT/900000000000207008/version/20240401 | 64957009 |
| [MII CS Onkologie Verlauf Primärtumor](mii-cs-onko-verlauf-primaertumor) | K | equivalent | SNOMED CT/900000000000207008/version/20240401 | 58899004 |
| [MII CS Onkologie Verlauf Primärtumor](mii-cs-onko-verlauf-primaertumor) | N | equivalent | SNOMED CT/900000000000207008/version/20240401 | 260388006 |
| [MII CS Onkologie Verlauf Primärtumor](mii-cs-onko-verlauf-primaertumor) | P | equivalent | SNOMED CT/900000000000207008/version/20240401 | 255314001 |
| [MII CS Onkologie Verlauf Primärtumor](mii-cs-onko-verlauf-primaertumor) | R | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1259237005 |
| [MII CS Onkologie Verlauf Primärtumor](mii-cs-onko-verlauf-primaertumor) | T | equivalent | SNOMED CT/900000000000207008/version/20240401 | 65320000 |
| [MII CS Onkologie Verlauf Primärtumor](mii-cs-onko-verlauf-primaertumor) | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| [MII CS Onkologie Verlauf Primärtumor](mii-cs-onko-verlauf-primaertumor) | X | equivalent | SNOMED CT/900000000000207008/version/20240401 | 1287211007 |
| mii-cs-therapie-grund-ende | E | equivalent | SNOMED CT/900000000000207008/version/20240401 | 385656004 |
| mii-cs-therapie-grund-ende | P | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 419835002 |
| mii-cs-therapie-grund-ende | S | source-is-narrower-than-target | SNOMED CT/900000000000207008/version/20240401 | 74964007 |
| mii-cs-therapie-grund-ende | T | equivalent | SNOMED CT/900000000000207008/version/20240401 | 419099009 |
| mii-cs-therapie-grund-ende | U | equivalent | SNOMED CT/900000000000207008/version/20240401 | 261665006 |
| mii-cs-therapie-grund-ende | V | equivalent | SNOMED CT/900000000000207008/version/20240401 | 183948000 |

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

