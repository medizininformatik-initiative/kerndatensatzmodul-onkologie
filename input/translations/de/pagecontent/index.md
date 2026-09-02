<!-- markdownlint-disable MD041 -->

### Einführung

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des
Kerndatensatz-Moduls **Onkologie** der Medizininformatik-Initiative (MII).
Im Folgenden werden die Use Cases des Moduls sowie die dazugehörigen
FHIR-Profile, Extensions und Terminologie-Ressourcen in ihrer verbindlichen
Form beschrieben. Der MII-Kerndatensatz ermöglicht die standardisierte
Sekundärnutzung klinischer Routinedaten für die medizinische Forschung.

Das Modul Onkologie orientiert sich am **onkologischen Basisdatensatz (oBDS)**,
der die Grundlage der nationalen Krebsregistrierung bildet. Das umfasst
diagnostische und histologische Parameter sowie Angaben zu Behandlung,
Tumor-Staging zu Beginn und im Verlauf, die Erfassung von Nebenwirkungen und
die Erkennung von Metastasen.

| Veröffentlichung |               |
|------------------|---------------|
| Datum            | 2026-03-27    |
| Version          | 2026.0.3 (CalVer `YYYY.n.n`) |
| Status           | active        |
| Realm            | DE            |

### Inhalt und Zweck der Modellierung

Das KDS-Modul Onkologie hat das Ziel, die onkologischen Daten, die in der
Primärversorgung und bei der Krebsregistermeldung anfallen, korrekt abzubilden
und mit anderen Datenquellen in Beziehung zu bringen.

Fokus der ersten Implementierungsversion ist die Überführung der im oBDS
anfallenden Registerdaten für die Sekundärdatennutzung mit dem FDPG und anderen
Projekten im Rahmen von PM4Onko. Daher sind in dieser Version nur die
Datenpunkte enthalten, die klinisch-diagnostischen oder therapeutischen
Charakter haben. Administrative (z. B. Meldung, Melder) oder
personenidentifizierende (Person, Tumorzuordnung) Datenpunkte sind nicht
innerhalb des Betrachtungsrahmens.

Der oBDS sieht neben dem Basisdatensatz eine Erhebung von organspezifischen
Datenfeldern vor. Organspezifische Module (u. a. Mamma, Prostata, Kolorektal)
werden schrittweise ergänzt.

### Mapping auf offene Datenstandards

Der onkologische Basisdatensatz enthält Wertelisten, die primär durch ADT/GEKID
definiert wurden und keinen direkten Bezug zu offenen Terminologien wie
SNOMED CT oder LOINC haben. Die Kodierung der Antwortmöglichkeiten wurde so
übernommen, wie sie auch in den Primärsystemen vorliegt. Gleichzeitig stellt
dieser Implementierungsleitfaden ein vorläufiges Mapping der Felder und
Antwortmöglichkeiten auf SNOMED CT (sowie ggf. andere Terminologien) als
FHIR ConceptMap bereit. Die Landeskrebsregister streben mit dem BfArM die
Erstellung eines offiziellen nationalen Mappings der oBDS-Krebsregisterdaten
auf SNOMED CT an; sobald dieses veröffentlicht ist, wird das hier enthaltene
Mapping entsprechend aktualisiert.

### Zielgruppen

<div class="ig-highlight ig-highlight-blue">
<h5>Implementierende</h5>
<p>Datenintegrationszentren (DIZ), Softwareentwickler:innen und Systemarchitekt:innen, die FHIR-basierte Lösungen bauen.<br/>
→ siehe <a href="profiles.html">Profile</a> und <a href="logical-models.html">Logische Modelle</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Forschende</h5>
<p>Wissenschaftler:innen, die KDS-Daten für die medizinische Forschung nutzen.<br/>
→ siehe <a href="researcher-guidance.html">Hinweise für Forschende</a>.</p>
</div>

### Inhalte

- **[Guidance](guidance.html)** — Einstieg und fachliche Hinweise.
- **Konformität** — die KDS-weiten Konformitätsregeln (Verbindlichkeitssprache,
  Must Support, Umgang mit fehlenden Daten) pflegt zentral das
  [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  die modulspezifischen Hinweise zu
  [Sicherheit und Datenschutz](security-and-privacy.html) sind Teil dieses
  Leitfadens.
- **[Profile](profiles.html)** und die weiteren
  **[Artefakt-Seiten](artifacts.html)** — die technischen Artefakte.
- **[Beispiele](examples.html)** — Beispielinstanzen.
- **[Abhängigkeiten](ImplementationGuide-mii-ig-onko-de-v2026.html)** — die
  ImplementationGuide-Ressource mit Abhängigkeitstabelle und
  Copyright-Angaben.

### Verwandte Leitfäden

Dieses Modul ist Teil des MII-Kerndatensatzes. Es baut auf den deutschen
Basisprofilen (`de.basisprofil.r4`) und den KDS-Modulen Meta und Basis auf und
referenziert die Module Biobank, Medikation, Molekulargenetischer
Befundbericht (MolGen) und Studie/Forschungsvorhaben; die weiteren KDS-Module
sind auf
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/)
beschrieben.

Weitere FHIR-Implementierungsleitfäden finden sich in der offiziellen
**[FHIR IG Registry](https://fhir.org/guides/registry/)**.

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden
und unterliegt per Governance-Prozess dem Abstimmungsverfahren des
Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Ansprechpartner

- Thomas Debertshäuser, Berlin Institute of Health (Charité)
- Martin Boeker (DIFUTURE)
- Sylvia Thun, Berlin Institute of Health (Charité)
- Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e. V.
- Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e. V.

Fragen zu der vorliegenden Publikation können jederzeit auf
[chat.fhir.org](https://chat.fhir.org) im Stream `german/mi-initiative` oder im
MII-Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) im Stream
`MII-Kerndatensatz` gestellt werden. Anmerkungen und Kritik werden in Form von
*Issues* auf
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues)
stets gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

- Christian Gulden (BZKF / Erlangen)
- Jori Kern (DKFZ Heidelberg)
- Julian Saß, Berlin Institute of Health (Charité)
- Margaux Gatrio, Berlin Institute of Health (Charité)
- Lotte Schwiening, Berlin Institute of Health (Charité)
- Paul Müller, Berlin Institute of Health (Charité)
- Nina Haffer, Berlin Institute of Health (Charité)
- Sophie Klopfenstein, Berlin Institute of Health (Charité)
- Thomas Debertshäuser, Berlin Institute of Health (Charité)
- Yuan Peng, Institut für Medizinische Informatik und Biometrie (TU Dresden)

### Copyright und Lizenz

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich und steht unter
**[CC0-1.0 (Public Domain Dedication)](https://creativecommons.org/publicdomain/zero/1.0/)**;
Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die
FHIR-Basisspezifikation. Einige verwendete Codesysteme werden von anderen
Organisationen herausgegeben und gepflegt; es gilt das Copyright der jeweils
aufgeführten Herausgeber.

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses
Dokuments auf FHIR Version R4 beruhen, für die das Copyright von
HL7 International gilt.

Trotz größter Sorgfalt bei der Erstellung übernehmen die Autoren keine Haftung
für direkte oder indirekte Schäden, die aus dem Inhalt dieser Spezifikation
entstehen könnten.
