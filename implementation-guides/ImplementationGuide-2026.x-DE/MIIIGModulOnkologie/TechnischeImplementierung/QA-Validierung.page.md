---
parent:
topic: QAValidierung
---

## {{page-title}}

Diese Seite dokumentiert den aktuellen Stand der FHIR-Validierung für das MII Modul Onkologie.

### Validierungsübersicht

Das Modul wird kontinuierlich gegen den FHIR R4 Standard und die definierten Profile validiert. Da Simplifier keinen öffentlichen QA-Report bereitstellt wie bei klassischen FHIR IG Publisher Builds, dokumentieren wir hier transparent den Validierungsstatus.

**Aktuelle Statistik** (vor Filterung):
- **Fehler**: ~772
- **Warnungen**: ~2006
- **Hinweise**: ~389

Viele dieser Meldungen werden durch Filter in `advisor.json` unterdrückt, da sie false-positives oder externe Abhängigkeiten betreffen.

---

## Terminologie-Server und Validierungskonfiguration

Die betreffenden Validierung betreffen die aktuelle Packageversion 2026.0.0-rc2. 

**MII Terminology Server**: [https://termserv.mii.medizininformatik-initiative.de/fhir](https://termserv.mii.medizininformatik-initiative.de/fhir)

**Validierungskonfiguration**: [`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/dev/advisor.json)

---

## Gefilterte Validierungsmeldungen

Diese Meldungen werden durch `advisor.json` unterdrückt. Die Tabelle zeigt die geschätzte Anzahl der Vorkommnisse und den Grund für die Filterung:

| Fehlercode | ~Anzahl | Filter (advisor.json) | Begründung |
|------------|---------|----------------------|------------|
| `Terminology_TX_NoValid_16` | ~310 | Zeile 3, 10-12 | Betrifft ImplementationGuide Parameter und alle StructureDefinitions/ValueSets/CodeSystems. Externe Terminologie-Server-Limitation. |
| `MSG_DRAFT` | ~14 | Zeile 4 | Erwartete Warnung während Entwicklungsphase. Löst sich bei finalem Release. |
| `dom-6` | ? | Zeile 5 | FHIR Basisregel für DomainResource. Bekanntes Validator-Artefakt. |
| `eld-20` | ~294 | Zeile 6 | ElementDefinition Constraint. Strukturelle Validator-Limitation. |
| `UNABLE_TO_INFER_CODESYSTEM` | ~100 | Zeilen 7-9 | System URI kann bei bestimmten Codes nicht inferiert werden (betrifft StructureDefinition, ValueSet, CodeSystem). |

**Gesamte Suppressionen**: ~700+ Meldungen werden gefiltert

---

## Verbleibende aktive Validierungsprobleme

Diese Fehler werden **nicht** gefiltert und sollten behoben werden:

### Kritische Probleme (TODO)

| Kategorie | ~Anzahl | Beschreibung | Geplante Lösung |
|-----------|---------|--------------|-----------------|
| **MedDRA Terminologie** | ~10 | MedDRA-Codes können nicht validiert werden | 🔵 EXTERNAL: MedDRA ist proprietär, nicht auf öffentlichen TX-Servern verfügbar |
| **Bundle-Referenzen** | ~24 | Profile-Matches in Bundles nicht gefunden | 🔴 TODO: Bundle-Strukturen korrigieren |
| **Slicing-Discriminator** | ~20 | Discriminator ohne fixe Werte | 🔴 TODO: Slice-Definitionen vervollständigen |
| **ValueSet Bindings** | ~10 | Codes nicht im gebundenen ValueSet | 🟡 TODO: ValueSets prüfen und erweitern |

### Moderate Probleme (MONITOR)

| Kategorie | ~Anzahl | Beschreibung | Status |
|-----------|---------|--------------|--------|
| **Profile Metadata** | ~80 | Profile-Struktur-Probleme (nach Filterung) | 🟡 MONITOR: Review benötigt |
| **Bundle Entry URLs** | ~39 | Inkonsistente URL-Formate | 🟡 TODO: Standardisierung |
| **ConceptMap** | ~65 | oBDS→SNOMED CT Mapping-Probleme | 🟡 MONITOR: Funktional prüfen |

### Externe Abhängigkeiten (EXTERNAL)

| Problem | Beschreibung | Auswirkung |
|---------|--------------|------------|
| **MedDRA** | Proprietäre Terminologie, nicht öffentlich validierbar | Adverse Events können nicht vollständig validiert werden |
| **ICD-O-3** | Morphologie-Codes limitiert verfügbar in FHIR TX-Servern | Histologie-Codierung teilweise nicht validierbar |
| **OPS Versionen** | Multiple OPS-Versionen führen zu Warnungen | Procedure-Validierung zeigt Warnungen bei Versionsmix |

---

## Status-Legende

| Symbol | Status | Bedeutung |
|--------|--------|-----------|
| 🔴 | **TODO** | Aktiv zu behebende Fehler |
| 🟡 | **MONITOR** | Beobachten, ggf. Aktion erforderlich |
| 🔵 | **EXTERNAL** | Externes Problem, löst sich durch Updates von Abhängigkeiten |
| ⚪ | **FILTERED** | Durch advisor.json gefiltert |

---

## Continuous Integration

Die FHIR-Validierung läuft automatisch bei jedem Push über GitHub Actions:

- **JAVA_FHIR_VALIDATION**: HL7 FHIR Validator (offiziell)
- **DOTNET_FHIR_VALIDATION**: Firely .NET Validator (alternativ)

🔗 [Aktuelle CI-Runs anzeigen](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/actions)

Die Validierungsergebnisse inkl. detailliertem Output sind als Artefakte in den Workflow-Runs verfügbar.

---

## Detaillierte Fehlerübersicht

Eine vollständige technische Dokumentation aller bekannten Validierungsprobleme mit Details und Lösungsstrategien:

📄 [`known_errors.txt`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/dev/known_errors.txt)

---

## Wie kann ich helfen?

Wenn Sie zur Verbesserung der Validierung beitragen möchten:

1. **Prüfen Sie** `known_errors.txt` für bekannte Probleme
2. **Suchen Sie** nach einem `TODO`-markierten Fehler, der Sie interessiert
3. **Erstellen Sie** einen Issue oder Pull Request im [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie)
4. **Diskutieren Sie** in der MII-Community bei komplexen Validierungsfragen

---

**Hinweis**: Diese Seite wird manuell gepflegt. Für den aktuellsten technischen Stand siehe die CI-Runs und `known_errors.txt` im Repository.
