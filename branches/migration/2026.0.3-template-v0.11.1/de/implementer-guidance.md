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

