Dieses Profil beschreibt eine systemische oder abwartende Therapie in der Onkologie.

### Beschreibung

Im oBDS werden mehrere klinische Konzepte innerhalb der Systemische Therapie abbgebildet
* Systemische Therapien
    * Chemotherapie
    * Immuntherapie
    * Targeted Therapy
    * Kombinationstherapien der oben genannten Therapien
    * Hormontherapie
    * Stammzell- und Knochenmarkstransplantation
* Abwartende Therapien
    * Watchful Waiting
    * Active Surveillance
    * Wait and see

Zu diesen einzelnen Therapien werden im oBDS weitere Datenelemente erfasst und hier abgebildet, darunter:
- Start und Endezeitpunkt der Therapie
- Zusammenhang zur OP und Intention der Therapie
- der Grund der Beendigung (unabhängig ob erfolgreich oder nicht erfolgreich)
- das verwendete Therapieprotokoll mit Substanzkombinationen (gemäß oBDS Umsetzungsleitfaden).

#### Kategorie
- Die verwendete MII-Prozedur empfiehlt die Abbildung der **Kategorie** mittels der in SNOMED übertragenen OPS-Hauptkategorien (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct)
- Die vorliegende Kategorie SNOMED `277132007 | Therapeutic procedure` , die der OPS Kategorie 8 ("Nicht-operative therapeutische Maßnahmen") entspricht, beinhaltet sowohl Strahlen - als auch Nuklearmedizinische Therapie als auch bestimmte systemische Therapien (z.B. Chemo- und Immuntherapie), wobei andere systemische medikamtöse Therapien (z.B. Hormontherapie, Targeted Therapy) auch unter Kategorie 6 "Medikamente" kodiert werden können. Er ist daher unspezifisch und nicht geeignet, um z.B. innerhalb einer Forschungsfrage gezielt nach Nuklearmedizinischen Therapien zu filtern.

#### Code
- Als **Code** wird von der MII-Prozedur ein OPS-Code oder ein SNOMED-Code verlangt.
- Die medikationsbasierten systemischen Therapien werden je nach Art der Therapie durch unterschiedlichen OPS-Kategorien kodiert.
- Für die abwartenden Therapien sind keine OPS-Codes im aktuellen Katalog hinterlegt.
- In der MII-Prozedur SOLL genau eine Kodierung (OPS oder SNOMED CT) für genau eine Therapie verwendet werden. Zusätzliche Prozeduren werden als einzelne Procedure-Ressourcen abgebildet.

#### Therapieprotokoll
- Als **usedCode** werden die spezifischen Therapieprotokolle dokumentiert, die in der systemischen Therapie verwendet werden.
- Die Protokolle basieren auf dem [oBDS Umsetzungsleitfaden](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532385/Systemische+Therapie+SYST+Protokolle) und enthalten standardisierte Substanzkombinationen.
- Jedes Protokoll ist mit seiner charakteristischen Bezeichnung (z.B. "FOLFOX", "R-CHOP", "AC") und den enthaltenen Wirkstoffen dokumentiert.
- Die Kodierung erfolgt über das **MII CodeSystem Systemische Therapie Protokolle**, das alle gängigen onkologischen Therapieprotokolle umfasst.
- Nicht enthaltene Protokolle können trotzdem dokumentiert werden - hier ist jedoch eine Harmonisierung über die Standorte entscheidend. Neue Protokolle sind daher bitte unter [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues) einzureichen.

#### Implementierungsempfehlung
Aus den oben genannten Punkten ergibt sich folgende Kodierempfehlung für die Systemische / abwartende Therapie aus dem oBDS:
- Kategorie als SNOMED - Code
    - Kategorie für Systemische Therapien `18629005 | Administration of drug or medicament (procedure)`
    - Kategorie für Abwartende Therapien : keine (kein geeignetes Parent-Konzept, Suche direkt über Kodierung empfohlen)
- Kodierung
    - Systemische Therapie über OPS wie folgt. Es ist zu beachten, dass der exakte Wirkstoff mittels ATC als Teil der MedicationStatment-Ressource kodiert wird. Eine zusätzliche Dokumentation der Medikation über
        - Chemotherapie über OPS `8-54` oder spezifischer
        - Immuntherapie über OPS `8-54` oder spezifischer (Zusatzangabe von )
        - Stammzelltherapie über OPS `8-86` oder spezifischer
        - Hormontherapie über OPS `6-xxx.y` (bsw.`6-009.0` für Olaparib, oral bei Prostatakarzinom)
    - Abwartende Therapie über SNOMED-CT wie folgt
        - Watchful Waiting: SNOMED-CT `373818007 | No anti-cancer treatment - watchful waiting (finding)`
        - Active Surveillance: SNOMED-CT `424313000 | Active surveillance (regime/therapy)`
        - Wait and see: SNOMED-CT `310341009 | Follow-up (wait and see) (finding)`

---

### Konformität
Die vorliegende Profilierung ist kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikprozedur

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.html).
{: .ig-highlight .ig-highlight-grey}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?date=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.performed" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?patient=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "bodySite" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "dokumentationsdatum" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Dokumentationsdatum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "durchfuehrungsabsicht" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "outcome" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus|R1```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  Der Suchparameter "extension-intention" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  Der Suchparameter "used-code" SOLLTE unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?used-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle|FOLFOX4```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.usedCode" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Beispiele**

[mii-exa-onko-systemische-therapie-1](Procedure-mii-exa-onko-systemische-therapie-1.html)
