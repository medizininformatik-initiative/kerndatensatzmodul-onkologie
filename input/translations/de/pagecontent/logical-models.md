<!-- markdownlint-disable MD041 -->

### Logische Modelle

Die logischen Datenmodelle des Moduls Onkologie beschreiben den fachlichen
Datensatz unabhängig von seiner konkreten FHIR-Abbildung:

- **[oBDS-Basisdatensatz](StructureDefinition-mii-lm-onko.html)** — das
  logische Modell des onkologischen Basisdatensatzes mit den FHIR-Mappings
  der umgesetzten Datenfelder.
- **[Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html)**
  — die entitätsspezifischen Datenelemente der Module Mamma, Prostata,
  Kolorektales Karzinom und Malignes Melanom.
- **[MVGenomSeq-Datenkranz](StructureDefinition-mii-lm-mvgenomseq-onkologie.html)**
  — der onkologische Datenkranz des Modellvorhabens Genomsequenzierung
  (§ 64e SGB V); das Mapping auf den MII-KDS liegt als
  [ConceptMap](ConceptMap-mii-cm-onkologie-to-mvgenomseq.html) vor.
