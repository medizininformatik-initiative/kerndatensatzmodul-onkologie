### Inhalt
Dieses Profil beschreibt die präoperative Stomamarkierung beim Kolorektalen Karzinom gemäß oBDS KR7. Die präoperative Stomamarkierung ist ein wichtiger Schritt in der Vorbereitung auf operative Eingriffe, bei denen eine Stomaanlage erforderlich werden könnte, und trägt wesentlich zur Lebensqualität der Patienten bei.

Das Profil basiert auf einer FHIR Procedure-Ressource und dokumentiert sowohl die Durchführung als auch den Status der präoperativen Stomamarkierung.

---

### Verknüpfungen zu anderen Ressourcen
Die Stomamarkierung ist eine präoperative Maßnahme:
- verweist über `Procedure.subject` auf den Patienten (Patient-Ressource)
- kann über `Procedure.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
- steht in Bezug zur geplanten Operation über `Procedure.reasonReference`
- kann mit der tatsächlichen Stomaanlage während der Operation verknüpft werden

---

### oBDS-Kontext
Die Stomamarkierung entspricht dem oBDS-Datenfeld KR7 "Präoperative Stomamarkierung" und dokumentiert, ob eine präoperative Markierung der Stomaposition durchgeführt wurde. Dies ist besonders relevant bei Rektumkarzinomen, wo eine Stomaanlage häufiger erforderlich ist.

### Terminologie-Binding
Das ValueSet für die Stomamarkierung ist **required** gebunden und beinhaltet die Codes für die Durchführung sowie den Status der präoperativen Markierung.

#### ValueSet: MII VS Onko KRK Stoma Anzeichnung

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Stoma Anzeichnung](ValueSet-mii-vs-onko-krk-stoma-anzeichnung.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Stoma Anzeichnung](ValueSet-mii-vs-onko-krk-stoma-anzeichnung.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie KRK Stoma-Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.html)
