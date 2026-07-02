Diese Seite dokumentiert den aktuellen Stand der FHIR-Validierung für das MII Modul Onkologie.

### Validierungsübersicht

Das Modul wird kontinuierlich gegen den FHIR R4 Standard und die definierten Profile validiert. Da Simplifier keinen öffentlichen QA-Report bereitstellt wie bei klassischen FHIR IG Publisher Builds, dokumentieren wir hier transparent den Validierungsstatus.

**Aktuelle Statistik** (Stand: 2025-12-16, Version 2026.0.0):
- **Actionable Fehler**: 9
- **Gefilterte Meldungen**: ~700+ (via advisor.json)

Die meisten ursprünglichen Meldungen werden durch Filter in `advisor.json` unterdrückt, da sie false-positives oder externe Abhängigkeiten betreffen.

---

## Terminologie-Server und Validierungskonfiguration

Die betreffende Validierung betrifft die aktuelle Packageversion **2026.0.0**. 

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

### Aktuelle Fehler (Stand: 2025-12-16)

| Kategorie | Anzahl | Betroffene Dateien | Status |
|-----------|--------|-------------------|--------|
| **Unknown_Code** | 3 | HER2-Status, Rezeptorstatus Estrogen/Progesteron | 🟡 TODO: Code-Bindings prüfen |
| **Reference_Not_Found** | 1 | AdverseEvent (MedDRA) | 🔵 EXTERNAL: MedDRA proprietär |
| **Profile-Match** | 1 | KRK-Bundle (Operation) | 🟡 TODO: Bundle-Struktur korrigieren |
| **TX-Server** | 2 | Mamma-Bundle, MRT-Faszie | 🔵 EXTERNAL: Terminology-Server-Limitation |
| **Sonstige** | 2 | KRK-Observation, Mamma-HER2 | 🟡 TODO: Review |

### Betroffene Dateien

- `Bundle-mii-exa-onko-mamma-example-bundle-1.json` (2 Fehler)
- `AdverseEvent-mii-pr-onko-nebenwirkung-0.json` (1 Fehler)
- `Bundle-mii-exa-onko-krk-bundle.json` (1 Fehler)
- `Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.json` (1 Fehler)
- `Observation-mii-exa-onko-mamma-her2neu-status.json` (1 Fehler)
- `Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.json` (1 Fehler)
- `Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.json` (1 Fehler)
- `StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.json` (1 Fehler)

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

Die Validierungsergebnisse sind direkt im Repository verfügbar:
- [`validation.html`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/dev/validation.html) - HTML-Report
- [`validation.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/dev/validation.json) - Maschinenlesbare Ergebnisse

---

## Wie kann ich helfen?

Wenn Sie zur Verbesserung der Validierung beitragen möchten:

1. **Prüfen Sie** die TODO-markierten Fehler oben
2. **Laden Sie** die Validierungs-Artefakte aus den [CI-Runs](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/actions) herunter
3. **Erstellen Sie** einen Issue oder Pull Request im [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie)

---

**Hinweis**: Diese Seite wird manuell gepflegt. Für den aktuellsten technischen Stand siehe die CI-Runs im Repository.
