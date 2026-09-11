<!-- markdownlint-disable MD041 -->
<!-- Deutscher Spiegel der EN-Quellseite input/pagecontent/therapieziele.md —
     beide Dateien muessen dasselbe sagen. -->

Dieses Modul dokumentiert, **was geschehen ist**: Diagnosen,
Klassifikationen, Prozeduren, systemische Therapien, Verlauf — die
oBDS-Meldesicht auf einen onkologischen Krankheitsverlauf. Was es bisher
nicht strukturiert abbildet, ist das **Warum**: das Therapieziel, das
Patient:in und Behandlungsteam vereinbaren, wenn ein Therapieplan
aufgestellt wird.

Diese Lücke adressiert eine eigene Spezifikation:

> **[Implementierungsleitfaden Therapieziele Onkologie](https://bih-cei.github.io/TherapiezieleOnkologie/)**
> (BIH-CEI, entwickelt im Rahmen der BIH-CEI-/gematik-Onkologie-Kooperation,
> derzeit 1.0.0-ballot)

#### Was die Therapieziele-Spezifikation abdeckt

- **OnkoCarePlan** — der onkologische Versorgungsplan mit Therapieintention,
  adressierter Tumorerkrankung und Bezug zu Therapielinien.
- **OnkoBehandlungsepisode** — Behandlungsepisoden, deren Art systemische
  Therapielinien (nach dem **EnLiST**-Linienmodell), lokoregionale
  Behandlung, Diagnostik und Surveillance unterscheidet.
- **OnkoTherapyGoal** — das strukturierte Therapieziel mit codierter Zielart
  (Heilung, Lebensverlängerung, Symptomkontrolle, Lebensqualität).
- **OnkoTherapyIntent** — die Therapieintention (kurativ, neoadjuvant,
  adjuvant, Erhaltung, palliativ, supportiv) als Extension.

#### Verhältnis zu diesem Modul

Beide Spezifikationen betrachten denselben Behandlungsverlauf von zwei
Seiten — und berühren sich dort, wo dieses Modul schon heute
intentionsartige Fakten erfasst:

| Dieses Modul (oBDS-Sicht) | Therapieziele-Spezifikation |
|---|---|
| OP-Intention (`mii-ex-onko-operation-intention`) | Therapieintention auf Plan- und Episodenebene |
| Intention und OP-Bezug von Strahlen-/Systemtherapie | `OnkoTherapyIntent`, Therapielinien der `OnkoBehandlungsepisode` |
| Tumorkonferenz-Beschluss (`mii-pr-onko-tumorkonferenz` mit CarePlan-Activity) | `OnkoCarePlan` als der Plan, über den das Board beschließt |
| Verlauf (`mii-pr-onko-verlauf`) als Ergebnis-Klammer | Zielerreichung gegen `OnkoTherapyGoal` |

Die Therapieziele-Spezifikation entsteht bewusst **außerhalb** des
Kerndatensatzes: Sie kann in eigenem Tempo iterieren und ihr Modell
(EnLiST-Linien, Ziel-Taxonomie, Planstruktur) zuerst an realen Projekten
validieren. **Ergebnisse, die sich dort bewähren, können in späteren
Versionen in dieses Modul einfließen** — etwa als strukturierte
Zielreferenz an den Therapieprofilen oder als Angleichung der
Intentions-ValueSets. Bis dahin ist die verlinkte Spezifikation der Ort, um
Therapieziele zu modellieren; nichts in diesem Modul steht einer parallelen
Nutzung am selben Patienten entgegen.
