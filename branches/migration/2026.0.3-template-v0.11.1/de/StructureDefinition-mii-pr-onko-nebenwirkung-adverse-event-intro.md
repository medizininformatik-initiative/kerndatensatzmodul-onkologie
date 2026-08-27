Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie.

Die Art Nebenwirkung kann entweder als CTCAE-Terminus oder als medDRA-Nummer beschrieben werden.
Weitere Hinweise sind der Dokumentationsleitfaden https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/93683749/Nebenwirkungen
zu entnehmen. Außerdem stellt die Plattform §65c eine kuratierte Liste mit übersetzten CTCAE-Begriffen und den dazugehörigen medDRA-Nummern bereit.
https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15533115/Nebenwirkungen+CTCAE

Abweichend zum oBDS können mit dem vorliegenden Profil auch Events der Schweregrade 1 und 2 explizit angegeben werden. Dadurch kann es dazu kommen, dass in den Krebsregisterdaten gar nicht hinterlegt ist, um was für eine Art von Nebenwirkung es sich handelt. In

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Nebenwirkung-AdverseEvent.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Nebenwirkung-AdverseEvent.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.html).
{: .ig-highlight .ig-highlight-grey}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/AdverseEvent?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/AdverseEvent?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter ```event``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/AdverseEvent?event=https://www.meddra.org|10016256```

    Anwendungshinweise: Weitere Informationen zur Suche nach "event" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

4. Der Suchparameter ```seriousness``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/AdverseEvent?seriousness=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad|4```

    Anwendungshinweise: Weitere Informationen zur Suche nach "seriousness" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

5. Der Suchparameter ```suspectEntity.instance``` MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/AdverseEvent?suspectEntity.instance=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "severity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#all).

**Beispiele**

[mii-pr-onko-nebenwirkung-0](AdverseEvent-mii-pr-onko-nebenwirkung-0.html)

Nebenwirkung ohne MedDRA-Codierung:

[mii-pr-onko-nebenwirkung-text](AdverseEvent-mii-pr-onko-nebenwirkung-text.html)
