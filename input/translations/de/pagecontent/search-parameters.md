<!-- markdownlint-disable MD041 -->

### Suchparameter

Das Modul definiert eigene SearchParameter (u. a. für die
TNM-Präfix-Extensions `tnm-cp-praefix`, `tnm-y-praefix` und `tnm-r-praefix`
sowie weitere Extension-basierte Suchen). Die vollständige, automatisch
generierte Liste findet sich auf der [Artefakt-Übersicht](artifacts.html);
welche Suchparameter ein Server verpflichtend unterstützen MUSS, definiert
das [CapabilityStatement](capability-statements.html) des Moduls.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile (Suchparameter-Abschnitte der Profilseiten) gate=B -->
Die Profilseiten des Simplifier-Leitfadens führten je Profil einen
Suchparameter-Abschnitt mit GET-Beispielen. Diese Abschnitte waren
seitenübergreifend identische Boilerplate mit teils fehlerhaften Beispielen
(falsche Ressourcentypen, defekte Codeblöcke) und wurden bei der Migration
bewusst **hier konsolidiert** statt auf jeder Profilseite wiederholt. Die
verbindlichen Kernaussagen:

- Server MÜSSEN die im CapabilityStatement gelisteten Suchparameter je
  Ressourcentyp unterstützen (u. a. `_profile`, `status`, `code`, `subject`,
  `date`/`effective` sowie die referenzbasierten Parameter wie `part-of`).
- Suchbeispiele folgen der FHIR-Basisspezifikation
  ([Search](http://hl7.org/fhir/R4/search.html)); die Token-Suche auf
  Codierungen erfolgt in der Form `[system]|[code]` (z. B.
  `GET [base]/MedicationStatement?code=http://fhir.de/CodeSystem/bfarm/atc|L01AA01`).
- Für die Extension-basierten Suchen (TNM-Präfixe) sind die
  SearchParameter-Artefakte des Moduls maßgeblich.
