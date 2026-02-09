## {{page-title}}

Das folgende UML-Diagramm zeigt die umgesetzten Inhalte und Kardinalitäten des oBDS, die gemäß dessen Vorgaben durch das KDS-Modul Onkologie umgesetzt wurden.

<div style="width: 100%; overflow-x: auto;">
<img src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/dev/implementation-guides/ImplementationGuide-2026.x-DE/Images/onco_merged.svg" style="width: 100%; height: auto;" />
</div>

Die Bildatei kann [hier (Github)](https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/dev/implementation-guides/ImplementationGuide-2026.x-DE/Images/onco_merged.svg) zur besseren Darstellung einzeln betrachtet und heruntergeladen werden (Bereitstellung als `.svg`).

### Organspezifische Module - UML Diagramme

Zusätzlich zu dem übergreifenden UML-Diagramm verfügt jedes organspezifische Modul über eigene detaillierte Architekturdiagramme:

- **{{pagelink:MammaModule}}** - Mammakarzinom-spezifische Profile und deren Beziehungen
- **{{pagelink:ProstataModule}}** - Prostatakarzinom-spezifische Profile und deren Beziehungen
- **{{pagelink:KRKModule}}** - Kolorektales Karzinom-spezifische Profile und deren Beziehungen
- **{{pagelink:MalignesMelanomModule}}** - Malignes Melanom-spezifische Profile und deren Beziehungen

Die Struktur aller organspezifischen Module ist zusätzlich im Logical Model formal definiert, welches die FHIR-Mappings für alle entitätsspezifischen Datenelemente bereitstellt.
