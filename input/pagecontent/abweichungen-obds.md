### Abweichungen zum oBDS

Der vorliegende Implementation Guide beschreibt eine Umsetzung des oBDS in FHIR. Eine reine
1:1-Abbildung des kompletten Datensatzes ist weder inhaltlich noch technisch sinnvoll. Hier die
wichtigsten Abweichungen:

### Inhalte

Das KDS-Modul Onkologie beinhaltet diejenigen Gruppen des oBDS, die v. a. klinisch-diagnostische
und therapeutische Datenpunkte umfassen. Daher wurden mehrere Gruppen **nicht** in FHIR
implementiert. Das umfasst:

- Die personenbezogenen Gruppen
    - Gruppe 3: Patienten-Stammdaten
    - Gruppe 4: Melder-Stammdaten
    - Gruppe 7: Einsender
    - Gruppe 22: Operateur
    - Gruppe 25: Zusätzliche Kontakte
- Die administrativen und meldungsbezogenen Gruppen
    - Gruppe 1: Meldung
    - Gruppe 2: Zentrum
    - Gruppe 21: Anmerkungen

Die organspezifischen Module waren nicht Teil der ersten Profilierung, sind aber seit der
Version 2026 Teil des Moduls Onkologie. Dazu gehören die Module Prostata, Mamma, Melanom und
Kolon.

### Kardinalitäten

Der oBDS ist hauptsächlich für die Datenmeldung an die Krebsregister optimiert worden. In den
ersten Versionen wurden die Kardinalitäten größtenteils aus dem oBDS übernommen, sind teilweise
aber „weicher" eingestellt, um gerade in einem ersten Schritt Zugang zu einer breiteren
Datenbasis zu bekommen.

### Einbindung von Terminologien und Codesystemen

Um eine Auswertbarkeit durch das Forschungsdatenportal Gesundheit (FDPG) zu gewährleisten,
verlangt die Angabe der Medikation bei Systemischer Therapie eine Kodierung mittels ATC.
Freitext ist weiterhin als zusätzliche Angabe möglich.

### Validierung

Im oBDS-XML-Schema 3.0.2 ist eine Reihe von Validierungen vorgesehen, die die Datenqualität und
-vollständigkeit überprüfen. Diese sind technisch in der ersten Version **nicht** mit
implementiert. Es ist davon auszugehen, dass die oBDS-Daten in den Primärsystemen der
Tumordokumentation zumindest soweit validiert werden, dass ein Export ins XML-Format möglich
ist. Weitere Validierungen (z. B. sich gegenseitig ausschließende Datenfelder) könnten bei
Bedarf in Zukunft vorgenommen werden. Dies wäre erforderlich, wenn das vorliegende KDS-Modul
über seinen derzeitigen Zweck hinaus als Datenerhebungsgrundlage für Primärsysteme dienen soll.

### Inhalte der Module und Profile

Im oBDS sind die Datenfelder an die Meldestruktur gebunden. Gruppen, die unterschiedliche
Kardinalitäten haben, sind häufig in verschiedenen Gruppen gelagert. So sind bspw. Tumorkonferenz
und Therapieempfehlungen in zwei verschiedenen Gruppen, da eine Tumorkonferenz auf mehrere
Therapieempfehlungen verweisen kann. Beide Gruppen sind aber problemlos in der FHIR-Ressource
CarePlan abbildbar, sodass diese in ein FHIR-Profil zusammengelegt wurden. Wichtige Änderungen
im Folgenden auszugsweise:

- Die Diagnose enthält Teile der Histologie-Gruppe (ICD-O-Topologie, ICD-O-Morphologie).
- Die Tumorkonferenz-Gruppe wurde in der Gruppe Tumorkonferenz/Therapieempfehlung zusammengelegt.
- Der Allgemeine Leistungszustand kann sowohl als ECOG als auch als Karnofsky kodiert werden
  (eine ursprüngliche Zusammenlegung der Datenpunkte wurde nach der Kommentierungsphase
  verworfen).
