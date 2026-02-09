# Jira Ballot Feedback - Work in Progress Tickets

**Generated**: 2025-11-05 20:52:52

This document lists all tickets currently in "Work in progress" or "Pending" status from the latest Jira export.

---

## HDB-627: ATC Post-hoc Mapping

**Status**: Work in progress  
**Created**: 21/Aug/25 2:48 PM  
**Updated**: 04/Nov/25 6:05 PM  
**Assignee**: Unassigned

### Description

Liebes Modulteam,

im Bereich Terminologien der Systemischen Therapien ([https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Systemische-Therapie-Systemische-Therapie-Terminologien.html|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Systemische-Therapie-Systemische-Therapie-Terminologien.html|smart-link] ) wird beschrieben, dass eine Post-Annotation von Medikamenten aus Freitext zulässig ist, aber mit den aktuellen ATC-Codes erfolgen soll.

Es wird verlangt, dass die Nachträgliche Kodierung klar gekennzeichnet wird, aber das sehe ich in dem Beispiel nicht als gegeben. Dies ist nur über die Ressourcen-ID erkennbar (die dafür ungeeignet ist) und darüber, dass ein medicationCodeableConcept.text vorhanden ist (stellt diese Info nicht eindeutig dar).

Übersehe ich hier was? Ansonsten schlage ich vor, dass bei Post-hoc Annotationen immer die ATC-Version angegeben werden muss. Das Feld existiert im Coding ja sowieso.

Viele Grüße
Markus

!Screenshot From 2025-08-21 14-48-04.png|width=1269,height=759,alt="Screenshot From 2025-08-21 14-48-04.png"!



### Comments

*No comments*

---

## HDB-628: Systemische Therapie Substanzen ohne UNII-Codes

**Status**: Work in progress  
**Created**: 21/Aug/25 3:10 PM  
**Updated**: 04/Nov/25 5:37 PM  
**Assignee**: Unassigned

### Description

Liebes Modulteam,

bei zweien der Systemtherapie-Substanzen, die in oBDS existieren, ihr aber keinen UNII-Code gefunden habt, habe ich einen gefunden:

Dinatriumfolinat: _LEUCOVORIN SODIUM_ *4MXU9LJS4Q*
G-CSF: _GRANULOCYTE-MACROPHAGE COLONY-STIMULATING FACTOR HUMAN_ *KIJ28K7WXF*

Beim zweiten bin ich mir aber nicht sicher, ob das genau der gleiche ist, der auch im oBDS gemeint ist. Aber vielleicht hilft das trotzdem.

Viele Grüße
Markus

### Comments

*No comments*

---

## HDB-675: Prostata Modul

**Status**: Work in progress  
**Created**: 15/Sep/25 4:19 PM  
**Updated**: 04/Nov/25 5:03 PM  
**Assignee**: Unassigned

### Description

# einzelne Gleason Readings in Components?
# Observation für ClavienDindo Komplikation als Extra observation - ggf. gleich in die OP unter "procedure.complication" ? 
## könnte man dann aber nicht als verpflichtend modellieren
## ggf. wäre es so ohnehin nicht über FDPG abfragbar, oder? weil Observation ClavienDindo verweist auf Procedure und die verweist auf Diagnose – [Dominik Böhm|https://koopex.uk-erlangen.de/display/~boehmdk] ?
### doch - observation.focus zeigt sowohl auf Operation als auch auf Diagnose
# PSA: "PSA-Werte können sowohl als Gesamt-PSA als auch als freies PSA dokumentiert werden." 
#* {noformat}hier wäre es gut gesamt und freies PSA beides zu ermöglichen und den loinc code nicht festzuschreiben
{
  "system": "http://loinc.org",
  "code": "2857-1",
  "display": "Prostate specific Ag [Mass/volume] in Serum or Plasma"
}{noformat}

{{Frage: woher wissen wir aus den oBDS Meldungen ob freies oder gesamt PSA gemeldet wurde? }}

