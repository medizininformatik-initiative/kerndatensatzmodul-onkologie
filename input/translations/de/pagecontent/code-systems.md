<!-- markdownlint-disable MD041 -->

### Code-Systeme und Terminologien

Diese Seite beschreibt die im Modul Onkologie verwendeten Terminologien und
Code-Systeme. Die darauf aufbauenden ValueSets sind auf der Seite
[Value Sets](value-sets.html) beschrieben; die vollständige Liste der vom Modul
selbst definierten CodeSystems (Namenskonvention `MII_CS_Onko_<Name>`) wird auf
den [Artefakt-Seiten](artifacts.html) automatisch generiert.

{:.bg-info}
**Wichtig:** CodeSystem-Ressourcen externer Terminologien (z. B. ICD-10-GM,
OPS, SNOMED CT) werden **nicht** in diesem Modul publiziert; sie werden über
den zentralen KDS-Terminologiedienst (SU-TermServ) bezogen:
[https://mii-termserv.de/](https://mii-termserv.de/).

#### ICD-10-GM

Die International Statistical Classification of Diseases and Related Health
Problems, 10. Revision, German Modification (ICD-10-GM) wird für die
Beschreibung der Primärdiagnose, für Vorerkrankungen und für die Kodierung der
Todesursache verwendet. Das BfArM gibt die ICD-10-GM jährlich im Auftrag des
Bundesministeriums für Gesundheit heraus; die aktuelle Version ist auf der
[BfArM-Seite](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html)
verfügbar.

Hinweis: Im oBDS ist eine Todesursachenmeldung mittels ICD-10-GM vorgesehen.
Laut BfArM soll eine Todesursache mit ICD-10-WHO kodiert werden. Das KDS-Modul
Onkologie folgt hier den Vorgaben des oBDS und kodiert mit ICD-10-GM.

#### ICD-O-3

Die Lokalisation des Primärtumors wird über die ICD-O-3-Topographie kodiert,
die morphologische Beschaffenheit über die ICD-O-3-Morphologie. Das BfArM gibt
die ICD-O-3 im Auftrag des Bundesministeriums für Gesundheit heraus
([BfArM-Seite](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-O-3/_node.html)).

Zu den Revisionsständen (Erste Revision 2014 / Zweite Revision 2019), deren
Auswirkungen auf die Validierung, der Überleitung von Bestandsdaten und dem
Ausblick auf die ICD-O-4 siehe die eigene Seite
[ICD-O — Revisionen und Validierung](icd-o-terminologie.html).

#### OPS

Der Operationen- und Prozedurenschlüssel (OPS) kodiert operative Prozeduren,
die im Rahmen der onkologischen Diagnostik und Therapie durchgeführt werden
([BfArM-Seite](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/OPS-ICHI/OPS/_node.html)).

#### ATC

Die Medikation wird im oBDS ursprünglich als Freitext erfasst, wobei eine
Erfassung per ATC durch die Primärsysteme angeboten werden kann. In den
vorliegenden FHIR-Profilen wird davon ausgegangen, dass die Medikation primär
in ATC kodiert vorliegt — hauptsächlich Medikamente der systemischen Therapie
(Chemo-, Hormon-, Immuntherapeutika).

Zur ATC-Governance (WHO-ATC vs. amtliche deutsche Fassung), den
jahresversionierten CodeSystem-Ständen und den Transitions-ConceptMaps siehe
die eigene Seite [ATC — Jahresversionen und Überleitungen](atc-terminologie.html).

#### UNII (Unique Ingredient Identifier)

Zur Unterstützung experimenteller und neuartiger Substanzen ohne etablierten
ATC-Code ist das UNII-System der FDA integriert. UNII-Codes identifizieren
Wirkstoffe eindeutig auf molekularer Ebene und sind besonders relevant für
experimentelle Substanzen in klinischen Studien (z. B. Iberdomid,
UNII `8V66F27X44`), neuartige Immunmodulatoren und Substanzen in der frühen
Entwicklungsphase. Das MedicationStatement-Profil der Systemischen Therapie
unterstützt daher die duale Kodierung mit ATC- und UNII-Codes
(UNII-Datenbank: [precision.fda.gov/uniisearch](https://precision.fda.gov/uniisearch),
System-URL `http://fdasis.nlm.nih.gov`).

#### TNM-Klassifikation (UICC)

Die TNM-Klassifikation maligner Tumoren ist das weltweit verwendete System für
die klinische Beschreibung einer Tumorerkrankung. Die aktuelle 8. Auflage wird
in Zusammenarbeit mit der Union for International Cancer Control (UICC)
herausgegeben.

#### CTCAE

Die Common Terminology Criteria for Adverse Events (CTCAE) werden im
Nebenwirkungsprofil zur Erfassung von Nebenwirkungen der Strahlen- und
Systemischen Therapie eingesetzt
([ctep.cancer.gov](https://ctep.cancer.gov/protocoldevelopment/electronic_applications/ctc.htm)).

#### SNOMED CT

SNOMED CT wird modulweit für die semantische Annotation und die
oBDS-SNOMED-CT-Mappings verwendet; Lizenz- und Bezugsinformationen beim
[BfArM](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/SNOMED-CT/_node.html).

#### LOINC

LOINC (Logical Observation Identifiers Names and Codes) ist ein internationales
vom Regenstrief Institute herausgegebenes System zur eindeutigen Identifizierung
und Kodierung medizinischer Beobachtungen, insbesondere von
Laboruntersuchungen. Das BfArM ist gemäß § 355 Abs. 7 SGB V für die
Weiterentwicklung von LOINC für die Belange in Deutschland zuständig
([BfArM-Seite](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/LOINC-UCUM/LOINC-und-RELMA/_node.html)).
Die internationale LOINC-Version ist unter [loinc.org](http://loinc.org)
verfügbar; zur kuratierten Tumormarker-Codeliste siehe die Seite
[Tumormarker — kuratierte LOINC-Codes](tumormarker-loinc.html).

#### UCUM

Der Unified Code for Units of Measure (UCUM) kodiert Maßeinheiten für den
eindeutigen Austausch quantitativer Daten. UCUM wird seit 1999 vom Regenstrief
Institute gepflegt; das BfArM stellt eine Werteliste mit UCUM-Codes für
Gesundheitsanwendungen in Deutschland bereit
([BfArM-Seite](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/LOINC-UCUM/UCUM/_node.html)).

#### MedDRA

Das Medical Dictionary for Regulatory Activities (MedDRA) umfasst
Pharmazeutika, Biologika, Vakzine sowie Arzneimittel/Geräte-Kombinationen und
wird im Nebenwirkungsprofil verwendet
([meddra.org](https://www.meddra.org/how-to-use/support-documentation/german/welcome)).
