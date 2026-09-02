#!/usr/bin/env python3
"""
TNM Observation to Text - Reference Implementation

Generates a human-readable TNM string from MII FHIR TNM Observations.
Analogous to the HL7 Germany Dosage Text Generation Script:
https://github.com/hl7germany/dgMP-DosageTextgenerierung-Skript

Usage:
    # Single grouper observation + resource directory for hasMember resolution
    python scripts/tnm-observation-to-text.py <grouper.json> --resource-dir <dir>

    # FHIR Bundle containing all resources
    python scripts/tnm-observation-to-text.py <bundle.json>

    # Output formats
    python scripts/tnm-observation-to-text.py <grouper.json> --resource-dir <dir> --format compact
    python scripts/tnm-observation-to-text.py <grouper.json> --resource-dir <dir> --format spaced
    python scripts/tnm-observation-to-text.py <grouper.json> --resource-dir <dir> --format full
"""

import json
import os
import re
import sys
import argparse
from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional

# --- Constants ---

# MII Extension URLs
BASE_URL = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition"
EXT_CP_PREFIX = f"{BASE_URL}/mii-ex-onko-tnm-cp-praefix"
EXT_Y_PREFIX = f"{BASE_URL}/mii-ex-onko-tnm-y-praefix"
EXT_R_PREFIX = f"{BASE_URL}/mii-ex-onko-tnm-r-praefix"
EXT_ITC_SUFFIX = f"{BASE_URL}/mii-ex-onko-tnm-itc-suffix"
EXT_SN_SUFFIX = f"{BASE_URL}/mii-ex-onko-tnm-sn-suffix"

# Profile URL fragments for identification
PROFILE_TNM_KLASSIFIKATION = "mii-pr-onko-tnm-klassifikation"
PROFILE_T_KATEGORIE = "mii-pr-onko-tnm-t-kategorie"
PROFILE_N_KATEGORIE = "mii-pr-onko-tnm-n-kategorie"
PROFILE_M_KATEGORIE = "mii-pr-onko-tnm-m-kategorie"
PROFILE_L_KATEGORIE = "mii-pr-onko-tnm-l-kategorie"
PROFILE_V_KATEGORIE = "mii-pr-onko-tnm-v-kategorie"
PROFILE_PN_KATEGORIE = "mii-pr-onko-tnm-pn-kategorie"
PROFILE_S_KATEGORIE = "mii-pr-onko-tnm-s-kategorie"
PROFILE_RESIDUALSTATUS = "mii-pr-onko-residualstatus"
PROFILE_Y_SYMBOL = "mii-pr-onko-tnm-y-symbol"
PROFILE_R_SYMBOL = "mii-pr-onko-tnm-r-symbol"
PROFILE_A_SYMBOL = "mii-pr-onko-tnm-a-symbol"
PROFILE_M_SYMBOL = "mii-pr-onko-tnm-m-symbol"

# SNOMED CT codes for component identification (fallback when no profile)
SNOMED_L_KATEGORIE = "395715009"  # Lymphatic invasion
SNOMED_V_KATEGORIE = "371493002"  # Venous invasion
SNOMED_PN_KATEGORIE = "371513001"  # Perineural invasion
SNOMED_S_KATEGORIE = "399424006"  # Serum tumor marker

# LOINC codes for symbol identification
LOINC_Y_SYMBOL = "101658-3"
LOINC_R_SYMBOL = "101659-1"
LOINC_A_SYMBOL = "101660-9"
LOINC_M_SYMBOL = "42030-7"
LOINC_RESIDUALSTATUS = "84892-9"

# SNOMED display name pattern for extracting TNM category values
# e.g. "Union for International Cancer Control cT3 (qualifier value)" -> "T3"
SNOMED_UICC_PATTERN = re.compile(
    r"Union for International Cancer Control\s+[cpu]?([A-Za-z]\w*)\s*\(qualifier value\)"
)

# Alternative: extract from SNOMED code display - just the category part after c/p/u prefix
SNOMED_TNM_VALUE_PATTERN = re.compile(r"[cpu]?(T\w+|N\w+|M\w+)")


# --- Data Classes ---

