#!/bin/bash
# Fix broken Simplifier resolve links in MII Onkologie IG export
# Package: de.medizininformatikinitiative.kerndatensatz.onkologie
# Canonical: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko

set -e
echo "Fixing MII Onkologie IG export links..."
echo ""

# =============================================================================
# Step 1: Fix FHIR R4 Core links (filepath pattern)
# =============================================================================
echo "1. Fixing FHIR R4 Core links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/\1.html|g' *.html
sed -i '' 's|/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/StructureDefinition-\([^.]*\)\.json|https://hl7.org/fhir/R4/\1.html|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/valueset-\1.html|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/codesystem-\1.html|g' *.html

# With &amp; encoding
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/valueset-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/codesystem-\1.html|g' *.html

# =============================================================================
# Step 2: Fix HL7 Terminology (THO) links
# =============================================================================
echo "2. Fixing HL7 Terminology (THO) links..."

# CodeSystem links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/CodeSystem-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/CodeSystem-\1.html|g' *.html

# ValueSet links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/ValueSet-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/ValueSet-\1.html|g' *.html

# NamingSystem links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/NamingSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/NamingSystem-\1.html|g' *.html

# =============================================================================
# Step 2b: Fix HL7 Genomics Reporting STU3 links
# =============================================================================
echo "2b. Fixing HL7 Genomics Reporting STU3 links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&amp;filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-\1.html|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/ValueSet-\1.html|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/CodeSystem-\1.html|g' *.html

# =============================================================================
# Step 2c: Fix HL7 IPS links
# =============================================================================
echo "2c. Fixing HL7 IPS links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.ips@2.0.0&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/ips/StructureDefinition-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.ips@2.0.0&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/ips/ValueSet-\1.html|g' *.html

# =============================================================================
# Step 3: Fix German base profile links (de.basisprofil.r4)
# =============================================================================
echo "3. Fixing German base profile links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/CodeSystem-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/Extension-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/Extension-\1.json|g' *.html

# =============================================================================
# Step 4: Fix de.fhir.medication links
# =============================================================================
echo "4. Fixing de.fhir.medication links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.fhir.medication@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.fhir.medication/1.0.3/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.fhir.medication@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.fhir.medication/1.0.3/files/package/ValueSet-\1.json|g' *.html

# =============================================================================
# Step 5: Fix MII Base module links (kerndatensatz.base)
# =============================================================================
echo "5. Fixing MII Base module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/CodeSystem-\1.json|g' *.html

# =============================================================================
# Step 6: Fix MII Medikation module links
# =============================================================================
echo "6. Fixing MII Medikation module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.medikation@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.medikation@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/ValueSet-\1.json|g' *.html

# =============================================================================
# Step 7: Fix MII MolGen module links
# =============================================================================
echo "7. Fixing MII MolGen module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.molgen@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 8: Fix FHIR R4 base StructureDefinition links (canonical box basis column)
# =============================================================================
echo "8. Fixing FHIR R4 base StructureDefinition links (canonical box)..."

# Single-quoted href with regular & (canonical box FQL table)
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&canonical=http://hl7.org/fhir/StructureDefinition/\([^']*\)'|'https://hl7.org/fhir/R4/\1.html'|g" *.html

# Double-quoted href with &amp; (HTML entity)
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&amp;canonical=http://hl7.org/fhir/StructureDefinition/\([^\"]*\)|https://hl7.org/fhir/R4/\1.html|g" *.html

# Also fix FHIR ValueSet canonical references
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&canonical=http://hl7.org/fhir/ValueSet/\([^']*\)'|'https://hl7.org/fhir/R4/valueset-\1.html'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&amp;canonical=http://hl7.org/fhir/ValueSet/\([^\"]*\)|https://hl7.org/fhir/R4/valueset-\1.html|g" *.html

# =============================================================================
# Step 9: Fix MII Onko profile canonical links (canonical box)
# =============================================================================
echo "9. Fixing MII Onko profile canonical links..."

