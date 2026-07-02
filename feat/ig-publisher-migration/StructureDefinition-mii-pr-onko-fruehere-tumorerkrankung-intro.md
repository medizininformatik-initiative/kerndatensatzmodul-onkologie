### Inhalt
Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert oder behandelt wurden. Es basiert auf der FHIR Condition-Ressource, da historische anamnestische Daten häufig nur als Freitext vorliegen.

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
* `mii-exa-onko-fruehere-tumorerkrankung-cervix` - Cervix-Ca in situ
* `mii-exa-onko-fruehere-tumorerkrankung-mamma` - Mammakarzinom
* `mii-exa-onko-fruehere-tumorerkrankung-prostata` - Prostatakarzinom
* `mii-exa-onko-fruehere-tumorerkrankung-freetext` - Nur Freitext ohne ICD-Kodierung

---

### Konformität

Das Profil ist kompatibel mit der FHIR Condition-Ressource R4.

---

**Suchparameter**

Folgende Suchparameter sind für das Profil Frühere Tumorerkrankung relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|C50.9```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?patient=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "body-site" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?body-site=http://terminology.hl7.org/CodeSystem/icd-o-3|C50.9```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "clinical-status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?clinical-status=resolved```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.clinicalStatus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**

Beispiel 1: Frühere Tumorerkrankung Mamma (mit ICD-10-GM und ICD-O-3 Kodierung)

[Beispiel: mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.html)

---

Beispiel 2: Frühere Tumorerkrankung Cervix in situ (mit ICD-10-GM Kodierung)

[Beispiel: mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.html)

---

Beispiel 3: Frühere Tumorerkrankung Prostata (mit ICD-10-GM und ICD-O-3 Kodierung)

[Beispiel: mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.html)

---

Beispiel 4: Frühere Tumorerkrankung nur Freitext (typische anamnestische Angabe ohne Kodierung)

[Beispiel: mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.html)