@dataclass
class TNMComponent:
    """Represents a T, N, or M category component."""
    category: str  # "T", "N", or "M"
    value: str  # e.g. "3", "0", "1a", "2a2", "is"
    cp_prefix: str = ""  # "c", "p", or "u"
    y_prefix: bool = False
    r_prefix: bool = False
    itc_suffix: str = ""  # "(i+)", "(i-)", "(mol+)", "(mol-)"
    sn_suffix: str = ""  # "(sn)"

    def to_string(self) -> str:
        """Build string like 'ycT3' or 'pN0(i-)(sn)'."""
        parts = []
        if self.y_prefix:
            parts.append("y")
        if self.r_prefix:
            parts.append("r")
        parts.append(self.cp_prefix)
        parts.append(self.category)
        parts.append(self.value)
        if self.itc_suffix:
            parts.append(self.itc_suffix)
        if self.sn_suffix:
            parts.append(self.sn_suffix)
        return "".join(parts)


@dataclass
class TNMResult:
    """Complete TNM classification result."""
    t: Optional[TNMComponent] = None
    n: Optional[TNMComponent] = None
    m: Optional[TNMComponent] = None
    l_category: str = ""  # "L0", "L1", "LX"
    v_category: str = ""  # "V0", "V1", "V2", "VX"
    pn_category: str = ""  # "Pn0", "Pn1", "PnX"
    s_category: str = ""  # "S0", "S1", "S2", "S3", "SX"
    r_classification: str = ""  # "R0", "R1", "R2", "RX"
    m_symbol: str = ""  # "m" or number like "(2)"
    a_symbol: bool = False
    stadium: str = ""  # UICC stage e.g. "IIIA"
    stadium_display: str = ""  # Display text e.g. "Stadium IIIA"
    tnm_version: str = ""  # e.g. "8"
    tnm_version_display: str = ""  # e.g. "8. Auflage"
    classification_type: str = ""  # "clinical" or "pathologic"

    def to_compact(self) -> str:
        """Compact format: 'cT3cN1cM0' with optional stadium in parens."""
        parts = []
        if self.t:
            parts.append(self.t.to_string())
        if self.n:
            parts.append(self.n.to_string())
        if self.m:
            parts.append(self.m.to_string())
        tnm = "".join(parts)
        if self.stadium:
            return f"{tnm} ({self.stadium})"
        return tnm

    def to_spaced(self) -> str:
        """Spaced format: 'cT3 cN1 cM0 \u2013 Stadium IIIA, UICC 8. Auflage'."""
        parts = []
        if self.t:
            parts.append(self.t.to_string())
        if self.n:
            parts.append(self.n.to_string())
        if self.m:
            parts.append(self.m.to_string())
        result = " ".join(parts)

        suffix_parts = []
        if self.stadium_display:
            suffix_parts.append(self.stadium_display)
        elif self.stadium:
            suffix_parts.append(f"Stadium {self.stadium}")
        if self.tnm_version_display:
            suffix_parts.append(f"UICC {self.tnm_version_display}")
        elif self.tnm_version:
            suffix_parts.append(f"UICC {self.tnm_version}. Auflage")

        if suffix_parts:
            result += f" \u2013 {', '.join(suffix_parts)}"
        return result

    def to_full(self) -> str:
        """Full format: 'ypT0 ypN0 cM0 L0 V0 Pn0 R0 \u2013 Stadium: ..., UICC 8. Auflage'."""
        parts = []
        if self.t:
            parts.append(self.t.to_string())
        if self.n:
            parts.append(self.n.to_string())
        if self.m:
            parts.append(self.m.to_string())

        # Additional categories
        if self.l_category:
            parts.append(self.l_category)
        if self.v_category:
            parts.append(self.v_category)
        if self.pn_category:
            parts.append(self.pn_category)
        if self.s_category:
            parts.append(self.s_category)
        if self.r_classification:
            parts.append(self.r_classification)

        result = " ".join(parts)

        suffix_parts = []
        if self.stadium_display:
            suffix_parts.append(self.stadium_display)
        elif self.stadium:
            suffix_parts.append(f"Stadium {self.stadium}")
        if self.tnm_version_display:
            suffix_parts.append(f"UICC {self.tnm_version_display}")
        elif self.tnm_version:
            suffix_parts.append(f"UICC {self.tnm_version}. Auflage")

        if suffix_parts:
            result += f" \u2013 {', '.join(suffix_parts)}"
        return result


# --- Parser ---

