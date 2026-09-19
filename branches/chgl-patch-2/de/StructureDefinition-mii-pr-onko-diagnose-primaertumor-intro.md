### Inhalt
Dieses Profil beschreibt eine Diagnose in der Onkologie. Es basiert auf dem MII KDS Modul Diagnose.

Der oBDS erwartet die Kodierung der Diagnose via ICD-10 sowie die Kodierung der Topographie des Primärtumors und der histologischen Morphologie über ICD-O-3. In FHIR kann diese Kombination bereits vollständig über die MII-Diagnose abgebildet werden:
* ICD-10-GM über `Condition.code[icd10-gm]`, (abgeleitet von MII-Diagnose)
* ICD-O-3-Morphologie über `Condition.extension[morphology-behavior-icdo3]` (vergleichbar mCODE-Erweiterung)
* ICD-O-3-Topgraphie über `Condition.bodySite`.

Weitere histologische Untersuchungen mit abweichenden Morphologien im Therapieverlauf SOLLEN über das Histologie-Profil erfasst werden.

### Bezüge zu früheren Tumorerkrankungen: zwei Achsen

Eine onkologische Diagnose kann auf zweierlei Weise mit einer früheren
Tumorerkrankung zusammenhängen — das Profil trennt diese Fälle bewusst in
**zwei orthogonale Extensions**:

| | `occurredFollowing` (zeitlich) | `condition-dueTo` (kausal: Verursachung) | `transformationVon` (Linien-Kontinuität) |
|---|---|---|---|
| Bedeutung | „trat auf **nach**" — unabhängige Zweiterkrankung | „wurde **verursacht durch**" | „ist **Transformation von**" — dieselbe Tumor-Linie |
| Extension | HL7-Standard | HL7-Standard | modul-eigen `mii-ex-onko-transformation-von` |
| Ziel | registrierte Onko-Diagnose **oder** [Frühere Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.html) | Condition, Procedure, MedicationStatement/-Administration | **nur** registrierte Onko-Diagnose |
| Typische Fälle | Zweitkarzinom Jahre nach behandeltem Ersttumor | **therapieassoziiertes Sekundärmalignom** (z. B. t-AML `9920/3` nach Chemotherapie → Verweis auf die Therapie) | MDS → sekundäre AML · ZNS /0 → /3 (Register führt eine **neue** Entität) |

**oBDS-Einordnung:** `occurredFollowing` bildet oBDS 5.9 ab; `dueTo` und
`transformationVon` sind **nicht Teil der Registermeldung** — sie sind über das
oBDS hinausgehender FHIR-Mehrwert für die strukturierte Verknüpfung (daher ohne
oBDS-Mapping). Beispiele: `mii-exa-onko-diagnose-taml-nach-chemo` (t-AML `9920/3`
dueTo Cyclophosphamid-MedicationStatement) und
`mii-exa-onko-diagnose-angiosarkom-nach-radiatio` (Hämangiosarkom `9120/3` dueTo
Strahlentherapie-Procedure).

**Warum nicht einfach `condition-dueTo` für Transformationen?** `dueTo` modelliert
Verursachung — würde man Transformationen darüber abbilden, wären Linien-
Transformation (MDS → AML) und externe Verursachung (t-AML nach Chemotherapie)
nicht mehr unterscheidbar. Die drei Achsen sind bewusst getrennt; auch R5/R6
bieten hierfür kein Core-Element (die Standard-Extensions leben im
versionsübergreifenden HL7-Extensions-Pack).

**Warum die Trennung?** Ein bloßes `occurredFollowing` würde bei einer
Transformation fälschlich eine *unabhängige* Zweiterkrankung suggerieren;
`transformationVon` macht die Tumor-Linie strukturiert nachvollziehbar.

**Fachliche Richtigkeit vs. Krebsregister-Vorgaben:** `transformationVon`
verknüpft zwei Diagnose-Ressourcen und ist daher nur dort einzusetzen, wo das
**Register-Regelwerk tatsächlich eine neue Tumor-Entität führt** (MDS → AML,
ZNS /0 → /3). Die **CUP-Auflösung** nach der Best-Of-Regel (Manual Kap. 6.2)
ist bewusst **kein** Anwendungsfall: Dort wird **dieselbe Entität geändert** —
Histologie, Lokalisation und ICD-10 werden auf den gefundenen Primärtumor
umgeschrieben, Tumor-ID und ursprüngliches Diagnosedatum bleiben erhalten.
Registerkonform ist das die Aktualisierung **derselben** Condition-Ressource
(FHIR-Versionierung, ggf. mit Provenance); eine zweite Ressource mit
`transformationVon` entstünde nur, wenn ein System abweichend die alte
CUP-Fassung eigenständig historisiert.

**Hinweis zur Modellierung:** `transformationVon` ist bewusst eine *normale*
Extension (keine modifierExtension): Ihr Fehlen macht keine Aussage der
Ressource falsch — die Diagnose bleibt wahr und sicher verarbeitbar, es fehlt
lediglich der Herkunfts-Kontext. Wo die WHO die Transformations-Herkunft zur
eigenen Entität gemacht hat, trägt sie ohnehin der Morphologie-Code selbst
(z. B. `9895/3` AML-MRC); das ist jedoch nicht garantiert (ein sekundäres
Glioblastom kann schlicht als `9440/3` codiert sein) — gerade deshalb liefert
die Extension den strukturierten Herkunfts-Link.

Beide Extensions sind kombinierbar (eine Transformation trat immer auch zeitlich
„danach" auf); Beispiel: `mii-exa-onko-diagnose-aml-transformation`
(MDS → sekundäre AML).

---

### Verknüpfungen zu anderen Ressourcen
Die onkologische Diagnose ist das zentrale Kernelement des Basisdatensatzes. Alle fallbezogenen Beobachtungen sind direkt oder indirekt damit verknüpft:
- alle Beobachtungen verweisen über `Observation.focus` auf die Primärdiagnose
- die Tumorkonferenz-Ressource verweist über `CarePlan.addresses` auf die Primärdiagnose
- alle Prozeduren (OP, Strahlentherapie, Systemische Therapie) verweisen über `reasonReference` auf die Primärdiagnose

---

### Zeitliche Zuordnung im Verlauf
Im oBDS ist eine Zuordung der Beobachtungen als wichtig für die Erstdiagnosestellung dadurch gegeben, dass diese Teil der Diagnosemeldung sind. Spätere Meldungen können dann bsw. als Verlaufs-, Pathologie- oder Todesmeldung gemacht werden.

Beobachtungen, die nach Stellung der Erstdiagnose  gemacht werden, verweisen in der vorliegenden Profilierung auf eine "Verlauf"-Observation-Ressource mit einem eigenen Datum.
Die Beobachtungen, die zum Zeitpunkt der Erstdiagnosestellung bekannt sind, sind von besonderem Interesse für prognostische Forschungsfragen. Um diese Datenpunkte leichter zu identifizieren, **SOLLEN** alle Beobachtungen aus der oBDS-Diagnosemeldung in einer FHIR-Liste mit dem Profil "[Evidenz Erstdiagnose](StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.html)" über `evidence.detail` referenziert werden.

---

### Konformität
Die vorliegende Profilierung ist kompatibel mit dem Diagnoseprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikdiagnose

---

**Beispiele**

[mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.html)
