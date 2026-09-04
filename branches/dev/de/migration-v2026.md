# Migration from v2026 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **Migration from v2026**

## Migration from v2026

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Diese Seite erläutert jeden Breaking Change der Version **v2027.0.0** gegenüber **v2026.0.3** — einzeln, mit Auswirkung und Migrationsweg. Sie ergänzt die [Änderungshistorie](changes.md), die alle Änderungen chronologisch führt.

> **Warum diese Seite existiert:** Das KDS-Kalender-Versionsschema (`JJJJ.n.n`) trägt kein Major-Signal wie SemVer — die Versionsnummer warnt niemanden. Dieser Text ist die Warnung.

Zwei Perspektiven werden je Eintrag getrennt betrachtet:

* **Bestandsdaten** — validieren Instanzen, die gegen v2026.0.3 valide waren, weiterhin gegen v2027.0.0?
* **Implementierungen** — was bricht in Clients und Servern, die gegen v2026.0.3 gebaut wurden, auch wenn jede gespeicherte Instanz valide bleibt?

Ab der zweiten formalen Publikation dieses Leitfadens wird der maschinell erzeugte Versionsvergleich des IG Publishers hier verlinkt, sodass Erläuterung und technischer Diff nebeneinanderstehen.

-------

#### 1. UICC-Präfixe y, r, a als modifierExtension

**Was sich geändert hat.** Die Präfixe y (während/nach multimodaler Therapie), r (Rezidiv) und a (Autopsie) werden nicht mehr im Kategorie-Wert mitgeführt und nicht mehr über eigene Symbol-Beobachtungen abgebildet, sondern als `modifierExtension` direkt an der jeweiligen T-, N- bzw. M-Kategorie: [`mii-ex-onko-tnm-y-praefix`](StructureDefinition-mii-ex-onko-tnm-y-praefix.md), [`mii-ex-onko-tnm-r-praefix`](StructureDefinition-mii-ex-onko-tnm-r-praefix.md), [`mii-ex-onko-tnm-a-praefix`](StructureDefinition-mii-ex-onko-tnm-a-praefix.md). Das c/p/u-Präfix bleibt reguläre Extension auf `Observation.code` — es benennt die Feststellungsmethode, nicht eine abweichende Interpretation.

**Bestandsdaten.** Kategorie-Instanzen ohne Präfix validieren unverändert (die modifierExtensions sind `0..1`). Alt-Instanzen, die das Präfix über die Symbol-Profile führten, bleiben valide und lesbar — siehe Eintrag 7.

**Implementierungen.** Das ist der eigentliche Bruch: `ypT2` ist **nicht** `pT2`. Verarbeitende Systeme MÜSSEN die modifierExtensions kennen; eine Kategorie darf nicht ohne Auswertung des Präfixes interpretiert werden. Ein System, das die Extension ignoriert, liest neoadjuvant vorbehandelte Befunde als unbehandelte.

**Migration.** Je vorhandener y-/r-/a-Symbol-Beobachtung die entsprechende modifierExtension an der referenzierten Kategorie setzen; das m-Symbol wird zur `component[multipleTumoren]` an der T-Kategorie (Component-Code LOINC `42030-7`, Wert weiterhin aus dem UICC-CodeSystem). Der Schritt ist mechanisch und skriptbar, da die Symbol-Beobachtungen die Zielkategorie eindeutig referenzieren.

#### 2. Karnofsky-/ECOG-LOINC-ConceptMaps korrigiert