class TNMObservationToText:
    """Parses MII FHIR TNM Observations and generates human-readable TNM strings."""

    def __init__(self, resource_dir: Optional[str] = None):
        self._resource_cache: dict[str, dict] = {}
        self._resource_dir = resource_dir

    def parse_file(self, filepath: str) -> TNMResult:
        """Parse a TNM grouper observation from a JSON file."""
        with open(filepath, "r", encoding="utf-8") as f:
            resource = json.load(f)

        if resource.get("resourceType") == "Bundle":
            return self._parse_bundle(resource)
        return self._parse_grouper(resource)

    def parse_resource(self, resource: dict) -> TNMResult:
        """Parse a TNM grouper observation from a dict."""
        if resource.get("resourceType") == "Bundle":
            return self._parse_bundle(resource)
        return self._parse_grouper(resource)

    def _parse_bundle(self, bundle: dict) -> TNMResult:
        """Parse a Bundle, find the TNM grouper, index all entries."""
        # Index all resources by their fullUrl or resource id
        for entry in bundle.get("entry", []):
            res = entry.get("resource", {})
            full_url = entry.get("fullUrl", "")
            res_id = res.get("id", "")
            res_type = res.get("resourceType", "")

            if full_url:
                self._resource_cache[full_url] = res
            if res_id:
                self._resource_cache[f"{res_type}/{res_id}"] = res
                self._resource_cache[res_id] = res

        # Find the TNM grouper
        for entry in bundle.get("entry", []):
            res = entry.get("resource", {})
            if self._has_profile(res, PROFILE_TNM_KLASSIFIKATION):
                return self._parse_grouper(res)

        raise ValueError("No TNM Klassifikation grouper found in Bundle")

    def _parse_grouper(self, grouper: dict) -> TNMResult:
        """Parse a TNM Klassifikation grouper observation."""
        result = TNMResult()

        # Classification type from code
        code_coding = self._get_coding(grouper.get("code", {}))
        if code_coding:
            snomed_code = code_coding.get("code", "")
            if snomed_code == "399537006":
                result.classification_type = "clinical"
            elif snomed_code == "399588009":
                result.classification_type = "pathologic"

        # UICC Stadium from valueCodeableConcept
        value_cc = grouper.get("valueCodeableConcept", {})
        value_coding = self._get_coding(value_cc)
        if value_coding:
            result.stadium = value_coding.get("code", "")
            result.stadium_display = value_coding.get("display", "")
        elif value_cc.get("text"):
            result.stadium_display = value_cc["text"]

        # TNM Version from method
        method_coding = self._get_coding(grouper.get("method", {}))
        if method_coding:
            result.tnm_version = method_coding.get("code", "")
            result.tnm_version_display = method_coding.get("display", "")

        # Resolve hasMember references
        for member_ref in grouper.get("hasMember", []):
            ref_str = member_ref.get("reference", "")
            member = self._resolve_reference(ref_str)
            if not member:
                continue
            self._classify_member(member, result)

        return result

    def _classify_member(self, member: dict, result: TNMResult) -> None:
        """Classify a hasMember observation and update the result."""
        profiles = member.get("meta", {}).get("profile", [])

        # Check by profile URL
        if self._matches_profile(profiles, PROFILE_T_KATEGORIE):
            result.t = self._parse_tnm_component(member, "T")
        elif self._matches_profile(profiles, PROFILE_N_KATEGORIE):
            result.n = self._parse_tnm_component(member, "N")
        elif self._matches_profile(profiles, PROFILE_M_KATEGORIE):
            result.m = self._parse_tnm_component(member, "M")
        elif self._matches_profile(profiles, PROFILE_L_KATEGORIE):
            result.l_category = self._extract_simple_value(member)
        elif self._matches_profile(profiles, PROFILE_V_KATEGORIE):
            result.v_category = self._extract_simple_value(member)
        elif self._matches_profile(profiles, PROFILE_PN_KATEGORIE):
            result.pn_category = self._extract_simple_value(member)
        elif self._matches_profile(profiles, PROFILE_S_KATEGORIE):
            result.s_category = self._extract_simple_value(member)
        elif self._matches_profile(profiles, PROFILE_RESIDUALSTATUS):
            result.r_classification = self._extract_simple_value(member)
        elif self._matches_profile(profiles, PROFILE_Y_SYMBOL):
            pass  # y-symbol handled via extension on T/N/M code elements
        elif self._matches_profile(profiles, PROFILE_R_SYMBOL):
            pass  # r-symbol handled via extension on T/N/M code elements
        elif self._matches_profile(profiles, PROFILE_A_SYMBOL):
            result.a_symbol = True
        elif self._matches_profile(profiles, PROFILE_M_SYMBOL):
            result.m_symbol = self._extract_simple_value(member)
        else:
            # Fallback: identify by code
            self._classify_by_code(member, result)

    def _classify_by_code(self, member: dict, result: TNMResult) -> None:
        """Fallback classification using SNOMED/LOINC codes."""
        code_coding = self._get_coding(member.get("code", {}))
        if not code_coding:
            return

        code = code_coding.get("code", "")
        system = code_coding.get("system", "")

        if system == "http://snomed.info/sct":
            if code == SNOMED_L_KATEGORIE:
                result.l_category = self._extract_simple_value(member)
            elif code == SNOMED_V_KATEGORIE:
                result.v_category = self._extract_simple_value(member)
            elif code == SNOMED_PN_KATEGORIE:
                result.pn_category = self._extract_simple_value(member)
            elif code == SNOMED_S_KATEGORIE:
                result.s_category = self._extract_simple_value(member)
        elif system == "http://loinc.org":
            if code == LOINC_Y_SYMBOL:
                pass  # handled via extension
            elif code == LOINC_R_SYMBOL:
                pass  # handled via extension
            elif code == LOINC_A_SYMBOL:
                result.a_symbol = True
            elif code == LOINC_M_SYMBOL:
                result.m_symbol = self._extract_simple_value(member)
            elif code == LOINC_RESIDUALSTATUS:
                result.r_classification = self._extract_simple_value(member)

    def _parse_tnm_component(self, obs: dict, category: str) -> TNMComponent:
        """Parse a T, N, or M category observation into a TNMComponent."""
        comp = TNMComponent(category=category, value="")

        # Extract extensions from code element
        code_element = obs.get("code", {})
        for ext in code_element.get("extension", []):
            url = ext.get("url", "")
            if url == EXT_CP_PREFIX:
                comp.cp_prefix = self._get_extension_code(ext)
            elif url == EXT_Y_PREFIX:
                if self._get_extension_code(ext) == "y":
                    comp.y_prefix = True
            elif url == EXT_R_PREFIX:
                if self._get_extension_code(ext) == "r":
                    comp.r_prefix = True

        # Extract value from valueCodeableConcept
        value_cc = obs.get("valueCodeableConcept", {})
        value_coding = self._get_coding(value_cc)
        if value_coding:
            comp.value = self._extract_tnm_value(value_coding, category)

        # Extract ITC and SN suffixes from valueCodeableConcept extensions
        for ext in value_cc.get("extension", []):
            url = ext.get("url", "")
            if url == EXT_ITC_SUFFIX:
                code = self._get_extension_code(ext)
                display = self._get_extension_display(ext)
                # Use display if it has parens, otherwise wrap
                if display and display.startswith("("):
                    comp.itc_suffix = display
                elif code:
                    comp.itc_suffix = f"({code})"
            elif url == EXT_SN_SUFFIX:
                code = self._get_extension_code(ext)
                display = self._get_extension_display(ext)
                if display and display.startswith("("):
                    comp.sn_suffix = display
                elif code:
                    comp.sn_suffix = f"({code})"

        return comp

    def _extract_tnm_value(self, coding: dict, category: str) -> str:
        """Extract the TNM category value (e.g. '3' from 'cT3', '0' from 'N0').

        Handles two coding patterns:
        1. UICC system with direct codes like 'T2a2', 'N0', 'M1'
        2. SNOMED CT with display like 'Union for International Cancer Control cT3 (qualifier value)'
        """
        system = coding.get("system", "")
        code = coding.get("code", "")
        display = coding.get("display", "")

        # Pattern 1: UICC system - code IS the value (possibly with category prefix)
        if "uicc" in system.lower():
            # Strip the category letter prefix if present
            # e.g. "T2a2" -> "2a2", "N0" -> "0", "M1a" -> "1a"
            if code.upper().startswith(category.upper()):
                return code[len(category):]
            return code

        # Pattern 2: SNOMED CT - extract from display text
        if system == "http://snomed.info/sct" and display:
            match = SNOMED_UICC_PATTERN.search(display)
            if match:
                full_value = match.group(1)  # e.g. "T3", "N0", "M1"
                # Strip category letter
                if full_value.upper().startswith(category.upper()):
                    return full_value[len(category):]
                return full_value

        # Fallback: try code directly
        if code.upper().startswith(category.upper()):
            return code[len(category):]
        return code

    def _extract_simple_value(self, obs: dict) -> str:
        """Extract value code from a simple observation (L, V, Pn, S, R, m-Symbol)."""
        value_cc = obs.get("valueCodeableConcept", {})
        coding = self._get_coding(value_cc)
        if coding:
            return coding.get("code", "")
        return value_cc.get("text", "")

    def _resolve_reference(self, ref: str) -> Optional[dict]:
        """Resolve a FHIR reference to the actual resource."""
        if not ref:
            return None

        # Check cache first
        if ref in self._resource_cache:
            return self._resource_cache[ref]

        # Try to load from resource directory
        if self._resource_dir:
            # Reference format: "Observation/some-id" -> look for Observation-some-id.json
            parts = ref.split("/")
            if len(parts) == 2:
                res_type, res_id = parts
                filename = f"{res_type}-{res_id}.json"
                filepath = os.path.join(self._resource_dir, filename)
                if os.path.exists(filepath):
                    with open(filepath, "r", encoding="utf-8") as f:
                        resource = json.load(f)
                    self._resource_cache[ref] = resource
                    return resource

        return None

    # --- Helpers ---

    @staticmethod
    def _has_profile(resource: dict, profile_fragment: str) -> bool:
        """Check if a resource has a profile matching the fragment."""
        for p in resource.get("meta", {}).get("profile", []):
            if profile_fragment in p:
                return True
        return False

    @staticmethod
    def _matches_profile(profiles: list, profile_fragment: str) -> bool:
        """Check if any profile URL contains the fragment."""
        return any(profile_fragment in p for p in profiles)

    @staticmethod
    def _get_coding(codeable_concept: dict) -> Optional[dict]:
        """Get the first coding from a CodeableConcept."""
        codings = codeable_concept.get("coding", [])
        return codings[0] if codings else None

    @staticmethod
    def _get_extension_code(extension: dict) -> str:
        """Get the code from an extension's valueCodeableConcept."""
        vcc = extension.get("valueCodeableConcept", {})
        codings = vcc.get("coding", [])
        if codings:
            return codings[0].get("code", "")
        return ""

    @staticmethod
    def _get_extension_display(extension: dict) -> str:
        """Get the display from an extension's valueCodeableConcept."""
        vcc = extension.get("valueCodeableConcept", {})
        codings = vcc.get("coding", [])
        if codings:
            return codings[0].get("display", "")
        return ""


