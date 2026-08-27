Dieses Profil beschreibt Einzelbestrahlungen im Rahmen einer Strahlentherapie in der Onkologie. Dieses Profil beschriebt Strahlentherapie im engeren Sinne; Brachytherapien und systemische nuklearmedizinische Prozeduren werden über das Profil Nuklearmedizinische Therapien abgebildet.
Das Strahlentherapieprofil für die Onkologie basiert auf dem Prozedurenmodul der MII.

#### Implementierungsempfehlung
Aus den oben genannten Punkten ergibt sich folgende Kodierempfehlung für die oBDS-Strahlentherapie:
- Kategorie als SNOMED - Code
    - Kategorie für Strahlentherapie `1287742003 | Radiotherapy (procedure)`
- Kodierung über OPS
    - Strahlentherapie als OPS `8-52 Strahlentherapie` oder genauer wenn vorhanden

---

### Konformität
Die vorliegenden Profilierungen sind kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikprozedur

### Dokumentations-Guidance

**Prophylaktische Bestrahlungen (§65c-Beschluss vom 31.05.2022):**
Tumorspezifische prophylaktische Bestrahlungen — der Hauptfall ist die
prophylaktische Ganzhirnbestrahlung (PCI) beim kleinzelligen Lungenkarzinom —
**sind zu dokumentieren**: `StellungZurOp` = `S` (Sonstiges), die `Intention`
ergibt sich aus dem Gesamtkonzept (kurativ/palliativ), Zielgebiet z. B. `1.1`
Ganzhirn. **Nicht zu erfassen** sind supportive Bestrahlungen ohne
Tumorspezifität (z. B. Mamillenbestrahlung zur Gynäkomastie-Prophylaxe unter
Hormontherapie beim Prostatakarzinom). Beispiel:
`mii-exa-onko-strahlentherapie-pci-sclc`.

**Permanentstrahler/Seeds (oBDS 14.6):** Bei Seed-Implantationen (typischerweise
interstitielle LDR-Brachytherapie) ist der **Tag der Applikation als Ende** zu
dokumentieren — `performedPeriod.start` = `performedPeriod.end` ist dann korrekt
und valide. Abweichungen davon sind ein Datenqualitäts-Signal (DQ-Regeln siehe
GitHub #292).

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Bestrahlungstherapie-Procedure.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Bestrahlungstherapie-Procedure.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-strahlentherapie-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.html)
