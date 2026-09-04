<!-- markdownlint-disable MD041 -->
<!-- Deutsche Fassung — Quellsprache dieser Seite. Englischer Spiegel:
     input/pagecontent/tnm-journey.md — beide Dateien müssen dasselbe aussagen.
     Grundlage ist das durchgängige Beispiel „TNM Breast Cancer Journey"
     (input/fsh/oBDS/08_TNMKlassifikation/mii-exa-onko-tnm-breast-cancer-journey.fsh,
     23 Instanzen). -->

Diese Seite erklärt das TNM-Modell des Moduls **an einem durchgängigen
Behandlungsverlauf**: ein Mammakarzinom von der Erstdiagnose über neoadjuvante
Chemotherapie und Operation bis zum Rezidiv. Jede Station verweist auf die
zugehörigen Beispielinstanzen — dieselbe Patientin, dieselbe Erkrankung, fünf
Klassifikationen.

Das Modell in einem Satz: **Ein Panel
([TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.html))
bündelt per `hasMember` je eine T-, N- und M-Kategorie-Beobachtung; Präfixe,
die die Interpretation ändern (y, r, a), liegen als `modifierExtension` an der
Kategorie; das Feststellungs-Präfix (c, p, u) liegt als reguläre Extension an
`Observation.code`.**

---

#### Station 1 — Erstdiagnose: cT3 cN1 cM0

Klinische Klassifikation aus Bildgebung und Untersuchung. Alle drei Kategorien
tragen das c-Präfix über die Extension `mii-ex-onko-tnm-cp-praefix` — es
dokumentiert *wie* festgestellt wurde, ändert aber nichts an der Bedeutung des
Wertes.

[Panel](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.html) ·
[cT3](Observation-mii-exa-onko-tnm-t-kategorie-cT3.html) ·
[cN1](Observation-mii-exa-onko-tnm-n-kategorie-cN1.html) ·
[cM0](Observation-mii-exa-onko-tnm-m-kategorie-cM0.html)

#### Station 2 — Nach Stanzbiopsie: cT4 cN1 cM0

Die Biopsie zeigt eine Infiltration der Brustwand: das T-Upgrade auf cT4. Es
bleibt eine **klinische** Kategorie — die pathologische Klassifikation (p)
setzt die Resektion voraus, nicht die Biopsie. Das Panel referenziert die
unveränderten cN1/cM0 weiter: Kategorien werden nicht dupliziert, sondern
wiederverwendet.

[Panel](Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.html) ·
[cT4](Observation-mii-exa-onko-tnm-t-kategorie-cT4.html)

#### Station 3 — Nach neoadjuvanter Chemotherapie: ycT2 ycN0 cM0

Hier kommt das **y-Präfix als `modifierExtension`**
([`mii-ex-onko-tnm-y-praefix`](StructureDefinition-mii-ex-onko-tnm-y-praefix.html))
ins Spiel: Die Klassifikation erfolgte während/nach multimodaler Therapie.
`ycT2` beschreibt **nicht** denselben Sachverhalt wie `cT2` — der Tumor wurde
therapeutisch verkleinert. Genau deshalb ist es eine modifierExtension:
Systeme, die sie nicht auswerten, dürfen den Wert nicht stillschweigend
interpretieren.

[Panel](Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.html) ·
[ycT2](Observation-mii-exa-onko-tnm-t-kategorie-ycT2.html) ·
[ycN0](Observation-mii-exa-onko-tnm-n-kategorie-ycN0.html)

#### Station 4 — Nach Operation: ypT0 ypN0 cM0 (pathologische Komplettremission)

Die Resektion erlaubt die pathologische Klassifikation: p-Präfix in der
cp-Extension, y-Präfix weiterhin als modifierExtension — `ypT0` heißt: im
Resektat kein residualer Tumor nachweisbar, **nach** neoadjuvanter Therapie.
Dazu treten die begleitenden Klassifikationen: Lymphgefäßinvasion
[L0](Observation-mii-exa-onko-tnm-journey-l-kategorie-L0.html),
Veneninvasion
[V0](Observation-mii-exa-onko-tnm-journey-v-kategorie-V0.html),
Perineuralscheideninvasion
[Pn0](Observation-mii-exa-onko-tnm-journey-pn-kategorie-Pn0.html) und der
[Residualstatus R0](Observation-mii-exa-onko-tnm-journey-residualstatus-R0.html).

[Panel](Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.html) ·
[ypT0](Observation-mii-exa-onko-tnm-t-kategorie-ypT0.html) ·
[ypN0](Observation-mii-exa-onko-tnm-n-kategorie-ypN0.html)

#### Station 5 — Rezidiv: rcT2 cN1 cM1

Zwei Jahre später ein Lokalrezidiv mit Fernmetastase. Das **r-Präfix als
`modifierExtension`**
([`mii-ex-onko-tnm-r-praefix`](StructureDefinition-mii-ex-onko-tnm-r-praefix.html))
kennzeichnet die Rezidiv-Klassifikation; die Kategorien selbst sind wieder
klinisch (c).

[Panel](Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.html) ·
[rcT2](Observation-mii-exa-onko-tnm-t-kategorie-rcT2.html) ·
[rcN1](Observation-mii-exa-onko-tnm-n-kategorie-rcN1.html) ·
[rcM1](Observation-mii-exa-onko-tnm-m-kategorie-rcM1.html)

#### Der Verlauf als Klammer

Drei Verlaufs-Instanzen
([nach Chemotherapie](Observation-mii-exa-onko-verlauf-journey-post-chemo.html),
[nach Operation](Observation-mii-exa-onko-verlauf-journey-post-surgery.html),
[Rezidiv](Observation-mii-exa-onko-verlauf-journey-recurrence.html))
verknüpfen die Stationen per `hasMember` zur Krankheitsgeschichte — das
oBDS-Kapitel 17 in FHIR.

---

#### Was diese Seite über die Modellierung lehrt

* **Kategorien sind eigenständige Beobachtungen** und werden zwischen Panels
  wiederverwendet, nicht kopiert (Station 2).
* **c/p/u ist Methode, y/r/a ist Bedeutung**: Ersteres reguläre Extension am
  `code`, Letzteres `modifierExtension` an der Kategorie — die Begründung
  steht auf der Seite [Migration von v2026](migration-v2026.html), Eintrag 1.
* **Präfixe kombinieren**: `ypT0` trägt p in der cp-Extension und y als
  modifierExtension gleichzeitig (Station 4).
* Die deprecateten Symbol-Profile (y/r/a/m als eigene Beobachtungen) tauchen in
  diesem Beispiel bewusst nicht mehr auf; Bestandsdaten damit bleiben lesbar —
  siehe [Migration von v2026](migration-v2026.html), Eintrag 7.
