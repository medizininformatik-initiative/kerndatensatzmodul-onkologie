# Review-Dossier PR #310 — `feat/2027-issues` → `dev`

**Stand:** 2026-08-25 · HEAD `6205cca1` · ~38 inhaltliche Commits (ohne CI-Auto-Commits)
**CI:** grün (erster echter Java-Validierungslauf seit Feb. 2026); Reststand 15 Errors = 13 extern (THO/TermServ) + 2 ticketiert (`2a4.7` erledigt in diesem PR, MedDRA-Lag extern)
**Review-Prinzip:** nach Risiko-Tier, nicht nach Dateien. Tier A braucht fachliches Urteil, Tier B Stichproben, Tier C ist empirisch validiert.

---

## Tier A — Fachliche Neuschöpfungen (Urteil erforderlich)

### A1 · TNM-Modifier-Design (BREAKING) — Commits `15f0377b`, `a4f948c3`, `be651947`
y/r/a-Präfixe als `modifierExtension` an T/N/M-Kategorien; SNOMED-Dual-Coding; UICC↔SCT-Konsistenz-Invariante.
- **Leitfragen:** Ist modifierExtension die richtige Härte (Verarbeiter MÜSSEN sie kennen — bewusste Entscheidung, im Chat hergeleitet)? Sind die drei `isModifierReason`-Texte klinisch präzise? Deckt die Invariante (be651947) die Dual-Coding-Fälle korrekt ab?
- **Lesepfad:** `mii-ex-onko-tnm-y-praefix.fsh` (Muster für alle drei) → `mii-pr-onko-tnm-t-kategorie.fsh` (Slices + Mappings 8.3–8.5) → Beispiele `mii-exa-onko-tnm-breast-cancer-journey.fsh` (ycT2/ypT0/rcT2-Blöcke).

