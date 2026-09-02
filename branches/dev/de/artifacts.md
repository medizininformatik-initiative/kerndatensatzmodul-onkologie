# Artefaktübersicht - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

 Für die aktuelle Seite ist keine Übersetzung verfügbar, daher wurde sie in der Standardsprache dargestellt. 

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS Onkology CapabilityStatement  ](CapabilityStatement-mii-cps-onko-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Onkologie der Medizininformatik Initiative zu implementieren. |

### Verhalten: Suchparameter (SearchParameter) 

Diese definieren die Eigenschaften, nach denen ein RESTful-Server durchsucht werden kann. Sie können auch zum Sortieren und Einbeziehen verwandter Ressourcen verwendet werden.

| | |
| :--- | :--- |
| [ mii-sp-onko-condition-ext-morphology-behavior-icdo3  ](SearchParameter-mii-sp-onko-condition-ext-morphology-behavior-icdo3.md) | SearchParameter for Condition.extension[morphology-behavior-icdo3] |
| [ mii-sp-onko-ext-strahlentherapie-stellungzurop  ](SearchParameter-mii-sp-onko-ext-strahlentherapie-stellungzurop.md) | SearchParameter for Procedure.extension[StellungZurOp] |
| [ mii-sp-onko-ext-systemischetherapie-stellungzurop  ](SearchParameter-mii-sp-onko-ext-systemischetherapie-stellungzurop.md) | SearchParameter for Procedure.extension[StellungZurOp] |
| [ mii-sp-onko-observation-ext-tnm-n-itc  ](SearchParameter-mii-sp-onko-observation-ext-tnm-n-itc.md) | SearchParameter for Observation.extension[itc] |
| [ mii-sp-onko-observation-ext-tnm-n-sn-suffix  ](SearchParameter-mii-sp-onko-observation-ext-tnm-n-sn-suffix.md) | SearchParameter for Observation.extension[sn-suffix] |
| [ mii-sp-onko-observation-tnm-cp-praefix  ](SearchParameter-mii-sp-onko-observation-tnm-cp-praefix.md) | SearchParameter for Observation.code.extension[cp-praefix]. Die Extension gilt gleichermaßen für T-, N- und M-Kategorien; die Unterscheidung der Kategorie erfolgt über den Kategorie-Code der Observation (Kombination mit dem SearchParameter `code`). |
| [ mii-sp-onko-observation-tnm-r-praefix  ](SearchParameter-mii-sp-onko-observation-tnm-r-praefix.md) | SearchParameter for Observation.modifierExtension[r-praefix]. Kennzeichnet TNM-Kategorien, die zur Beurteilung eines Rezidivs festgestellt wurden (UICC r-Präfix). Die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation. |
| [ mii-sp-onko-observation-tnm-y-praefix  ](SearchParameter-mii-sp-onko-observation-tnm-y-praefix.md) | SearchParameter for Observation.modifierExtension[y-praefix]. Kennzeichnet TNM-Kategorien, die während oder nach initialer multimodaler Therapie festgestellt wurden (UICC y-Präfix). Die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation. |
| [ mii-sp-onko-procedure-ext-operation-intention  ](SearchParameter-mii-sp-onko-procedure-ext-operation-intention.md) | SearchParameter for Procedure.extension[intention] |
| [ mii-sp-onko-procedure-ext-strahlentherapie-bs-boost  ](SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-boost.md) | SearchParameter for Procedure.extension:boost |
| [ mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis  ](SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis.md) | SearchParameter for Procedure.extension:einzeldosis |
| [ mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis  ](SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis.md) | SearchParameter for Procedure.extension:gesamtdosis |
| [ mii-sp-onko-procedure-ext-strahlentherapie-intention  ](SearchParameter-mii-sp-onko-procedure-ext-strahlentherapie-intention.md) | SearchParameter for Procedure.extension[intention] |
| [ mii-sp-onko-procedure-ext-systemischetherapie-intention  ](SearchParameter-mii-sp-onko-procedure-ext-systemischetherapie-intention.md) | SearchParameter for Procedure.extension[intention] |
| [ mii-sp-onko-procedure-strahlentherapie-applikationsart  ](SearchParameter-mii-sp-onko-procedure-strahlentherapie-applikationsart.md) | SearchParameter for Procedure.usedCode:Applikationsart |
| [ mii-sp-onko-procedure-strahlentherapie-lateralitaet  ](SearchParameter-mii-sp-onko-procedure-strahlentherapie-lateralitaet.md) | SearchParameter for Procedure.bodySite.extension:Seitenlokalisation |
| [ mii-sp-onko-procedure-strahlentherapie-strahlenart  ](SearchParameter-mii-sp-onko-procedure-strahlentherapie-strahlenart.md) | SearchParameter for Procedure.usedCode:Strahlenart |

### Wissensartefakte: Library 

Diese definieren Logik, Asset-Sammlungen und andere Bibliotheken als Teil des Inhalts in diesem Implementierungsleitfaden.

| | |
| :--- | :--- |
| [ MII Onkologie TNM-Synthese Algorithmus  ](Library-mii-lib-onko-synthesize-tnm.md) | Deterministischer Algorithmus zur Synthese einer TNM-Klassifikation aus mehreren Meldungs-bezogenen Quell-Klassifikationen. Implementiert UICC General Rules nach Manual der Krebsregistrierung Kap. 6 (Stegmaier 2019). Drei Phasen: primary (kein y/r), post-neoadjuvant (y), recurrence (r). Symbol-Lesen aus hasMember (mii-pr-onko-tnm-{y,r,a,m}-symbol). Pre-therapeutic intentional NICHT Phase: nicht aus TNM-Daten ableitbar (Biopsien können pTNM ergeben), gehört in Workflow-Kontext (Tumorkonferenz.category=praeth). |

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ MII LM Modellvorhaben Genomsequenzierung Onkologie  ](StructureDefinition-mii-lm-mvgenomseq-onkologie.md) | MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie |
| [ MII LM Onkologie  ](StructureDefinition-mii-lm-onko.md) | MII LogicalModel Modul Onkologie |
| [ MII LM Onkologie Organspezifische Zusatzmodule  ](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md) | Logisches Modell für die organspezifischen Zusatzmodule des oBDS. Feldnummern und Struktur folgen dem amtlichen oBDS-XML-Schema (oBDS v3.0.5, Modul_Mamma/Darm/Prostata/Malignes_Melanom/Allgemein) sowie dem Feldkatalog auf basisdatensatz.de. |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII PR Onko Melanom Exzision  ](StructureDefinition-mii-pr-onko-melanom-exzision.md) | Melanom-spezifische Exzision. Dieses Profil spezialisiert die allgemeine onkologische Operation für Melanom-Exzisionen mit einem präferierten ValueSet basierend auf SNOMED CT Codes für Hautexzisionen. |
| [ MII PR Onko Prostata Operation  ](StructureDefinition-mii-pr-onko-prostata-operation.md) | Prostata-spezifische Operation. Dieses Profil spezialisiert die allgemeine onkologische Operation für Prostata-spezifische Eingriffe mit einem required Binding zu einem ValueSet basierend auf SNOMED CT 118877007 und dessen Kindern. |
| [ MII PR Onkologie ASA-Klassifikation  ](StructureDefinition-mii-pr-onko-asa-klassifikation.md) | Dieses Profil beschreibt die ASA-Klassifikation (American Society of Anesthesiologists Physical Status Classification) in der Onkologie. Die ASA-Klassifikation dient primär der präoperativen Risikobewertung, kann aber auch als Komorbidätsindex für systemische Therapieentscheidungen verwendet werden. Ursprünglich aus oBDS KR9 (Kolorektales Karzinom), nun generalisiert für alle onkologischen Indikationen. |
| [ MII PR Onkologie Abstand Aboral  ](StructureDefinition-mii-pr-onko-krk-abstand-aboral.md) | Dieses Profil beschreibt den minimalen Abstand des Tumorrandes zur aboralen Dissektionlinie im Kolorektalen Karzinom |
| [ MII PR Onkologie Abstand Anokutan  ](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.md) | Dieses Profil beschreibt den Abstand des Tumorunterrandes zur Anokutanlinie im Kolorektalen Karzinom |
| [ MII PR Onkologie Abstand Circumferelle Resektionsebene  ](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.md) | Dieses Profil beschreibt den minimalen Abstand des Tumorrandes zur circumferellen Dissektionlinie beim Kolorektalen Karzinom |
| [ MII PR Onkologie Allgemeiner Leistungszustand ECOG  ](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.md) | OBDS Beschreibung des allgemeines Leistungszustandes nach ECOG |
| [ MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky  ](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md) | OBDS Beschreibung des allgemeines Leistungszustandes nach Karnofsky |
| [ MII PR Onkologie Anzahl der befallenen Lymphknoten  ](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md) | Histologie: Anzahl der befallenen Lymphknoten. Gibt an, wie viele Lymphknoten befallen sind (einschließlich Sentinel). |
| [ MII PR Onkologie Anzahl der befallenen Sentinel-Lymphknoten  ](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md) | Histologie: Anzahl der befallenen Sentinel-Lymphknoten. Gibt an, wie viele Sentinel-Lymphknoten befallen sind. |
| [ MII PR Onkologie Anzahl der untersuchten Lymphknoten  ](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md) | Histologie: Anzahl der untersuchten Lymphknoten. Gibt an, wie viele Lymphknoten untersucht wurden (einschließlich Sentinel). |
| [ MII PR Onkologie Anzahl der untersuchten Sentinel-Lymphknoten  ](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md) | Histologie: Anzahl der untersuchten Sentinel-Lymphknoten. Gibt an, wie viele Sentinel-Lymphknoten untersucht wurden. |
| [ MII PR Onkologie Befund  ](StructureDefinition-mii-pr-onko-befund.md) | Histologie: Befund. Vollständiger Befundbericht des Pathologen. |
| [ MII PR Onkologie Ca-Befall Stanze  ](StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.md) | Dieses Profil beschreibt den prozentualen Befall der am stärksten befallenen Stanze einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der Onkologie |
| [ MII PR Onkologie Clavien Dindo  ](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md) | Dieses Profil beschreibt den Clavien-Dindo-Score für die Prostatektomie in der Onkologie |
| [ MII PR Onkologie Diagnose Primärtumor  ](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) | Dieses Profil beschreibt die Diagnose des Primärtumors (bzw. der primären hämatologisch-myeloneoplastischen Erkrankung) und basiert auf dem MII KDS Modul Diagnose. |
| [ MII PR Onkologie Evidenz Diagnose Primärtumor  ](StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.md) | Dieses Profil beschreibt eine Liste, die alle Observationen und Berichte enthält, die für eine Erstdiagnostik relevant waren. (synchrone Observationen im Sinne der Krebsregister) |
| [ MII PR Onkologie Fernmetastasen  ](StructureDefinition-mii-pr-onko-fernmetastasen.md) | OBDS Beschreibung von Fernmetastasen (Lokalisation und Datum) |
| [ MII PR Onkologie Frühere Tumorerkrankung  ](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md) | Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen. |
| [ MII PR Onkologie Genetische Variante  ](StructureDefinition-mii-pr-onko-genetische-variante.md) | Genetische Variante wie im oBDS beschrieben |
| [ MII PR Onkologie Grading  ](StructureDefinition-mii-pr-onko-grading.md) | Histologie: Tumor Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an. |
| [ MII PR Onkologie Her2neu Status  ](StructureDefinition-mii-pr-onko-mamma-her2neu-status.md) | Dieses Profil beschreibt den Her2neu Status einer pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie |
| [ MII PR Onkologie Histologie ICD-O-3  ](StructureDefinition-mii-pr-onko-histologie-icdo3.md) | Histologie-Kodierung nach ICD-0 für die Verwendung von Folgediagnostik. Bei der histologischen Beurteilung des Primärtumors sind die histologischen Informationen direkt über die Condition-Ressource abzubilden. |
| [ MII PR Onkologie KRK Anastomoseninsuffizienz  ](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.md) | Dieses Profil beschreibt die Bewertung der Anastomoseninsuffizienz nach einer Operation beim Kolorektalen Karzinom |
| [ MII PR Onkologie KRK MRT/CT Abstand Mesorektale Faszie  ](StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.md) | Dieses Profil beschreibt den Abstand des Tumors zur mesorektalen Faszie bei MRT oder Dünnschicht-CT Untersuchung beim Kolorektalen Karzinom (oBDS KR5) |
| [ MII PR Onkologie KRK Stoma-Markierung  ](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md) | Dieses Profil beschreibt die präoperative Markierung der geplanten Stoma-Position beim Kolorektalen Karzinom |
| [ MII PR Onkologie Mamma Operation  ](StructureDefinition-mii-pr-onko-mamma-operation.md) | Das vorliegende Profil beschreibt operative Eingriffe an der Brust im Rahmen der Mammakarzinom-Behandlung. Es erweitert das allgemeine Operationsprofil um Mamma-spezifische Aspekte und ermöglicht die detaillierte Erfassung von brustchirurgischen Verfahren. |
| [ MII PR Onkologie Melanom Breslow Tiefe  ](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.md) | Dieses Profil beschreibt die Breslow-Tumordicke beim Malignen Melanom der Haut |
| [ MII PR Onkologie Melanom LDH  ](StructureDefinition-mii-pr-onko-melanom-ldh.md) | Dieses Profil beschreibt die Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom |
| [ MII PR Onkologie Melanom Sicherheitsabstand  ](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.md) | Dieses Profil beschreibt den minimalen Sicherheitsabstand zum Primärtumor beim Malignen Melanom basierend auf oBDS Feld MM1. Bei nicht beurteilbaren Fällen (oBDS Wert -1) wird dataAbsentReason verwendet statt valueQuantity. |
| [ MII PR Onkologie Melanom Ulzeration  ](StructureDefinition-mii-pr-onko-melanom-ulzeration.md) | Dieses Profil beschreibt die Ulzeration beim Malignen Melanom der Haut |
| [ MII PR Onkologie Menopausenstatus Mamma  ](StructureDefinition-mii-pr-onko-mamma-menopause-status.md) | Dieses Profil beschreibt den (prätherapeutischen) Menopausenstatus einer Patientin mit Mamma-Karzinom in der Onkologie |
| [ MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie  ](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md) | Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie. |
| [ MII PR Onkologie Operation  ](StructureDefinition-mii-pr-onko-operation.md) | Operation nach OPS inklusive Intention, Datum und Komplikationen: |
| [ MII PR Onkologie PSA-Wert  ](StructureDefinition-mii-pr-onko-prostate-psa.md) | Dieses Profil beschreibt den PSA-Wert sowohl beim Monitoring als auch in der Verlaufskontrolle in der Onkologie |
| [ MII PR Onkologie Prostata Anzahl Stanzen  ](StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.md) | Dieses Profil beschreibt die Anzahl Stanzen einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der Onkologie |
| [ MII PR Onkologie Prostata Anzahl positiver Stanzen  ](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.md) | Dieses Profil beschreibt die Anzahl positiver Stanzen einer Prostata-Biopsie in der Onkologie |
| [ MII PR Onkologie Prostata Gleason Grade Group  ](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md) | Dieses Profil beschreibt einen Gleasonscore in der Onkologie |
| [ MII PR Onkologie Prostata Gleason Pattern  ](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md) | Dieses Profil beschreibt ein Gleason Pattern in der Onkologie. Es wird für das primäre, das sekundäre und das tertiäre Pattern gleichermaßen verwendet; welches Pattern gemeint ist, ergibt sich aus Observation.code. |
| [ MII PR Onkologie Prostata Gleason Score Gesamt  ](StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.md) | Dieses Profil beschreibt den Gleason-Gesamtscore als Summe aus primärem und sekundärem Pattern. Es wird verwendet, wenn im Befund nur das Score-Ergebnis dokumentiert ist und keine Aufschlüsselung in Primär-/Sekundär-Pattern und keine ISUP Grade Group vorliegt. Für die detaillierte Dokumentation mit Grade Group ist MII_PR_Onko_Prostata_Gleason_Grade_Group zu verwenden, für die einzelnen Patterns MII_PR_Onko_Prostata_Gleason_Pattern. |
| [ MII PR Onkologie Präoperative Drahtmarkierung Mamma  ](StructureDefinition-mii-pr-onko-krk-operation.md) | Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels der Brust. Dabei können verschiedene Methoden gewählt werden. Die |
| [ MII PR Onkologie Präoperative Drahtmarkierung Mamma  ](StructureDefinition-mii-pr-onko-mamma-sozialdienst.md) | Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels der Brust. Dabei können verschiedene Methoden gewählt werden. Die |
| [ MII PR Onkologie Präoperative Markierung Mamma  ](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.md) | Das vorliegende Profil beschreibt eine präoperativ durchgeführte Markierung von Tumorgewebe in der Brust. Dabei können verschiedene Markierungsmodalitäten gewählt werden, wie z.B. Drahtmarkierungen, Seed-Markierungen oder andere Lokalisationstechniken. |
| [ MII PR Onkologie Residualstatus  ](StructureDefinition-mii-pr-onko-residualstatus.md) | Umfang eines Residualtumors nach einer Therapie |
| [ MII PR Onkologie Rezeptorstatus Estrogen  ](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md) | Dieses Profil beschreibt den diagnostischen Estrogen-Rezeptorstatus eines pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie |
| [ MII PR Onkologie Rezeptorstatus Progesteron  ](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md) | Dieses Profil beschreibt den diagnostischen Progesteron-Rezeptorstatus eines pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie |
| [ MII PR Onkologie Specimen  ](StructureDefinition-mii-pr-onko-krk-specimen.md) | Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie. |
| [ MII PR Onkologie Specimen  ](StructureDefinition-mii-pr-onko-specimen.md) | Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie. |
| [ MII PR Onkologie Strahlentherapie  ](StructureDefinition-mii-pr-onko-strahlentherapie.md) | Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie. |
| [ MII PR Onkologie Strahlentherapie  ](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md) | Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie. |
| [ MII PR Onkologie Strahlentherapie Nuklearmedizin  ](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md) | Strahlentherapie. Dieses Profil beschreibt eine Nuklearmedizinische in der Onkologie. |
| [ MII PR Onkologie Studienteilnahme  ](StructureDefinition-mii-pr-onko-studienteilnahme.md) | Dieses Profil beschreibt Studienteilnahmen in der Onkologie |
| [ MII PR Onkologie Systemische Therapie  ](StructureDefinition-mii-pr-onko-systemische-therapie.md) | Systemische Therapie. Dieses Profil beschreibt eine Systemische Therapie für den oBDS. Da die Granularität der Anforderungen des oBDS nicht deckungsgleich mit den FHIR-Profilen für Medikation sind, wurde die Systemische Therapie als Prozedur umgesetzt |
| [ MII PR Onkologie Systemische Therapie Medikation  ](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) | Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden. Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. |
| [ MII PR Onkologie TNM L-Kategorie  ](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md) | TNM-Klassifikation: TNM L-Kategorie. Lymphgefäßinvasion. |
| [ MII PR Onkologie TNM M-Kategorie  ](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md) | TNM-Klassifikation: TNM M-Kategorie. Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM. |
| [ MII PR Onkologie TNM N-Kategorie  ](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md) | TNM-Klassifikation: TNM N-Kategorie. Ausbreitung von regionären Lymphknotenmetastasen, erfolgt gemäß Tumorentität nach TNM. |
| [ MII PR Onkologie TNM Pn-Kategorie  ](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md) | TNM-Klassifikation: TNM Pn-Kategorie. Perineuralinvasion. |
| [ MII PR Onkologie TNM S-Kategorie  ](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md) | TNM-Klassifikation: TNM S-Kategorie. Serumtumormarker. |
| [ MII PR Onkologie TNM T-Kategorie  ](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md) | TNM-Klassifikation: TNM T-Kategorie. Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM. |
| [ MII PR Onkologie TNM V-Kategorie  ](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md) | TNM-Klassifikation: TNM V-Kategorie. Veneninvasion. |
| [ MII PR Onkologie TNM a-Symbol  ](StructureDefinition-mii-pr-onko-tnm-a-symbol.md) | DEPRECATED seit v2027: Die eigenständigen Symbol-Profile sind abgelöst — das a-Symbol wird als modifierExtension an den T-/N-/M-Kategorien erfasst (oBDS 8.3–8.5). Dieses Profil bleibt zum Lesen von Bestandsdaten definiert. — TNM-Klassifikation: TNM a-Symbol. Gibt an, ob die Klassifikation aus Anlass einer Autopsie erfolgte. |
| [ MII PR Onkologie TNM m-Symbol  ](StructureDefinition-mii-pr-onko-tnm-m-symbol.md) | DEPRECATED seit v2027: Die Angabe multipler Primärtumoren (UICC-m-Suffix, oBDS 8.10) erfolgt jetzt als Component multipleTumoren an der T-Kategorie (mii-pr-onko-tnm-t-kategorie) — das Suffix ist T-exklusiv und gehört an die Kategorie, nicht als eigene Observation daneben. Bestandsdaten bleiben lesbar; für Neuimplementierungen ist die Component zu verwenden. Ursprüngliche Beschreibung: TNM-Klassifikation: TNM m-Symbol. Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk. |
| [ MII PR Onkologie TNM r-Symbol  ](StructureDefinition-mii-pr-onko-tnm-r-symbol.md) | DEPRECATED seit v2027: Die eigenständigen Symbol-Profile sind abgelöst — das r-Symbol wird als modifierExtension an den T-/N-/M-Kategorien erfasst (oBDS 8.3–8.5). Dieses Profil bleibt zum Lesen von Bestandsdaten definiert. — TNM-Klassifikation: TNM r-Symbol. Gibt an, ob die Klassifikation ein Rezidiv beurteilt. |
| [ MII PR Onkologie TNM y-Symbol  ](StructureDefinition-mii-pr-onko-tnm-y-symbol.md) | DEPRECATED seit v2027: Die eigenständigen Symbol-Profile sind abgelöst — das y-Symbol wird als modifierExtension an den T-/N-/M-Kategorien erfasst (oBDS 8.3–8.5). Dieses Profil bleibt zum Lesen von Bestandsdaten definiert. — TNM-Klassifikation: TNM y-Symbol. Gibt an, ob die Klassifikation während oder nach initialer multimodaler Therapie erfolgte. |
| [ MII PR Onkologie TNM-Klassifikation  ](StructureDefinition-mii-pr-onko-tnm-klassifikation.md) | TNM-Klassifikation: Grouper-Profil für Komponenten der TNM-Klassifikation. |
| [ MII PR Onkologie TNM-Klassifikation (synthetisiert)  ](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md) | Synthetisierte TNM-Klassifikation: Aggregat aus mehreren Meldungs-bezogenen TNM-Klassifikationen, das den Stand zum Entscheidungszeitpunkt (z. B. Tumorkonferenz) zusammenfasst. UICC-Regeln zur Stage-Auswahl (pTNM > cTNM, jüngste Bewertung innerhalb derselben Krankheitsphase, r-Präfix als Bruchpunkt) werden vom erzeugenden System angewendet. Provenienz wird über derivedFrom auf die Quell-Klassifikationen abgebildet. |
| [ MII PR Onkologie Therapieempfehlung Kombinationstherapie  ](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md) | Dieses Profil beschreibt eine Empfehlung für eine Kombinationstherapie im Rahmen der Tumorkonferenz |
| [ MII PR Onkologie Therapieempfehlung Medikation  ](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md) | Dieses Profil beschreibt eine Medikations-Tumorempfehlung |
| [ MII PR Onkologie Therapieempfehlung Operation  ](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.md) | Dieses Profil beschreibt eine Empfehlung für eine Operation im Rahmen der Tumorkonferenz |
| [ MII PR Onkologie Tod  ](StructureDefinition-mii-pr-onko-tod.md) | Tumorbedingter Tod |
| [ MII PR Onkologie Tumorgröße  ](StructureDefinition-mii-pr-onko-tumorgroesse.md) | Tumorgröße in mm. Gibt die Größe des Tumors in der größten Dimension an. Basierend auf dem oBDS-Modul Mamma. |
| [ MII PR Onkologie Tumorkonferenz  ](StructureDefinition-mii-pr-onko-tumorkonferenz.md) | Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen |
| [ MII PR Onkologie Tumormarker  ](StructureDefinition-mii-pr-onko-tumormarker.md) | Tumormarker-Bestimmung im Rahmen einer onkologischen Erkrankung. Das Profil leitet vom Laboruntersuchungs-Profil des KDS-Moduls Laborbefund ab und schraenkt den LOINC-Code auf die kuratierte Tumormarker-Liste ein (extensible). Fachlicher Hintergrund und die Zuordnung Marker zu zulaessiger ICD-O-Morphologie nach ENCR Table 4: siehe IG-Seite Tumormarker. |
| [ MII PR Onkologie Verlauf  ](StructureDefinition-mii-pr-onko-verlauf.md) | Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen |
| [ MII PR Onkologie Weitere Klassifikationen  ](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md) | Weitere Tumor Staging Klassifikation neben TMN (Hämatoonkologische und sonstige Klassifikationen) |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EX Onko Histology Morphology Behavior ICDO3  ](StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.md) | Extension zur Erfassung von ICDO3 da Morphology nicht als Condition.code. Orientiert sich an mcode-stu3.0. |
| [ MII EX Onko Operation Intention  ](StructureDefinition-mii-ex-onko-operation-intention.md) | Intention der Operation im Rahmen des oBDS |
| [ MII EX Onko Operation Urgency  ](StructureDefinition-mii-ex-onko-operation-urgency.md) | Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6) |
| [ MII EX Onko Strahlentherapie Bestrahlung Boost  ](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost.md) | Strahlentherapie: Boost einer Bestrahlung |
| [ MII EX Onko Strahlentherapie Bestrahlung Einzeldosis  ](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.md) | Strahlentherapie: Einzeldosis einer Bestrahlung |
| [ MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis  ](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis.md) | Strahlentherapie: Gesamtdosis einer Bestrahlung |
| [ MII EX Onko Strahlentherapie Bestrahlung Seitenlokalisation  ](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation.md) | Strahlentherapie: Seitenlokalisation einer Bestrahlung |
| [ MII EX Onko Strahlentherapie Intention  ](StructureDefinition-mii-ex-onko-strahlentherapie-intention.md) | Strahlentherapie Intention |
| [ MII EX Onko Strahlentherapie Stellung zur OP  ](StructureDefinition-mii-ex-onko-strahlentherapie-stellungzurop.md) | Strahlentherapie Stellung zur OP |
| [ MII EX Onko Systemische Therapie Intention  ](StructureDefinition-mii-ex-onko-systemische-therapie-intention.md) | Systemische Therapie Intention |
| [ MII EX Onko Systemische Therapie Stellung zur OP  ](StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop.md) | Systemische Therapie Stellung zur OP |
| [ MII EX Onkologie Nebenwirkung CTCAE-Version  ](StructureDefinition-mii-ex-onko-nebenwirkung-ctcae-version.md) | Version des CTCAE-Katalogs, aus dem die Nebenwirkungsart stammt (oBDS 15.3). Nicht zu verwechseln mit der MedDRA-Version in event.coding[meddra].version: Die CTCAE fuehrt ihre Terme mit MedDRA-Codes, CTCAE v4.03 basiert auf MedDRA v12.0. |
| [ MII EX Onkologie TNM ITC Suffix  ](StructureDefinition-mii-ex-onko-tnm-itc-suffix.md) | Die Extension verleiht TNM N- und M-Kategorien isolierte Tumorzellen (ITC) Suffixe. |
| [ MII EX Onkologie TNM SN Suffix  ](StructureDefinition-mii-ex-onko-tnm-sn-suffix.md) | Die Extension verleiht der TNM N-Kategorie das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix. |
| [ MII EX Onkologie TNM a-Präfix  ](StructureDefinition-mii-ex-onko-tnm-a-praefix.md) | Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung erst im Rahmen einer Autopsie erfolgte (UICC a-Präfix). Als modifierExtension zu verwenden, da das a-Präfix die Interpretation des Kategorie-Wertes verändert. |
| [ MII EX Onkologie TNM c/p Präfix  ](StructureDefinition-mii-ex-onko-tnm-cp-praefix.md) | Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation. |
| [ MII EX Onkologie TNM r-Präfix  ](StructureDefinition-mii-ex-onko-tnm-r-praefix.md) | Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung zur Beurteilung eines Rezidivs erfolgte (UICC r-Präfix, z. B. rcT2). Als modifierExtension zu verwenden, da das r-Präfix die Interpretation des Kategorie-Wertes verändert. |
| [ MII EX Onkologie TNM y-Präfix  ](StructureDefinition-mii-ex-onko-tnm-y-praefix.md) | Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung während oder nach initialer multimodaler Therapie erfolgte (UICC y-Präfix, z. B. ycT2, ypN0). Als modifierExtension zu verwenden, da das y-Präfix die Interpretation des Kategorie-Wertes verändert. |
| [ MII EX Onkologie Transformation von  ](StructureDefinition-mii-ex-onko-transformation-von.md) | Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist — für Fälle, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen) und von der CUP-Auflösung nach der Best-Of-Regel, bei der dieselbe Entität aktualisiert wird (keine zweite Ressource). |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII VS Onko Melanom Exzision SNOMED CT  ](ValueSet-mii-vs-onko-melanom-exzision-snomedct.md) | Value Set für Melanom-spezifische Exzisionen basierend auf SNOMED CT. Enthält den Code für Melanom-Exzision. Weitere anatomische Details können über bodySite kodiert werden. |
| [ MII VS Onko Prostata Operation SNOMED CT  ](ValueSet-mii-vs-onko-prostata-operation-snomedct.md) | 
| | |
| :--- | :--- |
| Value Set für Prostata-spezifische Operationen basierend auf SNOMED CT. Enthält alle Kinder von 118877007 | Procedure on prostate (procedure) |
 |
