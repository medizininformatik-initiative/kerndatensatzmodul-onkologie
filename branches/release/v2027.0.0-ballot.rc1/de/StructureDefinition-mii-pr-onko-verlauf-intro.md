### Kontext

Dieses Profil beschreibt eine Verlaufsbeobachtung im Rahmen der onkologischen Therapie.

Im oBDS ist die Verlaufsmeldung eine von mehreren Meldearten. Die Verlaufsmeldung kann dabei mehrere andere Meldeinhalte enthalten. In der vorliegenden FHIR-Profilierung sind Verlaufs-Beobachtungen neben Tumorkonferenzen eine der zwei entscheidenden Ressourcentypen, die der zeitlichen Modellierung des Behandlungsverlaufs dienen.

Die korrekte Kodierung und Interpretation der Krebsregister-Verlaufsdaten ist nicht trivial - Details sind dem Dokumentationsleitfaden der Plattform §65c zu entnehmen.

https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/75628552/Verlaufsmeldung

---

### Conformance Statements

- Eine Verlaufs-Beobachtung **SOLL** mittels `focus` einen Verweis auf die Primärdiagnose haben
- Eine Verlaufs-Beobachtung **SOLLTE** im `value` eine Einschätzung des Krankheitsprogresses (PD, PR, MR etc.) beinhalten, insofern diese vorgenommen wurde und in den Daten vorliegt
- Eine Verlaufs-Beobachtung **SOLLTE** weitherin im `component` Einschätzungen zum Staging des Tumors, der Lymphknoten und der Fernmetastasen enthalten, insofern diese vorgenommen wurden und diese für das Staging relevant sind
- Da die FHIR-Profilierung keine komplette Verlaufs-Meldung abbildet, **SOLLEN** andere Beobachtungen, die zusätzlich oder abweichend zu den oben genannenten TNM-Kriterien für das Staging relevant sind,  von der Verlaufs-Beobachtung  über `hasMember` referenziert werden. Beispielsweise sind das neu diagnostizierte Fernmetastasen, zusätzlich angefertigte Histologien oder später im Verlauf durchgeführte genetische Untersuchungen. Diese Beobachtungen **KÖNNEN** direkt aus den oBDS-Meldeinhalten der jeweiligen Verlaufs-Meldung übernommen werden.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-verlauf-tumor](Observation-mii-exa-onko-verlauf-tumor.html)
