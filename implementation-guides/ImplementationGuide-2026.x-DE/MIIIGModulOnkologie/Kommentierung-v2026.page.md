---
parent: 
topic: Kommentierung v2026
---

## {{page-title}}

Diese Seite sammelt spezifische Punkte, für die gezieltes Feedback in der Kommentierungsphase v2026 benötigt wird.

<!-- Content wird nach Bedarf hinzugefügt -->
* Brauchen wir ein extra Profil für präoperative Drahtmarkierung, oder reicht die Darstellung über einen Slice ( ggfs. mit Extension für Kontext prä-intra-postoperativ?) 
* Korrekte semantische Annotation PSA-Level (frei vs. total, oder einzelne Profile für beides, oder ein Profil mit mehreren Möglichen Codes?) Wie damit umgehen, dass LOINC bald verpflichtend wird, aber im Tumpordokumentationssystem vsl. nicht kod
* Clavien-Dindo Graduierung: Sollte das Clavien-Dindo System für postoperative Komplikationen möglicherweise ins allgemeine Operation/Surgery-Modul verschoben werden, da es sich um ein universelles chirurgisches Klassifikationssystem handelt und nicht prostata-spezifisch ist?
* Clavien-Dindo als AdverseEvent: Sollte die Clavien-Dindo-Klassifikation möglicherweise als FHIR AdverseEvent-Ressource modelliert werden statt als Observation, da es sich um die Bewertung unerwünschter postoperativer Ereignisse handelt? Dies würde eine direktere semantische Zuordnung ermöglichen und die Verknüpfung zu auslösenden Procedures unterstützen.
* Clavien-Dindo in Procedure.complication: Alternativ könnte die Clavien-Dindo-Bewertung direkt als `Procedure.complication` in der entsprechenden Operation modelliert werden, da es sich um ein chirurgisches Komplikations-Klassifikationssystem handelt. Dies würde die direkte Zuordnung zur auslösenden Procedure ermöglichen, könnte aber bei seltener Anwendbarkeit zu leeren Feldern führen. Zu beachten ist, dass `Procedure.complication` bereits für oBDS/ICD-10 gemappte operative Komplikationen verwendet wird (siehe https://www.basisdatensatz.de/feld/194/op-komplikationen). 
