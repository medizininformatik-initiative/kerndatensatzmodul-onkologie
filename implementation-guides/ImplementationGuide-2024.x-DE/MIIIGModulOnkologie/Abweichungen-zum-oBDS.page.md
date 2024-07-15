## {{page-title}}
Der vorliegende Implementation Guide beschreibt eine Umsetzung des oBDS in FHIR. Eine reine 1:1 Abbildung des kompletten Datensatzes ist weder inhaltlich noch technisch sinnvoll. Hier die wichtigsten Abweichungen:  

### Inhalte
 
Das Erweiterungsmodul Onkologie beinhaltet diejenigen Gruppen des oBDS, die v.a. klinisch-diagnostische und therapeutische Datenpunkte umfassen. 

Daher wurden mehrere Gruppen **nicht** in FHIR implementiert. Das umfasst: 

- Die personenbezogenen Gruppen 
    - Modul 3: Patienten Stammdaten
    - Modul 4: Melder Stammdaten
    - Modul 7: Einsender
    - Modul 22: Operateur
    - Modul 25: Zusätzliche Kontakte

- die administrativen und meldungsbezogenen Gruppen
    - Modul 1: Meldung
    - Modul 2: Zentrum
    - Modul 21: Anmerkungen
    - Modul 24: Studienteilnahme

Ebenfalls wurde entschieden, in der ersten Profilierung den Fokus auf die technische Implementierung der Hauptinhalte zu setzen, und damit die organspezifischen Module erst in einem späteren Schritt zu integrieren. 
- Dazu gehören: 
    - Modul Prostata
    - Modul Mamma
    - Modul Melanom
    - Modul Kolon

### Kardinalitäten
Der oBDS ist hauptsächlich für die Datenmeldung an die Krebsregister optimiert worden. 

In der ersten Version wurden die Kardinalitäten größtenteils aus dem oBDS übernommen, sind teilweise aber "weicher" eingestellt, um gerade in einem ersten Schritt Zugang zu einer breiteren Datenbasis zu bekommen.  


### Einbindung von Terminologien und Codesystemen 
Um eine Auswertbarkeit durch das Forschungsdatenportal Gesundheit (FDPG) zu gewährleisten,  verlangt die Angabe der Medikation bei Systemischer Therapie eine Kodierung mittels ATC. Freitext ist weiterhin als zusätzliche Angabe möglich. 

### Validierung
Im oBDS-XML-Schema 3.0.2 ist eine Reihe von Validierungen vorgesehen, die die Datenqualität und -vollständigkeit überprüfen. Diese sind technisch in der ersten Version **nicht** mit implementiert. Es ist davon auszugehen, dass die oBDS-Daten in den Primärsystemen der Tumordokumentation zumindest soweit validiert werden, dass ein Export ins XML-Format möglich ist. Weitere Validierungen (z.B. sich gegenseitig ausschließende Datenfelder) könnten bei Bedarf in Zukunft vorgenommen werden. Dies wäre erforderlich, wenn das vorliegende Erweiterungsmodul über seinen derzeitigen Zweck hinaus als Datenerhebungsgrundlage für Primärsysteme dienen soll. 

### Inhalte der Module und Profile
Im oBDS sind die Datenfelder an die Meldestruktur gebunden. Gruppen, die unterschiedliche Kardinalitäten haben, sind häufig in verschiedenen Gruppen gelagert. So sind bspw. Tumorkonferenz und Therapieempfehlungen in zwei verschiedenen Gruppen, da eine Tumorkonferenz auf mehrere Therapieempfehlungen verweisen kann. Beide Gruppen sind aber problemlos in der FHIR-Ressource CarePlan abbildbar, so dass dieses in ein FHIR-Profil zusammengelegt wurde. Wichtige Änderungen im Folgenden auszughaft:

- die Diagnose enthält Teile des Histologie-Gruppe (ICD-O Topologie, ICD-O Morphologie)
- die Tumorkonferenz-Gruppe wurden in der Gruppe Tumorkonferenz/Therapieempfehlung zusammengelegt
- der Allgemeine Leistungszustand soll nur als ECOG kodiert werden können(und nicht mehr optional auch als Karnofksy), was für zukünfitge oBDS-Versionen ebenfalls angedacht ist. 