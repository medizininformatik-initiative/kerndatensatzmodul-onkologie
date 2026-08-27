### Inhalt
Dieses Profil beschreibt den Abstand zur mesorektalen Faszie bei bildgebenden Verfahren (MRT/CT) beim Kolorektalen Karzinom gemäß oBDS KR2. Diese präoperative Bildgebungsbeurteilung ist essentiell für die Therapieplanung bei Rektumkarzinomen und die Einschätzung der lokalen Tumorausbreitung.

Das Profil basiert auf einer FHIR Observation-Ressource und beinhaltet sowohl die Quantitätsmessung als auch die Begründung für fehlende Abstandsmessungen. Der Abstand wird als Quantity-Wert in Millimetern angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die MRT-Bewertung der mesorektalen Faszie ist eine wichtige bildgebende Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die MRT-Bewertung entspricht dem oBDS-Datenfeld KR2 "MRT/CT: Abstand zur mesorektalen Faszie" und umfasst sowohl die Abstandsmessung in Millimetern als auch Codes für Situationen, in denen eine Messung nicht verfügbar ist (AbstandNichtVerfuegbarGrund).

### Terminologie-Binding
Das ValueSet für den MRT-Status der mesorektalen Faszie ist **extensible** gebunden und beinhaltet die verschiedenen Status-Codes für die bildgebende Bewertung sowie Gründe für fehlende Messungen.

#### ValueSet: MII VS Onko KRK MRT Mesorektale Faszie Status

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-MRT-Mesorektale-Faszie-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK MRT Mesorektale Faszie Status](ValueSet-mii-vs-onko-krk-mrt-mesorektale-faszie-status.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-MRT-Mesorektale-Faszie-Observation.page.md gate=B -->
> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK MRT Mesorektale Faszie Status](ValueSet-mii-vs-onko-krk-mrt-mesorektale-faszie-status.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping Datensatz zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-MRT-Mesorektale-Faszie-Observation.page.md gate=B -->
> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-MRT-Mesorektale-Faszie-Observation.page.md gate=B -->
> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie KRK MRT/CT Abstand Mesorektale Faszie](StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.html).
{: .ig-highlight .ig-highlight-grey}

**Beispiele**

[mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.html)
