---
parent: 
topic: Kommentierung v2026
---

## {{page-title}}

Diese Seite sammelt spezifische Punkte, für die gezieltes Feedback in der Kommentierungsphase v2026 benötigt wird.

### Organspezifische Module

* Brauchen wir ein extra Profil für präoperative Drahtmarkierung, oder reicht die Darstellung über einen Slice ( ggfs. mit Extension für Kontext prä-intra-postoperativ?) 
* Korrekte semantische Annotation PSA-Level (frei vs. total, oder einzelne Profile für beides, oder ein Profil mit mehreren Möglichen Codes?) Wie damit umgehen, dass LOINC bald verpflichtend wird, aber im Tumpordokumentationssystem vsl. nicht kod
* Clavien-Dindo Graduierung: Sollte das Clavien-Dindo System für postoperative Komplikationen möglicherweise ins allgemeine Operation/Surgery-Modul verschoben werden, da es sich um ein universelles chirurgisches Klassifikationssystem handelt und nicht prostata-spezifisch ist?
* Clavien-Dindo als AdverseEvent: Sollte die Clavien-Dindo-Klassifikation möglicherweise als FHIR AdverseEvent-Ressource modelliert werden statt als Observation, da es sich um die Bewertung unerwünschter postoperativer Ereignisse handelt? Dies würde eine direktere semantische Zuordnung ermöglichen und die Verknüpfung zu auslösenden Procedures unterstützen.
* Clavien-Dindo in Procedure.complication: Alternativ könnte die Clavien-Dindo-Bewertung direkt als `Procedure.complication` in der entsprechenden Operation modelliert werden, da es sich um ein chirurgisches Komplikations-Klassifikationssystem handelt. Dies würde die direkte Zuordnung zur auslösenden Procedure ermöglichen, könnte aber bei seltener Anwendbarkeit zu leeren Feldern führen. Zu beachten ist, dass `Procedure.complication` bereits für oBDS/ICD-10 gemappte operative Komplikationen verwendet wird (siehe https://www.basisdatensatz.de/feld/194/op-komplikationen).

### Weitere Klassifikationen - mCODE STU4 Pattern Integration

* **Method-Element Binding**: Das `Observation.method` Element wurde als Must Support hinzugefügt, um dem mCODE STU4 Pattern zu folgen. Welches ValueSet soll für `method` verwendet werden? 
  - Option 1: Dasselbe ValueSet wie für `code` (aktuell implementiert)
  - Option 2: Separates ValueSet nur für Klassifikationssystem-Methoden
  - Option 3: Beschränkung auf SNOMED CT Staging-System-Codes

* **ValueSet-Struktur für konkrete Klassifikationswerte**: Die aktuellen ValueSets enthalten primär Staging-**System**-Codes (z.B. "FIGO staging of cervical carcinoma"), aber für `Observation.value` werden die konkreten **Werte** benötigt (z.B. "FIGO Stage IIA", "BINET A"). 
  - Sollten separate ValueSets für die konkreten Klassifikationswerte erstellt werden?
  - Oder soll die aktuelle hierarchische oBDS-CodeSystem-Struktur mit `descendant-of` Filtern beibehalten werden?

* **Terminologie-Priorisierung**: Basierend auf der mCODE STU4 Analyse fehlen noch SNOMED CT Codes für viele konkrete Klassifikationswerte. Soll systematisch nach fehlenden SNOMED CT/LOINC Codes gesucht werden, bevor die oBDS-spezifischen Codes finalisiert werden?

* **Integration bestehender SNOMED CT Codes**: Für etablierte Scores wie IPI (SCTID: 716567001), FLIPI (708736003), MIPI (763236005) existieren bereits SNOMED CT Codes. Sollen die entsprechenden oBDS-Codes entfernt oder als alternative Kodierung beibehalten werden? 

### Molekulare Tumorboards und detaillierte Therapieempfehlungen

* **ServiceRequest-Profiling für spezifische Therapieempfehlungen**: Das neue CarePlan-Profil für detaillierte Therapieempfehlungen kann neben RequestGroup auch MedicationRequest und ServiceRequest referenzieren. Benötigen wir spezifische onkologische Profile für ServiceRequest-basierte Therapieempfehlungen?
  - Spezifische ServiceRequest-Profile für onkologische Operationen (z.B. tumorspezifische Eingriffe)
  - Spezifische ServiceRequest-Profile für Strahlentherapie-Empfehlungen
  - **Radioaktive Metaboliten**: Sollten diese als MedicationRequest (da es sich um Substanzen handelt) oder als ServiceRequest (da es sich um eine spezialisierte Therapieprozedur handelt) modelliert werden?
  
  **Hintergrund**: Krebsregister dokumentieren zunächst die Tumorboard-Planung und erfassen später die tatsächlich durchgeführten Maßnahmen. Diese Lücke zwischen geplanter und dokumentierter Therapie könnte eine Über-Spezifikation darstellen.

* **CarePlan vs. RequestGroup für Tumorboard-Dokumentation**: Ist die gewählte CarePlan-basierte Architektur für molekulare Tumorboards angemessen? 
  - **Pro CarePlan**: Entspricht der realen Dokumentationspraxis - Krebsregister dokumentieren Tumorboard-Empfehlungen als durchgeführte "Therapieplanung" (oBDS-konforme Dokumentation)
  - **Alternative RequestGroup-first**: RequestGroup als primäre Tumorboard-Empfehlung, CarePlan später als `basedOn`-Referenz durch behandelnde Ärzte
  - **Praktische Überlegung**: Nicht alle behandelnden Einrichtungen können FHIR implementieren - die Krebsregister-Dokumentation erfolgt primär über CarePlans als "realisierte Therapieplanung"
  
  **Kernfrage**: Soll die FHIR-Modellierung die praktische Dokumentationsrealität (CarePlan-basiert) oder die konzeptuelle Workflow-Logik (RequestGroup-first) abbilden?
