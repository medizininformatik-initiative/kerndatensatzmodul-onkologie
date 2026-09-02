### Inhalt

Dieses Profil beschreibt den Abstand des Tumorunterrandes zur Anokutanlinie beim Kolorektalen Karzinom gemäß oBDS KR1. Diese Messung ist von besonderer Bedeutung für die Therapieplanung bei Rektumkarzinomen, da sie Einfluss auf die chirurgische Strategie und das sphinktererhaltende Operationsverfahren hat.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur standardisierten Kodierung der Abstandsmessung. Der Abstand wird als Quantity-Wert in Zentimetern angegeben.

---

### Verknüpfungen zu anderen Ressourcen

Die Abstandsmessung zur Anokutanlinie ist eine wichtige diagnostische Beobachtung:

- verweist über `Observation.focus` auf die Primärdiagnose ([MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html))
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext

Die Abstandsmessung entspricht dem oBDS-Datenfeld KR1 "Abstand des Tumorunterrandes zur Anokutanlinie" und wird in Zentimetern dokumentiert. Diese Messung ist spezifisch für Rektumkarzinome und dient der präoperativen Planung.

### Terminologie-Binding

Das Profil verwendet LOINC Code 33748-5 "Distance from anal verge" zur standardisierten Kodierung der Abstandsmessung. Der Wert wird als UCUM-konforme Quantity in Zentimetern angegeben.

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Tumor-Anokutanlinie-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Tumor-Anokutanlinie-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Abstand Anokutan](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.html)
