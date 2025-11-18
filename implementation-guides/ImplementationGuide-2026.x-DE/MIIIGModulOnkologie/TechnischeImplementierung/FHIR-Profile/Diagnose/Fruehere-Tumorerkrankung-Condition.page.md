---
parent:
topic: FruehereTumorerkrankungCondition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung
---

## {{page-title}}

---

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

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung'
select
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition

```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung'
        for
            differential.element
            where
                mustSupport = true
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
  <tab title="Ressourcen-Profile">
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung'
        for differential.element
        where mustSupport = true and type.code = 'Reference'
        select
            Feldname: id,
            Referenz: type.targetProfile
        ```
  </tab>
  <tab title="Terminology Bindings">
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung'
        for differential.element
        where
            mustSupport = true and binding.exists()
        select
            Feldname: id,
            Staerke: binding.strength,
            ValueSet: binding.valueSet
        ```
  </tab>
</tabs>
