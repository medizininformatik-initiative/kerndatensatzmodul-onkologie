### Inhalt

Das **Her2neu Status Profil** dokumentiert den diagnostischen Her2neu Status einer pathologisch untersuchten Probe beim Mammakarzinom. Her2neu (auch HER2 oder ERBB2) ist ein wichtiger prognostischer und prädiktiver Biomarker, der über die Eignung für eine anti-HER2-gerichtete Therapie entscheidet.

Der Her2neu Status basiert auf der **immunhistochemischen (IHC) Färbung** und bei bestimmten Befunden zusätzlich auf der **In-situ-Hybridisierung (ISH, z.B. FISH oder CISH)**. Die Bestimmung folgt den ASCO/CAP-Guidelines und den Vorgaben der S3-Leitlinie Mammakarzinom.

---

### Klinischer Hintergrund

Die Her2neu-Bestimmung ist essentiell für die Therapieplanung beim Mammakarzinom:

- **HER2-positive Tumoren** (ca. 15-20% der Mammakarzinome) profitieren von anti-HER2-Therapien wie Trastuzumab, Pertuzumab oder T-DM1
- **HER2-low Tumoren** zeigen eine niedrige HER2-Expression und können von neueren Therapien wie Trastuzumab-Deruxtecan profitieren (basierend auf den DESTINY-Breast04/06 Studien)
- **HER2-negative Tumoren** erhalten keine anti-HER2-gerichtete Therapie

---

### Her2neu Bestimmung nach ASCO/CAP

Die Her2neu-Bestimmung erfolgt mehrstufig:

![her2neu-1](her2neu-1.png)

**Abbildung 1**: Her2neu Bestimmungsalgorithmus nach ASCO/CAP Guidelines. Die initiale IHC-Färbung führt bei 2+ Befunden zur ISH-Testung.

![her2neu-2](her2neu-2.png)

**Abbildung 2**: Interpretation der Her2neu-Ergebnisse und Klassifikation in HER2-positiv, HER2-low, HER2-ultralow und HER2-negativ.

#### IHC-Scores:
- **3+**: Starke, komplette Membranfärbung in >10% der Tumorzellen → HER2-positiv
- **2+**: Schwache bis moderate, komplette Membranfärbung in >10% der Tumorzellen → ISH-Testung erforderlich
- **1+**: Schwache, inkomplette Membranfärbung in >10% der Tumorzellen → HER2-low (bei ISH-negativ bzw. ohne ISH)
- **0**: Keine Färbung oder Membranfärbung in ≤10% der Tumorzellen

#### ISH-Testung (FISH, CISH, etc.):
- **Positiv**: HER2/CEP17-Ratio ≥2,0 oder HER2-Kopienzahl ≥6,0 pro Zelle
- **Negativ**: HER2/CEP17-Ratio <2,0 und HER2-Kopienzahl <4,0 pro Zelle
- **Equivocal**: Grenzwertige Befunde, die eine Nachtestung erfordern

Das Modul Molekulares Tumorboard bietet feingranulärereProfile zur Abbildung der IHC- und ISH-Datenpunkte innerhalb eines molekularpathologisch Befundberichts.
---

### Verknüpfungen zu anderen Ressourcen

Das Profil ist eng mit anderen onkologischen Ressourcen verknüpft:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf die Patientin (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext und duale Kodierung

Das Profil implementiert die **oBDS-Datenfelder für den Her2neu Status** (Feld M4, Nr. 243) beim Mammakarzinom. Dabei wird eine **duale Kodierungsstrategie** verwendet, um sowohl der gefrorenen oBDS-Spezifikation als auch den neueren S3-Leitlinien und ASCO/CAP Guidelines gerecht zu werden.

#### oBDS-Definition (basierend auf Leitlinie 3.0 Spezifikation):
Die oBDS-Kodierung verwendet Buchstaben-Codes, die exakt der publizierten Spezifikation entsprechen:
- **P** = Positiv (IHC 3+ oder IHC 2+ und ISH positiv)
- **N** = Negativ
- **U** = Unbekannt

#### S3-Leitlinie/ASCO-CAP Definition (aktuelle Leitlinienversion 5.1):
Die moderne Klassifikation berücksichtigt zusätzlich **HER2-low** und **HER2-ultralow** Kategorien:
- **HER2-positiv**: IHC 3+ oder IHC 2+ und ISH-positiv
- **HER2-low**: IHC 1+ oder IHC 2+ und ISH-negativ
- **HER2-ultralow**: IHC 0 mit Membranfärbung
- **HER2-negativ**: IHC 0 ohne Membranfärbung
- **Equivocal**: Grenzwertig, weitere Testung erforderlich

Diese duale Kodierung ermöglicht die **Rückwärtskompatibilität** mit existierenden oBDS-Registerdaten und gleichzeitig die **Vorwärtskompatibilität** mit neueren therapeutischen Entwicklungen (z.B. Trastuzumab-Deruxtecan für HER2-low).

---

### Terminologie-Binding

Das Profil verwendet eine **duale Kodierungsstrategie** mit **extensible** Binding für `valueCodeableConcept`. Dies bedeutet, dass Codes aus beiden ValueSets parallel verwendet werden KÖNNEN.

#### ValueSet: MII VS Onko Mamma Her2neu Status oBDS

#### ValueSet: MII VS Onko Mamma Her2neu Status Leitlinie

---

Mapping Datensatz zu FHIR

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

---

**Suchparameter**

Folgende Suchparameter sind für das Mamma-Her2neu-Status Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-her2neu-status```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|48676-1```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?patient=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-concept=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds|P```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "component-code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-code=http://loinc.org|85319-2```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.component.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**

[Beispiel: mii-exa-onko-mamma-her2neu-status](Observation-mii-exa-onko-mamma-her2neu-status.html)
