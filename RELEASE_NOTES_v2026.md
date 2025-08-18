# MII Kerndatensatzmodul Onkologie - Version 2026 (Kommentierung)

## Release Date: 21.08.2025

### 🔬 Weitere Klassifikationen und Molekulare Tumorboards
- Implementierung weiterer Klassifikationssysteme (BINET, Ann Arbor, ISS, WHO-Grad, etc.) als hierarchisches CodeSystem
- CodeSystem mit `descendant-of` ValueSet-Filtern zur Vermeidung zahlreicher eigener Profile
- Integration des mCODE STU4 code+method+value Patterns für Staging-Observationen

### 🏥 Tumorkonferenz-Erweiterung
- Erweiterte CarePlan-Ressource für oBDS und komplexe Therapieempfehlungen
- Activity-Slicing mit `obds` (Standard oBDS 19.1) und `extended` (RequestGroup-basierte Protokolle) Slices
- Vollständige Rückwärtskompatibilität und Kombatibilität mit MTB-Modul

### 💊 Systemische Therapie Erweiterungen

#### Protokoll-Implementierung
- Strukturierte Dokumentation von 96 Therapieprotokollen (FOLFOX, R-CHOP, AC, etc.)
- Protokolle über `Procedure.usedCode` mit extensible Binding
- Dokumentation der enthaltenen Wirkstoffe je Protokoll

#### UNII-Kodierung
- Neuer UNII-Slice für experimentelle Substanzen ohne ATC-Codes
- ValueSet mit 100+ UNII-Codes
- Beispiel: Iberdomide (UNII: 8V66F27X44)

#### ATC-Code Transitionen
- Dokumentation temporaler ATC-Änderungen (z.B. Quizartinib L01XE52 → L01EX11)
- Post-hoc Mapping-Empfehlungen für DIZ-basierte Annotation

### 🔪 Operation-Profil Erweiterungen

#### Mehrteilige Eingriffe
- OPS-Code Kardinalität von `1..1` zu `0..1` geändert (#194)
- Zwei Modellierungsansätze für komplexe Operationen dokumentiert

#### Urgency Extension
- Neue Extension für Eingriffsmodalität (Elektiv/Notfall/Unbekannt)
- Universell auf alle Procedures anwendbar

### 📊 Weitere Anpassungen
- **Verlauf-Profil**: Component-Kardinalität `1..*` → `0..*` (#202)
- **Strahlentherapie**: oBDS 2014/2021 Zielgebiet-Kompatibilität

### 🎯 Neue organspezifische Module

#### Mamma
- Estrogen-/Progesteron-Rezeptorstatus mit dualer Kodierung
- Menopause-Status mit oBDS 2021-Subsumierung
- Präoperative Markierung und Mamma-Operation

#### Prostata  
- PSA, Stanzen-Anzahl, Gleason Score/Grade Group (LOINC)
- Clavien-Dindo Komplikationen (SNOMED CT + oBDS)

#### Kolorektales Karzinom
- 9 spezifische Profile (Abstände, ASA, Anastomoseninsuffizienz, etc.)
- TME-Qualitätsbewertung und Stoma-Markierung

#### Malignes Melanom
- Breslow-Tiefe, Ulzeration, Sicherheitsabstand
- LDH als prognostischer Marker
- Melanom-spezifische Exzision

### 📦 Bundle-Beispiele
Vollständige Transaktions-Bundles für alle organspezifischen Module verfügbar.