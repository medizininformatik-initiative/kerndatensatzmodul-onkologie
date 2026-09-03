# ValueSets - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **ValueSets**

## ValueSets

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

### Value Sets

Diese Seite beschreibt die ValueSets des Moduls Onkologie (Namenskonvention `MII_VS_Onko_<Name>`). Die vollständige, automatisch generierte Liste findet sich auf der [Artefakt-Übersicht](artifacts.md); die zugrunde liegenden Code-Systeme sind auf der Seite [Code-Systeme](code-systems.md) beschrieben.

Besonderheiten der ValueSet-Landschaft dieses Moduls:

* **oBDS-Antwortlisten**: Die meisten ValueSets bilden die Antwortlisten des oBDS ab und binden die modul-eigenen CodeSystems (`MII_CS_Onko_…`).
* **Jahresversionierte Terminologien**: Für ATC und ICD-O-3 pflegt das Modul versionsgepinnte Jahres-ValueSets samt Transitions-ConceptMaps — siehe [ATC — Jahresversionen und Überleitungen](atc-terminologie.md) und [ICD-O — Revisionen und Validierung](icd-o-terminologie.md).
* **Meldepflichtige Tumoren**: Das ValueSet [mii-vs-onko-icd10-meldepflichtige-tumoren](ValueSet-mii-vs-onko-icd10-meldepflichtige-tumoren.md) hinterlegt die Meldepflicht-Blockcodes der ICD-10-GM; eine Warning-Invariante auf der Diagnose meldet Codes außerhalb dieser Liste, ohne sie zu verbieten.
* **Kuratierte Begleitartefakte**: nicht-verpflichtende, kuratierte Auswahllisten wie die [KDL-Dokumentklassen](ValueSet-mii-vs-onko-kdl-dokumentklassen.md) des onkologischen Behandlungspfads; die kuratierten Tumormarker-LOINC-Codes sind auf der Seite [Tumormarker](tumormarker-loinc.md) dokumentiert.

