# Bezug zu internationalen Standards - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Bezug zu internationalen Standards

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Bezug zu internationalen Standards

Beim beschriebenen Basisdatensatz Onkologie handelt es sich um einen Datensatz, der auf dem oBDS und damit den deutschen Krebsregister-Datenmodellen beruht. In der FHIR-Modellierung wurde die FHIR-Profilierung anderer nationaler onkologischer Datenmodelle aus dem Ausland betrachtet.

### mCODE (USA)

[https://hl7.org/fhir/us/mcode/](https://hl7.org/fhir/us/mcode/) — Das Modell befindet sich momentan in der vierten Iteration. Die enthaltenen Datenelemente lassen sich unterteilen in: Patienteninformationen, Charakterisierung der Erkrankung, Gesundheitszustand, genomische Daten, Behandlungsinformationen und Outcomes.

#### Einflüsse von mCODE auf die Datenmodellierung

1. mCODE erfasst die individuellen Bestandteile der**TNM-Klassifikation**über einzelne FHIR-Observationen, die dann mittels einer Stage-Group-Ressource gruppiert werden. Neben TNM gibt es eine Reihe wichtiger Tumor-Staging-Klassifikationen / -Scores, die explizit als FHIR-Profile angelegt wurden. Dieses Vorgehen empfehlen wir ebenfalls in der fortlaufenden Profilierung der organspezifischen Module des oBDS (z. B. Gleason-Score).
1. mCODE kodiert die Details zu einzelnen**Bestrahlungseinheiten**über Erweiterungen. Es gibt mit CodeX Radiation Therapy ein von mCODE abgeleitetes Modul, das sich explizit mit der Modellierung von Bestrahlungsschemata befasst ([https://hl7.org/fhir/us/codex-radiation-therapy/](https://hl7.org/fhir/us/codex-radiation-therapy/)) – dieses ist jedoch deutlich detaillierter als der oBDS.
1. mCODE erfasst die genomischen Daten mit dem HL7 FHIR Genomics Report, der von der HL7 FHIR Clinical Genomics Working Group erarbeitet wurde. In der aktuellen Version beinhaltet der oBDS nur spärliche Informationen zu**genetischen Varianten**. Falls am Standort detaillierte Informationen über die molekulargenetischen Untersuchungen, Varianten und therapeutischen Konsequenzen vorliegen, kann der Molekulargenetische Befundbericht der MII genutzt werden, der ebenfalls auf dem HL7 Genomics Report basiert.
1. Darstellung weiterer Klassifikationen (v. a. für weitere Grading- und Staging-Systeme).

#### Entscheidende Unterschiede mCODE – oBDS

1. mCODE und durch mCODE referenzierte Datenelemente (Komorbiditäten, Vitalparameter, Ethnizität etc.) basieren zu großen Teilen auf den US-amerikanischen FHIR-Basismodulen aus us-core und sind daher in Deutschland nicht direkt anwendbar.
1. In der Datenmodellierung ist die klinische Entscheidungsfindung wie z. B. Empfehlungen eines interdisziplinären Tumorboards nicht abgebildet.
1. Es soll mit tatsächlichen Behandlungsdaten gearbeitet werden, daher sind viele FHIR-Ressourcen detaillierter, als es die Datenlage im oBDS zulässt. So sind genaue Zeitpunkte der Medikamentengabe und Dosisangaben nicht Teil des oBDS, wohl aber von mCODE.
1. Insgesamt ist mCODE für eine prospektive Datenerfassung optimiert bzw. kann in der Behandlung kontinuierlich fortgeschrieben werden. Hierin unterscheidet sich der Grundaufbau deutlich von den retrospektiv dokumentierten deutschen Krebsregisterdaten, deren Inhalte meldungsspezifisch variieren können (Diagnose, Operation, Verlauf etc.).

### OSIRIS (Frankreich)

Das französische Common Data Model „Interoperability and data sharing of clinical and biological data in oncology" (OSIRIS) umfasst zwei unabhängige Kerndatensätze: einen klinischen und einen genomischen Teil. Ein dritter Teil mit einem Datensatz zu Imaging und Strahlentherapie ist gerade in Arbeit. Da der Fokus des oBDS auf den klinischen Daten liegt, werden hier kurz Gemeinsamkeiten und Unterschiede zum klinischen Datensatz zusammengefasst.

Der OSIRIS-Datensatz modelliert die zeitliche Darstellung vor allem um sog. „Tumor Events". Tumor Events sind dabei entweder Erstdiagnosen oder Verlaufsbeobachtungen.

Weitere Informationen sind nachzulesen unter: [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8140800/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8140800/). Eine englische Version des Datensatzes ist verfügbar unter: [https://github.com/InstitutNationalduCancer/OSIRIS/blob/v1.1.05/documentation/ModeleCliniqueOSIRIS-english_version.pdf](https://github.com/InstitutNationalduCancer/OSIRIS/blob/v1.1.05/documentation/ModeleCliniqueOSIRIS-english_version.pdf).

