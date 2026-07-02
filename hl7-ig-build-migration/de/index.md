# Start - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Start

### Beschreibung Modul

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz-Moduls Onkologie der Medizininformatik-Initiative (MII). Im Folgenden werden die Anwendungsfälle des Moduls sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

Das Modul Onkologie dient der Erfassung onkologischer Datenpunkte. In seiner ersten Version orientiert sich das Modul am ADT/GEKID-Basisdatensatz, der die Grundlage für die nationalen Krebsregister bildet. Das umfasst diagnostische und histologische Parameter sowie Angaben zu Behandlung, Tumor-Staging zu Beginn und im Verlauf sowie die Erfassung von Nebenwirkungen und die Erkennung von Metastasen.

| | |
| :--- | :--- |
| Datum | 19.12.2025 |
| Version | 2026.0.3 |
| Status | active |
| Realm | DE |

> Deutsch ist die führende und verbindliche Sprache (KDS-Governance). Eine englische Übersetzung ist optional und wird über Übersetzungskataloge bereitgestellt (siehe [Hinweise zur Mehrsprachigkeit](translationinfo.md)).

### Inhalt und Zweck der Modellierung

Das KDS-Modul Onkologie hat das Ziel, die onkologischen Daten, die in der Primärversorgung und bei der Krebsregistermeldung anfallen, korrekt abzubilden und mit anderen Datenquellen in Beziehung zu bringen.

Fokus der ersten Implementierungsversion ist die Überführung der im oBDS anfallenden Registerdaten für die Sekundärdatennutzung mit dem Forschungsdatenportal Gesundheit (FDPG) und anderen Projekten im Rahmen von PM4Onko. Daher sind in dieser Version nur die Datenpunkte enthalten, die klinisch-diagnostischen oder therapeutischen Charakter haben. Administrative (z. B. Meldung, Melder) oder personenidentifizierende (Person, Tumorzuordnung) Datenpunkte liegen außerhalb des Betrachtungsrahmens.

Der oBDS sieht neben dem Basisdatensatz eine Erhebung von organspezifischen Datenfeldern vor. Seit der Version 2026 sind die organspezifischen Module (Mamma, Kolorektales Karzinom, Prostata, Malignes Melanom) Teil des Moduls Onkologie.

### Mapping auf offene Datenstandards

Der onkologische Basisdatensatz enthält ValueSets, die primär durch ADT/GEKID definiert wurden und keinen direkten Bezug zu offenen Datenstandards und -terminologien wie SNOMED CT oder LOINC haben. Die Kodierung der Antwortmöglichkeiten wurde in der gleichen Art und Weise übernommen, wie sie auch in den Primärsystemen vorliegt. Gleichzeitig stellt dieser Implementierungsleitfaden ein vorläufiges Mapping der Felder und Antwortmöglichkeiten auf SNOMED CT (sowie ggf. anderer Terminologien) als FHIR ConceptMap bereit. Sobald ein offizielles nationales Mapping der oBDS-Krebsregisterdaten auf SNOMED CT durch die Landeskrebsregister und das BfArM veröffentlicht ist, wird das hier enthaltene Mapping entsprechend aktualisiert.

### Zielgruppen (Intended Audience)

Forschende, Health Data Provider / Datenintegrationszentren (DIZ), technische Implementierende sowie die an der onkologischen Sekundärdatennutzung beteiligten Register und Projekte.

### Inhalt dieses Leitfadens

* [Anwendungsfälle / Szenarien](use-cases.md)
* [Datensätze und Beschreibungen](data-sets.md)
* [Informationsmodell (UML)](uml.md)
* [Konformität](conformance.md) — Must Support, fehlende Daten, Such-API, Terminologien
* [Bezüge zu anderen Modulen](context.md)
* [Abweichungen zum oBDS](abweichungen-obds.md)
* [Bezug zu nationalen Standards](bezug-nationale-standards.md)
* [Bezug zu internationalen Standards](bezug-internationale-standards.md)
* [Referenzen](references.md)
* [Artefakte](artifacts.md), [Downloads](downloads.md), [Release Notes](changes.md)
* [Hinweise zur Mehrsprachigkeit](translationinfo.md)

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

* Thomas Debertshäuser, Berlin Institute of Health (Charité)
* Martin Boeker (DIFUTURE)
* Sylvia Thun, Berlin Institute of Health (Charité)
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e. V.
* Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e. V.

Fragen zu dieser Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org) im Stream `german/mi-initiative` gestellt werden. Anmerkungen und Kritik werden in Form von Issues im [GitHub-Projekt](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues) stets gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

* Christian Gulden (BZKF / Erlangen)
* Jori Kern (DKFZ Heidelberg)
* Julian Saß, Berlin Institute of Health (Charité)
* Margaux Gatrio, Berlin Institute of Health (Charité)
* Lotte Schwiening, Berlin Institute of Health (Charité)
* Paul Müller, Berlin Institute of Health (Charité)
* Nina Haffer, Berlin Institute of Health (Charité)
* Sophie Klopfenstein, Berlin Institute of Health (Charité)
* Thomas Debertshäuser, Berlin Institute of Health (Charité)
* Yuan Peng, Institut für Medizinische Informatik und Biometrie (TU Dresden)

### Copyright-Hinweis, Nutzungshinweise

Copyright © 2019+: TMF e. V., Charlottenstraße 42, 10117 Berlin.

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt. Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation. Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die Copyright HL7 International gilt.

