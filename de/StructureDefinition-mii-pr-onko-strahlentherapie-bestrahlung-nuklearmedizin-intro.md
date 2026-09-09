Dieses Profil beschreibt "Einzelbestrahlungen" von Nuklearmedizinischen Therapie in der Onkologie. Mit diesem Profil sollen sowohl Brachytherapien als auch die systemische Gabe von radioaktiven Metaboliten oder vgl. abgedeckt werden. Das Profil für die Onkologie basiert auf dem Prozeduren-Profil des MII-Basismoduls Prozedur. Jede brachytherapeutischer Eingriff bzw. systemische nuklearmedizinische Therapie verweist auf eine übergeordnete Strahlentherapie-Prozedur, die übergreifende Angaben wie Intention und Outcome.

#### Implementierungsempfehlung
Aus den oben genannten Punkten ergibt sich folgende Kodierempfehlung für die oBDS-Nuklearmedizinische Behandlung:
- Kategorie als SNOMED - Code
    - Kategorie für Nuklearmedizin `399315003 | Radionuclide therapy (procedure)`
- Kodierung über OPS
    - Nuklearmedizinische Therapie als OPS `8-53 Nuklearmedizinische Therapie` (oder genauer wenn vorhanden)

---

### Konformität
Die vorliegenden Profilierungen sind kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikprozedur

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/NuklearmedizinischeTherapie-Procedure.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/NuklearmedizinischeTherapie-Procedure.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Strahlentherapie Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1.html)
