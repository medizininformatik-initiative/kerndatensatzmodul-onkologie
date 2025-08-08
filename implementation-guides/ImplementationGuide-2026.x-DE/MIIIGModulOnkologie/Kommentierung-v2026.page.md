---
parent: 
topic: Kommentierung v2026
---

## {{page-title}}

Diese Seite sammelt spezifische Punkte, für die gezieltes Feedback in der Kommentierungsphase v2026 benötigt wird.

### Organspezifische Module

#### Mamma
  * Brauchen wir ein extra Profil für präoperative Drahtmarkierung (derzeitige Umsetzung), oder "reicht" die Darstellung über einen usedCode-Slice ( ggfs. mit Extension für Kontext prä-intra-postoperativ?) 

#### Prostata
* Korrekte semantische Annotation PSA-Level (frei vs. total, oder einzelne Profile für beides, oder ein Profil mit mehreren Möglichen Codes?) Wie damit umgehen, dass LOINC bald verpflichtend wird, aber im Tumpordokumentationssystem vsl. nicht kodiert

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

* **Strahlentherapie Zielgebiet - oBDS 2014/2021 Architekturänderung**: Die Integration von oBDS 2014 Zielgebiet-Codes ist aufgrund der grundlegenden Architekturänderung zwischen den Versionen erforderlich.
  - **2014 Ansatz**: Kombinierte Organ+Lymphknoten-Kodierung mit `+`/`-` Suffixen (z.B. `"3.1.+"` = "Mamma mit Lymphknoten", `"3.1.-"` = "Mamma ohne Lymphknoten")
  - **2021 Änderung**: Separate Kodierung von Organen (Sektionen 1-8) und dedizierten Lymphknotenregionen (Sektion 9)
  - **Technische Lösung**: Separates CodeSystem für oBDS 2014 mit eigener URI - semantische Konflikte über Versionskennzeichnung vermeidbar
  
  **Kommentierungsfrage**: Ist die gewählte Lösung (separate CodeSystems mit kombiniertem ValueSet) für die Abwärtskompatibilität angemessen, oder sollten alternative Migrationsansätze betrachtet werden?

### Post-hoc ATC-Kodierung durch Datenintegrationszentren (KONTROVERS)

* **Freitext-zu-ATC-Mapping**: Dürfen Datenintegrationszentren (DIZ) nachträglich Freitext-Medikationsdaten aus historischen oBDS-Daten auf ATC-Codes mappen?
  
  **Vorgeschlagener Ansatz (EXTREM KONTROVERS)**:
  - DIZ **dürfen** Post-Annotation durchführen, wenn sie dies klar als solche kennzeichnen
  - Bei Post-Annotation sollten **aktuelle** ATC-Codes verwendet werden, nicht historische
  - Die originale Freitextinformation muss erhalten bleiben
  - Provenance-Dokumentation ist zwingend erforderlich
  
  **Pro-Argumente**:
  - Verbesserte Datenqualität für Analysen
  - Einheitlichere Kodierung über Standorte hinweg
  - Vermeidung von Informationsverlust bei Altdaten
  - Pragmatische Lösung für reale Datenintegrationsprobleme
  
  **Contra-Argumente**:
  - Verfälschung historischer Dokumentation
  - Inkonsistenz mit Original-Therapiezeitpunkt (z.B. Quizartinib 2020 mit Code von 2021)
  - Potenzielle Fehlinterpretationen bei retrospektiven Analysen
  - Abweichung von etablierten Dokumentationsstandards
  
  **Beispiel-Kontroverse**: Ein Patient erhielt 2020 Quizartinib (damals ATC L01XE52). Das DIZ kodiert 2024 nachträglich mit dem aktuellen Code L01EX11. Ist dies akzeptabel mit entsprechender Provenance-Markierung?
  
  **Kernfragen für Kommentierung**:
  1. Ist Post-Annotation von Freitext zu ATC-Codes grundsätzlich erlaubt?
  2. Falls ja, welche ATC-Version soll verwendet werden (historisch korrekt vs. aktuell)?
  3. Welche Provenance-Standards sind minimal erforderlich?
  4. Sollte es eine zentrale Mapping-Tabelle für häufige Freitext-Einträge geben?
