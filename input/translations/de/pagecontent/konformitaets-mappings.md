<!-- markdownlint-disable MD041 -->

### Zweck dieser Seite

Diese Seite fasst **alle Konzept-Zuordnungen des Moduls an einer Stelle** zusammen —
für das technische wie das fachliche Review. Die Tabellen sind **nicht handgepflegt**:
Sie werden beim Build per SQL-Abfrage gegen die Paket-Datenbank dieses IG erzeugt
(Liquid-Tag `sql`, siehe
[IG-SQL-Guidance](https://build.fhir.org/ig/FHIR/ig-guidance/sql.html)). Sie zeigen
damit immer den Stand der tatsächlich gebauten Artefakte — eine Änderung an einer
ConceptMap ist hier beim nächsten Build sichtbar, ohne doppelte Pflege.

Jede einzelne ConceptMap rendert zusätzlich als eigene Seite unter
[Artefakte](artifacts.html); diese Seite ist die übergreifende Sicht.

{:.bg-info}
**Die Verbindlichkeit unterscheidet sich je Zuordnung.** Amtlich gepflegte Mappings
(z.B. die KDL→IHE-XDS-Map des DVMD) sind auf der jeweiligen Terminologie-Seite als
solche gekennzeichnet. Alle Zuordnungen mit modul-eigenem Quell-CodeSystem sowie die
MedDRA→SNOMED-CT- und die ICD-O-Umsteiger-Maps sind **projektseitige Kuratierungen** —
gegen einen Terminologieserver verifiziert, aber ohne Gewähr für Vollständigkeit und
Korrektheit. Vor einer Nutzung in Produktivsystemen ist eine eigenverantwortliche
fachliche Prüfung erforderlich. Details und Versions-Pins: siehe die verlinkten
Terminologie-Seiten.

### Überblick: Zuordnungen je Quellsystem

{% sql SELECT CASE WHEN SourceSystem LIKE '%modul-onko/CodeSystem/%' THEN 'oBDS-CS ' || replace(SourceSystem, 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-', '') WHEN SourceSystem = 'https://www.meddra.org' THEN 'MedDRA (CTCAE v4.03)' WHEN SourceSystem LIKE '%uicc.org%' THEN 'UICC TNM' WHEN SourceSystem LIKE '%bfarm/atc%' THEN 'ATC (BfArM)' WHEN SourceSystem LIKE '%icd-o-3%' THEN 'ICD-O-3' ELSE SourceSystem END AS Quellsystem, '`' || count(*) || '`' AS Mappings, '`' || sum(CASE WHEN Relationship = 'equivalent' THEN 1 ELSE 0 END) || '`' AS Aequivalent, '`' || sum(CASE WHEN Relationship = 'source-is-narrower-than-target' THEN 1 ELSE 0 END) || '`' AS Enger, '`' || sum(CASE WHEN Relationship = 'source-is-broader-than-target' THEN 1 ELSE 0 END) || '`' AS Weiter FROM ConceptMappings GROUP BY Quellsystem ORDER BY Mappings DESC %}

### oBDS-CodeSystems → SNOMED CT / LOINC

Die semantische Annotation der oBDS-Werteslisten. Quellcodes sind die modul-eigenen
CodeSystems (`mii-cs-onko-*`), Ziele sind internationale Terminologien.

{% sql SELECT 'oBDS-CS ' || replace(SourceSystem, 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-', '') AS Quellsystem, '#' || SourceCode AS Code, Relationship AS Beziehung, CASE WHEN TargetSystem LIKE 'http://snomed.info/sct%' THEN 'SNOMED CT' WHEN TargetSystem LIKE 'http://loinc.org%' THEN 'LOINC' WHEN TargetSystem LIKE '%bfarm/atc%' THEN 'ATC' WHEN TargetSystem LIKE '%icd-o-3%' THEN 'ICD-O-3' WHEN TargetSystem LIKE '%MVGenomseq%' THEN 'MV Genomsequenzierung (KDK)' ELSE 'sonstiges Zielsystem' END AS Zielsystem, '#' || TargetCode AS Zielcode FROM ConceptMappings WHERE SourceSystem LIKE '%modul-onko/CodeSystem%' ORDER BY Quellsystem, CAST(SourceCode AS INTEGER), SourceCode %}

### MedDRA (CTCAE v4.03) → SNOMED CT

Kuratierte Zuordnung der CTCAE-Nebenwirkungsterme; Kuratierungsverfahren, Versions-Pin
und Haftungshinweis stehen bei
[`mii-cm-onko-nebenwirkung-meddra-sct`](ConceptMap-mii-cm-onko-nebenwirkung-meddra-sct.html).
Terme ohne vertretbares SNOMED-CT-Äquivalent fehlen hier bewusst und bleiben
MedDRA-only.

{% sql SELECT '#' || SourceCode AS MedDRA, Relationship AS Beziehung, '#' || TargetCode AS SNOMED FROM ConceptMappings WHERE SourceSystem = 'https://www.meddra.org' ORDER BY CAST(SourceCode AS INTEGER) %}

### UICC TNM → SNOMED CT

Klinische und pathologische TNM-Kategorien als prä-koordinierte
SNOMED-CT-Qualifier-Values; siehe
[TNM](StructureDefinition-mii-pr-onko-tnm-klassifikation.html).

{% sql SELECT '#' || SourceCode AS UICC, Relationship AS Beziehung, '#' || TargetCode AS SNOMED FROM ConceptMappings WHERE SourceSystem LIKE '%uicc.org%' ORDER BY SourceCode %}

### Versions-Umsteiger (ATC, ICD-O-3)

Umsteiger-Maps zwischen Jahres- bzw. Revisionsständen — das Werkzeug für die Migration
von Bestandsdaten. Hintergrund und Regeln: [ATC](atc-terminologie.html) und
[ICD-O](icd-o-terminologie.html).

{% sql SELECT CASE WHEN SourceSystem LIKE '%atc%' THEN 'ATC' ELSE 'ICD-O-3' END AS Katalog, '#' || SourceCode AS Von, Relationship AS Beziehung, '#' || TargetCode AS Nach FROM ConceptMappings WHERE SourceSystem LIKE '%bfarm/atc%' OR SourceSystem LIKE '%icd-o-3%' ORDER BY Katalog, SourceCode %}
