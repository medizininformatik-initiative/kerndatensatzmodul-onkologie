### Inhalt
Dieses Profil beschreibt die ASA-Klassifikation (American Society of Anesthesiologists Physical Status Classification) in der Onkologie. Die ASA-Klassifikation dient primär der präoperativen Risikobewertung und wird zur Einschätzung des allgemeinen körperlichen Zustands von Patienten vor operativen Eingriffen verwendet. Sie kann aber auch als Komorbidätsindex für systemische Therapieentscheidungen herangezogen werden.

Ursprünglich aus oBDS KR9 (Kolorektales Karzinom Modul), wurde dieses Profil für alle onkologischen Indikationen generalisiert, da die ASA-Klassifikation ein universelles präoperatives Assessment-Tool ist.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur standardisierten Kodierung der ASA-Klassifikation. Die spezifischen ASA-Klassen (ASA I bis VI) werden über ein dediziertes oBDS-ValueSet definiert.

---

### Verknüpfungen zu anderen Ressourcen
Die ASA-Klassifikation ist eine wichtige präoperative Bewertung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die ASA-Klassifikation entspricht dem oBDS-Datenfeld KR9 "ASA-Klassifikation" und umfasst die Bewertungsstufen ASA I bis VI sowie "Unbekannt" (U). Die Klassifikation berücksichtigt auch hirntote Patienten zur Organspende (ASA VI).

### Terminologie-Binding
Das ValueSet für die ASA-Klassifikation ist **required** gebunden. Dies bedeutet, dass ausschließlich die Codes aus dem definierten oBDS-ValueSet verwendet werden MÜSSEN.

#### ValueSet: MII VS Onko ASA oBDS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/ASA-Klassifikation-Observation.page.md gate=B -->
Metadaten und Expansion des ValueSets sind auf der Seite [mii-vs-onko-asa-obds](ValueSet-mii-vs-onko-asa-obds.html) dargestellt.

---

**Beispiele**

[mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.html)
