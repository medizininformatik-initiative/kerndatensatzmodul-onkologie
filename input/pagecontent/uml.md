### Informationsmodell (UML)

Das folgende UML-Diagramm zeigt die umgesetzten Inhalte und Kardinalitäten des oBDS, die gemäß
dessen Vorgaben durch das KDS-Modul Onkologie umgesetzt wurden. Das formale Informationsmodell
ist zusätzlich als FHIR Logical Model hinterlegt (siehe
[Datensätze und Beschreibungen](data-sets.html)).

<div style="width: 100%; overflow-x: auto;">
<img src="onco_merged.svg" style="width: 100%; height: auto;" alt="UML-Gesamtdiagramm des KDS-Moduls Onkologie"/>
</div>

Die Bilddatei steht zur besseren Darstellung auch einzeln zur Verfügung (Bereitstellung als
`.svg`).

### Organspezifische Module – UML-Diagramme

Zusätzlich zu dem übergreifenden UML-Diagramm verfügt jedes organspezifische Modul über eigene
detaillierte Architekturdiagramme:

- **Mammakarzinom** – Mammakarzinom-spezifische Profile und deren Beziehungen
- **Prostatakarzinom** – Prostatakarzinom-spezifische Profile und deren Beziehungen
- **Kolorektales Karzinom** – Kolorektales-Karzinom-spezifische Profile und deren Beziehungen
- **Malignes Melanom** – Malignes-Melanom-spezifische Profile und deren Beziehungen

Die Struktur aller organspezifischen Module ist formal im Logical Model
[MII LM Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html)
definiert, welches die FHIR-Mappings für alle entitätsspezifischen Datenelemente bereitstellt.
Die zugehörigen Profile sind unter [Artefakte](artifacts.html) aufgeführt.

TODO:REVIEW — Einzeldiagramme der organspezifischen Module (Bildquellen unter
`input/images-source/*.pu`) optional als eigene Grafiken in diese Seite einbetten.
