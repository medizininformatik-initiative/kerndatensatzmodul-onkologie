### Inhalt
Dieses Profil beschreibt den PSA-Wert (Prostataspezifisches Antigen) bei Patienten mit Prostatakarzinom in der Onkologie. Der PSA-Wert ist ein zentraler Tumormarker für die Diagnostik, Verlaufskontrolle und Therapieüberwachung bei Prostatakarzinom.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur Kodierung des beobachteten Parameters. PSA-Werte können sowohl als Gesamt-PSA als auch als freies PSA dokumentiert werden.

---

### Verknüpfungen zu anderen Ressourcen
Der PSA-Wert ist eine wichtige tumorspezifische Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Gemäß oBDS P1 wird der PSA-Wert als Tumormarker für Diagnostik und Verlaufskontrolle dokumentiert. Es können sowohl Diagnose- als auch Verlaufs-PSA-Werte erfasst werden.

### Terminologie-Binding
Das ValueSet für PSA-Codes ist **required** gebunden, da LOINC-Codes für PSA-Bestimmungen standardisiert und eindeutig definiert sind.

#### PSA-Codes

- **Freies PSA**: LOINC 10886-0 "Prostate specific antigen Free [Mass/volume] in Serum or Plasma"

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-PSA-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-PSA-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie PSA-Wert](StructureDefinition-mii-pr-onko-prostate-psa.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-prostata-psa-diagnose-1](Observation-mii-exa-onko-prostata-psa-diagnose-1.html)

[mii-exa-onko-prostata-psa-verlauf-1](Observation-mii-exa-onko-prostata-psa-verlauf-1.html)
