# Anleitung für Forschende - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc3

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Forschende**

## Anleitung für Forschende

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Anleitung für Forschende

Die Daten dieses Moduls entstammen der **onkologischen Tumordokumentation entlang der oBDS-Meldeanlässe** (Diagnose, Operation, Beginn/Ende von Strahlen- und Systemtherapie, Verlauf, Tod) — demselben Dokumentationsstrom, der die deutschen Krebsregister speist. Zwei Konsequenzen dieser Herkunft sind für jede Analyse relevant:

#### 1. Die Daten kommen mit Meldeverzug

Meldeanlässe werden mit Verzögerung dokumentiert und weitergeleitet — gesetzliche Meldefristen, hausinterne Dokumentationsrückstände und die Verarbeitung im Register summieren sich auf Monate. Für die Forschung heißt das:

* **Jüngere Zeiträume sind systematisch unvollständig.** Ein Einbruch der Fall- oder Therapiezahlen in den letzten Monaten ist in aller Regel ein Melde-Artefakt, kein epidemiologisches Signal.
* **Kohorten-Stichtage konservativ wählen** (Data-Freeze deutlich vor dem Analysedatum) und den Freeze-Zeitpunkt zu jedem Ergebnis mit angeben.
* Das **Fehlen eines jungen Ereignisses ist schwache Evidenz**: ein fehlender Verlauf oder ein fehlendes Therapieende kann schlicht noch nicht eingetroffen sein.

#### 2. Der Auszug eines einzelnen Standorts kann unvollständig sein

Onkologische Versorgung ist verteilt: Die Resektion findet im Zentrum statt, während **Follow-up und adjuvante Therapie an anderen Standorten** erfolgen (Praxen, Häuser der Regelversorgung, Reha). Ein Datenauszug eines Standorts dokumentiert daher dessen Anteil am Krankheitsverlauf — nicht notwendig den ganzen Verlauf:

* **Das Fehlen eines Eintrags ist kein Fehlen einer Behandlung.** Eine Patientin ohne dokumentierte Systemtherapie kann sie andernorts erhalten haben.
* Signale in den Daten können auf externe Behandlung hinweisen — etwa eine TNM-Klassifikation mit **y-Präfix** (Zustand während/nach neoadjuvanter Therapie) ohne dokumentierte Systemtherapie-Episode.
* Vorsicht bei **Nennern**: „Patienten ohne adjuvante Therapie" aus einem Einzelstandort-Auszug vermischt tatsächlich Unbehandelte mit extern Behandelten. Fragestellungen robust dagegen wählen — oder für Gesamtverlaufs-Fragen die bevölkerungsbezogenen Landeskrebsregister nutzen, deren standortübergreifende Konsolidierung die vollständigere Quelle ist.
* In MII-Projekten mit mehreren Standorten mildert **Record Linkage** die Fragmentierung — beseitigt sie aber nicht.

Beide Eigenschaften sind der registergespeisten klinischen Krebsdokumentation inhärent; sie sind keine Datenqualitätsmängel eines einzelnen Standorts. Analysen sollten sie im Limitations-Abschnitt benennen.