# Convert relative /resolve? to https://simplifier.net/resolve? with fhirVersion
# Single-quoted href with regular &
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@\([^&]*\)&canonical=\(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/[^']*\)'|'https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@\1\&canonical=\2\&fhirVersion=R4'|g" *.html

# Double-quoted href with &amp;
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@\([^&]*\)&amp;canonical=\(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/[^\"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@\1\&amp;canonical=\2\&amp;fhirVersion=R4|g" *.html

# =============================================================================
# Step 10: Fix MII Core module canonical links (now in kerndatensatz.base)
# =============================================================================
echo "10. Fixing MII Core module canonical links..."

# MII Diagnose -> kerndatensatz.base package (Diagnose is now part of base)
# Single-quoted href
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-diagnose-condition.json'|g" *.html
# Double-quoted href with &amp;
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-diagnose-condition.json|g" *.html

# MII Prozedur -> kerndatensatz.base package (Prozedur is now part of base)
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-prozedur-procedure.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-prozedur-procedure.json|g" *.html

# MII Medikation -> kerndatensatz.medikation package (separate package)
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/StructureDefinition-mii-pr-medikation-medication-statement.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/StructureDefinition-mii-pr-medikation-medication-statement.json|g" *.html

# MII MolGen (ext module) -> kerndatensatz.molgen package
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-mii-pr-molgen-variante.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-mii-pr-molgen-variante.json|g" *.html

# =============================================================================
# Step 11: Fix internal ValueSet references -> Simplifier resolve (with scope)
# =============================================================================
echo "11. Fixing internal ValueSet references..."

# Generic pattern: artifacts/package/ValueSet-mii-vs-onko-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/ValueSet-\(mii-vs-onko-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/ValueSet-\(mii-vs-onko-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 12: Fix internal CodeSystem references -> Simplifier resolve (with scope)
# =============================================================================
echo "12. Fixing internal CodeSystem references..."

# Generic pattern: artifacts/package/CodeSystem-mii-cs-onko-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/CodeSystem-\(mii-cs-onko-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/CodeSystem-\(mii-cs-onko-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 13: Fix internal Extension references -> Local HTML pages
# =============================================================================
echo "13. Fixing internal Extension references..."

# --- Diagnose Extensions ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Diagnose-Extension-ICD-O-3-Morphologie.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Diagnose-Extension-ICD-O-3-Morphologie.html|g' *.html

# --- Operation Extensions ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-operation-intention\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Operation-Extension-Intention.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-operation-intention\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Operation-Extension-Intention.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-operation-urgency\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Operation-Extension-Urgency.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-operation-urgency\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Operation-Extension-Urgency.html|g' *.html

# --- Strahlentherapie Extensions (all bestrahlung-* map to Extension-Bestrahlung) ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Bestrahlung.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Bestrahlung.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Bestrahlung.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Bestrahlung.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Bestrahlung.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Bestrahlung.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Bestrahlung.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Bestrahlung.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-strahlentherapie-intention\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Intention.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-strahlentherapie-intention\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Intention.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-strahlentherapie-stellungzurop\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Stellung.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-strahlentherapie-stellungzurop\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Stellung.html|g' *.html

# --- Systemische Therapie Extensions (map to Operation extensions as they share the same structure) ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-systemische-therapie-intention\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Operation-Extension-Intention.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-systemische-therapie-intention\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Operation-Extension-Intention.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Stellung.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Extension-Stellung.html|g' *.html

# --- TNM Extensions ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-tnm-cp-praefix\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-Extension-TNM-Prefix-c-p.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-tnm-cp-praefix\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-Extension-TNM-Prefix-c-p.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-tnm-itc-suffix\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-Extension-TNM-Prefix-c-p.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-tnm-itc-suffix\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-Extension-TNM-Prefix-c-p.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-ex-onko-tnm-sn-suffix\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-Extension-TNM-Prefix-c-p.html|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-mii-ex-onko-tnm-sn-suffix\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-Extension-TNM-Prefix-c-p.html|g' *.html

# Fallback: any remaining mii-ex-onko extensions -> Simplifier resolve (online)
sed -i '' 's|artifacts/package/StructureDefinition-\(mii-ex-onko-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/\1\&fhirVersion=R4|g' *.html
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-\(mii-ex-onko-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 14: Fix internal Profile references -> Local HTML pages
# =============================================================================
echo "14. Fixing internal Profile references to local HTML pages..."

# --- Allgemeiner Leistungszustand ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Allgemeiner-Leistungszustand-Allgemeiner-Leistungszustand-ECOG-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Allgemeiner-Leistungszustand-Allgemeiner-Leistungszustand-Karnofsky-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-asa-klassifikation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Allgemeiner-Leistungszustand-ASA-Klassifikation-Observation.html|g' *.html

# --- Diagnose ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-diagnose-primaertumor\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Diagnose-Diagnose-Condition.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Diagnose-Fruehere-Tumorerkrankung-Condition.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Diagnose-Erstdiagnose-Evidenz-List.html|g' *.html

# --- Fernmetastasen ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-fernmetastasen\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Fernmetastasen-Observation-Fernmetastasen-Observation.html|g' *.html

# --- Genetische Variante ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-genetische-variante\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Genetische-Variante-Genetische-Variante-Observation.html|g' *.html

# --- Histologie ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-grading\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Grading-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-histologie-icdo3\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Verlaufshistologie-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-specimen\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Specimen-Specimen.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tumorgroesse\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Tumorgroesse-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-befund\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Histologiebefund-DiagnosticReport.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Lymphknotenuntersuchung-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Lymphknotenuntersuchung-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Lymphknotenuntersuchung-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Histologie-Lymphknotenuntersuchung-Observation.html|g' *.html

# --- Nebenwirkung ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Nebenwirkung-Nebenwirkung-AdverseEvent.html|g' *.html

# --- Operation ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-operation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Operation-Operation-Procedure.html|g' *.html

# --- Residualstatus ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-residualstatus\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Residualstatus-Residualstatus-Observation.html|g' *.html

# --- Strahlentherapie ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-strahlentherapie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Strahlentherapie-Procedure.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-Bestrahlungstherapie-Procedure.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Strahlentherapie-NuklearmedizinischeTherapie-Procedure.html|g' *.html

# --- Studienteilnahme ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-studienteilnahme\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Studienteilnahme-Studienteilnahme-ResearchSubject.html|g' *.html

# --- Systemische Therapie ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-systemische-therapie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Systemische-Therapie-Systemische-Therapie-Procedure.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-systemische-therapie-medikation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Systemische-Therapie-Systemische-Therapie-MedicationStatement.html|g' *.html

# --- TNM Klassifikation ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-klassifikation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Klassifikation-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-t-kategorie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Kategorie-T-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-n-kategorie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Kategorie-N-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-m-kategorie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Kategorie-M-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-pn-kategorie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Kategorie-Pn-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-l-kategorie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Kategorie-l-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-v-kategorie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Kategorie-V-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-s-kategorie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Kategorie-S-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-a-symbol\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Symbol-a-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-m-symbol\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Symbol-m-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-r-symbol\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Symbol-r-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tnm-y-symbol\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-TNM-Klassifikation-TNM-Symbol-y-Observation.html|g' *.html

# --- Tod ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tod\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Tod-Tod-Observation.html|g' *.html

# --- Tumorkonferenz ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-tumorkonferenz\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Tumorkonferenz-Tumorkonferenz-CarePlan.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Tumorkonferenz-Therapieempfehlung-Kombinationstherapie-RequestGroup.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-therapieempfehlung-medikation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Tumorkonferenz-Tumorkonferenz-Detailed-Recommendations-CarePlan.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-therapieempfehlung-operation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Tumorkonferenz-Tumorkonferenz-Detailed-Recommendations-CarePlan.html|g' *.html

# --- Verlauf ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-verlauf\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Verlauf-Verlauf-Observation.html|g' *.html

# --- Weitere Klassifikationen ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-weitere-klassifikationen\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Weitere-Klassifikationen-Weitere-Klassifikationen-Observation.html|g' *.html

# =============================================================================
# Step 15: Fix organ-specific profile references (KRK, Mamma, Melanom, Prostata)
# =============================================================================
echo "15. Fixing organ-specific profile references..."

# --- KRK (Kolorektales Karzinom) ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-krk-operation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-Operation-Procedure.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-krk-specimen\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-Specimen.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-krk-stoma-markierung\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-Stoma-Markierung-Procedure.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-krk-abstand-aboral\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-Abstand-Resektionsrand-Aboral-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-krk-abstand-anokutan\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-Abstand-Tumor-Anokutanlinie-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-Abstand-Circumferelle-Resektionsebene-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-Anastomoseninsuffizienz-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-KolorektalesKarzinom-KRK-MRT-Mesorektale-Faszie-Observation.html|g' *.html

# --- Mamma ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-mamma-operation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Mamma-Mamma-Operation-Procedure.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Mamma-Mamma-Estrogen-Rezeptorstatus-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Mamma-Mamma-Progesteron-Rezeptorstatus-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-mamma-her2neu-status\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Mamma-Mamma-Her2neu-Status-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-mamma-menopause-status\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Mamma-Mamma-Menopause-Status-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Mamma-Mamma-Praeoperative-Markierung-Procedure.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-mamma-sozialdienst\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Mamma-Mamma-Sozialdienst-Observation.html|g' *.html

# --- Melanom ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-melanom-breslow-tiefe\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-MalignesMelanom-Melanom-Breslow-Tiefe-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-melanom-ldh\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-MalignesMelanom-Melanom-LDH-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-MalignesMelanom-Melanom-Sicherheitsabstand-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-melanom-ulzeration\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-MalignesMelanom-Melanom-Ulzeration-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-melanom-exzision\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-MalignesMelanom-Melanom-Exzision-Procedure.html|g' *.html

# --- Prostata ---
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-prostata-operation\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Prostata-Prostata-Operation-Procedure.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-prostate-psa\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Prostata-Prostata-PSA-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-prostate-gleason-grade-group\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Prostata-Prostata-Gleason-Score-Grade-Group-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-prostate-gleason-patterns\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Prostata-Prostata-Gleason-Patterns-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Prostata-Prostata-Anzahl-Stanzen-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Prostata-Prostata-Anzahl-Positive-Stanzen-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Prostata-Prostata-Karzinom-Befall-Stanze-Observation.html|g' *.html
sed -i '' 's|artifacts/package/StructureDefinition-mii-pr-onko-prostate-clavien-dindo\.json|MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-Prostata-Prostata-Clavien-Dindo-Observation.html|g' *.html

# =============================================================================
# Step 16: Fix broken .page.md links and old guide URLs
# =============================================================================
echo "16. Fixing broken .page.md links and old guide URLs..."

# Fix old guide URL references
sed -i '' 's|mii-ig-modul-onkologie-2024-de|mii-ig-modul-onkologie-v2026-de|g' *.html
sed -i '' 's|mii-ig-modul-prozedur-2024-de|mii-ig-modul-prozedur-v2026-de|g' *.html

# Fix broken .page.md links (convert to proper HTML page references)
sed -i '' 's|href="Melanom-Bundle-Example\.page\.md"|href="MIIIGModulOnkologie-TechnischeImplementierung-FHIR-Profile-Organspezifische-Module-MalignesMelanom-Melanom-Bundle-Example.html"|g' *.html

# =============================================================================
# Step 17: Fallback - Fix any remaining artifacts/package/ paths
# =============================================================================
echo "17. Fixing remaining artifacts/package/ paths..."

# Generic fallback: any remaining mii-pr-onko profiles -> Simplifier resolve
sed -i '' 's|artifacts/package/StructureDefinition-\(mii-pr-onko-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Done
# =============================================================================
echo ""
echo "Done!"
echo ""
echo "Verify remaining resolve links:"
echo "  grep -c 'resolve?' *.html | grep -v ':0\$' | sort -t: -k2 -rn | head -10"
echo ""
echo "The remaining links should be intentional Simplifier canonical resolves."
