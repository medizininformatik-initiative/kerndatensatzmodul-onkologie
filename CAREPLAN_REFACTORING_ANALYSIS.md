# CarePlan Refactoring Analysis - Tumorboard R5 Extensions

## **Problem Statement**
Current CarePlan R4 has invariant that you must use either `CarePlan.activity.detail.code` OR `activity.reference`, but not both. We need to support:
- 99% legacy cases: coded information from cancer registry 
- New structured cases: MedicationRequest/ServiceRequest references for Molecular Tumor Board
- Combination therapies: multiple related recommendations

## **Approaches Attempted**

### **1. R5 Backport Extensions Approach** ⚠️ **PARTIALLY SUCCESSFUL**

**Strategy:**
```fsh
* activity ^slicing.discriminator.type = #exists
* activity ^slicing.discriminator.path = "extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-CarePlan.activity.plannedActivityReference')"
* activity ^slicing.rules = #open

// Legacy slice: uses detail.code (existing)
* activity contains coded 0..* MS
* activity[coded].detail 1..1 MS
* activity[coded].detail.code 1..1 MS

// Structured slice: uses R5 extensions
* activity contains structured 0..* MS  
* activity[structured].extension contains
    http://hl7.org/fhir/5.0/StructureDefinition/extension-CarePlan.activity.plannedActivityReference named plannedActivityReference 1..1 MS and
    http://hl7.org/fhir/5.0/StructureDefinition/extension-CarePlan.activity.performedActivity named performedActivity 0..* MS
```

**Required Dependencies:**
```yaml
dependencies:
  hl7.fhir.extensions.r5: 4.0.1
```

**What Worked:**
- ✅ R5 extensions loaded successfully
- ✅ Slicing strategy was sound
- ✅ No invariant violations (clean separation)
- ✅ Extensions available for use

**What Failed:**
- ❌ R5 extensions don't support RequestGroup (renamed to RequestOrchestration in R5)
- ❌ Many complex validation errors with extension paths
- ❌ Performance issues loading R5 extension package

**Error Examples:**
```
error The type "Reference(RequestGroup)" does not match any of the allowed types
warn Definition of extension is incomplete since RequestOrchestration has no equivalent in FHIR 4.0.1
```

### **2. Combination Therapy with groupIdentifier** ⚠️ **CONCEPT SOUND, IMPLEMENTATION FAILED**

**Strategy:**
Create specialized profiles with consistent groupIdentifier semantics:
- `MII_PR_Onko_Molecular_Tumor_Board_MedicationRequest`: Native `groupIdentifier` field
- `MII_PR_Onko_Molecular_Tumor_Board_ServiceRequest`: `groupIdentifier` via extension

**Grouping Logic:**
```
Combination Recommendation:
├── MedicationRequest: Drug A (groupIdentifier: "combo-001")
├── MedicationRequest: Drug B (groupIdentifier: "combo-001") 
└── ServiceRequest: Genetic Test (groupIdentifier: "combo-001")
```

**What Was Sound:**
- ✅ Conceptually correct approach for combination therapies
- ✅ R4/R5 forward compatibility
- ✅ Leverages standard FHIR patterns
- ✅ Clean separation of concerns

**Implementation Issues:**
- ❌ Multiple validation errors with extension definitions
- ❌ Path resolution failures in FSH
- ❌ ValueSet reference errors
- ❌ Complex dependency chain problems

**Error Examples:**
```
error Cannot create groupIdentifier extension; unable to locate extension definition for: http://hl7.org/fhir/StructureDefinition/workflow-groupIdentifier
error No element found at path effectivePeriod for FlagRule
error Code "MTBD" is not defined for system MII_CS_Onko_Therapieplanung_Typ
```

### **3. Alternative Approaches Discussed (Not Implemented)**

#### **Option A: Multiple Activity Entries**
```fsh
// One activity per medication
activity[structured][0].plannedActivityReference = Reference(MedicationRequest/drug-a)
activity[structured][1].plannedActivityReference = Reference(MedicationRequest/drug-b)
```
**Pros:** Clear, explicit, R4 compatible  
**Cons:** More verbose CarePlan structure

