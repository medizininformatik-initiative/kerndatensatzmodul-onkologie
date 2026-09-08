Dieses Profil beschreibt einer Bioprobe im Rahmen in der Onkologie.

Die beiden relevanten Datenpunkte einer einzelnen Bioprobe für den oBDS sind hierbei:
* Tumor Histologiedatum -> `collection.collectedDateTime`
* Histologie-Einsendenummer -> `accsessionIdentifier.value`

Im Rahmen des Kerndatensatzes der Medizininformatik-Initiative **KANN** eine Bioprobe ebenfalls konform zum Bioproben-Profil aus dem Biobank-Modul erstellt werden. https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Biobank/SpecimenBioprobe.html

Hierbei müssen zusätzlich zu den beiden oberen Datenpunkte folgende Elemente folgende Datenpunkte angegeben werden:
- `status` (Verfügbarkeit der Probe)
- `type` Art der Probe (SNOMED-CT-kodiert)

---

**Beispiele**

[mii-exa-onko-specimen-1](Specimen-mii-exa-onko-specimen-1.html)
