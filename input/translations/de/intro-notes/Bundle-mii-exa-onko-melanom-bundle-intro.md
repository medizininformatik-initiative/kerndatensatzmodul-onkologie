### Inhalt

Das **Melanom Bundle Beispiel** demonstriert die strukturierte Zusammenstellung aller Melanom-spezifischen FHIR-Ressourcen in einem einheitlichen Transaktions-Bundle. Dieses Bundle zeigt die praktische Anwendung der Melanom-Profile und deren Verknüpfungen untereinander in einem realistischen klinischen Szenario eines Malignen Melanoms der Haut.

Das Bundle implementiert das **Transaction-Pattern** und ist server-konsumierbar, wodurch alle enthaltenen Ressourcen als atomare Operation übertragen werden können.

---

### Bundle-Struktur

Das Melanom-Bundle umfasst folgende Ressourcen:

#### Primäre Ressourcen

- **Patient**: Melanom-Patient (Maria Melanom)
- **Condition**: Primärtumor-Diagnose (C43.9 - Bösartige Neubildung: Haut, nicht näher bezeichnet)
- **Encounter**: Stationärer Behandlungsfall

#### Melanom-spezifische Observations

- **Breslow-Tiefe**: Tumordicke 2.1mm von Granularschicht bis tiefste Invasion (Breslow)
- **Sicherheitsabstand**: Minimaler Abstand zum Resektionsrand 5mm (MM1)
- **Ulzeration**: Nachweis einer Ulzeration der Epidermis (MM4)
- **LDH**: Laktatdehydrogenase-Wert 280 U/L als prognostischer Marker (LDH)

#### Bundle-spezifische Merkmale

- **Transaction Bundle**: Server-konsumierbare atomare Operation
- **Referenz-Konsistenz**: Alle Einzelressourcen referenzieren Bundle-Kernressourcen
- **Vollständige Abdeckung**: Alle 4 Melanom-Profile sind enthalten

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Bundle-Example.page.md gate=B -->
> Als therapeutische Ressource enthält das Bundle darüber hinaus die **Exzision am Oberarm** als Procedure.
{: .ig-highlight .ig-highlight-grey}

---

### Klinisches Szenario

Das Bundle repräsentiert eine **Patientin mit Malignem Melanom** mit kompletter histopathologischer Diagnostik und operativer Therapie:

**Patientencharakteristika:**

- **Diagnose**: C43.9 Malignes Melanom der Haut
- **Breslow-Tiefe**: 2.1mm (prognostisch wichtig)
- **Tumorlokalisation**: Haut, nicht näher bezeichnet

**Histopathologische Diagnostik:**

- **Ulzeration**: Nachweis einer Ulzeration der Epidermis
- **LDH**: Erhöhter Wert (280 U/L) als prognostischer Marker

**Operative Therapie:**

- **Exzision**: Mit ausreichendem Sicherheitsabstand
- **Sicherheitsabstand**: Minimaler Abstand 5mm zum Resektionsrand
- **Resektionsstatus**: R0-Resektion erreicht

---

### Technische Implementation

#### Bundle-Typ und Struktur

```
* type = #transaction
```

- **Transaction Bundle**: Atomare Übertragung aller Ressourcen
- **Server-konsumierbar**: Alle Entries mit vollständigen Request-Informationen

#### Entry-Pattern

Jeder Bundle-Entry enthält:

- **fullUrl**: Eindeutige Referenz-URL
- **resource**: Die eigentliche FHIR-Ressource
- **request.method**: HTTP POST für Erstellung
- **request.url**: Ziel-Ressourcentyp

#### Referenz-Integrität

- **Condition**: Referenziert Patient über `subject`
- **Observations**: Referenzieren sowohl Patient (`subject`) als auch Condition (`focus`)
- **Procedures**: Referenzieren Patient (`subject`) und Condition (`reasonReference`)
- **Specimen**: Referenziert Patient (`subject`) und Collection-Procedure

---

### oBDS-Zuordnung

Das Bundle demonstriert die vollständige Abbildung der oBDS-Datenfelder für Malignes Melanom:

#### Histopathologische Bewertung

- **MM2**: Breslow-Tiefe → [mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.html)
- **MM4**: Ulzeration → [mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.html)

#### Chirurgische Bewertung

- **MM1**: Sicherheitsabstand → [mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.html)

#### Laborparameter

- **MM3**: Laktatdehydrogenase → [mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.html)

---

### ValueSet-Verwendung

Das Bundle zeigt die praktische Anwendung verschiedener Terminologien:

#### LOINC

- **LDH**: `14805-6` "Lactate dehydrogenase activity in Serum or Plasma"

#### SNOMED CT

- **Breslow-Tiefe**: `106243009` "Breslow depth staging for melanoma of skin"
- **Sicherheitsabstand**: `396511007` "Distance of in situ melanoma from closest lateral surgical margin"
- **Ulzeration**: `97816-3` "Ulceration present in melanoma of skin"

#### ICD-10-GM

- **Diagnose**: `C43.9` "Bösartige Neubildung: Haut, nicht näher bezeichnet"

#### oBDS CodeSystems

- **Ulzeration**: `mii-cs-onko-melanom-ulzeration#J` "Ja"
- **LDH-Bewertung**: `mii-cs-onko-melanom-ldh-bewertung#erhoeht` "Erhöht"

<!-- TODO:REVIEW Die hier aus der Quellseite uebernommenen Codes weichen von den ausgelieferten Instanzen ab: LDH nutzt LOINC 14804-9 (nicht 14805-6); die Ulzeration nutzt SNOMED CT 6270001000004106 "Presence of ulcer in primary malignant melanoma of skin (observable entity)" - der in der Quelle genannte Code 97816-3 ist ein LOINC-Code der ASA-Klassifikation; ein CodeSystem mii-cs-onko-melanom-ldh-bewertung existiert nicht, die Bewertung erfolgt ueber Observation.interpretation (v3-ObservationInterpretation#H "High"). Fachlich pruefen und angleichen. -->

---

### Einzelne Ressourcen-Beispiele

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Bundle-Example.page.md gate=B -->
> Die im Bundle enthaltenen Ressourcen sind zusätzlich als eigenständige Beispielinstanzen ausgeliefert:
{: .ig-highlight .ig-highlight-grey}

- Patient: [mii-exa-onko-melanom-bundle-patient](Patient-mii-exa-onko-melanom-bundle-patient.html)
- Primärtumor-Condition: [mii-exa-onko-melanom-diagnose](Condition-mii-exa-onko-melanom-diagnose.html)
- Behandlungsfall: [mii-exa-onko-melanom-bundle-encounter](Encounter-mii-exa-onko-melanom-bundle-encounter.html)
- Breslow-Tiefe: [mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.html)
- Sicherheitsabstand: [mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.html)
- Ulzeration: [mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.html)
- LDH: [mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.html)
- Exzision Oberarm: [mii-exa-onko-melanom-exzision-oberarm](Procedure-mii-exa-onko-melanom-exzision-oberarm.html)