#### **Option B: Custom Extension for Combination**
```fsh
// Create our own extension for combination therapy
extension[combinationTherapy] 0..* MS
  extension[medication] -> Reference(MedicationRequest)
```
**Pros:** Explicit modeling  
**Cons:** Custom extension complexity

#### **Option C: Bundle-based Grouping**
Use Bundle.entry semantics for grouping rather than resource-level fields.
**Pros:** Leverages existing Bundle patterns  
**Cons:** Complex implementation, non-standard usage

#### **Option D: ServiceRequest.requisition Field**
Use existing `ServiceRequest.requisition` instead of extension for grouping.
**Pros:** Native FHIR field  
**Cons:** Semantic mismatch, not available on MedicationRequest

## **Root Cause Analysis**

### **Primary Issues:**
1. **R5 Backport Limitations**: Extensions don't cleanly support all R4 resource types
2. **FSH Validation Complexity**: Multiple interdependent validation rules creating cascade failures
3. **Extension Definition Gaps**: Standard FHIR extensions not consistently available
4. **Performance Impact**: R5 extension loading significantly slows build process

### **Secondary Issues:**
1. **ValueSet Dependencies**: Missing or incorrectly referenced ValueSets
2. **Profile Interdependencies**: Complex chains of profile references
3. **Example Validation**: Examples failing due to profile constraint mismatches

## **Lessons Learned**

### **Technical Insights:**
1. **R5 Backports Are Not Silver Bullets**: They carry forward R5 complexity without full R4 compatibility
2. **Extension Paths Are Fragile**: Complex extension hierarchies prone to validation failures
3. **FSH Build Optimization**: Large dependency chains significantly impact build performance
4. **Standard Extensions May Not Exist**: Assumed standard extensions might not be available

### **Strategic Insights:**
1. **Simplicity Over Elegance**: Complex solutions often fail in practice
2. **Backwards Compatibility Is Critical**: 99% of implementations use legacy approach
3. **Validation Errors Cascade**: Single profile errors can break entire build
4. **R4 Limitations Need R4 Solutions**: Don't force R5 concepts into R4

## **Recommended Next Steps**

### **Immediate Actions:**
1. **Revert to Working State**: Remove all experimental CarePlan changes
2. **Document Current Limitation**: Acknowledge RequestGroup limitation in IG
3. **Focus on Core Functionality**: Ensure organ-specific modules are stable

### **Future Exploration Options:**
1. **Simple Multiple Activities**: Use separate activity entries for combinations
2. **Documentation Convention**: Define groupIdentifier usage in implementation guide
3. **Wait for R5 Migration**: Address combination therapy in future R5 implementation
4. **Custom Lightweight Extension**: Create minimal combination grouping extension

## **Files Created/Modified (Need Cleanup)**
- `input/fsh/oBDS/18_19_Tumorkonferenz/mii-pr-onko-tumorkonferenz.fsh` - Modified with R5 extensions
- `input/fsh/oBDS/18_19_Tumorkonferenz/mii-exa-onko-tumorkonferenz-examples.fsh` - New examples
- `input/fsh/oBDS/18_19_Tumorkonferenz/mii-pr-onko-molecular-tumor-board-service-request.fsh` - New profile
- `input/fsh/oBDS/18_19_Tumorkonferenz/mii-pr-onko-molecular-tumor-board-medication-request.fsh` - New profile  
- `input/fsh/oBDS/18_19_Tumorkonferenz/mii-vs-onko-molecular-tumor-board-tests.fsh` - New ValueSet
- `sushi-config.yaml` - Added R5 extensions dependency

## **Success Metrics for Future Attempts**
- ✅ Clean FSH compilation without errors
- ✅ Build time under 2 minutes
- ✅ Examples validate against profiles
- ✅ Backwards compatibility maintained
- ✅ Clear implementation guidance provided

---
*Analysis completed: 2024-01-28*  
*Status: Experimental work paused, core functionality prioritized*