### A2 · Synthetisiertes TNM-Profil — Commits `31006427`, `60f903ba`, `ea9bdd7a`–`0eb65d88`
Code fix `399703000` (Typ-VS erweitert), Stadium 1..1, `component[tnmFormel]` (Mini-CS wegen obs-7), `device` MS, Provenienz-Leiter (derivedFrom SHALL / Device SHOULD / Provenance MAY).
- **Leitfragen:** Trägt die Typ-Achse klinisch/pathologisch/**integriert** trotz SCT-Hierarchie-Unschärfe (399703000 im category-Ast — Hinweis + Content-Request-Empfehlung im VS-Kommentar)? Sind die UICC-Merge-Regeln im Profil-Kommentar korrekt formuliert (pTNM>cTNM, jüngste Bewertung, r als Bruchpunkt, carry-forward)? Ist `value 1..1` für alle Synthese-Szenarien haltbar?
- **Lesepfad (Beispiele zuerst!):** `mii-exa-onko-tnm-bundle-synthesized.fsh` (klein, mit Formel „pT2 pN1 cM0") → `mii-exa-onko-kim-musterperson-synthesized.fsh` (Vollausbau: 4 Phasen, **synth-3 = Mixed-Prefix ypT3c+ycN1**, Device, Provenance) → Profil.

### A3 · FIGO-Substage-Codes ⚠️ agent-generiert — Commit `6205cca1`
~40 neue Konzepte (`#figo` + IA…IVB inkl. IA1-3, IC1-3, IIIA1(i/ii), IIIC1p/r) im CS `mii-cs-onko-weitere-klassifikationen-obds`.
- **Leitfragen:** Jede Definition gegen die FIGO-Originale prüfen (Zervix-2018- vs. Ovar-2014-Semantik der Subgruppen!). Ist die Union über Entitäten hinweg im EINEN Code-Ast vertretbar (Entität kommt via method/code — steht so im Kommentar)? Code-Stil `#figo-iiia1i` ok?
- **Datei:** `input/fsh/oBDS/09_Weitere_Klassifikationen/mii-cs-onko-weitere-klassifikationen-obds.fsh` + Beispiel `…-weitere-klassifikationen-1.fsh` (jetzt `#figo-ivb`).

### A4 · Gleason-Score-Gesamt ⚠️ agent-generiert — Commit `6205cca1`
Neues Profil/VS für Scores <6 bzw. „nur ScoreErgebnis" über SCT-Findings (z. B. 74013009 „Gleason 5/10"); Abgrenzung zum Score≥6+Grade-Group-VS; Pattern-Profil-Titel „Primär"→„Pattern" (#260).
- **Leitfragen:** Ist die Zweiteilung (Score-Gesamt-Profil ohne Grade Group vs. bestehendes Score+Grade-VS) die gewollte #261-Lösung? SCT-Finding-Codes als value korrekt gewählt?
- **Dateien:** `Prostata/mii-pr-onko-prostata-gleason-score-gesamt.fsh`, `mii-vs-onko-prostata-gleason-score-gesamt.fsh`, Beispiel `mii-exa-onko-prostata-gleason.fsh`.

### A5 · ATC-2022-Mappings — Commit `0a1e5ad5`
20 Antikörper L01XC→L01F* (CM) + L01XC-Codes in VS 2018–2021. Technisch verifiziert (alle Ziele im 2022er-VS), **pharmakologisch bitte stichprobenartig gegen den WHO-ATC-Index 2022** (bes. L01FX-Fälle: Ipilimumab L01FX04, Brentuximab L01FX05, Blinatumomab L01FX03, Olaratumab).
- **Datei:** `16_SystemischeTherapie/mii-cm-onko-atc-transitions-2022.fsh`.

### A6 · CTCAE-Katalog + §65c-Fixes (Alt-Branch, nie reviewt) — Commit `a398c6b1`
790 MedDRA-Codes im VS (sprachneutral, Lizenz-Minimalfußabdruck), de-Supplement mit §65c-Texten, Grad≥3-Invariante, Tumor-ID/Fernmetastasen/Meningeosis-Fixes, Genetik-Guidance-Seite.
- **Leitfragen:** Lizenzstrategie tragfähig (nur Code-Nummern, keine engl. Terme)? Invariante #170-Formulierung? Stichprobe deutscher Supplement-Texte gegen KR-Liste.

### A7 · TNM-Journey + klinisches Feedback — Commits `4a223a33`…`c74e143e`
Breast-Journey (c/yc/yp/r), Verlauf-Beispiele, TNM-to-text-Skript, Feedback Therese Pross bereits eingearbeitet (`b4ed753f`).
- **Leitfrage:** Journey nach Modifier-Umbau nochmal klinisch quer lesen (die y/r-Blöcke wurden heute umgestellt).

---

### A8 · ICD-10-Meldepflicht-VS + Warning-Invariante (Nachtrag) — Commit `a0e0edb8`
Neues VS `mii-vs-onko-icd10-meldepflichtige-tumoren` (is-a auf Blockcodes C00-C97, D00-D09, D32, D33, D35.2–.4, D37-D48) + Warning-Invariante `onko-icd-meldepflicht` (memberOf) am icd10-gm-Slice der Diagnose — extensible-Semantik, ohne das geerbte required-Binding des Basis-Profils anzutasten.
- **Leitfragen:** Deckt die Blockauswahl exakt die aktuelle §65c-/KFRG-Meldepflicht-Menge (gegen aktuelle Manual-Fassung gegenlesen — historische C44-Sonderregeln?)? Expandieren die ICD-10-GM-Blockcodes als is-a-Anker auf dem Ontoserver (prüft der nächste CI-Lauf)? Warning-Severity die richtige Härte?
- **Dateien:** `overlapping terminologies/mii-vs-onko-icd10-meldepflichtige-tumoren.fsh`, `invariants/onko-icd-meldepflicht.fsh`, Diagnose-Profil.

---

## Tier B — Mechanisch + verifiziert (Stichproben genügen)

| Thema | Commit | Verifikation liegt vor |
|---|---|---|
| 25 CS/VS-Titles | `10c7e2a1` | generiert nach Namenskonvention; CI bestätigt 0 Title-Fehler |
| RadElement statt RadLex + Fragment-CS | `9a597d6d` | RDE96 via RSNA-API verifiziert; CI-Fehler weg |
| LOINC-LL-Enumerationen (3 VS) | `9ff9b509` | LA-Codes gegen LOINC 2.82 verifiziert; **Bonus: LL4678-0 war inhaltlich falsch** (Pflege-Settings) |
| SP-Konsolidierung + y/r-SPs + CapabilityStatement | `a401922d` | URLs/Pfade gegen Extensions geprüft |
| oBDS-16.x-Nummern | `cb094fad` | **amtlich verifiziert: 16.4=Protokoll/16.5=Beginn/16.6=Substanz** — Meldung #309 war invertiert |
| VS-Filter #302, TURP-VS/Display, IG-Beispiel #213 (3 Guides) | `a401922d` | Einzeiler, Display via tx.fhir.org |
| DERIVE→w3c#Derivation, Supplement-caseSensitive | `890fead8` | CI bestätigt |
| Release-Notes v2027 + Erscheinungsformen-Guidance | `7beffcc6` | inhaltlich = heutige Design-Beschlüsse; Querlesen |
| KDL-Doku-Seiten | `72f5bc70`–`fe8237e4` | bereits am 24.08. mit dir entschieden |

## Tier C — CI-Infrastruktur (empirisch validiert)

Commits `29697f89`, `298e8e29`, `b8b573d2`: advisor.json-Freitext-Regeln entfernt (NPE-Fix), Warn-Kommentar Workflow, Skill-Doku. **Beweis: erster grüner Lauf seit 10.03.**, Artefakte wieder echt (MD5-geprüft). Nur abnicken.

---

## Agent-generierte Inhalte (vollständige Liste für erhöhte Aufmerksamkeit)

1. **FIGO-Substage-Definitionen** (A3) — höchste Priorität
2. **Gleason-Score-Gesamt-Profil/VS/Beispiel** (A4)
3. ATC-2022-CM-Einträge (A5 — technisch verifiziert, fachlich prüfen)
4. TURP-VS-Kommentar, SP-Descriptions, Erscheinungsformen-Guidance, Release-Notes-Texte (B — Querlesen reicht)

## Empfohlener Ablauf (~2–3 h fokussiert)

1. **Beispiele lesen (45 min):** bundle-synthesized → Kim (synth-3!) → Journey → FIGO-Beispiel → Gleason-Beispiel. Alles, was dort komisch wirkt, ins Profil zurückverfolgen.
2. **A3+A4 gegen Originalquellen (45 min):** FIGO-Klassifikationen + ISUP/Gleason-Doku daneben legen.
3. **A1+A2-Profile lesen (30 min):** Extensions, Kategorie-Slices, synthetisiert-Profil — die Design-Herleitung steht in beads `14w.24` (Design+Notes).
4. **A5/A6-Stichproben (20 min).**
5. **Maschinelle Zweitmeinung (optional):** `/code-review ultra 310` — user-getriggert, gebilled.
6. **Merge-Kriterium:** Tier A abgenickt + CI grün ⇒ mergen; Feinschliff (FIGO-Wording etc.) darf als Folge-Commit auf `dev` kommen.

## Bekannte offene Punkte (NICHT Merge-blockierend, bereits ticketiert)

- SCT-memberOf-Invariante für y/r (mit #272) · Panel-Invariante Meldungs-Panels (#292/CQL) · #259 Gleason-SCT-Slice (Entscheidung) · #288-Invariante MedicationStatement (Montag) · `2a4.3` medication[x]-Slicing · `7kl` Copyright-Sweep · TermServ-externe CI-Fehler (13) · Generator-Fix aus #308
