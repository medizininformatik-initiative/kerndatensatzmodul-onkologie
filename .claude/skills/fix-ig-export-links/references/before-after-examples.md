# Before/After Link Examples

## 1. FHIR R4 Core (filepath pattern)

**Before:**
```html
href="https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/StructureDefinition-Observation.json"
```

**After:**
```html
href="https://hl7.org/fhir/R4/Observation.html"
```

---

## 2. FHIR R4 Base (Canonical Box Basis column)

**Before:**
```html
href='/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=http://hl7.org/fhir/StructureDefinition/Observation'
```

**After:**
```html
href='https://hl7.org/fhir/R4/Observation.html'
```

---

## 3. MII Onko Canonical URL (Canonical Box)

**Before:**
```html
href='/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor'
```

**After:**
```html
href='https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor&fhirVersion=R4'
```

---

## 4. Internal Profile Reference (supportingInfo, derivedFrom)

**Before:**
```html
href="artifacts/package/StructureDefinition-mii-pr-onko-diagnose-primaertumor.json"
```

**After:**
```html
href="MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Diagnose-Diagnose-Condition.html"
```

---

## 5. Internal ValueSet Reference (Binding tables)

**Before:**
```html
href="artifacts/package/ValueSet-mii-vs-onko-primaertumor-diagnosesicherung.json"
```

**After:**
```html
href="https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-diagnosesicherung&fhirVersion=R4"
```

---

## 6. Internal CodeSystem Reference

**Before:**
```html
href="artifacts/package/CodeSystem-mii-cs-onko-grading.json"
```

**After:**
```html
href="https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading&fhirVersion=R4"
```

---

## 7. Internal Extension Reference

**Before:**
```html
href="artifacts/package/StructureDefinition-mii-ex-onko-operation-intention.json"
```

**After:**
```html
href="https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention&fhirVersion=R4"
```

---

## 8. German Base Profile (de.basisprofil.r4)

**Before:**
```html
href="https://simplifier.net/resolve?scope=package:de.basisprofil.r4@1.5.4&filepath=package/StructureDefinition-CodingICD10GM.json"
```

**After:**
```html
href="https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/StructureDefinition-CodingICD10GM.json"
```

---

## 9. MII Base Module (kerndatensatz.base)

**Before:**
```html
href="https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&filepath=package/StructureDefinition-mii-pr-diagnose-condition.json"
```

**After:**
```html
href="https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-diagnose-condition.json"
```

---

## 10. MII Core Module Canonical (Diagnose, Prozedur, Medikation)

**Before:**
```html
href='/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose'
```

**After:**
```html
href='https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose&fhirVersion=R4'
```

---

## 11. HL7 Terminology (THO)

**Before:**
```html
href="https://simplifier.net/resolve?scope=package:hl7.terminology.r4@7.0.0&filepath=package/CodeSystem-v2-0203.json"
```

**After:**
```html
href="https://terminology.hl7.org/CodeSystem-v2-0203.html"
```

---

## 12. Organ-Specific Profile (KRK)

**Before:**
```html
href="artifacts/package/StructureDefinition-mii-pr-onko-krk-operation.json"
```

**After:**
```html
href="MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-Operation-Procedure.html"
```

---

## 13. Old Guide URL Reference

**Before:**
```html
href="https://simplifier.net/guide/mii-ig-modul-onkologie-2024-de/..."
```

**After:**
```html
href="https://simplifier.net/guide/mii-ig-modul-onkologie-v2026-de/..."
```

---

## Summary Statistics

From a typical Onkologie profile page (e.g., Diagnose-Condition):
- **Before:** ~16,000+ broken resolve links
- **After:** Only intentional Simplifier resolve links for MII Onko canonicals

Total across all HTML files:
- **Before:** ~400,000+ broken resolve links
- **After:** Minimal intentional Simplifier canonical resolves
