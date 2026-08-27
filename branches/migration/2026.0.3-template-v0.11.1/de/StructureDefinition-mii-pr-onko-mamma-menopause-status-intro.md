### Inhalt
Dieses Profil beschreibt den (prätherapeutischen) Menopausenstatus einer Patientin mit Mamma-Karzinom in der Onkologie. Der Menopausenstatus ist ein wichtiger prognostischer Faktor für die Behandlungsplanung und Therapieauswahl bei Mamma-Karzinom.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet SNOMED CT zur Kodierung des beobachteten Merkmals (Menopause-Funktion). Die spezifischen Ausprägungen des Menopausenstatus werden über ein dediziertes ValueSet definiert.

---

### Verknüpfungen zu anderen Ressourcen
Der Menopausenstatus ist eine wichtige tumorspezifische Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf die Patientin (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Gemäß der aktuellen oBDS-Version 2021 wird der perimenopausal Status implizit unter prämenopausal subsumiert. Diese Konvention wird in der FHIR-Profilierung durch das entsprechende ValueSet abgebildet.

### Terminologie-Binding
Das ValueSet für den Menopausenstatus ist **extensible** gebunden. Dies bedeutet, dass die Codes aus dem definierten ValueSet bevorzugt verwendet werden SOLLEN, jedoch bei Bedarf auch andere geeignete Codes verwendet werden KÖNNEN, falls die vordefinierten Werte nicht ausreichen.

#### ValueSet: MII VS Onko Mamma Menopause Status

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Menopause Status](ValueSet-mii-vs-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Menopause Status](ValueSet-mii-vs-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Menopausenstatus Mamma](StructureDefinition-mii-pr-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

---

**Suchparameter**

Folgende Suchparameter sind für das Mamma-Menopause-Status Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-menopause-status```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://snomed.info/sct|161712005```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1.

1. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-concept=http://snomed.info/sct|76498008```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**

[mii-exa-onko-mamma-menopause-status-1](Observation-mii-exa-onko-mamma-menopause-status-1.html)