def format_result(result: TNMResult, fmt: str) -> str:
    """Format a TNMResult according to the requested format."""
    if fmt == "compact":
        return result.to_compact()
    elif fmt == "spaced":
        return result.to_spaced()
    elif fmt == "full":
        return result.to_full()
    else:
        return result.to_spaced()


def main():
    parser = argparse.ArgumentParser(
        description="Generate human-readable TNM strings from MII FHIR TNM Observations.",
        epilog="Reference implementation for MII Onkologie TNM profiles.",
    )
    parser.add_argument(
        "input",
        help="Path to a TNM Klassifikation grouper JSON or a FHIR Bundle JSON",
    )
    parser.add_argument(
        "--resource-dir",
        help="Directory containing referenced Observation JSON files (for hasMember resolution)",
    )
    parser.add_argument(
        "--format",
        choices=["compact", "spaced", "full"],
        default="spaced",
        help="Output format (default: spaced)",
    )
    parser.add_argument(
        "--all-formats",
        action="store_true",
        help="Show output in all three formats",
    )
    args = parser.parse_args()

    converter = TNMObservationToText(resource_dir=args.resource_dir)
    result = converter.parse_file(args.input)

    if args.all_formats:
        print(f"Compact:  {result.to_compact()}")
        print(f"Spaced:   {result.to_spaced()}")
        print(f"Full:     {result.to_full()}")
    else:
        print(format_result(result, args.format))


if __name__ == "__main__":
    main()