**Was sich geändert hat** (GH #269). Die bisherigen LOINC-Antwortcodes der ConceptMaps waren systematisch falsch: Karnofsky um zehn LA-Nummern verschoben, ECOG mit falschen Prüfziffern. Zusätzlich binden die Leistungszustand-Profile `valueCodeableConcept.coding[loinc]` jetzt **required** an neue enumerierte Answer-ValueSets (entsprechend LL4986-7 bzw. LL529-9, GH #236).

**Bestandsdaten.** Instanzen, die die alten (falschen) LA-Codes aus den ConceptMaps übernommen haben, werden **ungültig** — der Code liegt außerhalb des required-Bindings. Fehlerbild: „code not in required value set" am LOINC-Coding des Wertes.

**Implementierungen.** Systeme, die die alten ConceptMap-Ziele einkodiert haben, verbreiten falsche Codes weiter und müssen auf die korrigierten Maps umstellen.

**Migration.** Bestandswerte über die korrigierten ConceptMaps ([Karnofsky](ConceptMap-mii-cm-onko-karnofsky-loinc.md), [ECOG](ConceptMap-mii-cm-onko-ecog-loinc.md)) umkodieren. Die Zuordnung ist 1:1 und verlustfrei — jeder alte Code hat genau einen korrigierten Nachfolger.

#### 3. Onkologie-Kennzeichnung an der Diagnose verpflichtend

**Was sich geändert hat.** `Condition.category` trägt am Primärtumor- und am Früheren-Tumorerkrankung-Profil einen neuen Pflicht-Slice `onkologie` (`1..1`) mit SNOMED CT `55342001` „Neoplastic disease". Onkologische Diagnosen sind damit über `Condition?category=http://snomed.info/sct|55342001` auffindbar. Das extensible Kern-Binding (problem-list-item / encounter-diagnosis) bleibt unberührt.

**Bestandsdaten.** Instanzen ohne diese Kategorie werden **ungültig**. Fehlerbild: „slice onkologie: minimum required = 1, but only found 0" an `Condition.category`.

**Implementierungen.** Suchlogik, die onkologische Diagnosen bisher anders identifizierte (etwa über ICD-Code-Bereiche), kann auf die Kategorie umstellen; bestehende Suchen bleiben funktionsfähig.

**Migration.** Jeder Bestandsinstanz das Coding `http://snomed.info/sct|55342001` zu `category` hinzufügen — mechanisch, verlustfrei, skriptbar; bestehende category-Einträge bleiben stehen.

#### 4. Gleason-Profile: code.coding gesliced

**Was sich geändert hat** (GH #259). `code.coding` war ungesliced; jetzt ist SNOMED CT verpflichtend (`1..1`) und LOINC optionale Zweitkodierung (`0..1`) — für Grade Group, Score gesamt und Pattern. Verifizierte LOINC-Codes: `94734-1` (Grade Group), `35266-6` (Score), `44641-9`/`44642-7`/`44643-5` (Pattern).

**Bestandsdaten.** Instanzen, deren `code` nur LOINC (oder gar nichts Kodiertes) trug, werden **ungültig**. Fehlerbild: „slice snomed: minimum required = 1" an `Observation.code.coding`.

**Implementierungen.** Lesende Systeme, die den Code bisher positionsbasiert (`coding[0]`) auswerteten, sollten auf Slice- bzw. System-basierte Auswertung umstellen.

**Migration.** Den zum jeweiligen Profil gehörenden SNOMED-Code ergänzen (er steht als Pattern im jeweiligen Profil auf dessen Artefaktseite); ein vorhandener LOINC-Code bleibt als Zweitkodierung stehen.

#### 5. CTCAE-Katalogversion aus der MedDRA-Kodierung herausgelöst

**Was sich geändert hat** (oBDS 15.3). Die CTCAE-Katalogversion steht nicht mehr in `AdverseEvent.event.coding[meddra].version`, sondern in der neuen Extension [`mii-ex-onko-nebenwirkung-ctcae-version`](StructureDefinition-mii-ex-onko-nebenwirkung-ctcae-version.md) mit required-Bindung an die oBDS-Enumeration (`4`, `4.03`, `5.0`, `Sonstige`). Grund: `coding.version` bezeichnet die Version des CodeSystems, aus dem der Code stammt — das ist MedDRA (CTCAE v4.03 basiert auf MedDRA v12.0), nicht CTCAE. Die Vermischung machte die Codes gegen das ValueSet unauflösbar.

**Bestandsdaten.** Instanzen mit CTCAE-Version in `coding.version` bleiben formal **valide** (die Extension ist `0..1`, `coding.version` ist nicht verboten) — aber oBDS-Feld 15.3 wird dort nicht mehr gelesen. Die Angabe selbst (etwa „Version 4") ist krebsregister-richtig — sie benennt die CTCAE-Version —, sie stand nur am falschen Ort: `coding.version` bezeichnet die Version des MedDRA-Katalogs, nicht des CTCAE-Katalogs.

**Implementierungen.** Systeme, die die CTCAE-Version aus `coding.version` lesen oder schreiben, müssen auf die Extension umstellen.

**Migration.** Den Wert aus `event.coding[meddra].version` in die Extension übertragen und `coding.version` entfernen. Register-übliche Schreibweisen wie „Version 4" werden dabei auf den Code der oBDS-XSD-Enumeration abgebildet (hier: `4`, Display „CTCAE Version 4") — eine Formatangleichung, keine inhaltliche Korrektur.

#### 6. Referenztypen gehärtet

**Was sich geändert hat.** Bisher generische Referenzen sind auf die fachlich zulässigen Profile eingeschränkt: `Verlauf.hasMember` (nur die sieben definierten Mitglieder statt beliebiger Observation), `AdverseEvent.suspectEntity.instance` (Strahlentherapie / Systemische Therapie / Medikation), `Condition.extension:dueTo.valueReference`, `Residualstatus.partOf` (Operation), `TNM-synthetisiert.device` (Device) und `Tumorkonferenz.activity[extended].reference` (die drei Therapieempfehlungs-Profile).

**Bestandsdaten.** Instanzen, deren Referenzziele die geforderten Profile nicht erfüllen, werden **ungültig**. Fehlerbild: „Unable to find a profile match … among choices" bzw. Typ-Fehler an der jeweiligen Referenz.

**Implementierungen.** Erzeugende Systeme müssen sicherstellen, dass Referenzziele die Zielprofile erfüllen — praktisch meist dadurch, dass die Zielinstanz das Profil in `meta.profile` deklariert und erfüllt.

**Migration.** Referenzziele prüfen; fachlich passende Ziele erfüllen die Profile in aller Regel bereits, dann genügt die `meta.profile`-Deklaration am Ziel. Referenzen auf fachfremde Ziele waren schon bisher inhaltlich falsch — für sie gibt es bewusst keinen Migrationspfad.

#### 7. Symbol-Profile der TNM-Klassifikation deprecated

**Was sich geändert hat.** `mii-pr-onko-tnm-y-symbol`, `-r-symbol`, `-a-symbol` und `-m-symbol` stehen auf `retired`. Nachfolger sind die modifierExtensions (Eintrag 1) bzw. die `component[multipleTumoren]` an der T-Kategorie.

**Bestandsdaten.** Bleiben **valide und lesbar** — die Profile existieren weiter, `hasMember` am Panel nennt sie weiterhin. `retired` heißt: keine Weiterentwicklung, keine Verwendung in Neuimplementierungen.

**Implementierungen.** Neuimplementierungen verwenden ausschließlich die Extensions bzw. die Component. Lesende Systeme sollten übergangsweise beide Darstellungen akzeptieren.

**Migration.** Kein Zwang zur Rückmigration gespeicherter Daten; die Umschreibung ist aber mechanisch möglich (siehe Eintrag 1) und wird für Datenbestände empfohlen, die weiter gepflegt werden.

#### 8. Legacy-Artefakte entfernt

**Was sich geändert hat.** Entfernt wurden die auskommentierte Strahlentherapie-Alt-Familie (Profil, Extension, Beispiel) und die nie aktivierten Quantity-Profile für ECOG und Karnofsky.

**Bestandsdaten und Implementierungen.** Keine Auswirkung — diese Artefakte waren in keiner veröffentlichten Version wirksam (auskommentiert bzw. nie aktiviert); es können keine konformen Bestandsdaten existieren. **Es wird bewusst kein Migrationspfad bereitgestellt.**

#### 9. Abhängigkeiten auf die 2027-Ballot-Linie

**Was sich geändert hat.** `kerndatensatz.meta` 2027.0.0-ballot.rc3, `kerndatensatz.base` 2027.0.0-ballot.rc1, `de.basisprofil.r4` 1.6.0, `kerndatensatz.biobank` 2027.0.0-ballot.rc2, `kerndatensatz.studie` 2027.0.0-ballot.rc1, `kerndatensatz.laborbefund` 2027.0.0-ballot.rc3 (neu, für das Tumormarker-Profil) und `hl7.fhir.uv.genomics-reporting` 3.0.0 (neu).

**Bestandsdaten.** In aller Regel keine direkte Auswirkung; maßgeblich sind die Changelogs der Basismodule — Verschärfungen dort wirken über die Vererbung auch hier.

**Implementierungen.** Paketauflösung und Validierungsumgebungen müssen die neuen Abhängigkeitsversionen laden; gemischte Umgebungen (Onkologie 2027 gegen Basismodule 2026) sind nicht getestet.

**Migration.** Abhängigkeiten gemeinsam mit dem Modul anheben; kein Datenmigrationsschritt.

