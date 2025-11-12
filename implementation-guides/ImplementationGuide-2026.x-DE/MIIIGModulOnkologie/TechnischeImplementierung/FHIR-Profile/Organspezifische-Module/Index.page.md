---
parent: 
topic: OrganspezifischeModule
---

## {{page-title}}

### Übersicht

Die organspezifischen Module erweitern das MII KDS Onkologie Basismodul um **entitätsspezifische Datenelemente** gemäß den Anforderungen der ADT/GEKID-Basisdokumentation. Diese Module adressieren die besonderen diagnostischen und therapeutischen Aspekte einzelner Tumorentitäten, die über die allgemeinen onkologischen Datenelemente hinausgehen.

### Verfügbare Module

Das Erweiterungsmodul Onkologie umfasst derzeit folgende organspezifische Module:

#### {{pagelink:MammaModule}}
Spezialisierte Profile für die Dokumentation von Mammakarzinomen mit Fokus auf:
- Hormonrezeptorstatus (Estrogen, Progesteron)
- Menopausenstatus
- Präoperative Markierungsverfahren
- Mamma-spezifische Operationsverfahren

#### {{pagelink:ProstataModule}}
Umfassende Abbildung prostataspezifischer Parameter:
- PSA-Werte und Verlauf
- Gleason Score und Grade Groups nach ISUP
- Biopsie-Dokumentation (Anzahl Stanzen, Tumorbefall)
- Clavien-Dindo Komplikationsklassifikation

#### {{pagelink:KRKModule}}
Detaillierte Erfassung kolorektaler Karzinome mit:
- Tumorlokalisation (Abstand zur Anokutanlinie)
- Resektionsränder und TME-Qualität
- Präoperative Bildgebung (MRT mesorektale Faszie)
- Perioperative Komplikationen (Anastomoseninsuffizienz)
- ASA-Klassifikation

#### {{pagelink:MalignesMelanomModule}}
Spezifische Melanom-Parameter:
- Breslow-Tumordicke
- Ulzerationsstatus
- Sicherheitsabstände
- LDH-Serumwerte

### Architektur und Integration

#### Logisches Modell
Die Struktur aller organspezifischen Module ist im zentralen **Logischen Modell für Organspezifische Zusatzmodule** formal definiert:

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/OrganspezifischeZusatzmodule}}

#### FHIR-Mappings
Jedes organspezifische Datenelement verfügt über präzise FHIR-Mappings, die eine eindeutige Zuordnung zu den entsprechenden FHIR-Ressourcen ermöglichen. Die Mappings verwenden semantische Annotationen mit SNOMED CT und LOINC zur eindeutigen Identifikation.

### Implementierungshinweise

#### Modularität
Die organspezifischen Module sind als **optionale Erweiterungen** konzipiert:
- Unabhängig voneinander implementierbar
- Bauen auf den Basis-Onkologie-Profilen auf
- Nutzen gemeinsame Terminologien und Extensions

#### Versionierung
Alle organspezifischen Module folgen der Versionierung des Gesamtmoduls und werden synchron mit dem Basismodul weiterentwickelt.

#### oBDS-Konformität
Die Module implementieren die organspezifischen Zusatzmodule des oBDS:
- **Mamma**: oBDS Modul M (M1-M7)
- **Prostata**: oBDS Modul P (P1-P8)
- **Kolorektales Karzinom**: oBDS Modul KR (KR1-KR9)
- **Malignes Melanom**: oBDS Modul MM (MM1-MM4)

### Technische Details

#### Profile-Struktur
Jedes organspezifische Modul besteht aus:
- **Observation-Profilen** für klinische Beobachtungen und Laborwerte
- **Procedure-Profilen** für organspezifische Eingriffe
- **Specimen-Profilen** für spezielle Probentypen
- **Bundle-Beispielen** für vollständige Anwendungsfälle

#### Terminologie-Bindings
Die Module verwenden spezifische ValueSets für:
- Organspezifische Operationsverfahren (OPS + SNOMED CT)
- Spezialisierte Laborparameter (LOINC)
- Entitätsspezifische Klassifikationen (oBDS-Codes)

#### Search-Parameter
Für Must-Support-Elemente der organspezifischen Module sind entsprechende Suchparameter definiert, die eine gezielte Abfrage der spezialisierten Datenelemente ermöglichen.

### Qualitätssicherung

#### Validierung
- Alle Profile durchlaufen die automatisierte FHIR-Validierung
- Beispieldaten werden gegen die Profile validiert
- Terminologie-Bindings werden gegen Referenz-Terminologieserver geprüft

#### Konsistenz
Die organspezifischen Module werden synchron mit dem Basismodul gepflegt, um Konsistenz in:
- Namenskonventionen
- Kardinalitäten
- Terminologie-Verwendung
- Mapping-Strukturen

zu gewährleisten.