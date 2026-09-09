Dieses Profil ist das Gruppierungsprofil für eine TNM-Klassifikation in der Onkologie.

Das Profil enthält das Referenzdatum und dient als Ankerpunkt für alle weiteren TNM-Einzelbeobachtungen zu diesem Zeitpunkt. Das Element `hasMember` enthält Referenzen zu allen verbundenen TNM-Einzelbeobachtungen.

Außerdem wird im Element `value` das UICC-Staging kodiert, dass von den untergeordneten TNM-Beobachtungen abgeleitet ist.

### Erscheinungsformen der TNM-Klassifikation

Eine TNM-Klassifikation tritt im Behandlungsverlauf in verschiedenen Erscheinungsformen auf. Diese werden **nicht** über den oBDS-Meldeanlass unterschieden, sondern ausschließlich über zwei Achsen der FHIR-Repräsentation:

1. die **Code-Achse** des Gruppierungsprofils — `Observation.code` ist an das ValueSet [mii-vs-onko-tnm-klassifikation-typ](ValueSet-mii-vs-onko-tnm-klassifikation-typ.html) gebunden und trägt SNOMED CT `399537006` "Clinical TNM stage grouping", `399588009` "Pathologic TNM stage grouping" oder `399703000` "Integrated TNM category";
2. die **Präfix-Modifier der einzelnen Kategorien** — das c/p/u-Präfix als Extension auf `Observation.code` der Kategorie-Beobachtung sowie die UICC-Präfixe y, r und a als modifierExtension an der jeweiligen T-, N- bzw. M-Beobachtung.

Der Meldeanlass ist lediglich der typische Auslöser, aus dem sich die Erscheinungsform ergibt — er ist kein Unterscheidungsmerkmal und wird in der Ressource nicht abgebildet.

**(1) Klinisches Staging** (typischer Auslöser: Diagnose-Meldung). `code` = `399537006` "Clinical TNM stage grouping", die Kategorien tragen das c-Präfix. Das UICC-Stadium ist in aller Regel vorhanden, da klinisch alle drei Achsen T, N und M beurteilt werden.

**(2) Pathologisches Staging** (typischer Auslöser: Pathologie- oder OP-Meldung). `code` = `399588009` "Pathologic TNM stage grouping", die Kategorien tragen das p-Präfix, bei neoadjuvanter Vorbehandlung zusätzlich den y-Modifier (`ypT`, `ypN`). Ein UICC-Stadium wird hier typischerweise **nicht** angegeben: `value` ist im Meldungs-Panel bewusst mit 0..1 modelliert, da ein pathologisches Staging allein kein Stadium liefern kann — die M-Kategorie stammt in der Regel aus der klinischen Beurteilung.

**(3) Verlauf** (typischer Auslöser: Verlaufs-Meldung). Die Erscheinungsform ist variabel. Meist handelt es sich um ein erneutes klinisches Re-Staging (`code` = clinical), bei oder nach laufender Therapie ergänzt um den y-Modifier. Bei einem Rezidiv kommt der r-Modifier hinzu — dieser hängt am **Tumorstatus**, nicht am Meldeanlass, und kann daher auch außerhalb einer Verlaufs-Meldung auftreten. Erfolgt im Verlauf eine erneute Operation, kann die Klassifikation auch pathologisch sein.

**(4) Synthetisierte bzw. integrierte Klassifikation.** Hierfür existiert ein eigenes Profil [mii-pr-onko-tnm-klassifikation-synthetisiert](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.html) mit fixem `code` = `399703000` "Integrated TNM category". Es führt die Kategorien aus mehreren Quell-Klassifikationen zu einem kohärenten Stand zum Entscheidungszeitpunkt zusammen — auch gemischt, z. B. `ypT` und `ypN` aus der Pathologie mit `cM` aus der Klinik. Das UICC-Stadium ist hier **verpflichtend** (`value` 1..1), und `derivedFrom` referenziert verpflichtend die zugrunde liegenden Quell-Klassifikationen.

| Erscheinungsform | `Observation.code` | Kategorie-Präfixe | UICC-Stadium (`value`) | Profil |
|---|---|---|---|---|
| Klinisches Staging | `399537006` clinical | c | meist vorhanden | `mii-pr-onko-tnm-klassifikation` |
| Pathologisches Staging | `399588009` pathologic | p, yp | i. d. R. nicht vorhanden (0..1) | `mii-pr-onko-tnm-klassifikation` |
| Verlauf | clinical, ggf. pathologic | c/p, y bei/nach Therapie, r bei Rezidiv | variabel | `mii-pr-onko-tnm-klassifikation` |
| Synthetisiert / integriert | `399703000` integrated | gemischt (z. B. ypT + cN) | verpflichtend (1..1) | `mii-pr-onko-tnm-klassifikation-synthetisiert` |

Die Präfixe y, r und a sind als **modifierExtension** modelliert, weil sie die Interpretation des Kategorie-Wertes verändern: `ypT2` ist nicht gleichbedeutend mit `pT2`. Verarbeitende Systeme müssen diese Extensions kennen und dürfen eine Kategorie nicht ohne Auswertung des Präfixes interpretieren.

---

**Beispiele**

[mii-exa-onko-tnm-klassifikation-TisN0M0](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.html)

[mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.html)

### Wie Präfixe, Symbole und Kategoriewerte kodiert werden

Für strukturell ähnlich aussehende Angaben verwendet das Modul bewusst drei
verschiedene Mechanismen — maßgeblich ist, ob die Angabe *binär*, *wertetragend*
oder *die Kategorie selbst* ist:

| Angabe | Semantik | Abbildung |
|---|---|---|
| **c/p-Präfix** | Wie wurde die Kategorie festgestellt? | Extension am `code` der Kategorie |
| **y-, r-, a-Präfix** | binäres Präfix — trifft zu oder nicht (multimodale Vortherapie, Rezidiv, Autopsie) | **`modifierExtension`** an der jeweiligen Kategorie (sie verändern die Interpretation des Werts) |
| **(m)-Suffix** | **wertetragend**: multiple Primärtumoren, oBDS 8.10 — `(m)`, `(2)`, `(3)`, `(4)` | **`component[multipleTumoren]`** an der T-Kategorie (LOINC `42030-7` als Component-Code, Wert aus dem UICC-CodeSystem) — das Suffix ist T-exklusiv |
| **Kategoriewert** (T2, N0, M1c …) | die Kategorie selbst | Dual-Coding im `valueCodeableConcept`: `uicc` (1..1) + optional `snomed-ct` (0..1) |

**Warum das (m)-Symbol anders aussieht als y/r/a.** Es ist kein Präsenz-Flag,
sondern trägt eine Ausprägung: Bei `(3)` sind drei simultane Primärtumoren
gemeint. Ein `modifierExtension` ohne Wert würde diese Information verlieren.
Für die Zählvarianten `(2)`/`(3)`/`(4)` existiert zudem kein SNOMED-CT-Äquivalent,
weshalb hier — anders als bei den Kategorien — kein Dual-Coding angeboten wird.

{:.bg-info}
**Hinweis zu den früheren Symbol-Profilen.** Bis einschließlich v2026 gab es für
y, r, a und (m) eigene Observation-Profile. Sie sind ab v2027 **deprecated**
(`status = retired`); die Präfixe y/r/a werden als `modifierExtension` an den
Kategorien geführt, das m-Suffix als Component der T-Kategorie. Bestandsdaten bleiben lesbar, für Neuimplementierungen sind die
modifierExtensions zu verwenden.