| [ MII VS Onko Prostata PSA LOINC  ](ValueSet-mii-vs-onko-prostata-psa-loinc.md) | Value Set für Prostata-spezifisches Antigen (PSA) LOINC Codes. Enthält LOINC Codes für Total-PSA und freies PSA, exkludiert gebundenes PSA Messungen. |
| [ MII VS Onkologie ASA LOINC  ](ValueSet-mii-vs-onko-asa-loinc.md) | Value Set für LOINC ASA Physical Status Classification (generalisiert für alle onkologischen Indikationen) |
| [ MII VS Onkologie ASA oBDS  ](ValueSet-mii-vs-onko-asa-obds.md) | Value Set für oBDS ASA-Klassifikation (ursprünglich KR9 aus Kolorektales Karzinom Modul, generalisiert für alle onkologischen Indikationen) |
| [ MII VS Onkologie Allgemeiner Leistungszustand ECOG LOINC  ](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog-loinc.md) | LOINC-Answer-Codes für den ECOG Performance Status. Enumerierte Fassung der LOINC-Answer-List LL529-9. |
| [ MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC  ](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc.md) | LOINC-Answer-Codes für den Karnofsky Performance Status. Enumerierte Fassung der LOINC-Answer-List LL4986-7. |
| [ MII VS Onkologie Allgemeiner Leistungszustand nach ECOG  ](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog.md) | Value Set für oBDS-Codes für den Allgemeinen Leistungszustand nach ECOG |
| [ MII VS Onkologie Allgemeiner Leistungszustand nach Karnofsky  ](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-karnofsky.md) | Value Set für oBDS-Codes für den Allgemeinen Leistungszustand nach Karnofsky |
| [ MII VS Onkologie Beurteilung des lokalen Residualstatus  ](ValueSet-mii-vs-onko-beurteilung-lokaler-residualstatus.md) | Value Set für oBDS-Codes für die Beurteilung des lokalen Residualstatus |
| [ MII VS Onkologie Fernmetastasen  ](ValueSet-mii-vs-onko-fernmetastasen.md) | Value Set für oBDS-Codes für Fernmetastasen |
| [ MII VS Onkologie Gesamtbeurteilung des Residualstatus  ](ValueSet-mii-vs-onko-gesamtbeurteilung-residualstatus.md) | Value Set für oBDS-Codes für die Gesamtbeurteilung des Residualstatus |
| [ MII VS Onkologie Grading  ](ValueSet-mii-vs-onko-grading.md) | Codes für Histologie Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an. |
| [ MII VS Onkologie ICD-10-GM Meldepflichtige Tumoren  ](ValueSet-mii-vs-onko-icd10-meldepflichtige-tumoren.md) | ICD-10-GM-Codes der nach KFRG/§65c krebsregister-meldepflichtigen Neubildungen: bösartige Neubildungen (C00-C97), In-situ-Neubildungen (D00-D09), gutartige Neubildungen der Meningen, des Gehirns/ZNS und intrakranieller endokriner Strukturen (D32, D33, D35.2-D35.4) sowie Neubildungen unsicheren oder unbekannten Verhaltens (D37-D48, einschließlich hämatologischer Entitäten D45-D47). |
| [ MII VS Onkologie ICD-O-3 Morphologie  ](ValueSet-mii-vs-onko-icdo3-morphologie.md) | Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung |
| [ MII VS Onkologie ICD-O-3 Morphologie 2014  ](ValueSet-mii-vs-onko-icdo3-morphologie-2014.md) | Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung gemäß ICD-O-3 Erste Revision (deutsche Ausgabe 2014). |
| [ MII VS Onkologie ICD-O-3 Morphologie 2019  ](ValueSet-mii-vs-onko-icdo3-morphologie-2019.md) | Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung gemäß ICD-O-3 Zweite Revision (deutsche Ausgabe 2019). |
| [ MII VS Onkologie ICD-O-3 Topographie  ](ValueSet-mii-vs-onko-icdo3-topographie.md) | Codes für Topographie einer neoplastischen Veränderung |
| [ MII VS Onkologie ICD-O-3 Topographie 2014  ](ValueSet-mii-vs-onko-icdo3-topographie-2014.md) | Codes für die Topographie einer neoplastischen Veränderung gemäß ICD-O-3 Erste Revision (deutsche Ausgabe 2014). |
| [ MII VS Onkologie ICD-O-3 Topographie 2019  ](ValueSet-mii-vs-onko-icdo3-topographie-2019.md) | Codes für die Topographie einer neoplastischen Veränderung gemäß ICD-O-3 Zweite Revision (deutsche Ausgabe 2019). |
| [ MII VS Onkologie IGHV-Gensegmente HGNC  ](ValueSet-mii-vs-onko-ighv-gensegmente-hgnc.md) | Alle IGHV-Gensegmente (Immunglobulin-Schwerketten-V-Region) als HGNC-Gen-IDs. Auswahlunterstuetzung fuer die Angabe des rearrangierten V-Segments in Observation.component:gene-studied — insbesondere bei der chronischen lymphatischen Leukaemie, wo einzelne Segmente wie IGHV3-21 eigene prognostische Bedeutung haben. Ob das Segment mutiert oder unmutiert ist, wird nicht hier, sondern ueber die Auspraegung der Varianten-Observation abgebildet (oBDS M = Mutation, W = Wildtyp). |
| [ MII VS Onkologie KDL Dokumentklassen  ](ValueSet-mii-vs-onko-kdl-dokumentklassen.md) | Kuratierte Auswahl der KDL-Dokumentklassen (KDL 2025) entlang des onkologischen Behandlungspfads (oBDS-Kapitel: Diagnose/Pathologie, Staging-Bildgebung, Tumorkonferenz, Operation, Strahlentherapie, Systemische Therapie, Verlauf/Labor, Tod, Studien, übergreifende Dokumente) als Begleitartefakt für DocumentReference.type. Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument; deprecated-Klassen sind ausgeschlossen. |
| [ MII VS Onkologie KRK Abstand Circumferelle Resektionsrand  ](ValueSet-mii-vs-onko-krk-abstand-circumferelle-resektionsrand.md) | Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur circumferellen Resektionsrand im Kolorektalen Karzinom |
| [ MII VS Onkologie KRK Abstand Resektionslinie Aboral  ](ValueSet-mii-vs-onko-krk-abstand-resektionslinie-aboral.md) | Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur aboralen Resektionslinie im Kolorektalen Karzinom |
| [ MII VS Onkologie KRK Anastomoseninsuffizienz  ](ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.md) | Value Set für die Bewertung der Anastomoseninsuffizienz beim Kolorektalen Karzinom |
| [ MII VS Onkologie KRK MRT Mesorektale Faszie Status  ](ValueSet-mii-vs-onko-krk-mrt-mesorektale-faszie-status.md) | Value Set für semantische Kodierung des oBDS-Status der MRT/CT Untersuchung zur mesorektalen Faszie beim Kolorektalen Karzinom (KR5) |
| [ MII VS Onkologie KRK Stoma Anzeichnung  ](ValueSet-mii-vs-onko-krk-stoma-anzeichnung.md) | Value Set für semantische Kodierung der oBDS-präoperativen Stoma-Anzeichnung beim Rektumkarzinom |
| [ MII VS Onkologie KRK Stoma Status Reason  ](ValueSet-mii-vs-onko-krk-stoma-status-reason.md) | Value Set für SNOMED CT Codes zur Begründung des Status der präoperativen Stoma-Anzeichnung |
| [ MII VS Onkologie KRK TME Qualität  ](ValueSet-mii-vs-onko-krk-tme-qualitaet.md) | Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur aboralen Resektionslinie im Kolorektalen Karzinom |
| [ MII VS Onkologie Krebsprädispositionsgene HGNC  ](ValueSet-mii-vs-onko-praedispositionsgene-hgnc.md) | Krebsprädispositionsgene der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als HGNC-Gen-IDs, inkl. Expansion der Sammel-Einträge (FANCA-FANCW, IDH1/2, XP-Komplementationsgruppen). Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker). Zytogenetische Aberrationen der Quell-Liste (11p13/11p15, Trisomien, ETV-RUNX1-Fusion) sind keine Gene und hier nicht enthalten. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich. |
| [ MII VS Onkologie Krebsprädispositionssyndrome ORPHA  ](ValueSet-mii-vs-onko-praedispositionssyndrome-orpha.md) | Krebsprädispositionssyndrome der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als Orphanet-Codes. Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker); 15 genspezifische Prädispositionen der Quell-Liste haben kein Orphanet-Konzept und sind über das Gen-ValueSet mii-vs-onko-praedispositionsgene-hgnc adressierbar. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich. |
| [ MII VS Onkologie Körperstruktur (SNOMED CT)  ](ValueSet-mii-vs-onko-koerperstruktur-sct.md) | SNOMED CT Körperstrukturen (Body structure) zur optionalen exakten Lokalisationsangabe (z.B. bei Fernmetastasen). |
| [ MII VS Onkologie Mamma Färbeintensität  ](ValueSet-mii-vs-onko-mamma-faerbeintensitaet.md) | Färbeintensität der immunhistochemischen Rezeptorbestimmung (Weak, Moderate, Strong). Enumerierte Fassung der LOINC-Answer-List LL4358-9. |
| [ MII VS Onkologie Mamma Her2neu IHC Score  ](ValueSet-mii-vs-onko-mamma-her2neu-ihc-score.md) | HER2-Score der Immunhistochemie (0, 1+, 2+, 3+, Indeterminate). Enumerierte Fassung der LOINC-Answer-List LL4396-9. |
| [ MII VS Onkologie Mamma Her2neu Status Leitlinie  ](ValueSet-mii-vs-onko-mamma-her2neu-status-leitlinie.md) | Value Set für Her2neu Status nach S3-Leitlinie und ASCO/CAP Guidelines |
| [ MII VS Onkologie Mamma Her2neu Status oBDS  ](ValueSet-mii-vs-onko-mamma-her2neu-status-obds.md) | Value Set für Her2neu Status nach oBDS |
| [ MII VS Onkologie Mamma ISH Ergebnis  ](ValueSet-mii-vs-onko-mamma-ish-ergebnis.md) | Ergebnis der In-situ-Hybridisierung (ISH/FISH): Positive, Negative, Equivocal (LOINC-Answer-Codes). |
| [ MII VS Onkologie Mamma Intraoperatives Imaging Präparat  ](ValueSet-mii-vs-onko-mamma-intraoperatives-imaging-praeparat.md) | Value Set für intraoperatives Imaging des Präparats nach Exzision bei Mamma-Karzinom |
| [ MII VS Onkologie Mamma Menopause Status  ](ValueSet-mii-vs-onko-mamma-menopause-status.md) | Value Set für (prätherapeutischen) Status der Menopause Score |
| [ MII VS Onkologie Mamma Operation OPS  ](ValueSet-mii-vs-onko-mamma-operation-ops.md) | Value Set für Mamma-Operationen basierend auf OPS |
| [ MII VS Onkologie Mamma Operation SNOMED CT  ](ValueSet-mii-vs-onko-mamma-operation-sct.md) | Value Set für Mamma-Operationen basierend auf SNOMED CT |
| [ MII VS Onkologie Mamma Präoperative Markierung Modalität  ](ValueSet-mii-vs-onko-mamma-praeoperative-markierung-modalitaet.md) | Value Set für Imagingmodalität der präoperativen Markierung bei Mamma-Karzinom |
| [ MII VS Onkologie Mamma Rezeptorstatus Leitlinie  ](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.md) | Value Set für oBDS-Rezeptorstatus Mamma |
| [ MII VS Onkologie Mamma Rezeptorstatus oBDS  ](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.md) | Value Set für oBDS-Rezeptorstatus Mamma |
| [ MII VS Onkologie Marker-Gene HGNC  ](ValueSet-mii-vs-onko-marker-gene-hgnc.md) | Gensymbole der onkologisch gebraeuchlichen Marker-Gene aus der Genetik-Markerliste der §65c-Plattform, als HGNC-Gen-IDs. Auswahlunterstuetzung fuer Observation.component:gene-studied im Profil MII_PR_Onko_Genetische_Variante (extensible gebunden — weitere Gene sind zulaessig). Nicht-Gene der Quellliste (IHC-Marker, zytogenetische Aberrationen) sind bewusst ausgeschlossen; siehe die Kommentare in der FSH-Quelle und die IG-Seite zu den Variantentypen. |
| [ MII VS Onkologie Melanom LDH  ](ValueSet-mii-vs-onko-melanom-ldh.md) | Value Set für Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom |
| [ MII VS Onkologie Melanom Ulzeration  ](ValueSet-mii-vs-onko-melanom-ulzeration.md) | Codes für die Ulzeration beim Malignen Melanom der Haut |
| [ MII VS Onkologie Nebenwirkung CTCAE-Version  ](ValueSet-mii-vs-onko-nebenwirkung-ctcae-version.md) | Versionsbezeichnungen des CTCAE-Katalogs nach oBDS 15.3. |
| [ MII VS Onkologie Nebenwirkung nach CTCAE Art  ](ValueSet-mii-vs-onko-nebenwirkung-art.md) | Alle MedDRA-Codes der CTCAE v4.03 (Art der Nebenwirkung). Deutsche/englische Displays via CodeSystem-Supplements mii-cs-onko-nebenwirkung-meddra-de/-en. |
| [ MII VS Onkologie Nebenwirkung nach CTCAE Grad  ](ValueSet-mii-vs-onko-nebenwirkung-ctcae-grad.md) | oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE-Grad |
| [ MII VS Onkologie OPS Nuklearmedizin  ](ValueSet-mii-vs-onko-ops-nuklearmedizin.md) | OPS-Codes für Nuklearmedizinische Therapie |
| [ MII VS Onkologie OPS Strahlentherapie  ](ValueSet-mii-vs-onko-ops-strahlentherapie.md) | OPS-Codes für Strahlentherapie |
| [ MII VS Onkologie Operation Intention  ](ValueSet-mii-vs-onko-operation-intention.md) | Value Set für oBDS-Codes für Klassifikation von Intention der OP |
| [ MII VS Onkologie Operation Komplikationen  ](ValueSet-mii-vs-onko-operation-komplikation.md) | Value Set für oBDS-Codes für Klassifikation von Komplikationen während der OP |
| [ MII VS Onkologie Operation Urgency  ](ValueSet-mii-vs-onko-operation-urgency.md) | Value Set für semantische Kodierung der oBDS-Modalität der Eingriffsdurchführung (Art des Eingriffs KR6) |
| [ MII VS Onkologie Primärtumor Diagnosesicherung  ](ValueSet-mii-vs-onko-primaertumor-diagnosesicherung.md) | Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose. |
| [ MII VS Onkologie Primärtumor Seitenlokalisation  ](ValueSet-mii-vs-onko-seitenlokalisation.md) | Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite. |
| [ MII VS Onkologie Prostata Clavien Dindo  ](ValueSet-mii-vs-onko-prostata-clavien-dindo.md) | Value Set für Gleason Score |
| [ MII VS Onkologie Prostata Gleason Pattern LOINC  ](ValueSet-mii-vs-onko-prostata-gleason-pattern-loinc.md) | Value Set der LOINC-Codes für Primär-, Sekundär- und Tertiär-Gleason-Pattern. Dient als optionale LOINC-Zweitkodierung zum verpflichtenden SNOMED-CT-Slice im Profil MII_PR_Onko_Prostata_Gleason_Pattern (GitHub-Issue #259). |
| [ MII VS Onkologie Prostata Gleason Patterns  ](ValueSet-mii-vs-onko-prostata-gleason-patterns.md) | Value Set für die histopathologische Bewertung von Prostata-Adenokarzinomen mittels Gleason-Patterns. Dieser Value Set wird verwendet, um die verschiedenen Gleason-Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können. |
| [ MII VS Onkologie Prostata Gleason Primary Secondary Tertiary  ](ValueSet-mii-vs-onko-prostata-gleason-primary-secondary-tertiary.md) | Value Set für Primär-, Sekundär- und Tertiär-Gleason Patterns in der Onkologie Prostata. Der häufigste Gleason Pattern wird als primär, der zweithäufigste als sekundär und (seltener, meistens bei Gleason Pattern 5) der dritthäufigste als tertiär bezeichnet. Diese Value Set wird verwendet, um die verschiedenen Gleason Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können. |
| [ MII VS Onkologie Prostata Gleason Score  ](ValueSet-mii-vs-onko-prostata-gleason-score.md) | Value Set für den Gleason Score in Kombination mit der ISUP Grade Group. Da ISUP Grade Groups erst ab einem Gleason-Gesamtscore von 6 definiert sind, deckt dieses Value Set nur Scores >= 6 ab. Liegt nur das Score-Ergebnis ohne Grade Group vor oder ein Gesamtscore < 6, ist MII_VS_Onko_Prostata_Gleason_Score_Gesamt zu verwenden. |
| [ MII VS Onkologie Prostata Gleason Score Gesamt  ](ValueSet-mii-vs-onko-prostata-gleason-score-gesamt.md) | Value Set für den Gleason-Gesamtscore (Summe aus primärem und sekundärem Pattern) ohne Aufschlüsselung in Primär-/Sekundär-Pattern. Enthält die Scores 2 bis 10 aus der SNOMED-CT-Hierarchie unterhalb von 385377005 (Gleason grade finding for prostatic cancer). Damit sind auch Gesamtscores < 6 abbildbar, wie sie bei TURP-Material und in historischen Befunden vorkommen. Ein Gesamtscore 1 existiert nicht, da sich der Score aus zwei Patterns mit Werten ab 1 zusammensetzt. Die ISUP Grade Groups sind bewusst nicht enthalten; sie werden über MII_VS_Onko_Prostata_Gleason_Score abgebildet. |
| [ MII VS Onkologie Prostata Postsurgical Complications  ](ValueSet-mii-vs-onko-prostata-postsurgical-complications.md) | Value Set für Clavien-Dindo Klassifikation |
| [ MII VS Onkologie Strahlentherapie Applikationsart  ](ValueSet-mii-vs-onko-strahlentherapie-applikationsart.md) | oBDS-spezifisches Codesystem für Klassifikation von Applikationsart der Strahlentherapie |
| [ MII VS Onkologie Strahlentherapie Boost  ](ValueSet-mii-vs-onko-strahlentherapie-boost.md) | oBDS-spezifisches ValueSet für Klassifikation von Boosts bei Strahlentherapie |
| [ MII VS Onkologie Strahlentherapie Ende Grund  ](ValueSet-mii-vs-onko-strahlentherapie-ende-grund.md) | oBDS-spezifisches ValueSet für Klassifikation des Grundes der Beendigung der Strahlentherapie |
| [ MII VS Onkologie Strahlentherapie Intention  ](ValueSet-mii-vs-onko-strahlentherapie-intention.md) | Value Set für oBDS-Codes für Klassifikation von Intention der Strahlentherapie |
| [ MII VS Onkologie Strahlentherapie Stellung zur OP  ](ValueSet-mii-vs-onko-strahlentherapie-stellungzurop.md) | oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP |
| [ MII VS Onkologie Strahlentherapie Strahlenart  ](ValueSet-mii-vs-onko-strahlentherapie-strahlenart.md) | oBDS-spezifisches ValueSet für Klassifikation von Strahlenart bei Strahlentherapie |
| [ MII VS Onkologie Strahlentherapie Strahlungseinheit  ](ValueSet-mii-vs-onko-strahlentherapie-strahlungseinheit.md) | oBDS-spezifisches ValueSet für Strahlungseinheit en für Strahlen- und Nuklearmedizinische Therapie |
| [ MII VS Onkologie Strahlentherapie Zielgebiet  ](ValueSet-mii-vs-onko-strahlentherapie-zielgebiet.md) | oBDS-spezifisches ValueSet für Klassifikation von Zielgebiet bei Strahlentherapie - unterstützt sowohl oBDS 2021 als auch oBDS 2014 Legacy-Codes |
| [ MII VS Onkologie Studienteilnahme  ](ValueSet-mii-vs-onko-studienteilnahme.md) | Value Set für oBDS-Codes des Studienteilnahme Status |
| [ MII VS Onkologie Systemische Therapie Art  ](ValueSet-mii-vs-onko-systemische-therapie-art.md) | oBDS-spezifisches ValueSet für Klassifikation der Art der systemischen oder abwartenden Therapie |
| [ MII VS Onkologie Systemische Therapie Ende Grund  ](ValueSet-mii-vs-onko-systemische-therapie-ende-grund.md) | oBDS-spezifisches ValueSet für Klassifikation des Grundes der Beendigung der Systemischen Therapie |
| [ MII VS Onkologie Systemische Therapie Intention  ](ValueSet-mii-vs-onko-systemische-therapie-intention.md) | Value Set für oBDS-Codes für Klassifikation von Intention der Systemischen Therapie |
| [ MII VS Onkologie Systemische Therapie Protokolle  ](ValueSet-mii-vs-onko-systemische-therapie-protokolle.md) | oBDS-spezifisches ValueSet für Protokolle systemischer Therapien |
| [ MII VS Onkologie Systemische Therapie Stellung  ](ValueSet-mii-vs-onko-systemische-therapie-stellungzurop.md) | oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP |
| [ MII VS Onkologie Systemische Therapie Substanzen  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen.md) | Validierte ATC-Codes für Substanzen der systemischen Therapie basierend auf oBDS Umsetzungsleitfaden. Automatisch generiert und gegen MII-Terminologieserver validiert. |
| [ MII VS Onkologie Systemische Therapie Substanzen (UNII)  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-unii.md) | UNII-Codes für Substanzen der systemischen Therapie ohne ATC-Code. Ergänzung zum ATC-basierten Haupt-ValueSet für neuere und experimentelle onkologische Wirkstoffe. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2018  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2018.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2018. Für historische Datenvalidierung. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2019  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2019.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2019. Für historische Datenvalidierung. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2020  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2020.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2020. Für historische Datenvalidierung. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2021  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2021.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2021. Für historische Datenvalidierung. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2022  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2022.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2022. Für historische Datenvalidierung. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2023  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2023.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2023. Für historische Datenvalidierung. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2024  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2024.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2024. Für historische Datenvalidierung. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2025  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2025.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2025. Für historische Datenvalidierung. |
| [ MII VS Onkologie Systemische Therapie Substanzen ATC 2026  ](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2026.md) | ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2026. Für historische Datenvalidierung. |
| [ MII VS Onkologie TNM ITC Suffix  ](ValueSet-mii-vs-onko-tnm-itc-suffix.md) | Das ValueSet enthält die isolierten Tumorzellen (ITC) Suffixe für die N- und M-Kategorien aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM Klassifikation Typ  ](ValueSet-mii-vs-onko-tnm-klassifikation-typ.md) | Codes für TNM-Klassifikation Typ. Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte. |
| [ MII VS Onkologie TNM L Kategorie Werte  ](ValueSet-mii-vs-onko-tnm-l-kategorie-werte.md) | Das ValueSet enthält die TNM Codes für die Beurteilung der Lymphgefäßinvasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM M Kategorie  ](ValueSet-mii-vs-onko-tnm-m-kategorie.md) | Codes für Codes zur Differenzierung der TNM M-Kategorie als entweder klinisch (cN) oder pathologisch (pN) |
| [ MII VS Onkologie TNM M Kategorie Werte  ](ValueSet-mii-vs-onko-tnm-m-kategorie-werte.md) | Das ValueSet enthält die TNM M-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM M Kategorie Werte SNOMED CT  ](ValueSet-mii-vs-onko-tnm-m-kategorie-werte-sct.md) | SNOMED CT Codes für die TNM M-Kategorie (alle Präfix-Kombinationen: cM, pM, rcM, rpM). |
| [ MII VS Onkologie TNM N Kategorie  ](ValueSet-mii-vs-onko-tnm-n-kategorie.md) | Codes für Codes zur Differenzierung der TNM N-Kategorie als entweder klinisch (cN) oder pathologisch (pN) |
| [ MII VS Onkologie TNM N Kategorie Werte  ](ValueSet-mii-vs-onko-tnm-n-kategorie-werte.md) | Das ValueSet enthält die TNM N-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM N Kategorie Werte SNOMED CT  ](ValueSet-mii-vs-onko-tnm-n-kategorie-werte-sct.md) | SNOMED CT Codes für die TNM N-Kategorie (alle Präfix-Kombinationen: cN, pN, ycN, ypN, rcN, rpN). |
| [ MII VS Onkologie TNM Pn Kategorie Werte  ](ValueSet-mii-vs-onko-tnm-pn-kategorie-werte.md) | Das ValueSet enthält die TNM Codes für den Grad der perineuralen Invasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM S Kategorie Werte  ](ValueSet-mii-vs-onko-tnm-s-kategorie-werte.md) | Das ValueSet enthält die TNM Codes für Serumtumormarker aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM SN Suffix  ](ValueSet-mii-vs-onko-tnm-sn-suffix.md) | Das ValueSet enthält das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix für die N-Kategorie aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM T Kategorie  ](ValueSet-mii-vs-onko-tnm-t-kategorie.md) | Codes für Codes zur Differenzierung der TNM T-Kategorie als entweder klinisch (cT) oder pathologisch (pT) |
| [ MII VS Onkologie TNM T Kategorie Werte  ](ValueSet-mii-vs-onko-tnm-t-kategorie-werte.md) | Das ValueSet enthält die TNM T-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM T Kategorie Werte SNOMED CT  ](ValueSet-mii-vs-onko-tnm-t-kategorie-werte-sct.md) | SNOMED CT Codes für die TNM T-Kategorie (alle Präfix-Kombinationen: cT, pT, ycT, ypT, rcT, rpT). |
| [ MII VS Onkologie TNM UICC Stadium  ](ValueSet-mii-vs-onko-tnm-uicc-stadium.md) | The ValueSet enthält Codes für die TNM-Stadien zur prognostischen Gruppeneinteilung von Patienten. |
| [ MII VS Onkologie TNM V Kategorie Werte  ](ValueSet-mii-vs-onko-tnm-v-kategorie-werte.md) | Das ValueSet enthält die TNM Codes für die Beurteilung der Veneninvasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. |
| [ MII VS Onkologie TNM Version  ](ValueSet-mii-vs-onko-tnm-version.md) | Codes für TNM Version/Auflage nach welcher Version des TNM klassifiziert wird. |
| [ MII VS Onkologie TNM c/p/u Praefix  ](ValueSet-mii-vs-onko-tnm-cp-praefix.md) | Codes für TNM c/p/u-Präfix. Gibt an, ob die Klassifikation klinisch (c), pathologisch (p) oder mittels Ultraschall (u) erfolgte. |
| [ MII VS Onkologie TNM m-Symbol  ](ValueSet-mii-vs-onko-tnm-m-symbol.md) | Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk. |
| [ MII VS Onkologie Therapieabweichung  ](ValueSet-mii-vs-onko-therapieabweichung.md) | oBDS-spezifisches ValueSet für die Therapieabweichung auf Wunsch des Patients. |
| [ MII VS Onkologie Therapieempfehlung Typ  ](ValueSet-mii-vs-onko-therapieempfehlung-typ.md) | oBDS-spezifisches ValueSet für den Therapieempfehlungstyp |
| [ MII VS Onkologie Therapieplanung Typ  ](ValueSet-mii-vs-onko-therapieplanung-typ.md) | oBDS-spezifisches ValueSet für den Therapieplanungstyp |
| [ MII VS Onkologie Tod  ](ValueSet-mii-vs-onko-tod.md) | Value Set für oBDS-Codes turmorbedingter Tod |
| [ MII VS Onkologie Tumormarker LOINC  ](ValueSet-mii-vs-onko-tumormarker-loinc.md) | Kuratierte LOINC-Codes der in der Onkologie gebraeuchlichen Tumormarker (Serum-/Plasma- bzw. Urin-Bestimmungen). Verwendung als Auswahlliste fuer Observation.code im Profil MII_PR_Onko_Tumormarker (Ableitung des KDS-Moduls Laborbefund). Die Liste ist nicht abschliessend gemeint: Weitere Laborwerte werden ueber das KDS-Modul Laborbefund abgebildet. |
| [ MII VS Onkologie Verlauf Fernmetastasen  ](ValueSet-mii-vs-onko-verlauf-fernmetastasen.md) | oBDS-spezifisches ValueSet für die Beurteilung der Fernmetastasen im Behandlungsverlauf |
| [ MII VS Onkologie Verlauf Gesamtbeurteilung  ](ValueSet-mii-vs-onko-verlauf-gesamtbeurteilung.md) | oBDS-spezifisches ValueSet für die Gesamtbeurteilung im Behandlungsverlauf |
| [ MII VS Onkologie Verlauf Lymphknoten  ](ValueSet-mii-vs-onko-verlauf-lymphknoten.md) | oBDS-spezifisches ValueSet für die Beurteilung der Lymphknoten im Behandlungsverlauf |
| [ MII VS Onkologie Verlauf Primärtumor  ](ValueSet-mii-vs-onko-verlauf-primaertumor.md) | oBDS-spezifisches ValueSet für die Beurteilung des Primärtumors im Behandlungsverlauf |
| [ MII Value Set Onkologie - Weitere Klassifikationen  ](ValueSet-mii-vs-onko-weitere-klassifikationen.md) | Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors. |
| [ MII Value Set Onkologie - Weitere Klassifikationen - Auspraegungen  ](ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.md) | Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors. |
| [ MII_VS Onkologie Genetische Variante Ausprägung  ](ValueSet-mii-vs-onko-genetische-variante-auspraegung.md) | Value Set für oBDS-Codes für Ausprägung der Genetischen Variante |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CS Onko Nebenwirkung MedDRA Deutsch (Supplement)  ](CodeSystem-mii-cs-onko-nebenwirkung-meddra-de.md) | Deutschsprachiges CodeSystem-Supplement für MedDRA-Codes der CTCAE v4.03 Nebenwirkungen. Quelle: §65c-Plattform / Krebsregister-Liste (Deutsche Übersetzung CTCAE Version 4). |
| [ MII CS Onko Nebenwirkung nach CTCAE-Grad  ](CodeSystem-mii-cs-onko-nebenwirkung-ctcae-grad.md) | Gibt an, zu welchem Schweregrad von Nebenwirkungen es bei der Bestrahlung oder der systemischen Therapie gekommen ist. |
| [ MII CS Onko Therapie Typ  ](CodeSystem-mii-cs-onko-therapie-typ.md) | Typ der Therapie |
| [ MII CS Onkologie ASA-Klassifikation oBDS  ](CodeSystem-mii-cs-onko-asa-obds.md) | oBDS-basiertes CodeSystem für ASA-Klassifikation (ursprünglich KR9 aus Kolorektales Karzinom Modul, generalisiert für alle onkologischen Indikationen) |
| [ MII CS Onkologie Allgemeiner Leistungszustand ECOG  ](CodeSystem-mii-cs-onko-allgemeiner-leistungszustand-ecog.md) | oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach ECOG |
| [ MII CS Onkologie Allgemeiner Leistungszustand Karnofsky  ](CodeSystem-mii-cs-onko-allgemeiner-leistungszustand-karnofsky.md) | oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach Karnofsky |
| [ MII CS Onkologie Fernmetastasen  ](CodeSystem-mii-cs-onko-fernmetastasen.md) | oBDS-spezifisches Codesystem für Fernmetastasen, basierend auf Spezifikation durch TNM-Klassifikation |
| [ MII CS Onkologie Genetische Variante Ausprägung  ](CodeSystem-mii-cs-onko-genetische-variante-auspraegung.md) | oBDS-spezifisches Codesystem Konsequenz der genetischen Variante Ausprägung |
| [ MII CS Onkologie Grading  ](CodeSystem-mii-cs-onko-grading.md) | Codes für Histologie Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an. |
| [ MII CS Onkologie Intention  ](CodeSystem-mii-cs-onko-intention.md) | oBDS-spezifisches Codesystem für Klassifikation von Intention der OP, der Strahlentherapie und der Systemischen Therapie. |
| [ MII CS Onkologie KRK Anastomoseninsuffizienz  ](CodeSystem-mii-cs-onko-krk-anastomoseninsuffizienz.md) | oBDS-spezifisches Codesystem für Anastomoseninsuffizienz beim Kolorektalen Karzinom |
| [ MII CS Onkologie KRK MRT Mesorektale Faszie Status  ](CodeSystem-mii-cs-onko-krk-mrt-mesorektale-faszie-status.md) | oBDS-basiertes Codesystem für den Status der MRT/CT Untersuchung zur mesorektalen Faszie beim Kolorektalen Karzinom (KR5) |
| [ MII CS Onkologie KRK Operationstyp  ](CodeSystem-mii-cs-onko-krk-operationstyp.md) | oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v |
| [ MII CS Onkologie KRK Stoma Anzeichnung  ](CodeSystem-mii-cs-onko-krk-stoma-anzeichnung.md) | oBDS-basiertes Codesystem für die präoperative Anzeichnung der Stoma-Position beim Rektumkarzinom |
| [ MII CS Onkologie Mamma Her2neu Status Leitlinie  ](CodeSystem-mii-cs-onko-mamma-her2neu-status-leitlinie.md) | Codesystem für Her2neu Status basierend auf der S3-Leitlinie Mammakarzinom und ASCO/CAP Guidelines mit erweiterten Klassifikationen (HER2-low, HER2-ultralow) |
| [ MII CS Onkologie Mamma Her2neu Status oBDS  ](CodeSystem-mii-cs-onko-mamma-her2neu-status-obds.md) | oBDS-spezifisches Codesystem für Her2neu Status gemäß oBDS Feld M4 (243) |
| [ MII CS Onkologie Mamma Rezeptorstatus  ](CodeSystem-mii-cs-onko-mamma-rezeptorstatus-leitlinie.md) | oBDS-spezifisches Codesystem Mamma-Rezeptorstatus, basierend auf der S3-Leitlinie Mammakarzinom v5.02 Abschnitt 4.5.4 |
| [ MII CS Onkologie Melanom Ulzeration  ](CodeSystem-mii-cs-onko-melanom-ulzeration.md) | Codes für die Ulzeration beim Malignen Melanom der Haut nach oBDS |
| [ MII CS Onkologie Nebenwirkung CTCAE-Version  ](CodeSystem-mii-cs-onko-nebenwirkung-ctcae-version.md) | Versionsbezeichnungen des CTCAE-Katalogs nach oBDS 15.3. Werte gemaess oBDS-XML-Schema (Nebenwirkung/Version). |
| [ MII CS Onkologie Operation Komplikationen  ](CodeSystem-mii-cs-onko-operation-komplikation.md) | oBDS-spezifisches Codesystem für Klassifikation von Komplikationen während der OP |
| [ MII CS Onkologie Operation Urgency  ](CodeSystem-mii-cs-onko-operation-urgency.md) | oBDS-basiertes Codesystem für die Modalität der Eingriffsdurchführung (Art des Eingriffs KR6) |
| [ MII CS Onkologie Primärtumor Diagnosesicherung  ](CodeSystem-mii-cs-onko-primaertumor-diagnosesicherung.md) | Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose. |
| [ MII CS Onkologie Primärtumor Seitenlokalisation  ](CodeSystem-mii-cs-onko-seitenlokalisation.md) | Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite. |
| [ MII CS Onkologie Prostata Postoperative Komplikationen  ](CodeSystem-mii-cs-onko-prostata-postsurgical-complications.md) | CodeSystem zur Darstellung des Vorhandenseins von postoperativen Komplikationen nach Prostatektomie in der Onkologie |
| [ MII CS Onkologie Residualstatus  ](CodeSystem-mii-cs-onko-residualstatus.md) | oBDS-spezifisches Codesystem für R-Klassifikation |
| [ MII CS Onkologie Strahlentherapie Applikationsart  ](CodeSystem-mii-cs-onko-strahlentherapie-applikationsart.md) | oBDS-spezifisches Codesystem für Klassifikation von Intention der OP |
| [ MII CS Onkologie Strahlentherapie Boost  ](CodeSystem-mii-cs-onko-strahlentherapie-boost.md) | oBDS-spezifisches Codesystem für Klassifikation von Strahlentherapie-Boosts |
| [ MII CS Onkologie Strahlentherapie Ende Grund  ](CodeSystem-mii-cs-onko-therapie-ende-grund.md) | oBDS-spezifisches Codesystem für Klassifikation des Grundes der Beendigung der Strahlentherapie oder der systemischen Therapie |
| [ MII CS Onkologie Strahlentherapie Strahlenart  ](CodeSystem-mii-cs-onko-strahlentherapie-strahlenart.md) | oBDS-spezifisches Codesystem für Klassifikation von eingesetzter Strahlenart |
| [ MII CS Onkologie Strahlentherapie Zielgebiet  ](CodeSystem-mii-cs-onko-strahlentherapie-zielgebiet.md) | oBDS-spezifisches Codesystem für Klassifikation von Zielgebiet von Strahlentherapie |
| [ MII CS Onkologie Strahlentherapie Zielgebiet oBDS 2014 (Legacy)  ](CodeSystem-mii-cs-onko-strahlentherapie-zielgebiet-2014.md) | oBDS 2014 Legacy-Codesystem für Klassifikation von Zielgebiet von Strahlentherapie - nur für Datenimport und Migration |
| [ MII CS Onkologie Studienteilnahme  ](CodeSystem-mii-cs-onko-studienteilnahme.md) | oBDS-spezifisches Codesystem den Status der Studienteilnahme |
| [ MII CS Onkologie Systemische Therapie Protokolle  ](CodeSystem-mii-cs-onko-systemische-therapie-protokolle.md) | oBDS-spezifisches Codesystem für Protokolle systemischer Therapien |
| [ MII CS Onkologie TME Qualität  ](CodeSystem-mii-cs-onko-krk-tme-qualitaet.md) | oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v |
| [ MII CS Onkologie TNM Formel  ](CodeSystem-mii-cs-onko-tnm-formel.md) | Codes für die Darstellung der zusammengeführten TNM-Gesamtformel als Component der synthetisierten TNM-Klassifikation. |
| [ MII CS Onkologie TNM UICC  ](CodeSystem-mii-cs-onko-tnm-uicc.md) | Codes für TNM UICC Ausprägungen. HINWEIS zur Auflagen-Versionierung: Dieses CodeSystem ist bewusst eine auflagen-übergreifende Union (8. Auflage + Ergänzungen der 9. Auflage, z.B. T1b3/M1c1/M1c2); die verwendete Auflage wird als eigenes Datenelement (TNM-Version, oBDS 8.2) dokumentiert. Eine formal strengere, auflagen-versionierte Validierung (je Auflage ein CS-/VS-Stand nach dem Muster der ATC-/ICD-O-Jahresversionen) ist als spätere Ausbaustufe vorgesehen. |
| [ MII CS Onkologie TNM Version  ](CodeSystem-mii-cs-onko-tnm-version.md) | Codes für TNM Version/Auflage nach welcher Version des TNM klassifiziert wird. |
| [ MII CS Onkologie Therapie Stellung  ](CodeSystem-mii-cs-onko-therapie-stellungzurop.md) | oBDS-spezifisches Codesystem für Klassifikation von Stellung zur OP |
| [ MII CS Onkologie Therapieabweichung  ](CodeSystem-mii-cs-onko-therapieabweichung.md) | oBDS-spezifisches Codesystem für die Therapieabweichung auf Wunsch des Patients. |
| [ MII CS Onkologie Therapieplanung Typ  ](CodeSystem-mii-cs-onko-therapieplanung-typ.md) | oBDS-spezifisches Codesystem für den Therapieplanungstyp |
| [ MII CS Onkologie Tod  ](CodeSystem-mii-cs-onko-tod.md) | oBDS-spezifisches Codesystem tumorbedingter Tod |
| [ MII CS Onkologie Verlauf Fernmetastasen  ](CodeSystem-mii-cs-onko-verlauf-fernmetastasen.md) | oBDS-spezifisches Codesystem für die Beurteilung von Fernmetastasen im Behandlungsverlauf |
| [ MII CS Onkologie Verlauf Gesamtbeurteilung  ](CodeSystem-mii-cs-onko-verlauf-gesamtbeurteilung.md) | oBDS-spezifisches Codesystem für die Gesamtbeurteilung im Behandlungsverlauf |
| [ MII CS Onkologie Verlauf Lymphknoten  ](CodeSystem-mii-cs-onko-verlauf-lymphknoten.md) | oBDS-spezifisches Codesystem für die Beurteilung von Lymphknoten im Behandlungsverlauf |
| [ MII CS Onkologie Verlauf Primärtumor  ](CodeSystem-mii-cs-onko-verlauf-primaertumor.md) | oBDS-spezifisches Codesystem für die Beurteilung des Primärtumors im Behandlungsverlauf |
| [ MII CodeSystem Onkologie - Weitere Klassifikationen oBDS  ](CodeSystem-mii-cs-onko-weitere-klassifikationen-obds.md) | oBDS-specific classification systems and scoring systems not yet covered by international terminologies (SNOMED CT, NCI Thesaurus). These codes supplement the existing ValueSet for additional classifications. Research required: Check if SNOMED CT or LOINC codes exist for these scoring systems before using oBDS-specific codes. |
| [ RSNA RadElement Common Data Elements (Fragment)  ](CodeSystem-radelement.md) | Fragment des RSNA-RadElement-Systems (Common Data Elements, https://www.radelement.org). Enthält nur die im MII-Modul Onkologie verwendeten Datenelemente. Quelle: RSNA RadElement API. |

### Terminologie: ConceptMaps 

Diese definieren Transformationen zur Konvertierung zwischen Codes durch Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CM Onko ATC Code Changes 2020 to 2021  ](ConceptMap-mii-cm-onko-atc-transitions-2021.md) | Diese ConceptMap dokumentiert ausschließlich die ATC-Code-Änderungen von 2020 zu 2021. Im Jahr 2021 erfolgte eine umfassende Reorganisation der ATC-Klassifikation für onkologische Substanzen mit Umkodierung von über 60 Wirkstoffen. |
| [ MII CM Onko ATC Code Changes 2021 to 2022  ](ConceptMap-mii-cm-onko-atc-transitions-2022.md) | Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2021 zu 2022. In diesem Jahr erfolgte die größte Reklassifikation der onkologischen ATC-Systematik: die monoklonalen Antikörper wurden aus der Sammelgruppe L01XC in die neue, nach Zielstruktur gegliederte Gruppe L01F überführt. |
| [ MII CM Onko ATC Code Changes 2022 to 2023  ](ConceptMap-mii-cm-onko-atc-transitions-2023.md) | Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2022 zu 2023. In diesem Jahr wurden CAR-T-Zelltherapien und onkolytische Viren in neue spezifische ATC-Kategorien umklassifiziert. |
| [ MII CM Onko ATC Code Changes 2023 to 2024  ](ConceptMap-mii-cm-onko-atc-transitions-2024.md) | Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2023 zu 2024. Mehrere immunmodulatorische Substanzen wurden in neue Kategorien umklassifiziert, und Kombinationspräparate erhielten neue Codes. |
| [ MII CM Onko ATC Code Changes 2024 to 2025  ](ConceptMap-mii-cm-onko-atc-transitions-2025.md) | Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2024 zu 2025. IDH-Inhibitoren wurden in eine neue spezifische Kategorie umklassifiziert. |
| [ MII CM Onko ATC Code Changes 2025 to 2026  ](ConceptMap-mii-cm-onko-atc-transitions-2026.md) | Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2025 zu 2026. c-MET-Kinase-Inhibitoren wurden in die neue Untergruppe L01EP umklassifiziert. |
| [ MII CM Onko Allgemeiner Leistungszustand SNOMED Mapping  ](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-sct.md) | Mapping Allgemeiner Leistungszustand Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Clincal TNM UICC SNOMED  ](ConceptMap-mii-cm-onko-tnm-uicc-sct-clinical.md) | Mapping clincal TNM UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Genetische Variante Auspraegung SNOMED Mapping  ](ConceptMap-mii-cm-onko-genetische-variante-auspraegung-sct.md) | Mapping Therapieabweichung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Grading SNOMED Mapping  ](ConceptMap-mii-cm-onko-grading-sct.md) | Mapping Grading Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko ICD-O-3 Code Changes 2014 to 2019  ](ConceptMap-mii-cm-onko-icdo3-transitions-2019.md) | Diese ConceptMap dokumentiert die Morphologie-Code-Änderungen der ICD-O-3 von der Ersten Revision (deutsche Ausgabe 2014, ICD-O-3.1) zur Zweiten Revision (2019, ICD-O-3.2): Dignitäts-Neubewertungen (z. B. GIST, Phäochromozytom, Thymome, Paragangliome), Entitäts-Zusammenlegungen (z. B. Ewing-Sarkom, Hämangioperizytom in solitärer fibröser Tumor) und entfallene Konzepte. Werkzeug für die Migration von Krebsregister-Bestandsdaten. |
| [ MII CM Onko Intention SNOMED Mapping  ](ConceptMap-mii-cm-onko-intention-sct.md) | Mapping Intention Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Nebenwirkung MedDRA zu SNOMED CT (CTCAE v4.03)  ](ConceptMap-mii-cm-onko-nebenwirkung-meddra-sct.md) | Kuratierte Zuordnung der MedDRA-Codes der CTCAE-v4.03-Nebenwirkungsterme zu SNOMED CT für die optionale SNOMED-Zweitkodierung in AdverseEvent.event (Profil mii-pr-onko-nebenwirkung-adverse-event). WICHTIGE HINWEISE: (1) Es existiert eine offizielle, lizenzpflichtige MedDRA-SNOMED-CT-Map (MedDRA MSSO / SNOMED International); diese ConceptMap ist eine davon unabhängige, projektseitig kuratierte Zuordnung und ersetzt die offizielle Map nicht. (2) Die Zuordnungen wurden automatisiert erstellt und stichproben- bzw. einzelfallkuratiert; für Vollständigkeit und Korrektheit wird KEINE GEWÄHR übernommen. Vor einer Nutzung in Produktivsystemen ist eine eigenverantwortliche fachliche Prüfung erforderlich. (3) Nicht jeder CTCAE-/MedDRA-Term hat ein SNOMED-CT-Äquivalent — solche Terme sind als unmatched gekennzeichnet und verbleiben MedDRA-only. |
| [ MII CM Onko Nebenwirkung SNOMED Mapping  ](ConceptMap-mii-cm-onko-nebenwirkung-sct.md) | Mapping Nebenwirkung CTCAE Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Operation Komplikation SNOMED Mapping  ](ConceptMap-mii-cm-onko-operation-komplikation-sct.md) | Mapping Operation Komplikation Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Pathological TNM UICC SNOMED  ](ConceptMap-mii-cm-onko-tnm-uicc-sct-pathological.md) | Mapping pathological TNM UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Primaertumor Diagnosesicherung SNOMED Mapping  ](ConceptMap-mii-cm-onko-primaertumor-diagnosesicherung-sct.md) | Mapping Primärtumor Diagnosesicherung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Residualstatus UICC SNOMED  ](ConceptMap-mii-cm-onko-residualstatus-uicc-sct.md) | Mapping Residualstatus UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Seitenlokalisation SNOMED Mapping  ](ConceptMap-mii-cm-onko-seitenlokalisation-sct.md) | Mapping Seitenlokalisation Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Strahlentherapie Applikationsart SNOMED Mapping  ](ConceptMap-mii-cm-onko-strahlentherapie-applikationsart-sct.md) | Mapping Strahlentherapie Applikationsart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Strahlentherapie Boost SNOMED Mapping  ](ConceptMap-mii-cm-onko-strahlentherapie-boost-sct.md) | Mapping Strahlentherapie Boost Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Strahlentherapie Strahlenart SNOMED Mapping  ](ConceptMap-mii-cm-onko-strahlentherapie-strahlenart-sct.md) | Mapping Strahlentherapie Strahlenart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Strahlentherapie Strahleneinheit SNOMED Mapping  ](ConceptMap-mii-cm-onko-strahlentherapie-strahleneinheit-sct.md) | Mapping Strahlentherapie Strahleneinheit Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Strahlentherapie Zielgebiet SNOMED Mapping  ](ConceptMap-mii-cm-onko-strahlentherapie-zielgebiet-sct.md) | Mapping Strahlentherapie Zielgebiet Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Studienteilnahme SNOMED Mapping  ](ConceptMap-mii-cm-onko-studienteilnahme-sct.md) | Mapping Studienteilnahme Status Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Therapie Ende SNOMED Mapping  ](ConceptMap-mii-cm-onko-therapie-ende-sct.md) | Mapping Therapie Ende Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Therapie Stellung SNOMED Mapping  ](ConceptMap-mii-cm-onko-therapie-stellung-sct.md) | Mapping Therapie Stellung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Therapie Typ SNOMED Mapping  ](ConceptMap-mii-cm-onko-therapie-typ-sct.md) | Mapping Therapie Typ Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Therapieabweichung SNOMED Mapping  ](ConceptMap-mii-cm-onko-therapieabweichung-sct.md) | Mapping Therapieabweichung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Therapieplanung SNOMED Mapping  ](ConceptMap-mii-cm-onko-therapieplanung-sct.md) | Mapping Therapieplanung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Tod SNOMED Mapping  ](ConceptMap-mii-cm-onko-tod-sct.md) | Mapping Tod Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Verlauf Fernmetastasen SNOMED Mapping  ](ConceptMap-mii-cm-onko-verlauf-fernmetastasen-sct.md) | Mapping Verlauf Fernmetastasen Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Verlauf Gesamtbeurteilung SNOMED Mapping  ](ConceptMap-mii-cm-onko-verlauf-gesamtbeurteilung-sct.md) | Mapping Gesamtbeurteilung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Verlauf Lymphknoten SNOMED Mapping  ](ConceptMap-mii-cm-onko-verlauf-lymphknoten-sct.md) | Mapping Lymphknoten Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onko Verlauf Primaertumor SNOMED Mapping  ](ConceptMap-mii-cm-onko-verlauf-primaertumor-sct.md) | Mapping Verlauf-Primaertumor Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. |
| [ MII CM Onkologie ASA oBDS zu LOINC  ](ConceptMap-mii-cm-onko-asa-obds-loinc.md) | Mapping von oBDS ASA-Klassifikation (ursprünglich KR9, generalisiert für alle onkologischen Indikationen) zu LOINC ASA Physical Status |
| [ MII Concept Map Modellvorhaben Genomsequenzierung Onkologie  ](ConceptMap-mii-cm-onkologie-to-mvgenomseq.md) | MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie |
| [ Mapping oBDS ECOG zu LOINC  ](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc.md) | Mapping der oBDS-Codes für ECOG Performance Status zu LOINC Answer List LL529-9 |
| [ Mapping oBDS Karnofsky zu LOINC  ](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc.md) | Mapping der oBDS-Codes für Karnofsky Performance Status zu LOINC Answer List LL4986-7 |
| [ Mapping oBDS Stoma-Anzeichnung zu SNOMED CT  ](ConceptMap-mii-cm-onko-krk-stoma-obds-sct.md) | Mapping der oBDS-Codes für präoperative Stoma-Anzeichnung zu SNOMED CT |
| [ mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor  ](ConceptMap-mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor.md) |  |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ 5-FU Phase 1 (Zyklen 1-6)  ](MedicationStatement-mii-exa-onko-modification-5fu-phase1.md) | Fluorouracil administered during FOLFOX4 phase |
| [ 5-FU Phase 2 (Zyklen 7-12)  ](MedicationStatement-mii-exa-onko-modification-5fu-phase2.md) | Fluorouracil continued for cycles 7-12 as part of modified LV5FU2 protocol |
| [ Beispiel Strahlentherapie oBDS 2014 - Mamma mit Lymphknoten (3.1.+)  ](Procedure-mii-exa-onko-strahlentherapie-2014-mamma-mit-lk.md) | oBDS 2014: Ein Bestrahlungsverfahren für Mamma inklusive Lymphknoten als kombinierter Code |
| [ Beispiel Strahlentherapie oBDS 2021 - Axilläre Lymphknoten  ](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten.md) | oBDS 2021: Bestrahlung der axillären Lymphknoten (entspricht 2014 '3.1.+' Lymphknotenanteil) |
| [ Beispiel Strahlentherapie oBDS 2021 - Mamma Primärzielgebiet  ](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.md) | oBDS 2021: Bestrahlung der Mamma als Primärzielgebiet (entspricht 2014 '3.1.+' Organanteil) |
| [ Beispiel-Kontakt (Anker)  ](Encounter-example.md) | Minimaler Anker-Kontakt für die generischen Referenzen Encounter/example. |
| [ Beispiel-Kontakt Chemotherapie Phase 1 (Anker)  ](Encounter-example-chemo-phase1.md) | Minimaler Anker-Kontakt für Encounter/example-chemo-phase1. |
| [ Beispiel-Kontakt Chemotherapie Phase 2 (Anker)  ](Encounter-example-chemo-phase2.md) | Minimaler Anker-Kontakt für Encounter/example-chemo-phase2. |
| [ Beispiel-Kontakt Diagnosestellung FOLFOX-Modifikation (Anker)  ](Encounter-example-diagnosis-modification.md) | Minimaler Anker-Kontakt für Encounter/example-diagnosis-modification. |
| [ Beispiel-Kontakt Operation FOLFOX-Modifikation (Anker)  ](Encounter-example-surgery-modification.md) | Minimaler Anker-Kontakt für Encounter/example-surgery-modification. |
| [ Beispiel-Patient (Anker)  ](Patient-example.md) | Minimaler Anker-Patient für die generischen Referenzen Patient/example in den Beispielen des Moduls. |
| [ Beispiel-Patient FOLFOX-Modifikation (Anker)  ](Patient-example-modification.md) | Minimaler Anker-Patient für das FOLFOX-Modifikations-Szenario (Patient/example-modification). |
| [ Example Primaertumor Condition for Extended Examples  ](Condition-primaertumor-example.md) | Minimal primaertumor condition for referencing in molecular tumor board examples |
| [ Example chemotherapy 1  ](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.md) | Example for the FHIR profile systemic therapy based on German |
| [ Example chemotherapy 2  ](MedicationStatement-mii-exa-onko-systemische-therapie-medikation2.md) | Example for the FHIR profile systemic therapy based on German |
| [ Example radiation therapy  ](Procedure-mii-exa-onko-strahlentherapie-nuklearmedizin-1.md) | Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy |
| [ Example radiation therapy  ](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.md) | Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy |
| [ Example surgical therapy  ](Procedure-mii-exa-onko-operation-1.md) | Example surgical therapy |
| [ Example systemic therapy  ](Procedure-mii-exa-onko-systemische-therapie-1.md) | Example systemic therapy |
| [ FOLFOX - Fluorouracil MedicationRequest  ](MedicationRequest-mii-exa-onko-folfox-5fu-request.md) |  |
| [ FOLFOX - Fluorouracil tatsächlich verabreicht  ](MedicationStatement-mii-exa-onko-folfox-5fu-statement.md) | 5-Fluorouracil medication statement as part of FOLFOX4 protocol |
| [ FOLFOX - Folinsäure MedicationRequest  ](MedicationRequest-mii-exa-onko-folfox-leucovorin-request.md) |  |
| [ FOLFOX - Folinsäure tatsächlich verabreicht  ](MedicationStatement-mii-exa-onko-folfox-leucovorin-statement.md) | Folinic acid (Leucovorin) medication statement as part of FOLFOX4 protocol |
| [ FOLFOX - Oxaliplatin MedicationRequest  ](MedicationRequest-mii-exa-onko-folfox-oxaliplatin-request.md) |  |
| [ FOLFOX - Oxaliplatin tatsächlich verabreicht  ](MedicationStatement-mii-exa-onko-folfox-oxaliplatin-statement.md) | Oxaliplatin medication statement as part of FOLFOX4 protocol |
| [ FOLFOX Kontakt Chemotherapie  ](Encounter-mii-exa-onko-folfox-encounter-chemo.md) | Ambulanter Kontakt, unter dem die FOLFOX-Chemotherapie appliziert wurde |
| [ FOLFOX Kontakt Diagnosestellung  ](Encounter-mii-exa-onko-folfox-encounter-diagnosis.md) | Ambulanter Kontakt, in dem die Kolonkarzinom-Diagnose gestellt und gestaged wurde |
| [ FOLFOX Kontakt Sigmaresektion  ](Encounter-mii-exa-onko-folfox-encounter-surgery.md) | Stationärer Kontakt der Sigmaresektion samt zugehöriger Teilprozeduren |
| [ FOLFOX Patient - 65-jähriger mit Kolonkarzinom  ](Patient-mii-exa-onko-folfox-patient.md) | Patient for FOLFOX colorectal cancer treatment example |
| [ FOLFOX Systemische Therapie (tatsächlich durchgeführt)  ](Procedure-mii-exa-onko-folfox-procedure.md) | Actual FOLFOX chemotherapy given, linked back to tumor board recommendation |
| [ FOLFOX Therapieempfehlung (RequestGroup)  ](RequestGroup-mii-exa-onko-folfox-requestgroup.md) | Tumor board recommendation for FOLFOX protocol with therapy type and protocol coding |
| [ FOLFOX Workflow Bundle - Komplettes Beispiel von Tumorkonferenz bis Therapie  ](Bundle-mii-exa-onko-folfox-workflow-bundle.md) | Comprehensive Bundle demonstrating complete FOLFOX workflow from tumor board recommendation through actual treatment, with all resources for reference resolution validation |
| [ FOLFOX4 Therapie - Phase 1 (Zyklen 1-6)  ](Procedure-mii-exa-onko-folfox-phase1.md) | First phase: Full FOLFOX4 protocol for 6 cycles before dose modification |
| [ FOLFOX4 Therapieempfehlung  ](RequestGroup-mii-exa-onko-folfox-requestgroup-modification.md) | Original tumor board recommendation for FOLFOX4 protocol (later modified due to toxicity) |
| [ Folinsäure Phase 1 (Zyklen 1-6)  ](MedicationStatement-mii-exa-onko-modification-leucovorin-phase1.md) | Leucovorin administered during FOLFOX4 phase |
| [ Folinsäure Phase 2 (Zyklen 7-12)  ](MedicationStatement-mii-exa-onko-modification-leucovorin-phase2.md) | Leucovorin continued for cycles 7-12 as part of modified LV5FU2 protocol |
| [ Frühere Tumorerkrankung Cervix in situ  ](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md) | Beispiel einer früheren Tumorerkrankung (Carcinoma in situ der Cervix uteri) aus dem Jahr 2013 |
| [ Frühere Tumorerkrankung Mamma  ](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md) | Beispiel einer früheren Tumorerkrankung (Mammakarzinom links) aus dem Jahr 2013 |
| [ Frühere Tumorerkrankung Prostata  ](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md) | Beispiel einer früheren Tumorerkrankung (Prostatakarzinom) aus dem Jahr 2018 |
| [ Frühere Tumorerkrankung nur Freitext  ](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md) | Beispiel einer früheren Tumorerkrankung mit nur Freitextangabe, ohne ICD-10-GM Kodierung (typisch bei anamnestischen Angaben) |
| [ Hauptprocedure: Komplexe abdominale Tumorchirurgie  ](Procedure-PatientKimMusterperson-Procedure-4.md) | 30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0. |
| [ Hemikolektomie rechts  ](Procedure-mii-exa-onko-right-hemicolectomy.md) | Laparoscopic right hemicolectomy with lymph node dissection |
| [ Kolonkarzinom Primärdiagnose  ](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md) | Stage III sigmoid colon adenocarcinoma, diagnosed January 2024 |
| [ Kolonkarzinom Primärdiagnose - Colon ascendens  ](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md) | Stage III ascending colon adenocarcinoma, diagnosed January 2024 |
| [ LV5FU2 Therapie - Phase 2 (Zyklen 7-12)  ](Procedure-mii-exa-onko-lv5fu2-phase2.md) | Second phase: Modified protocol with 5-FU + Leucovorin only (no Oxaliplatin) for remaining 6 cycles |
| [ Liste der Evidenz zum Erstdiagnosezeitpunkt  ](List-mii-exa-onko-liste-evidenz-erstdiagnose-1.md) | Eine Beispielliste, welche Observations zur Diagnosestellung präsent waren |
| [ MII CM Onko Fernmetastasen SCT Mapping  ](ConceptMap-mii-cm-onko-fernmetastasen-sct.md) | Mapping der Fernmetastasen-Codesystems auf SNOMED |
| [ MII EXA Onko KRK Abstand Circumferelle Resektionsebene  ](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.md) | Beispiel für den minimalen Abstand des Tumorrandes zur circumferellen Dissektionslinie |
| [ MII EXA Onko KRK Abstand Mesorektale Fascie  ](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.md) | Beispiel für den Abstand des Tumors zur mesorektalen Faszie bei MRT-Untersuchung |
| [ MII EXA Onko KRK Abstand Resektionsrand Aboral  ](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.md) | Beispiel für den minimalen Abstand des Tumorrandes zur aboralen Dissektionslinie |
| [ MII EXA Onko KRK Abstand Tumor Anokutanlinie  ](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.md) | Beispiel für den Abstand des Tumorunterrandes zur Anokutanlinie beim Rektumkarzinom |
| [ MII EXA Onko KRK Anastomoseninsuffizienz  ](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.md) | Beispiel für die Bewertung einer Anastomoseninsuffizienz beim Kolorektalen Karzinom |
| [ MII EXA Onko KRK Bundle  ](Bundle-mii-exa-onko-krk-bundle.md) | Beispiel-Bundle für Kolorektales Karzinom mit allen spezifischen Profilen |
| [ MII EXA Onko KRK Operation  ](Procedure-mii-exa-onko-krk-operation.md) | Beispiel für eine Operation beim Kolorektalen Karzinom |
| [ MII EXA Onko KRK Specimen  ](Specimen-mii-exa-onko-krk-specimen.md) | Beispiel für ein Histologie-Specimen beim Kolorektalen Karzinom |
| [ MII EXA Onko KRK Stoma-Markierung  ](Procedure-mii-exa-onko-krk-stoma-markierung.md) | Beispiel für eine präoperative Stoma-Markierung beim Kolorektalen Karzinom |
| [ MII EXA Onko Kim Musterperson — Multi-CarePlan TNM Synthese  ](Bundle-mii-exa-onko-kim-musterperson-synthesized.md) | Vollständige Multi-Tumorkonferenz-Demo am Beispiel Kim Musterperson (Ovarial-CA, Intervalldebulking). Drei Source-Klassifikationen über die Zeit (Diagnose 2021-06-22, post-Chemo 2021-09-15, post-OP 2021-10-15), vier Tumorkonferenzen mit jeweils eigener synthetisierter TNM-Stage, Provenance pinnt Algorithmus auf mii-lib-onko-synthesize-tnm v1.0.0. |
| [ MII EXA Onko Mamma Bundle  ](Bundle-mii-exa-onko-mamma-example-bundle-1.md) | Beispiel-Bundle für Mamma-Karzinom mit allen spezifischen Profilen |
| [ MII EXA Onko Mamma Her2neu Status  ](Observation-mii-exa-onko-mamma-her2neu-status.md) | Beispiel für Her2neu Status bei Mammakarzinom - HER2-positiv (IHC 3+) |
| [ MII EXA Onko Melanom Breslow Tiefe  ](Observation-mii-exa-onko-melanom-breslow-tiefe.md) | Beispiel für die Messung der Breslow-Tumordicke beim Malignen Melanom |
| [ MII EXA Onko Melanom Bundle  ](Bundle-mii-exa-onko-melanom-bundle.md) | Beispiel-Bundle für Malignes Melanom mit allen spezifischen Profilen |
| [ MII EXA Onko Melanom LDH  ](Observation-mii-exa-onko-melanom-ldh.md) | Beispiel für einen LDH Laborwert beim Malignen Melanom |
| [ MII EXA Onko Melanom Sicherheitsabstand  ](Observation-mii-exa-onko-melanom-sicherheitsabstand.md) | Beispiel für die Messung des Sicherheitsabstands beim Malignen Melanom |
| [ MII EXA Onko Melanom Ulzeration  ](Observation-mii-exa-onko-melanom-ulzeration.md) | Beispiel für die Bestimmung der Ulzeration beim Malignen Melanom |
| [ MII EXA Onko Prostata Bundle  ](Bundle-mii-exa-onko-prostata-example-bundle-1.md) | Beispiel-Bundle für Prostata-Karzinom mit allen spezifischen Profilen |
| [ MII EXA Onko Prostata Operation  ](Procedure-mii-exa-onko-prostata-surgery-2.md) | Beispiel für eine Prostatektomie in der Onkologie |
| [ MII EXA Onko TNM Bundle (cT2 cN3 cM0)  ](Bundle-mii-exa-onko-tnm-bundle.md) | Beispiel-Bundle: ein TNM-Staging-Ereignis (cT2 cN3 cM0, UICC IIIB), zusammengehalten durch die TNM-Klassifikation als hasMember-Grouper. Demonstriert, wie T und N eindeutig demselben Staging zugeordnet werden können. |
| [ MII EXA Onko TNM Bundle (synthesized stage at Tumorkonferenz)  ](Bundle-mii-exa-onko-tnm-bundle-synthesized.md) | Beispiel-Bundle: zwei Meldungs-bezogene TNM-Klassifikationen (Diagnose-Meldung cT3cN2cM0, OP-Meldung pT2pN1) plus eine synthetisierte Klassifikation pT2 pN1 cM0 (Stadium IIIA) zum Zeitpunkt der postoperativen Tumorkonferenz. Die Tumorkonferenz verlinkt die synthetisierte Klassifikation via supportingInfo. |
| [ MII EXA Onko TNM Bundle Legacy (cT2 cN3 cM0, UICC-only)  ](Bundle-mii-exa-onko-tnm-bundle-legacy.md) | Beispiel-Bundle in der Legacy-Form (vor SNOMED-CT-Dual-Coding): ein TNM-Staging-Ereignis (cT2 cN3 cM0, UICC IIIB), zusammengehalten durch die TNM-Klassifikation als hasMember-Grouper. Demonstriert, dass die Grouper-zentrierte Suchlogik unabhängig vom Wertcoding funktioniert. |
| [ MII EXA Onkologie Bestrahlung PCI Ganzhirn (Zielgebiet 1.1)  ](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc.md) |  |
| [ MII EXA Onkologie CUP Bundle (cTX cNX cM1)  ](Bundle-mii-exa-onko-cup-bundle.md) |  |
| [ MII EXA Onkologie Diagnose CUP (C80.0)  ](Condition-mii-exa-onko-cup-diagnose.md) |  |
| [ MII EXA Onkologie Diagnose CUP aufgelöst → Pankreaskarzinom (Zustand nach Update derselben Ressource)  ](Condition-mii-exa-onko-cup-diagnose-aufgeloest.md) |  |
| [ MII EXA Onkologie Diagnose MDS (Ursprungsdiagnose)  ](Condition-mii-exa-onko-diagnose-mds.md) |  |
| [ MII EXA Onkologie Diagnose benignes Meningeom (Ursprungsdiagnose)  ](Condition-mii-exa-onko-diagnose-meningeom-benigne.md) |  |
| [ MII EXA Onkologie Diagnose malignes Meningeom (Transformation /0 → /3)  ](Condition-mii-exa-onko-diagnose-meningeom-maligne-transformation.md) |  |
| [ MII EXA Onkologie Diagnose radiogenes Angiosarkom nach Strahlentherapie (dueTo)  ](Condition-mii-exa-onko-diagnose-angiosarkom-nach-radiatio.md) |  |
| [ MII EXA Onkologie Diagnose sekundäre AML (Transformation aus MDS)  ](Condition-mii-exa-onko-diagnose-aml-transformation.md) |  |
| [ MII EXA Onkologie Diagnose t-AML nach Chemotherapie (dueTo)  ](Condition-mii-exa-onko-diagnose-taml-nach-chemo.md) |  |
| [ MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3  ](AdverseEvent-mii-exa-onko-nebenwirkung-anaemie-grad3.md) | Anämie CTCAE Grad 3 (MedDRA 10002272, deutsches Display aus dem Supplement) unter systemischer Therapie — mit SNOMED-CT-Zweitkodierung aus der ConceptMap. |
| [ MII EXA Onkologie Nebenwirkung Cytokine-Release-Syndrom CTCAE Grad 4  ](AdverseEvent-mii-exa-onko-nebenwirkung-crs-grad4.md) | Cytokine-Release-Syndrom CTCAE Grad 4 (MedDRA 10052015) unter medikamentöser systemischer Therapie — SNOMED-Zweitkodierung gemäß ConceptMap gegen die im Expansions-Manifest gepinnte SNOMED-Version (International 20250701). |
| [ MII EXA Onkologie Nebenwirkung Rektale Mukositis CTCAE Grad 2 (MedDRA-only)  ](AdverseEvent-mii-exa-onko-nebenwirkung-rektale-mukositis-grad2.md) | Rektale Mukositis CTCAE Grad 2 (MedDRA 10063190) nach Strahlentherapie — Beispiel für einen Term OHNE SNOMED-CT-Äquivalent (in der ConceptMap als unmatched geführt): Die Kodierung bleibt MedDRA-only, der optionale snomed-Slice entfällt. |
| [ MII EXA Onkologie Prostata Stanzbiopsie Specimen  ](Specimen-mii-exa-onko-prostata-specimen-stanze.md) | Gewebeprobe einer Prostata-Stanzbiopsie, auf die sich die Befunde zum Karzinombefall der Stanze beziehen. |
| [ MII EXA Onkologie Strahlentherapie PCI bei SCLC (prophylaktisch)  ](Procedure-mii-exa-onko-strahlentherapie-pci-sclc.md) |  |
| [ MII EXA Onkologie TNM Klassifikation CUP (cTX cNX cM1, ohne Stadium)  ](Observation-mii-exa-onko-cup-tnm-klassifikation.md) |  |
| [ MedicationRequest - Fluorouracil (vollständig verabreicht)  ](MedicationRequest-mii-exa-onko-modification-5fu-request.md) | Fluorouracil recommendation - completed for all 12 cycles |
| [ MedicationRequest - Folinsäure (vollständig verabreicht)  ](MedicationRequest-mii-exa-onko-modification-leucovorin-request.md) | Leucovorin recommendation - completed for all 12 cycles |
| [ MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie)  ](MedicationRequest-mii-exa-onko-modification-oxaliplatin-request.md) | Oxaliplatin recommendation - stopped after cycle 6 due to grade 3 peripheral neuropathy |
| [ Medikation Iberdomide (UNII)  ](MedicationStatement-mii-exa-onko-medikation-iberdomide-unii.md) | Beispiel einer systemischen Therapie Medikation mit UNII-Code für experimentellen Wirkstoff ohne ATC-Code |
| [ Medikation Imatinib (ATC Versionsübergang)  ](MedicationStatement-mii-exa-onko-medikation-imatinib-atc-version-transition.md) | Beispiel einer systemischen Therapie Medikation mit Imatinib, das 2021 von L01XE01 nach L01EA01 umklassifiziert wurde. Zeigt beide ATC-Codes mit ihren jeweiligen Versionen. |
| [ Melanom Exzision Oberarm Beispiel  ](Procedure-mii-exa-onko-melanom-exzision-oberarm.md) | Beispiel einer Melanom-Exzision am linken Oberarm mit Sicherheitsabstand |
| [ Melanom Exzision Rücken Beispiel  ](Procedure-mii-exa-onko-melanom-exzision-ruecken.md) | Beispiel einer Melanom-Nachexzision am oberen Rücken |
| [ Migration Beispiel: Prostata mit Lymphknoten (oBDS 2014 → 2021)  ](Procedure-mii-exa-onko-strahlentherapie-2014-prostata-mit-lk.md) | Zeigt Migration von 2014 '5.4.+' zu 2021 separaten Prozeduren |
| [ Molecular Tumor Board Patient  ](Patient-mii-exa-onko-molecular-board-patient.md) | Patient for molecular tumor board examples |
| [ Oxaliplatin Phase 1 (Zyklen 1-6, dann abgebrochen)  ](MedicationStatement-mii-exa-onko-modification-oxaliplatin-phase1.md) | Oxaliplatin administered for 6 cycles, then discontinued due to neuropathy |
| [ PatientKimMusterperson  ](Patient-PatientKimMusterperson.md) |  |
| [ PatientKimMusterperson-Diagnosis-1  ](Condition-PatientKimMusterperson-Diagnosis-1.md) | Diagnose Primärtumor |
| [ PatientKimMusterperson-PathoReport-1  ](DiagnosticReport-PatientKimMusterperson-PathoReport-1.md) | Pathoreport incl. Immunhistochemie |
| [ PatientKimMusterperson-PrimaryDiagnosis-2  ](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md) | bestätigte Primärdiagnose |
| [ PatientKimMusterperson-Procedure-1  ](Procedure-PatientKimMusterperson-Procedure-1.md) | 10.06.2021 CT Abdomen mit KM |
| [ PatientKimMusterperson-Procedure-2  ](Procedure-PatientKimMusterperson-Procedure-2.md) | 15.06.2021 Aszitespunktion |
| [ PatientKimMusterperson-Procedure-3  ](Procedure-PatientKimMusterperson-Procedure-3.md) | 22.06.2021 CT Thorax: kein Hinweis auf Metastasen. |
| [ PatientKimMusterperson-Procedure-4a  ](Procedure-PatientKimMusterperson-Procedure-4a.md) | 30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0. |
| [ PatientKimMusterperson-Procedure-4b  ](Procedure-PatientKimMusterperson-Procedure-4b.md) | 30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0. |
| [ PatientKimMusterperson-Procedure-4c  ](Procedure-PatientKimMusterperson-Procedure-4c.md) | 30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0. |
| [ PatientKimMusterperson-Procedure-4d  ](Procedure-PatientKimMusterperson-Procedure-4d.md) | 30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0. |
| [ PatientKimMusterperson-Specimen-1  ](Specimen-PatientKimMusterperson-Specimen-1.md) | Tumorresektat Primärtumor |
| [ PatientKimMusterperson-SystemicTherapy-1  ](Procedure-PatientKimMusterperson-SystemicTherapy-1.md) |  |
| [ PatientKimMusterperson-SystemicTherapy-2  ](Procedure-PatientKimMusterperson-SystemicTherapy-2.md) |  |
| [ PatientKimMusterperson-SystemicTherapy-3  ](Procedure-PatientKimMusterperson-SystemicTherapy-3.md) |  |
| [ PatientKimMusterperson-SystemicTherapyMedication-1a  ](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1a.md) |  |
| [ PatientKimMusterperson-SystemicTherapyMedication-1b  ](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1b.md) |  |
| [ PatientKimMusterperson-SystemicTherapyMedication-2a  ](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2a.md) |  |
| [ PatientKimMusterperson-SystemicTherapyMedication-2b  ](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2b.md) |  |
| [ PatientKimMusterperson-SystemicTherapyMedication-3  ](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-3.md) |  |
| [ PatientKimMusterperson-Tumorkonferenz-1  ](CarePlan-PatientKimMusterperson-Tumorkonferenz-1.md) |  |
| [ PatientKimMusterperson-Tumorkonferenz-2  ](CarePlan-PatientKimMusterperson-Tumorkonferenz-2.md) |  |
| [ PatientKimMusterperson-Tumorkonferenz-3  ](CarePlan-PatientKimMusterperson-Tumorkonferenz-3.md) |  |
| [ PatientKimMusterperson-Tumorkonferenz-4  ](CarePlan-PatientKimMusterperson-Tumorkonferenz-4.md) |  |
| [ PatientKimMusterperson-Verlauf-2022-01-22  ](Observation-PatientKimMusterperson-Verlauf-2022-01-22.md) |  |
| [ Prostata Operation Prostatektomie Beispiel  ](Procedure-mii-exa-onko-prostata-operation-prostatektomie.md) | Beispiel einer radikalen Prostatektomie |
| [ Prostata Operation TURP Beispiel  ](Procedure-mii-exa-onko-prostata-operation-turp.md) | Beispiel einer transurethralen Resektion der Prostata |
| [ Sigmaresektion - Haupteingriff  ](Procedure-mii-exa-onko-sigmoid-resection.md) | Main surgical procedure: Laparoscopic sigmoid resection with lymph node dissection - using SNOMED code |
| [ Sigmaresektion Teil 1 - Resektion und Anastomose  ](Procedure-mii-exa-onko-sigmoid-resection-part1.md) | Component procedure 1: Sigmoid resection with anastomosis |
| [ Sigmaresektion Teil 2 - Lymphknotendissektion  ](Procedure-mii-exa-onko-sigmoid-resection-part2.md) | Component procedure 2: Regional lymph node dissection |
| [ Sigmaresektion Teil 3 - Port-Anlage  ](Procedure-mii-exa-onko-sigmoid-resection-part3.md) | Component procedure 3: Laparoscopic port placement |
| [ Strahlentherapie: Beispiel einer Nuklearmedizinischen Bestrahlungstherapie  ](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1.md) | Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy |
| [ Strahlentherapie: Beispiel einer Strahlentherapie mit allgemeinem OPS-Code 8-52  ](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1.md) | Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy |
| [ Studie PRO-B  ](ResearchStudy-mii-exa-onko-studie-prob.md) | PRO-B: Alarm-basiertes Patient-Reported Outcome Monitoring bei Patientinnen mit metastasiertem Mammakarzinom (Innovationsfonds 01NVF19013) |
| [ Studienteilnahme PRO-B  ](Observation-mii-exa-onko-studienteilnahme-prob.md) | Beispiel einer Studienteilnahme an der PRO-B Studie für eine Patientin mit metastasiertem Mammakarzinom |
| [ TNM Klassifikation - Stadium IIIB  ](Observation-mii-exa-onko-ascending-colon-tnm.md) | Postoperative pathological TNM staging for ascending colon cancer (pT3 pN1 cM0 = Stage IIIB) |
| [ TNM Klassifikation - pT3 pN1 cM0, UICC Stage IIIB  ](Observation-mii-exa-onko-colorectal-tnm.md) | Postoperative pathological TNM staging with UICC stage group IIIB |
| [ TNM M-Kategorie - cM0  ](Observation-mii-exa-onko-ascending-colon-tnm-m.md) |  |
| [ TNM M-Kategorie - cM0  ](Observation-mii-exa-onko-colorectal-tnm-m.md) |  |
| [ TNM N-Kategorie - pN1  ](Observation-mii-exa-onko-ascending-colon-tnm-n.md) |  |
| [ TNM N-Kategorie - pN1  ](Observation-mii-exa-onko-colorectal-tnm-n.md) |  |
| [ TNM T-Kategorie - pT3  ](Observation-mii-exa-onko-ascending-colon-tnm-t.md) |  |
| [ TNM T-Kategorie - pT3  ](Observation-mii-exa-onko-colorectal-tnm-t.md) |  |
| [ TNM-Klassifikation-Observation-2  ](Observation-TNM-Klassifikation-Observation-2.md) |  |
| [ TNM-L-Observation-2  ](Observation-TNM-L-Observation-2.md) |  |
| [ TNM-M-Observation-2  ](Observation-TNM-M-Observation-2.md) |  |
| [ TNM-Pn-Observation-2  ](Observation-TNM-Pn-Observation-2.md) |  |
| [ TNM-T-Observation-2  ](Observation-TNM-T-Observation-2.md) | Lokale Tumorausbreitung: Ovartumor links mit einer max. Größe von 2,2 cm und tumorinfiltrierter Kapsel mit Nachweis von Tumorzellen auf der Ovaroberfläche, Anteil vitaler Tumorzellen von ca. 80 %. |
| [ TNM-V-Observation-2  ](Observation-TNM-V-Observation-2.md) |  |
| [ TNM-y-Symbol-Observation-2  ](Observation-TNM-y-Symbol-Observation-2.md) |  |
| [ Tumorkonferenz - FOLFOX Empfehlung  ](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md) | Tumor board recommends FOLFOX4 protocol for adjuvant treatment |
| [ Tumorkonferenz - FOLFOX Empfehlung bei Kolorektalkarzinom  ](CarePlan-mii-exa-onko-tumorkonferenz-folfox.md) | Tumor board recommends FOLFOX protocol for colorectal cancer patient |
| [ Unerwünschtes Ereignis - Oxaliplatin-induzierte Neuropathie  ](AdverseEvent-mii-exa-onko-oxaliplatin-neuropathy.md) | Grade 3 peripheral neuropathy caused by oxaliplatin, leading to treatment modification |
| [ Verlauf - 6 Monate nach FOLFOX  ](Observation-mii-exa-onko-folfox-verlauf-6months.md) | 6-month follow-up examination showing no evidence of disease |
| [ Verlauf - 6 Monate nach modifizierter Therapie  ](Observation-mii-exa-onko-modification-verlauf-6months.md) | 6-month follow-up showing complete response despite protocol modification |
| [ mii-exa-onko-allgemeiner-leistungszustand-ecog  ](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md) |  |
| [ mii-exa-onko-allgemeiner-leistungszustand-karnofsky  ](Observation-mii-exa-onko-allgemeiner-leistungszustand-karnofsky.md) |  |
| [ mii-exa-onko-anzahl-befallene-lymphknoten-0  ](Observation-mii-exa-onko-anzahl-befallene-lymphknoten-0.md) |  |
| [ mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0  ](Observation-mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0.md) |  |
| [ mii-exa-onko-anzahl-untersuchte-lymphknoten-23  ](Observation-mii-exa-onko-anzahl-untersuchte-lymphknoten-23.md) |  |
| [ mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0  ](Observation-mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0.md) |  |
| [ mii-exa-onko-asa-klassifikation  ](Observation-mii-exa-onko-asa-klassifikation.md) |  |
| [ mii-exa-onko-befund-1  ](DiagnosticReport-mii-exa-onko-befund-1.md) |  |
| [ mii-exa-onko-cdk46-class-medication  ](MedicationRequest-mii-exa-onko-cdk46-class-medication.md) |  |
| [ mii-exa-onko-cup-fernmetastase-hep  ](Observation-mii-exa-onko-cup-fernmetastase-hep.md) |  |
| [ mii-exa-onko-cup-fernmetastase-pul  ](Observation-mii-exa-onko-cup-fernmetastase-pul.md) |  |
| [ mii-exa-onko-cup-patient  ](Patient-mii-exa-onko-cup-patient.md) |  |
| [ mii-exa-onko-cup-tnm-m-cM1  ](Observation-mii-exa-onko-cup-tnm-m-cM1.md) |  |
| [ mii-exa-onko-cup-tnm-n-cNX  ](Observation-mii-exa-onko-cup-tnm-n-cNX.md) |  |
| [ mii-exa-onko-cup-tnm-t-cTX  ](Observation-mii-exa-onko-cup-tnm-t-cTX.md) |  |
| [ mii-exa-onko-diagnose  ](Condition-mii-exa-onko-diagnose.md) |  |
| [ mii-exa-onko-fernmetastasen-1  ](Observation-mii-exa-onko-fernmetastasen-1.md) |  |
| [ mii-exa-onko-genetische-variante-braf  ](Observation-mii-exa-onko-genetische-variante-braf.md) |  |
| [ mii-exa-onko-grading-1  ](Observation-mii-exa-onko-grading-1.md) |  |
| [ mii-exa-onko-histologie-icdo3  ](Observation-mii-exa-onko-histologie-icdo3.md) |  |
| [ mii-exa-onko-kim-klass1  ](Observation-mii-exa-onko-kim-klass1.md) |  |
| [ mii-exa-onko-kim-klass1-cM1  ](Observation-mii-exa-onko-kim-klass1-cM1.md) |  |
| [ mii-exa-onko-kim-klass1-cN1  ](Observation-mii-exa-onko-kim-klass1-cN1.md) |  |
| [ mii-exa-onko-kim-klass1-cT3c  ](Observation-mii-exa-onko-kim-klass1-cT3c.md) |  |
| [ mii-exa-onko-kim-klass2  ](Observation-mii-exa-onko-kim-klass2.md) |  |
| [ mii-exa-onko-kim-klass2-ycM1b  ](Observation-mii-exa-onko-kim-klass2-ycM1b.md) |  |
| [ mii-exa-onko-kim-klass2-ycN1  ](Observation-mii-exa-onko-kim-klass2-ycN1.md) |  |
| [ mii-exa-onko-kim-klass2-ycT3c  ](Observation-mii-exa-onko-kim-klass2-ycT3c.md) |  |
| [ mii-exa-onko-kim-klass2-ysym  ](Observation-mii-exa-onko-kim-klass2-ysym.md) |  |
| [ mii-exa-onko-kim-klass3  ](Observation-mii-exa-onko-kim-klass3.md) |  |
| [ mii-exa-onko-kim-klass3-L1  ](Observation-mii-exa-onko-kim-klass3-L1.md) |  |
| [ mii-exa-onko-kim-klass3-Pn0  ](Observation-mii-exa-onko-kim-klass3-Pn0.md) |  |
| [ mii-exa-onko-kim-klass3-V0  ](Observation-mii-exa-onko-kim-klass3-V0.md) |  |
| [ mii-exa-onko-kim-klass3-ypM1b  ](Observation-mii-exa-onko-kim-klass3-ypM1b.md) |  |
| [ mii-exa-onko-kim-klass3-ypT3c  ](Observation-mii-exa-onko-kim-klass3-ypT3c.md) |  |
| [ mii-exa-onko-kim-klass3-ysym  ](Observation-mii-exa-onko-kim-klass3-ysym.md) |  |
| [ mii-exa-onko-kim-synth-diagnose  ](Condition-mii-exa-onko-kim-synth-diagnose.md) |  |
| [ mii-exa-onko-kim-synth-patient  ](Patient-mii-exa-onko-kim-synth-patient.md) |  |
| [ mii-exa-onko-kim-synth1  ](Observation-mii-exa-onko-kim-synth1.md) |  |
| [ mii-exa-onko-kim-synth2  ](Observation-mii-exa-onko-kim-synth2.md) |  |
| [ mii-exa-onko-kim-synth3  ](Observation-mii-exa-onko-kim-synth3.md) |  |
| [ mii-exa-onko-kim-synth4  ](Observation-mii-exa-onko-kim-synth4.md) |  |
| [ mii-exa-onko-kim-synthesis-device  ](Device-mii-exa-onko-kim-synthesis-device.md) |  |
| [ mii-exa-onko-kim-synthesis-provenance  ](Provenance-mii-exa-onko-kim-synthesis-provenance.md) |  |
| [ mii-exa-onko-kim-tk1  ](CarePlan-mii-exa-onko-kim-tk1.md) |  |
| [ mii-exa-onko-kim-tk2  ](CarePlan-mii-exa-onko-kim-tk2.md) |  |
| [ mii-exa-onko-kim-tk3  ](CarePlan-mii-exa-onko-kim-tk3.md) |  |
| [ mii-exa-onko-kim-tk4  ](CarePlan-mii-exa-onko-kim-tk4.md) |  |
| [ mii-exa-onko-krk-bundle-encounter  ](Encounter-mii-exa-onko-krk-bundle-encounter.md) |  |
| [ mii-exa-onko-krk-bundle-patient  ](Patient-mii-exa-onko-krk-bundle-patient.md) |  |
| [ mii-exa-onko-krk-diagnose  ](Condition-mii-exa-onko-krk-diagnose.md) |  |
| [ mii-exa-onko-mamma-bundle-encounter  ](Encounter-mii-exa-onko-mamma-bundle-encounter.md) |  |
| [ mii-exa-onko-mamma-bundle-patient  ](Patient-mii-exa-onko-mamma-bundle-patient.md) |  |
| [ mii-exa-onko-mamma-diagnose  ](Condition-mii-exa-onko-mamma-diagnose.md) |  |
| [ mii-exa-onko-mamma-menopause-status-1  ](Observation-mii-exa-onko-mamma-menopause-status-1.md) |  |
| [ mii-exa-onko-mamma-praeoperative-markierung-1  ](Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.md) |  |
| [ mii-exa-onko-mamma-rezeptorstatus-estrogen-1  ](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.md) |  |
| [ mii-exa-onko-mamma-rezeptorstatus-progesteron-1  ](Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.md) |  |
| [ mii-exa-onko-mamma-tumorgroesse-1  ](Observation-mii-exa-onko-mamma-tumorgroesse-1.md) |  |
| [ mii-exa-onko-melanom-bundle-encounter  ](Encounter-mii-exa-onko-melanom-bundle-encounter.md) |  |
| [ mii-exa-onko-melanom-bundle-patient  ](Patient-mii-exa-onko-melanom-bundle-patient.md) |  |
| [ mii-exa-onko-melanom-diagnose  ](Condition-mii-exa-onko-melanom-diagnose.md) |  |
| [ mii-exa-onko-molecular-cdk46-protocol  ](RequestGroup-mii-exa-onko-molecular-cdk46-protocol.md) |  |
| [ mii-exa-onko-molecular-her2-alternatives  ](RequestGroup-mii-exa-onko-molecular-her2-alternatives.md) |  |
| [ mii-exa-onko-molecular-surgery-request  ](ServiceRequest-mii-exa-onko-molecular-surgery-request.md) |  |
| [ mii-exa-onko-palbociclib-therapie  ](Procedure-mii-exa-onko-palbociclib-therapie.md) |  |
| [ mii-exa-onko-pertuzumab-therapie  ](Procedure-mii-exa-onko-pertuzumab-therapie.md) |  |
| [ mii-exa-onko-prostata-anzahl-positiver-stanzen-1  ](Observation-mii-exa-onko-prostata-anzahl-positiver-stanzen-1.md) |  |
| [ mii-exa-onko-prostata-anzahl-stanzen-1  ](Observation-mii-exa-onko-prostata-anzahl-stanzen-1.md) |  |
| [ mii-exa-onko-prostata-bundle-encounter  ](Encounter-mii-exa-onko-prostata-bundle-encounter.md) |  |
| [ mii-exa-onko-prostata-bundle-patient  ](Patient-mii-exa-onko-prostata-bundle-patient.md) |  |
| [ mii-exa-onko-prostata-ca-befall-stanze-1  ](Observation-mii-exa-onko-prostata-ca-befall-stanze-1.md) |  |
| [ mii-exa-onko-prostata-diagnose  ](Condition-mii-exa-onko-prostata-diagnose.md) |  |
| [ mii-exa-onko-prostata-gleason-pattern-grade-group-1  ](Observation-mii-exa-onko-prostata-gleason-pattern-grade-group-1.md) |  |
| [ mii-exa-onko-prostata-gleason-pattern-primary-1  ](Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.md) |  |
| [ mii-exa-onko-prostata-gleason-pattern-secondary-1  ](Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.md) |  |
| [ mii-exa-onko-prostata-gleason-score-gesamt-1  ](Observation-mii-exa-onko-prostata-gleason-score-gesamt-1.md) |  |
| [ mii-exa-onko-prostata-psa-diagnose-1  ](Observation-mii-exa-onko-prostata-psa-diagnose-1.md) |  |
| [ mii-exa-onko-prostata-psa-verlauf-1  ](Observation-mii-exa-onko-prostata-psa-verlauf-1.md) |  |
| [ mii-exa-onko-prostata-surgery-1  ](Procedure-mii-exa-onko-prostata-surgery-1.md) |  |
| [ mii-exa-onko-prostata-surgical-complication-1  ](Observation-mii-exa-onko-prostata-surgical-complication-1.md) |  |
| [ mii-exa-onko-residualstatus-1  ](Observation-mii-exa-onko-residualstatus-1.md) |  |
| [ mii-exa-onko-specimen-1  ](Specimen-mii-exa-onko-specimen-1.md) |  |
| [ mii-exa-onko-studienteilnahme  ](Observation-mii-exa-onko-studienteilnahme.md) |  |
| [ mii-exa-onko-tdm1-option  ](MedicationRequest-mii-exa-onko-tdm1-option.md) |  |
| [ mii-exa-onko-tnm-biopsy-cT4cN1cM0  ](Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.md) |  |
| [ mii-exa-onko-tnm-bundle-diagnose  ](Condition-mii-exa-onko-tnm-bundle-diagnose.md) |  |
| [ mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0  ](Observation-mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0.md) |  |
| [ mii-exa-onko-tnm-bundle-legacy-diagnose  ](Condition-mii-exa-onko-tnm-bundle-legacy-diagnose.md) |  |
| [ mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0  ](Observation-mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0.md) |  |
| [ mii-exa-onko-tnm-bundle-legacy-m-cM0  ](Observation-mii-exa-onko-tnm-bundle-legacy-m-cM0.md) |  |
| [ mii-exa-onko-tnm-bundle-legacy-n-cN3  ](Observation-mii-exa-onko-tnm-bundle-legacy-n-cN3.md) |  |
| [ mii-exa-onko-tnm-bundle-legacy-patient  ](Patient-mii-exa-onko-tnm-bundle-legacy-patient.md) |  |
| [ mii-exa-onko-tnm-bundle-legacy-t-cT2  ](Observation-mii-exa-onko-tnm-bundle-legacy-t-cT2.md) |  |
| [ mii-exa-onko-tnm-bundle-m-kategorie-cM0  ](Observation-mii-exa-onko-tnm-bundle-m-kategorie-cM0.md) |  |
| [ mii-exa-onko-tnm-bundle-n-kategorie-cN3  ](Observation-mii-exa-onko-tnm-bundle-n-kategorie-cN3.md) |  |
| [ mii-exa-onko-tnm-bundle-patient  ](Patient-mii-exa-onko-tnm-bundle-patient.md) |  |
| [ mii-exa-onko-tnm-bundle-t-kategorie-cT2  ](Observation-mii-exa-onko-tnm-bundle-t-kategorie-cT2.md) |  |
| [ mii-exa-onko-tnm-clinical-cT3cN1cM0  ](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.md) |  |
| [ mii-exa-onko-tnm-journey-l-kategorie-L0  ](Observation-mii-exa-onko-tnm-journey-l-kategorie-L0.md) |  |
| [ mii-exa-onko-tnm-journey-pn-kategorie-Pn0  ](Observation-mii-exa-onko-tnm-journey-pn-kategorie-Pn0.md) |  |
| [ mii-exa-onko-tnm-journey-residualstatus-R0  ](Observation-mii-exa-onko-tnm-journey-residualstatus-R0.md) |  |
| [ mii-exa-onko-tnm-journey-v-kategorie-V0  ](Observation-mii-exa-onko-tnm-journey-v-kategorie-V0.md) |  |
| [ mii-exa-onko-tnm-klassifikation-TisN0M0  ](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.md) |  |
| [ mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1  ](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.md) |  |
| [ mii-exa-onko-tnm-l-kategorie-L  ](Observation-mii-exa-onko-tnm-l-kategorie-L.md) |  |
| [ mii-exa-onko-tnm-l-kategorie-L1  ](Observation-mii-exa-onko-tnm-l-kategorie-L1.md) |  |
| [ mii-exa-onko-tnm-m-kategorie-M0  ](Observation-mii-exa-onko-tnm-m-kategorie-M0.md) |  |
| [ mii-exa-onko-tnm-m-kategorie-cM0  ](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md) |  |
| [ mii-exa-onko-tnm-m-kategorie-cM1  ](Observation-mii-exa-onko-tnm-m-kategorie-cM1.md) |  |
| [ mii-exa-onko-tnm-m-kategorie-rcM1  ](Observation-mii-exa-onko-tnm-m-kategorie-rcM1.md) |  |
| [ mii-exa-onko-tnm-n-kategorie-N0  ](Observation-mii-exa-onko-tnm-n-kategorie-N0.md) |  |
| [ mii-exa-onko-tnm-n-kategorie-cN1  ](Observation-mii-exa-onko-tnm-n-kategorie-cN1.md) |  |
| [ mii-exa-onko-tnm-n-kategorie-pN0i-sn  ](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.md) |  |
| [ mii-exa-onko-tnm-n-kategorie-rcN1  ](Observation-mii-exa-onko-tnm-n-kategorie-rcN1.md) |  |
| [ mii-exa-onko-tnm-n-kategorie-ycN0  ](Observation-mii-exa-onko-tnm-n-kategorie-ycN0.md) |  |
| [ mii-exa-onko-tnm-n-kategorie-ypN0  ](Observation-mii-exa-onko-tnm-n-kategorie-ypN0.md) |  |
| [ mii-exa-onko-tnm-pn-kategorie-Pn1  ](Observation-mii-exa-onko-tnm-pn-kategorie-Pn1.md) |  |
| [ mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0  ](Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.md) |  |
| [ mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0  ](Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.md) |  |
| [ mii-exa-onko-tnm-recurrence-rcT2cN1cM1  ](Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.md) |  |
| [ mii-exa-onko-tnm-s-kategorie-S1  ](Observation-mii-exa-onko-tnm-s-kategorie-S1.md) |  |
| [ mii-exa-onko-tnm-synth-diagnose  ](Condition-mii-exa-onko-tnm-synth-diagnose.md) |  |
| [ mii-exa-onko-tnm-synth-klassifikation  ](Observation-mii-exa-onko-tnm-synth-klassifikation.md) |  |
| [ mii-exa-onko-tnm-synth-meldung1-klassifikation  ](Observation-mii-exa-onko-tnm-synth-meldung1-klassifikation.md) |  |
| [ mii-exa-onko-tnm-synth-meldung1-m-cM0  ](Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.md) |  |
| [ mii-exa-onko-tnm-synth-meldung1-n-cN2  ](Observation-mii-exa-onko-tnm-synth-meldung1-n-cN2.md) |  |
| [ mii-exa-onko-tnm-synth-meldung1-t-cT3  ](Observation-mii-exa-onko-tnm-synth-meldung1-t-cT3.md) |  |
| [ mii-exa-onko-tnm-synth-meldung2-klassifikation  ](Observation-mii-exa-onko-tnm-synth-meldung2-klassifikation.md) |  |
| [ mii-exa-onko-tnm-synth-meldung2-n-pN1  ](Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.md) |  |
| [ mii-exa-onko-tnm-synth-meldung2-t-pT2  ](Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.md) |  |
| [ mii-exa-onko-tnm-synth-patient  ](Patient-mii-exa-onko-tnm-synth-patient.md) |  |
| [ mii-exa-onko-tnm-synth-tumorkonferenz  ](CarePlan-mii-exa-onko-tnm-synth-tumorkonferenz.md) |  |
| [ mii-exa-onko-tnm-t-kategorie-Tis  ](Observation-mii-exa-onko-tnm-t-kategorie-Tis.md) |  |
| [ mii-exa-onko-tnm-t-kategorie-cT3  ](Observation-mii-exa-onko-tnm-t-kategorie-cT3.md) |  |
| [ mii-exa-onko-tnm-t-kategorie-cT4  ](Observation-mii-exa-onko-tnm-t-kategorie-cT4.md) |  |
| [ mii-exa-onko-tnm-t-kategorie-rcT2  ](Observation-mii-exa-onko-tnm-t-kategorie-rcT2.md) |  |
| [ mii-exa-onko-tnm-t-kategorie-uT2a2  ](Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.md) |  |
| [ mii-exa-onko-tnm-t-kategorie-ycT2  ](Observation-mii-exa-onko-tnm-t-kategorie-ycT2.md) |  |
| [ mii-exa-onko-tnm-t-kategorie-ypT0  ](Observation-mii-exa-onko-tnm-t-kategorie-ypT0.md) |  |
| [ mii-exa-onko-tnm-v-kategorie-V1  ](Observation-mii-exa-onko-tnm-v-kategorie-V1.md) |  |
| [ mii-exa-onko-tod-j  ](Observation-mii-exa-onko-tod-j.md) |  |
| [ mii-exa-onko-tod-n  ](Observation-mii-exa-onko-tod-n.md) |  |
| [ mii-exa-onko-tod-u  ](Observation-mii-exa-onko-tod-u.md) |  |
| [ mii-exa-onko-trastuzumab-therapie  ](Procedure-mii-exa-onko-trastuzumab-therapie.md) |  |
| [ mii-exa-onko-tucatinib-option  ](MedicationRequest-mii-exa-onko-tucatinib-option.md) |  |
| [ mii-exa-onko-tumorgroesse  ](Observation-mii-exa-onko-tumorgroesse.md) |  |
| [ mii-exa-onko-tumorkonferenz-01  ](CarePlan-mii-exa-onko-tumorkonferenz-01.md) |  |
| [ mii-exa-onko-tumorkonferenz-02  ](CarePlan-mii-exa-onko-tumorkonferenz-02.md) |  |
| [ mii-exa-onko-tumorkonferenz-mixed-approach  ](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.md) |  |
| [ mii-exa-onko-tumorkonferenz-molekular  ](CarePlan-mii-exa-onko-tumorkonferenz-molekular.md) |  |
| [ mii-exa-onko-tumorkonferenz-pure-molecular  ](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.md) |  |
| [ mii-exa-onko-verlauf-journey-post-chemo  ](Observation-mii-exa-onko-verlauf-journey-post-chemo.md) |  |
| [ mii-exa-onko-verlauf-journey-post-surgery  ](Observation-mii-exa-onko-verlauf-journey-post-surgery.md) |  |
| [ mii-exa-onko-verlauf-journey-recurrence  ](Observation-mii-exa-onko-verlauf-journey-recurrence.md) |  |
| [ mii-exa-onko-verlauf-tumor  ](Observation-mii-exa-onko-verlauf-tumor.md) |  |
| [ mii-exa-onko-weitere-klassifikationen-1  ](Observation-mii-exa-onko-weitere-klassifikationen-1.md) |  |
| [ mii-exa-onko-weitere-klassifikationen-2  ](Observation-mii-exa-onko-weitere-klassifikationen-2.md) |  |
| [ mii-exa-onko-weitere-klassifikationen-3  ](Observation-mii-exa-onko-weitere-klassifikationen-3.md) |  |
| [ mii-exa-onko-weitere-klassifikationen-4  ](Observation-mii-exa-onko-weitere-klassifikationen-4.md) |  |
| [ mii-pr-onko-nebenwirkung-0  ](AdverseEvent-mii-pr-onko-nebenwirkung-0.md) |  |
| [ mii-pr-onko-nebenwirkung-text  ](AdverseEvent-mii-pr-onko-nebenwirkung-text.md) |  |

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| |
| :--- |
| [ mii-param-onko-manifest  ](Parameters-mii-param-onko-manifest.md) |