### Comments

*No comments*

---

## HDB-676: Mamma Modul

**Status**: Work in progress  
**Created**: 15/Sep/25 4:20 PM  
**Updated**: 20/Oct/25 12:02 PM  
**Assignee**: Unassigned

### Description

* hier gibt es eine extra Operation für Mamma .... notwendig?  
** liegt daran, dass hier genauer mittels snomed kodiert wird und das binding dann extra eingefügt werden kann und wenn ichs richtig verstanden habe, kann mit dem extra binding zu nem extra value set mit Mamma spezifischen OPs dann besser die FHIR Validierung laufen
** *Kommentierungshinweis*: Zu diskutieren ist, ob präoperative Markierung als separate Extraressource (wie derzeit implementiert) oder einfach als usedCode mit präoperativ- und intraoperativ-Slices modelliert werden sollte.
*** ggf eher usedCode analog Vorschlag for Clavien Dindo in prostata modul

### Comments

*No comments*

---

## HDB-679: Technisches IG Feedback

**Status**: Work in progress  
**Created**: 15/Sep/25 4:25 PM  
**Updated**: 20/Oct/25 11:43 AM  
**Assignee**: Unassigned

### Description

Diagnose: Bindinglevels auf die gleiche Ebene setzen (bodySite)
 Lymphknotenuntersuchung: Slices/Bindingslevel angleichen (Category/Code) laboratory Cardinality,
 Histobefund: BasedOn Slices warum?
 Grading: Slice Lvl laboratory in Category. Laboratory and Code are fixed Codes why ..* cardinality?; Value[x] Bindinglevel
 Verlaufhisto: Code is fixed why Coding 0.. value[x] bindingLvl/Why no Slice? BindingLvl bodySite ICD-o-3
 TNM: Bindinglvls angleichen, Slicing angleichen
weitere Terminologie: SyntaxErrors überprüfen
 Operationen: Complication Slices Lvl 
 Link Medikation Statement in Nationaler Bezug kaputt
 Szenariobeschreibung Github Link geht nicht
 UML Github Link geht nicht
 OrganUML werden nicht gerendert
 Farbenwahl sollte Dezenter gewählt werden
 Beziehungen und Referenzen UMLs geordentere Pfeile
 CPS hat einige kaputte Referenzen
 fdasis Link kaputt
 Export muss händisch angepasst werden, damit CanonicalLinks vom Profil auflösen

### Comments

*No comments*

---

## HDB-680: minor technical IG issues (page not found etc)

**Status**: Work in progress  
**Created**: 15/Sep/25 4:26 PM  
**Updated**: 20/Oct/25 11:35 AM  
**Assignee**: Unassigned

### Description

* [*https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Tumorkonferenz-Tumorkonferenz-CarePlan.html*|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Tumorkonferenz-Tumorkonferenz-CarePlan.html]
** *Zusätzliche Informationen*: {{supportingInfo}} für relevante Verlaufs-Stagings
*** könnte man hier genauer definieren welche Referenzen möglich sind? zB TNM Observations, ...
* [https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Systemische-Therapie-Systemische-Therapie-Procedure.html|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Systemische-Therapie-Systemische-Therapie-Procedure.html]
** link page not found Therapieprotokoll
*** Als *usedCode* werden die spezifischen Therapieprotokolle dokumentiert, die in der systemischen Therapie verwendet werden.
*** Die Protokolle basieren auf dem [oBDS Umsetzungsleitfaden|https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532385/Systemische+Therapie+SYST+Protokolle]
** Link zu Binding in *usedCode* geht nicht (mehrere Links zu ValueSets gehen nicht, z.B. auch Verlauf primaertumor)



* release notes:
** *Melanom-Exzision*: 
Command 'pagelink' could not render: Page not found.



### Comments

*No comments*

---

## HDB-682: Standard-Extensions für Strahlentherapie Applikationsart

