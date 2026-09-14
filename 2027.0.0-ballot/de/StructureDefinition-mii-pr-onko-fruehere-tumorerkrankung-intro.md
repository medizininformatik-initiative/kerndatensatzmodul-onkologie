### Inhalt
Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert oder behandelt wurden. Es basiert auf der FHIR Condition-Ressource, da historische anamnestische Daten häufig nur als Freitext vorliegen.

### Abgrenzung und Verweis-Richtung

Dieses Profil ist für Vorerkrankungen gedacht, die **nur anamnestisch** bekannt
sind (oBDS 5.9, häufig Freitext). Die aktuelle Diagnose verweist darauf über
die Extension `occurredFollowing` (zeitliche Achse „trat auf nach").

Zwei Fälle gehören bewusst **nicht** hierher:

1. **Die frühere Erkrankung liegt als registrierte onkologische Diagnose vor**
   (z. B. im selben DIZ dokumentiert): Dann verweist `occurredFollowing` der
   neuen Diagnose direkt auf die registrierte
   [Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html) — ein Freitext-Duplikat in diesem Profil ist
   nicht anzulegen.
2. **Die neue Diagnose ist eine Transformation derselben Tumor-Linie**
   (MDS → AML, ZNS /0 → /3 — das Register führt eine neue Entität): Dann ist an der
   neuen Diagnose die Extension `mii-ex-onko-transformation-von` (kausale
   Achse) zu verwenden — Details und Entscheidungstabelle auf der Seite
   [Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html).

---

### Abgrenzung zur Primärtumordiagnose
Im Gegensatz zum Profil "Diagnose Primärtumor" (MII_PR_Onko_Diagnose_Primaertumor), welches die aktuelle onkologische Erkrankung beschreibt, dient dieses Profil zur Erfassung **früherer** Tumorerkrankungen aus der Patientenanamnese.

**Wesentliche Unterschiede:**
* **Datenquelle**: Frühere Tumorerkrankungen stammen oft aus Freitextangaben der Anamnese, während die Primärtumordiagnose auf aktuellen diagnostischen Befunden basiert
* **Kodierungsanforderungen**: Code.text ist verpflichtend, ICD-10-GM Kodierung ist optional (bei Primärtumor verpflichtend)
* **Basisprofil**: Basiert auf FHIR Condition (nicht auf MII Diagnose), um flexible Freitexterfassung zu ermöglichen
* **Detailgrad**: Reduzierte Anforderungen an Diagnosesicherung, Topographie und weitere Details

---

### Anwendungshinweise

#### Pflichtangaben
* **code.text**: Textuelle Beschreibung der früheren Tumorerkrankung (z.B. "Hautkrebs am Rücken, ca. 2010")
* **category**: Kategorisierung als onkologische Diagnose (SNOMED CT: 394593009 "Medical oncology")
* **subject**: Referenz auf den Patienten

#### Optionale Angaben
* **code.coding[icd10-gm]**: ICD-10-GM Kodierung, falls retrospektiv ermittelbar
* **bodySite.coding[icd-o-3]**: ICD-O-3 Topographie, falls bekannt
* **extension[assertedDate]**: Diagnosedatum der früheren Tumorerkrankung
* **clinicalStatus**: Aktueller klinischer Status (z.B. resolved, remission)
* **verificationStatus**: Verifizierungsstatus (z.B. confirmed, unconfirmed)
* **note**: Zusätzliche Informationen zur früheren Tumorerkrankung

---

### Mapping zu oBDS 5.9

Das Profil bildet die oBDS-Anforderung für "Frühere Tumorerkrankungen" (Abschnitt 5.9) ab:

| oBDS-Element | FHIR-Pfad | Anmerkung |
|--------------|-----------|-----------|
| Frühere Tumorerkrankung Beschreibung | code.text | Pflichtfeld |
| Frühere Tumorerkrankung ICD-10-GM Code | code.coding[icd10-gm].code | Optional |
| Frühere Tumorerkrankung ICD-10-GM Version | code.coding[icd10-gm].version | Optional |
| Frühere Tumorerkrankung Diagnosedatum | extension[assertedDate].valueDateTime | Optional |
| Frühere Tumorerkrankung ICD-O-3 Topographie | bodySite.coding[icd-o-3].code | Optional |

---

### Beispiele

**Beispiel 1: Mit ICD-10-GM Kodierung**
```
Code.text: "Mamma-Ca, links"
Code.coding[icd10-gm]: C50.9 (ICD-10-GM 2013)
BodySite.coding[icd-o-3]: C50.9 "Breast, NOS"
Extension[assertedDate]: 2013
ClinicalStatus: resolved
```

**Beispiel 2: Nur Freitext (typische anamnestische Angabe)**
```
Code.text: "Hautkrebs am Rücken, ca. 2010"
Extension[assertedDate]: 2010
ClinicalStatus: resolved
Note: "Patient berichtet von operativ entferntem Hautkrebs vor ca. 14 Jahren"
```

Vollständige Beispiele finden sich in den Instanzen:
* [mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.html) - Cervix-Ca in situ
* [mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.html) - Mammakarzinom
* [mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.html) - Prostatakarzinom
* [mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.html) - Nur Freitext ohne ICD-Kodierung

---

### Konformität

Das Profil ist kompatibel mit der FHIR Condition-Ressource R4.

---

**Beispiele**

Beispiel 1: Frühere Tumorerkrankung Mamma (mit ICD-10-GM und ICD-O-3 Kodierung) — [mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.html)

Beispiel 2: Frühere Tumorerkrankung Cervix in situ (mit ICD-10-GM Kodierung) — [mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.html)

Beispiel 3: Frühere Tumorerkrankung Prostata (mit ICD-10-GM und ICD-O-3 Kodierung) — [mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.html)

Beispiel 4: Frühere Tumorerkrankung nur Freitext (typische anamnestische Angabe ohne Kodierung) — [mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.html)
