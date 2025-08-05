# PlantUML Diagrams - Inconsistencies Analysis

## **Critical Inconsistencies Found:**

### **1. Color Coding Inconsistencies**
**Problem**: DiagnosticReport colors don't match across diagrams
- `MII_Onko_06_Histologie.pu`: Uses `#AAFFAA` for DiagnosticReport  
- `MII_Onko_17-20_24_Others.pu`: Legend shows `#88FF88` for DiagnosticReport
- **New organ module diagrams**: Use `#88FF88` (following the standard legend)

**Recommended Standard Color Scheme:**
```
|Color|Type|
|<#FFFF66>|Condition|
|<#CCCCFF>|CarePlan|
|<#9999FF>|Procedure|
|<#DDFFDD>|ServiceRequest|
|<#88FF88>|DiagnosticReport|
|<#22FF22>|Observation|
|<#FFCCFF>|Medication|
|<#FF9999>|AdverseEvent|
|<#44FFFF>|Specimen|
|<#EEEEEE>|Bundle/List|
```

### **2. Inconsistent Object Naming**
**Problem**: Variable object names for same concepts
- `MII_Onko_UML_Relations_v2.pu` line 49: Uses `PrimaerDiagnose` 
- `MII_Onko_UML_Relations_v2.pu` line 85: Uses `PrimaerDiagnose` again
- Most other diagrams: Use `Diagnose_Primaertumor`

**Recommendation**: Standardize on `Diagnose_Primaertumor` or `MII_Diagnose_Primaertumor`

### **3. Filename vs Title Mismatch**
**Problem**: Diagram titles don't match filenames
- **File**: `MII_Onko_17-20_24_Others.pu`
- **Diagram title**: `@startuml MII_Onko_17-20_23_Others` (shows "23" instead of "24")

### **4. FHIR Path Inconsistencies**
**Problem**: Missing `Observation.` prefixes in some paths
- `MII_Onko_08_TNM.pu` line 5: `effectiveDateTime` (missing prefix)
- `MII_Onko_08_TNM.pu` line 6: `method` (missing prefix)
- Should be: `Observation.effectiveDateTime`, `Observation.method`

### **5. Extension Naming Format Issues**
**Problem**: Inconsistent extension reference format
- `MII_Onko_08_TNM.pu` lines 12,18,23: Uses `code.extension[MII_EX_Onko_TNM_cp_Praefix]`
- **New organ diagrams**: Use `extension[cpPraefix]` (following actual FSH pattern)

**Recommendation**: Use shorter, consistent extension names matching FSH profiles

### **6. Legend Inconsistencies**
**Problem**: Some diagrams missing resource types in legend
- `MII_Onko_05_Diagnosis.pu`: Includes `#EEEEEE List` in legend
- Other diagrams: Missing this type despite using bundle references

### **7. Resource Type Color Mismatches**
**Problem**: Specimen colors vary between diagrams
- Most diagrams: Use `#44FFFF` for Specimen
- Some instances: Inconsistent application

## **Standards Issues:**

### **8. Missing International Standards References**
**Problem**: Old diagrams don't highlight standards transformation
- No mention of LOINC, SNOMED CT codes
- No "before/after" oBDS transformation context
- Missing the key narrative about international interoperability

### **9. Outdated FHIR Paths**
**Problem**: Some FHIR paths may not match current profile implementation
- TNM extension references may not match actual FSH profiles
- Component references might be outdated

## **Recommended Actions:**

### **Phase 1: Color Standardization**
1. Update all diagrams to use consistent color scheme (see table above)
2. Fix `#AAFFAA` → `#88FF88` for DiagnosticReport in `MII_Onko_06_Histologie.pu`
3. Ensure all legends include complete resource type list

### **Phase 2: Naming Consistency**
1. Standardize all primary diagnosis references to `MII_Diagnose_Primaertumor`
2. Fix filename/title mismatches
3. Consistent extension naming format

### **Phase 3: FHIR Path Corrections**
1. Add missing `Observation.` prefixes in TNM diagram
2. Verify all FHIR paths match current FSH profile implementation
3. Update extension references to match actual profile structure

### **Phase 4: Standards Integration**
1. Add standards transformation notes to existing diagrams
2. Include LOINC/SNOMED CT references where applicable
3. Add "before/after" oBDS improvement context

### **Phase 5: Content Updates**
1. Add organ-specific profiles to existing relationship diagrams
2. Update procedure diagrams with organ-specific modules
3. Ensure bundle architecture consistency

## **Files Requiring Updates:**

### **High Priority:**
- `MII_Onko_06_Histologie.pu` - Color fixes, standards context
- `MII_Onko_08_TNM.pu` - FHIR path fixes, extension naming
- `MII_Onko_17-20_24_Others.pu` - Title fix, standards context
- `MII_Onko_UML_Relations_v2.pu` - Object naming consistency

### **Medium Priority:**  
- `MII_Onko_05_Diagnosis.pu` - Standards transformation emphasis
- `MII_Onko_9-12_Observations.pu` - Standards context additions
- `MII_Onko_13-16_Prozeduren.pu` - Organ-specific profile integration

### **Low Priority:**
- `MII_Onko_UML_Relations_v1.pu` - General consistency updates
- `MII_Onko_Example_Timeline.pu` - Standards context additions

## **Next Steps:**
1. **Consequent Color Coding**: Establish single standard color scheme for all diagrams
2. **Systematic Updates**: Fix inconsistencies in priority order
3. **Standards Integration**: Add international standards context to all diagrams
4. **Organ Module Integration**: Update relationship diagrams with organ-specific profiles
5. **Presentation Diagrams**: Create new diagrams specifically for standards transformation story

---
*Analysis completed: 2025-01-31*
*Status: Ready for implementation*