**Status**: Work in progress  
**Created**: 15/Sep/25 9:25 PM  
**Updated**: 20/Oct/25 11:27 AM  
**Assignee**: Unassigned

### Description

Es gibt folgende Extension: [https://hl7.org/fhir/R4/extension-procedure-method.html|https://hl7.org/fhir/R4/extension-procedure-method.html|smart-link]  - die könnte man vielleicht nutzen um die applikationsart abzubilden. Aktuell liegt diese in usedCode. Während die Strahlenart da sicherlich hingehört, finde ich die Applikationsart als “Coded items used during the procedure“ zumindest diskutabel.

### Comments

*No comments*

---

## HDB-683: Standard targetBodyStructure extension zur Abbildung der Seitenlokalisation

**Status**: Pending  
**Created**: 15/Sep/25 9:28 PM  
**Updated**: 20/Oct/25 11:15 AM  
**Assignee**: Unassigned

### Description

[https://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html|https://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html|smart-link]  wäre vielleicht auch ganz passend um sich eine eigene “[https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation|https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation]“ extension zu sparen.

“

### Comments

*No comments*

---

## HDB-688: Profile PSA-Wert

**Status**: Work in progress  
**Created**: 30/Sep/25 1:16 PM  
**Updated**: 20/Oct/25 11:13 AM  
**Assignee**: Unassigned

### Description

Zu der Frage: “frei vs. total, oder einzelne Profile für beides, oder ein Profil mit mehreren Möglichen Codes? Wie damit umgehen, dass LOINC bald verpflichtend wird, aber im Tumpordokumentationssystem vsl. nicht kodiert”. Ich wäre für ein Profil mit mehreren möglichen Codes, KEINE einzelne Profile. Zu LOINC-Verpflichtung ist mir die Frage nicht ganz klar, da im Profil auch code.text erlaubt ist, oder? 

### Comments

*No comments*

---

## HDB-689: Profil Allg. Leistungszustand Karnofsky ValueSet anpassen

**Status**: Work in progress  
**Created**: 30/Sep/25 3:45 PM  
**Updated**: 20/Oct/25 11:05 AM  
**Assignee**: Unassigned

### Description

Wenn keine internationale Terminologie (obwohl z.B. LOINC Answer List vorhanden) und keine Ordinalskala verwendet wird (keine Interpretation zu den Prozentzahlen gegeben, obwohl z.B. im oBDS existiert), wäre es hier meiner Meinung nach besser den Wert (Observation.value) entsprechend dem [Leitfaden für Scores|https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Observation-Skalen-und-Scores.html] als Quantity abzubilden, eventuell mit referenceRange aus dem oBDS (Mapping zu ECOG). Ich wäre allerdings für internationale Codes.

### Comments

*No comments*

---

## HDB-692: Erstdiagnose vs. Primärdiagnose vs. Primärtumor - z.B. Profil Verlaufshistologie

**Status**: Work in progress  
**Created**: 01/Oct/25 11:14 AM  
**Updated**: 20/Oct/25 10:24 AM  
**Assignee**: Unassigned

### Description

Die genannten Begriffe sind im IG durcheinander. Primärtumor in DE ist der, der ggf. metastasiert. Ich glaube, im oBDS wird jeder Primärtumor einzeln dokumentiert, also nicht longitudinal. (!)Diagnose_Primärtumor ist nicht gleich Primärdiagnose. Vermutlich wurde der Begriff Primärdiagnose vom Primary Diagnosis in mCODE abgeleitet. Primary Diagnosis ist aber in USA die Diagnose, die ein Arzt gerade im Fokus hat: ein Onkologe kann Tumor A als primary behandeln, ein anderer Onkologe aber Tumor B als primary z.B. diagnostizieren (und ggf. behandeln). Dabei muss “primary” Tumor B nicht zwingend Primärtumor sein, das lässt sich erst nach einer Histologie klären: entweder ist Tumor B eine Metastase vom Primärtumor A, oder Tumor B ist ein zweiter Primärtumor. Das war unser Erkenntnis im GOLD Projekt. Und Erstdiagnose ist die Diagnose, die zum ersten Mal histologisch gesichert wurde. Es ist zwingend notwendig, diese Begriffe mit Tumordokumentaren abzuklären und den gesamten IG darauf zu prüfen!

Konkret am Beispiel der Verlaufshistologie. In der Beschreibung steht: “Für Histologien, die zum Stellen der *Primärdiagnose* herangezogen werden, SOLLEN die ICD-O-3-Kodierungen direkt in der *Primärdiagnose* hinterlegt werden.“ ← Hier ist wahrscheinlich gemeint: “Für Histologien, die zum Stellen der *Erstdiagnose* herangezogen werden, SOLLEN die ICD-O-3-Kodierungen direkt in der Ressource *Diagnose_Primaertumor* hinterlegt werden.“

Soweit ich verstanden habe, gleicht das Profil [Verlaufshistologie|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Verlaufshistologie-Observation.html] im zu kommentierenden MII IG dem Profil [Histologie ICD-O-3|https://simplifier.net/medizininformatikinitiative-modulonkologie/mii_pr_onko_histologie_icdo3] auf Simplifier. In dem Fall sollte aus meiner Sicht auch die Kurzbeschreibung auf Simplifier angepasst werden: “Bei der histologischen Beurteilung des Primärtumors *zu Erstdiagnosestellung* sind die histologischen Informationen direkt über die Condition-Ressource abzubilden.”

### Comments

*No comments*

---

## HDB-695: Erstdiagnose Evidenz: List - Zweck und Beispiele nennen

**Status**: Work in progress  
**Created**: 01/Oct/25 1:19 PM  
**Updated**: 20/Oct/25 10:19 AM  
**Assignee**: Unassigned

### Description

Mir ist nicht ganz klar, warum man eine extra Liste braucht wenn man die Kardinalität von Condition.evidence bei 0..* (oder besser 1..*) lassen kann und eben mehrere Befunde mit References eingeben kann. Außerdem sind solche Evidenzen nicht nur für Erstdiagnosestellung relevant, sondern auch für Verlaufskontrollen. Eine genauere Beschreibung des Zwecks und ein paar Beispiele im IG wären wünschenswert. 

### Comments

*No comments*

---

## HDB-699: Beschreibungen in Extensions

**Status**: Work in progress  
**Created**: 02/Oct/25 8:53 AM  
**Updated**: 20/Oct/25 10:15 AM  
**Assignee**: Unassigned

### Description

Die Beschreibungstexte in den Extensions für die TNM-Suffixe sind nicht gut verständlich, wenn man sich nicht gut mit TNM auskennt. Eventuell ist das aber kein Problem, weil Implementierende sich schon gut damit auszukennen haben 😉 Ansonsten würde ich mich immer für “mehr Text in der StructureDefinition” aussprechen, weil der IG sicher nicht immer komplett gelesen werden.

### Comments

*No comments*

---

## HDB-710: Post-hoc ATC-Kodierung durch DIZ

**Status**: Pending  
**Created**: 02/Oct/25 10:27 AM  
**Updated**: 20/Oct/25 10:10 AM  
**Assignee**: Unassigned

### Description

Zu den [Kernfragen|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-Kommentierung-v2026.html]:

# _Ist Post-Annotation von Freitext zu ATC-Codes grundsätzlich erlaubt?_ ← Wenn wirklich alle sich über verbindliche Regeln einig sind, könnte es hilfreich sein. Es muss allerdings sehr klar definiert sein und darf lediglich eine zusätzliche Möglichkeit bleiben, damit die originalen (Freitext)Daten nicht verändert/verloren werden (s. Contra-Argument “Verfälschung historischer Dokumentation”). Also, 
## die klare Kennzeichnung als Post-Annotation 
## und Provenance-Dokumentation sind zwingend erforderlich 
## und die originale Freitextinformation muss erhalten bleiben, exakt wie vorgeschlagen. 
# _Falls ja, welche ATC-Version soll verwendet werden (historisch korrekt vs. aktuell)?_ ← Ist es möglich, beide Versionen zu erlauben? So wären die Contra-Argumente zu dem vorgeschlagenen Ansatz mit aktuellen ATC-Codes “Original-Therapiezeitpunkt” und “retrospektive Analysen” adressiert. Ich stelle es mir als triple-coding vor: 
## Original-Freitext
## Post-Annotation ATC historisch
## Post-Annotation ATC aktuell
# _Sollte es eine zentrale Mapping-Tabelle für häufige Freitext-Einträge geben?_ ← Ja, unbedingt! Bitte-bitte!



### Comments

*No comments*

---

## HDB-711: Bezug zu nationalen Standards - Nationale Vorarbeiten

**Status**: Work in progress  
**Created**: 02/Oct/25 11:09 AM  
**Updated**: 20/Oct/25 10:09 AM  
**Assignee**: thomas.debertshaeuser

### Description

[https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-BezugZuNationalenStandards.html|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-BezugZuNationalenStandards.html|smart-link] 

# Wäre es möglich, die Beschreibung von GOLD etwas anzupassen? So wünschten wir es uns: “Das Projekt GOLD wurde vom Vision-Zero e.V. initiiert und zielt auf die Abbildung einer kompletten onkologischen Patient Journey ab. Das Datenmodell und die dazugehörigen Profile wurden von existierenden Datenmodellen aus Versorgung, Forschung und Industrie in Deutschland und Ausland abgeleitet. Es wurden Vorschläge für Harmonisierung verschiedener Spezifikationen erarbeitet und mit deutschen Experten abgestimmt. Die ersten FHIR-Profile mit Fokus auf Diagnose und Klassifikationen, wie die TNM-Klassifikation, sowie Bildgebung und Verlauf sind in mehrere weitere Projekte eingeflossen, z.B. Basisprofile Onkologie von HL7 Deutschland und das MII-Modul Befunde bildgebender Verfahren. Die aktuelle Version ist hier zu finden: [https://vision-zero-oncology.github.io/GOLD/|https://vision-zero-oncology.github.io/GOLD/|smart-link]“
# Das Mapping der Datenelemente des Modellvorhabens Genomsequenzierung auf den MII KDS ist toll. Wäre es möglich in dieser Tabelle zusätzlich (als eine weitere Spalte) auch das Mapping auf Datenelemente des oBDS darzustellen? Das Mapping KDS-Onko zu oBDS ist ja vorhanden, es wäre nur eine Darstellungssache.



### Comments

*No comments*

---

## HDB-712: Informationsmodell UML Genetische Variante - Reference auf Specimen zufügen

**Status**: Pending  
**Created**: 02/Oct/25 12:21 PM  
**Updated**: 02/Oct/25 2:04 PM  
**Assignee**: thomas.debertshaeuser

### Description

In allen UMLs ist die Genetische Variante losgelöst von der Bioprobe. Im Profil Genetische Variante ist die Referenz auf die Bioprobe optional (0..1 Kardinalität). Es sollte eine entsprechende Verbindung in UMLs dargestellt werden. 

Die genetische Variante ist ein Ergebnis der Untersuchung des einzelnen (Tumor)Specimens, und es wäre eigentlich gut die Kardinalität auf 1..1 zu setzen. Gleichzeitig enthält oBDS keine Datenelemente zu Bioproben, sodass 0..1 für die aktuelle Modulversion möglicherweise besser passt. Aber es wäre dann definitiv eine Überlegung im Rahmen der Einbindung des MolGen-Befundes.

### Comments

*No comments*

---

## HDB-714: Profile Verlaufshistologie und Specimen - Tumor Histologiedatum 

**Status**: Work in progress  
**Created**: 02/Oct/25 9:01 PM  
**Updated**: 20/Oct/25 10:08 AM  
**Assignee**: Unassigned

### Description

Tumor Histologiedatum wurde doppelt modelliert: im Specimen als Specimen.collection.collectedDateTime und in der Verlaufshistologie als Observation.effectiveDateTime. Das ist sehr verwirrend! Das KDS-Modul Onkologie bietet eine Basis für viele Forschungsprojekte, z.B. für NCT, und insbesondere das FDPG der MII ist auf Forschung ausgerichtet. Deswegen wäre hier eine belastbare und zukunftssichere Lösung wünschenswert, die neben Tumordokumentation auch gute Datenqualität für Analysen ermöglicht.

Fakten sind: 

* Das oBDS definiert das Element 6.1 Tumor Histologiedatum als “Datum, an dem die Gewebeprobe entnommen wurde“.
* FHIR R4 core definiert 
** Specimen.collection.collectedDateTime als “Time when specimen was collected from subject - the physiologically relevant time.“ (eindeutige Definition)
** Observation.effectiveDateTime als “The time the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the "physiologically relevant time". This is usually either the time of the procedure or of specimen collection“. (Use Case abhängig)

Mein Vorschlag: 

* Für eine histologische Untersuchung klingt “the time of the procedure” als Observation.effectiveDateTime natürlicher. Diese Definition kann durch die Abgrenzung von Specimen zusätzliche Information über den Verlauf einer Erkrankung liefern, was für Forschungsanalysen relevant ist.
* Observation.effectiveDateTime in Verlaufshistologie in “Datum der histologischen Untersuchung” umbenennen. Übrigens das wäre dann auch das Datum der Diagnosesicherung (Feststellungsdatum bzw. 5.6 “Primärtumor Diagnosedatum” nach oBDS), das aktuell durch Condition.extension assertedDate abgebildet wird.
* Das Specimen.collection.collectedDateTime “Datum der Probenentnahme” nennen.
* Im IG im Profil Verlaufshistologie den Hinweis geben, dass es eine verpflichtende (1..1) Reference auf Specimen gibt und dass das oBDS für Tumordokumentation unter dem Element 6.1 Tumor Histologiedatum das Datum der Probenentnahme aus dem Profil Specimen versteht. Im Mapping oBDS zu FHIR in [Verlaufshistologie |https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Verlaufshistologie-Observation.html] 6.1 Tumor Histologiedatum entweder entfernen oder auf Specimen.collection.collectedDateTime statt auf Observation.effective[x] mappen. Das letztere fände ich verständlicher. 
* In UML Histologie auf der Seite [Profile - Inhalt und Vererbung|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-Profile-Inhalt-und-Vererbung.html] die Verbindung zwischen Verlaufshistologie und Specimen darstellen (fehlt aktuell, s. Screenshot)
* In UML [hier|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-AnwendungsflleInformationsmodell-UML.html] unter Anwendungsfälle / Informationsmodell habe ich Verlaufshistologie nicht gefunden - ist sie als Teil des Histologie-Blocks gemeint? Wenn ja, wäre es möglich das so darzustellen? Wenn nein, dann wäre ein Kästchen für Verlaufshistologie in UML gern gesehen. Und Specimen entsprechend den Profilen mit Verlaufshistologie und Genetische Variante verbinden.



### Comments

*No comments*

---

## HDB-715: Studienteilnahme

**Status**: Work in progress  
**Created**: 02/Oct/25 9:14 PM  
**Updated**: 04/Nov/25 12:29 PM  
**Assignee**: Unassigned

### Description

Wie sieht es mit der Einbindung des MII-Moduls Forschungsvorhaben aus? Wenn es angedacht ist, sollte das Modul vielleicht mit in das Zukunfts-UML unter [Profile - Beziehungen und Referenzen|https://www.medizininformatik-initiative.de/Kerndatensatz/KDS_Onkologie/MIIIGModulOnkologie-TechnischeImplementierung-Profile-Beziehungen-und-Referenzen.html] ?

### Comments

*No comments*

---

