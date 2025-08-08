# **MII Kerndatensatz Modul Onkologie - Presentation Storyboard**
*20-minute presentation: From proprietary oBDS codes to international standards*

## **Slide Structure (18-20 slides)**

### **Opening & Context (3 slides, 3 minutes)**

**Slide 1: Title & Vision**
- Title: "MII Kerndatensatz Modul Onkologie 2026"
- Subtitle: "Von proprietären oBDS-Codes zu internationalen Standards"
- Vision: "FHIR-basierte Interoperabilität für die deutsche Onkologie"

**Slide 2: The Real Problem**
- Screenshot: oBDS code list with cryptic values (e.g., "1", "2", "3" for grading)
- Problem statement: "oBDS verwendet proprietäre Codes ohne semantische Klarheit"
- Pain point: "Keine internationale Interoperabilität, keine Standardterminologien"

**Slide 3: Our Transformation**
- Screenshot: FHIR profile with SNOMED CT bindings
- Solution: "Vollständige Transformation zu LOINC, SNOMED CT, ICD-10-GM"
- Achievement: "119 ValueSets mit internationalen Standards"

### **Standards Transformation Deep Dive (6 slides, 8 minutes)**

**Slide 4: Before & After - Terminology Revolution**
- Split screen: 
  - Left: oBDS "Grading: 1,2,3,4,X,U"
  - Right: SNOMED CT "Well differentiated (12619005), Moderately differentiated..."
- Impact: "Von Zahlen zu klinisch bedeutsamen Begriffen"

**Slide 5: 31 ConceptMaps - The Translation Bridge**
- Screenshot: ConceptMap example (oBDS → SNOMED CT)
- Visual: Network diagram showing oBDS codes mapped to international standards
- Achievement: "Systematische Überführung aller oBDS-Werte in Standardterminologien"

**Slide 6: LOINC Integration for Observations**
- Screenshots: PSA observations, performance status with LOINC codes
- Before: "PSA-Wert (oBDS field)"
- After: "33747-0 Prostate specific antigen measurement (LOINC)"
- Value: "Internationale Laborinteroperabilität"

**Slide 7: SNOMED CT for Clinical Concepts**
- Screenshots: Surgical procedures, complications with SNOMED CT
- Before: "OP-Komplikation: Ja/Nein"
- After: "116223007 Complication (SNOMED CT) with specific subtypes"
- Value: "Präzise klinische Semantik"

**Slide 8: ICD Integration - German Healthcare Alignment**
- Screenshots: ICD-10-GM for diagnosis, ICD-O-3 for morphology
- Standard compliance: "Nahtlose Integration in deutsche Abrechnungssysteme"
- Registry compatibility: "Direkte Krebsregister-Kompatibilität"

**Slide 9: OPS Procedure Coding**
- Screenshots: Surgery and radiation profiles with OPS codes
- Before: "oBDS procedure descriptions"
- After: "Strukturierte OPS-Kodierung mit SNOMED CT-Ergänzung"
- Value: "Deutsche Prozedurenstandardisierung"

### **oBDS Coverage Showcase (4 slides, 5 minutes)**

**Slide 10: Complete oBDS Digital Standards Transformation**
- Visual: All 15 oBDS sections with their new standard terminologies
- Sections 05-24: Each mapped to appropriate international codes
- Achievement: "Vollständige Ablösung proprietärer oBDS-Codes"

**Slide 11: Clinical Data with Semantic Clarity**
- Screenshots: TNM staging with SNOMED CT, histology with ICD-O-3
- Before: "T: 1,2,3,4,X"  
- After: "T1 category (SNOMED CT: 23351008)"
- Impact: "Eindeutige internationale Kommunikation"

**Slide 12: Treatment Documentation Standards**
- Screenshots: Radiation therapy with structured terminologies
- Before: "Strahlenart: 1,2,3"
- After: "External beam radiation therapy (SNOMED CT: 33195004)"
- Value: "Präzise Therapiedokumentation"

**Slide 13: Outcome & Follow-up Standardization**
- Screenshots: Follow-up observations with LOINC/SNOMED CT
- Before: "Verlauf: V,T,N,M with numeric codes"
- After: "Structured tumor response with Response Evaluation Criteria"
- Registry impact: "Standardisierte Outcome-Berichterstattung"

### **Organ-Specific Excellence (4 slides, 4 minutes)**

**Slide 14: Organ Modules - Standards Applied**
- Screenshots: Four organ module overview pages
- Each module: "oBDS proprietäre Codes → Internationale Standards"
- Scope: "Beispielhafte Umsetzung für Haupttumorentitäten"

**Slide 15: Mamma-Karzinom - Receptor Status Revolution**
- Before: "ER/PR: 0,1,2,3 (oBDS)"
- After: "LOINC-coded quantitative receptor status with SNOMED CT interpretation"
- Clinical value: "Internationale Biomarker-Kompatibilität"

**Slide 16: Prostata - Gleason to SNOMED CT**
- Before: "Gleason: Numeric sums"
- After: "SNOMED CT Gleason patterns with ISUP grade groups"
- Innovation: "Moderne Pathologie-Standards"

**Slide 17: KRK - Surgical Quality Metrics**
- Before: "TME Qualität: 1,2,3"
- After: "SNOMED CT-coded surgical quality assessments"
- Impact: "Internationale Qualitätsvergleiche möglich"

### **Impact & Future (2 slides, 2 minutes)**

**Slide 18: Interoperability Achievement**
- Visual: Before/After interoperability diagram
- Before: "oBDS-Inseln ohne Austausch"
- After: "FHIR-basiertes internationales Netzwerk"
- Value: "Deutsche Onkologie wird international anschlussfähig"

**Slide 19: Thank You & Discussion**
- Key message: "Von proprietären Codes zu Weltstandards"
- Impact: "Grundlage für internationale onkologische Forschungskooperationen"
- Call to action: "Gemeinsam Standards implementieren"

## **Presentation Flow Strategy**

### **Opening Hook (0-3 min)**
Start by showing actual oBDS codes - those ugly "1,2,3,X,U" values that mean nothing to international partners. Then reveal your elegant SNOMED CT transformation.

### **Core Story Arc (3-15 min)**
**"Standards Revolution"** - Focus on the terminology transformation:
1. **The Translation** (ConceptMaps & standards integration)
2. **The Coverage** (Complete oBDS standardization)
3. **The Precision** (Organ-specific standard applications)

### **Strong Finish (15-20 min)**
Connect to international collaboration - this work makes German oncology data globally interoperable for the first time.

## **Visual Strategy**

- **Before/After Screenshots**: Always show the oBDS ugliness → FHIR elegance
- **Code Comparisons**: "1,2,3" vs "Well differentiated neoplasm (SNOMED CT)"
- **Interoperability Diagrams**: Isolated systems → Connected standards
- **International Impact**: This enables global oncology research participation

## **Key Messages**

1. **Problem**: oBDS uses proprietary, non-semantic codes that prevent international interoperability
2. **Solution**: Complete transformation to LOINC, SNOMED CT, ICD-10-GM standards
3. **Achievement**: 119 ValueSets, 31 ConceptMaps, 4 organ-specific modules with international standards
4. **Impact**: Makes German oncology data globally interoperable for research and care coordination