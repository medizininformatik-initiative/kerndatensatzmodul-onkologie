#!/usr/bin/env python3
"""One-shot migration of Simplifier .page.md narrative into IG-Publisher pagecontent/intro-notes.

Reads implementation-guides/ImplementationGuide-2026.x-DE/MIIIGModulOnkologie/**/*.md
Writes input/pagecontent/*.md, input/intro-notes/*-intro.md
Emits a routing + TODO report on stdout.
"""
import re, glob, os, json, sys

ROOT = "/tmp/onko-mig-thomas"
SRC = os.path.join(ROOT, "implementation-guides/ImplementationGuide-2026.x-DE/MIIIGModulOnkologie")
RES = os.path.join(ROOT, "fsh-generated/resources")
PC = os.path.join(ROOT, "input/pagecontent")
INTRO = os.path.join(ROOT, "input/intro-notes")
os.makedirs(PC, exist_ok=True)
os.makedirs(INTRO, exist_ok=True)

todos = []          # (dest, message)
report = []         # (src, dest, kind)

# wipe previously generated outputs (idempotent reruns)
for _d in (PC, INTRO):
    for _f in glob.glob(os.path.join(_d, "*.md")):
        os.remove(_f)

# ---------------------------------------------------------------- resource maps
id2type = {}        # example/resource id -> ResourceType
canon2sd = {}       # canonical url -> StructureDefinition id
canon2cm = {}       # canonical url -> ConceptMap id
sd2title = {}       # sd id -> title/name
for f in glob.glob(os.path.join(RES, "*.json")):
    base = os.path.basename(f)[:-5]
    if "-" not in base:
        continue
    rtype, rid = base.split("-", 1)
    id2type[rid] = rtype
    try:
        d = json.load(open(f, encoding="utf-8"))
    except Exception:
        continue
    url = d.get("url", "")
    if rtype == "StructureDefinition":
        canon2sd[url] = rid
        sd2title[rid] = d.get("title") or d.get("name") or rid
    elif rtype == "ConceptMap":
        canon2cm[url] = rid

def sd_from_canonical(url):
    url = url.strip()
    if url in canon2sd:
        return canon2sd[url]
    # fall back: last path segment
    seg = url.rstrip("/").split("/")[-1]
    return seg if seg in sd2title else None

# ---------------------------------------------------------------- frontmatter / topic map
def split_fm(txt):
    m = re.match(r"---\n(.*?)\n---\s*", txt, re.S)
    if not m:
        return {}, txt
    fm = {}
    for line in m.group(1).splitlines():
        mm = re.match(r"^(\w+):\s*(.*)$", line)
        if mm:
            fm[mm.group(1)] = mm.group(2).strip()
    return fm, txt[m.end():]

topic2dest = {}     # topic -> (relative html target)  built after routing decided
topic2subject = {}
for f in glob.glob(os.path.join(SRC, "**/*.md"), recursive=True):
    fm, _ = split_fm(open(f, encoding="utf-8").read())
    if fm.get("topic"):
        topic2subject[fm["topic"]] = fm.get("subject", "").strip()

# manual overrides for topics whose subject is empty / unresolved
TOPIC_OVERRIDE = {
    "KRKModule": "organspezifische-krk.html",
    "MammaModule": "organspezifische-mamma.html",
    "MalignesMelanomModule": "organspezifische-melanom.html",
    "MelanomModule": "organspezifische-melanom.html",
    "ProstataModule": "organspezifische-prostata.html",
    "KRKBundle": "example-krk-bundle.html",
    "MammaBundle": "example-mamma-bundle.html",
    "MelanomBundle": "example-melanom-bundle.html",
    "KRKASAKlassifikation": "StructureDefinition-mii-pr-onko-asa-klassifikation.html",
    "AllgemeinerObservation": "StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.html",
    "MammaOperation": "StructureDefinition-mii-pr-onko-mamma-operation.html",
    "KRKMRTMesorektale": "StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.html",
    "TumorkonferenzDetailedRecommendationsCarePlan": "tumorkonferenz-detailed-recommendations.html",
    "ProstataBundle": "Bundle-mii-exa-onko-prostata-example-bundle-1.html",
}

# profile pages whose source `subject:` canonical is stale/renamed -> correct SD id
SUBJECT_OVERRIDE = {
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-MRT-Mesorektale-Faszie-Observation.page.md": "mii-pr-onko-krk-mrt-mesorektale-faszie",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md": "mii-pr-onko-mamma-operation",
}

# pages describing several profiles at once -> replicate intro onto each SD
MULTI_INTRO = {
    "TechnischeImplementierung/FHIR-Profile/Histologie/Lymphknotenuntersuchung-Observation.page.md": [
        "mii-pr-onko-anzahl-untersuchte-lymphknoten",
        "mii-pr-onko-anzahl-befallene-lymphknoten",
        "mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten",
        "mii-pr-onko-anzahl-befallene-sentinel-lymphknoten",
    ],
}

def resolve_topic(topic):
    """Return (href, default_text) for a pagelink topic."""
    if topic in TOPIC_OVERRIDE:
        href = TOPIC_OVERRIDE[topic]
        if href.startswith("StructureDefinition-"):
            sid = href[len("StructureDefinition-"):-5]
            return href, sd2title.get(sid, topic)
        return href, humanize(topic)
    subj = topic2subject.get(topic, "")
    if subj:
        sid = sd_from_canonical(subj)
        if sid:
            return f"StructureDefinition-{sid}.html", sd2title.get(sid, topic)
    return None, humanize(topic)

def humanize(s):
    return re.sub(r"(?<=[a-z])(?=[A-Z])", " ", s)

# ---------------------------------------------------------------- directive stripping
def strip_directives(text, dest):
    t = text
    # remove <style> blocks
    t = re.sub(r"<style>.*?</style>\s*", "", t, flags=re.S)
    # remove <tabs>...</tabs> (auto-generated diff/snapshot/xml/json tabs)
    t = re.sub(r"<tabs>.*?</tabs>\s*", "", t, flags=re.S)
    # remove FQL fenced blocks  @``` ... ```
    t = re.sub(r"@```.*?```\s*", "", t, flags=re.S)
    # page-title headings / bare tag
    t = re.sub(r"^\s*#{1,6}\s*\{\{page-title\}\}\s*$", "", t, flags=re.M)
    t = t.replace("{{page-title}}", "")
    # index directives
    t = re.sub(r"^\s*\{\{index:(root|current)\}\}\s*$", "", t, flags=re.M)
    t = re.sub(r"\{\{index:(root|current)\}\}", "", t)
    # tree / xml / link -> removed (auto-generated)
    t = re.sub(r"\{\{tree[^}]*\}\}", "", t)
    t = re.sub(r"\{\{xml[^}]*\}\}", "", t)
    t = re.sub(r"\{\{link[^}]*\}\}", "", t)

    # render: image or capabilitystatement
    def repl_render(m):
        arg = m.group(1).strip()
        if arg.startswith("http"):
            if "CapabilityStatement" in arg:
                return "[CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.html)"
            todos.append((dest, f"unresolved render url: {arg}"))
            return ""
        name = arg if "." in arg else arg + ".png"
        return f"![{arg}]({name})"
    t = re.sub(r"\{\{render:([^}]+)\}\}", repl_render, t)

    # json example embeds
    def repl_json(m):
        rid = m.group(1).strip()
        if rid in id2type:
            return f"[Beispiel: {rid}]({id2type[rid]}-{rid}.html)"
        todos.append((dest, f"example id not found in package: {rid}"))
        return f"`{rid}` <!-- TODO:REVIEW Beispiel nicht im Package: {rid} -->"
    t = re.sub(r"\{\{json:([^}]+)\}\}", repl_json, t)
    # bare {{json}} / {{json:}} (profile page auto view) -> remove
    t = re.sub(r"\{\{json:?\s*\}\}", "", t)

    # pagelink
    def repl_pagelink(m):
        inner = m.group(1)
        parts = inner.split(",")
        topic = parts[0].strip()
        custom = None
        for p in parts[1:]:
            pm = re.match(r"\s*text:\s*(.+)", p)
            if pm:
                custom = pm.group(1).strip()
        href, deftext = resolve_topic(topic)
        text = custom or deftext
        if href:
            return f"[{text}]({href})"
        todos.append((dest, f"unresolved pagelink: {topic}"))
        return f"**{text}** <!-- TODO:REVIEW pagelink nicht aufgelöst: {topic} -->"
    t = re.sub(r"\{\{pagelink:([^}]+)\}\}", repl_pagelink, t)

    # <img src="...raw.githubusercontent.../Images/<path>" ...>
    def repl_img(m):
        whole = m.group(0)
        src = re.search(r'src="([^"]+)"', whole)
        alt = re.search(r'alt="([^"]*)"', whole)
        if not src:
            return ""
        fname = os.path.basename(src.group(1))
        altt = alt.group(1) if alt else ""
        return f"![{altt}]({fname})"
    t = re.sub(r"<img\b[^>]*>", repl_img, t)
    # markdown download-links to raw github Images/<file> -> local image (if present)
    def repl_rawlink(m):
        fname = os.path.basename(m.group(1))
        if os.path.exists(os.path.join(ROOT, "input/images", fname)):
            return "(" + fname + ")"
        todos.append((dest, f"remote image link, file not in package: {fname}"))
        return "(" + m.group(1) + ") <!-- TODO:REVIEW Bild fehlt lokal: " + fname + " -->"
    t = re.sub(r"\((https://raw\.githubusercontent\.com/[^)]*/Images/[^)]+)\)", repl_rawlink, t)

    # stray </br> and iframes
    t = re.sub(r"</br>", "", t)
    t = re.sub(r"<iframe\b.*?</iframe>\s*", "\n_Preview verfügbar über den SDC Form Renderer._\n", t, flags=re.S)
    t = re.sub(r"<iframe\b[^>]*/?>\s*", "\n_Preview verfügbar über den SDC Form Renderer._\n", t)

    return tidy(t)

def tidy(t):
    # drop a leading horizontal rule left behind by removed "## {{page-title}}\n---"
    t = re.sub(r"^\s*---\s*\n", "", t)
    lines = t.split("\n")
    n = len(lines)
    keep = [True] * n
    for i, l in enumerate(lines):
        if re.match(r"#{1,6}\s", l):          # heading with empty body -> drop
            j = i + 1
            while j < n and not lines[j].strip():
                j += 1
            if j >= n or lines[j].strip() == "---":
                keep[i] = False
    t = "\n".join(l for i, l in enumerate(lines) if keep[i])
    t = re.sub(r"(?:\n\s*---\s*){2,}", "\n\n---\n", t)   # collapse rule runs
    t = re.sub(r"\n{3,}", "\n\n", t)
    t = t.strip()
    t = re.sub(r"^---\s*", "", t).strip()
    t = re.sub(r"(?:\n\s*---)+\s*$", "", t).strip()
    return t + "\n"

def write(dest_path, content):
    with open(dest_path, "w", encoding="utf-8") as fh:
        fh.write(content)

def rel(f):
    return os.path.relpath(f, SRC)

# ---------------------------------------------------------------- routing table (explicit structural pages)
# maps source relpath -> pagecontent filename
PAGECONTENT = {
    "Index.page.md": "index.md",
    "BeschreibungModulOnko.page.md": "beschreibung-modul.md",
    "KontextimGesamtprojektBezgezuanderenModulen.page.md": "kontext.md",
    "Referenzen.page.md": "referenzen.md",
    "Abweichungen-zum-oBDS.page.md": "abweichungen-obds.md",
    "BezugZuNationalenStandards.page.md": "bezug-nationale-standards.md",
    "BezugZuInternationalenStandards.page.md": "bezug-internationale-standards.md",
    "Release-Notes.page.md": "release-notes.md",
    "AnwendungsflleInformationsmodell/Index.page.md": "anwendungsfaelle.md",
    "AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md": "szenarien.md",
    "AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md": "datensaetze.md",
    "AnwendungsflleInformationsmodell/UML.page.md": "uml.md",
    "TechnischeImplementierung/Index.page.md": "technische-implementierung.md",
    "TechnischeImplementierung/Profile-Inhalt-und-Vererbung.page.md": "profile-inhalt-vererbung.md",
    "TechnischeImplementierung/Profile-Beziehungen-und-Referenzen.page.md": "profile-beziehungen.md",
    "TechnischeImplementierung/Verwendung-von-Extensions.page.md": "verwendung-extensions.md",
    "TechnischeImplementierung/CapabilityStatement.page.md": "capability-statement.md",
    "TechnischeImplementierung/Terminologien.page.md": "terminologien.md",
    "TechnischeImplementierung/QA-Validierung.page.md": "qa-validierung.md",
    "TechnischeImplementierung/FHIR-Profile/Index.page.md": "fhir-profile.md",
    "TechnischeImplementierung/FHIR-Profile/FHIR-Profil--Ressourcentyp.page.md": "fhir-profil-ressourcentyp.md",
    "TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md": "extension-bestrahlung.md",
    "TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Terminologien.page.md": "terminologien-systemische-therapie.md",
    "TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md": "terminologien-weitere-klassifikationen.md",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Index.page.md": "organspezifische-module.md",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md": "organspezifische-krk.md",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Index.page.md": "organspezifische-mamma.md",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Index.page.md": "organspezifische-melanom.md",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Index.page.md": "organspezifische-prostata.md",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Bundle-Example.page.md": "example-krk-bundle.md",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Bundle-Example.page.md": "example-mamma-bundle.md",
    "TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Bundle-Example.page.md": "example-melanom-bundle.md",
    "TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Index.page.md": "obds-snomed-mapping.md",
    # profile no longer present in package -> keep narrative as standalone page
    "TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-Detailed-Recommendations-CarePlan.page.md": "tumorkonferenz-detailed-recommendations.md",
}

# index/near-empty pages to drop explicitly
DROP = {
    "TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Index.page.md",
}

# ---------------------------------------------------------------- process all files
processed = set()
mapping_pages = []   # (relpath, cm_id or None)

for f in sorted(glob.glob(os.path.join(SRC, "**/*.md"), recursive=True)):
    r = rel(f)
    raw = open(f, encoding="utf-8").read()
    fm, body = split_fm(raw)
    base = os.path.basename(f)

    # 0. explicit drops
    if r in DROP:
        report.append((r, "-", "drop-empty"))
        processed.add(r); continue

    # 0b. multi-profile shared narrative -> replicate onto each SD intro
    if r in MULTI_INTRO:
        cleaned = strip_directives(body, r)
        for sid in MULTI_INTRO[r]:
            write(os.path.join(INTRO, f"StructureDefinition-{sid}-intro.md"), cleaned)
        report.append((r, f"intro-notes x{len(MULTI_INTRO[r])} (shared)", "profile-intro"))
        processed.add(r); continue

    # 1. explicit pagecontent
    if r in PAGECONTENT:
        dest = os.path.join(PC, PAGECONTENT[r])
        write(dest, strip_directives(body, PAGECONTENT[r]))
        report.append((r, "pagecontent/" + PAGECONTENT[r], "page"))
        processed.add(r); continue

    # 2. empty index pages -> drop
    if "absichtlich leer gelassen" in body:
        report.append((r, "-", "drop-empty"))
        processed.add(r); continue

    # 3. oBDS-SNOMED-CT-Mapping subpages -> ConceptMap intro-notes
    if r.startswith("TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/"):
        # find ConceptMap url in FQL
        cm = re.search(r"ConceptMap/[\w./:-]+'", raw)
        murl = re.search(r"url\s*=\s*'([^']*ConceptMap[^']*)'", raw)
        cmid = None
        if murl:
            u = murl.group(1)
            cmid = canon2cm.get(u) or (u.rstrip("/").split("/")[-1] if u.rstrip("/").split("/")[-1] in id2type else None)
        if cmid:
            dest = os.path.join(INTRO, f"ConceptMap-{cmid}-intro.md")
            write(dest, strip_directives(body, f"ConceptMap-{cmid}-intro.md"))
            report.append((r, f"intro-notes/ConceptMap-{cmid}-intro.md", "conceptmap-intro"))
        else:
            # no conceptmap resolvable -> stash prose into obds mapping overview appendix
            dest = os.path.join(PC, "obds-snomed-mapping.md")
            extra = "\n\n## " + fm.get("topic", base) + "\n\n" + strip_directives(body, "obds-snomed-mapping.md")
            with open(dest, "a", encoding="utf-8") as fh:
                fh.write(extra)
            todos.append(("obds-snomed-mapping.md", f"mapping page {base}: ConceptMap url not resolved, prose appended"))
            report.append((r, "pagecontent/obds-snomed-mapping.md (appended)", "conceptmap-noresolve"))
        processed.add(r); continue

    # 4. profile pages with subject -> StructureDefinition intro-notes
    subj = fm.get("subject", "").strip()
    if r in SUBJECT_OVERRIDE:
        sid = SUBJECT_OVERRIDE[r]
        dest = os.path.join(INTRO, f"StructureDefinition-{sid}-intro.md")
        write(dest, strip_directives(body, f"StructureDefinition-{sid}-intro.md"))
        report.append((r, f"intro-notes/StructureDefinition-{sid}-intro.md", "profile-intro"))
        processed.add(r); continue
    if subj:
        sid = sd_from_canonical(subj)
        if sid:
            dest = os.path.join(INTRO, f"StructureDefinition-{sid}-intro.md")
            write(dest, strip_directives(body, f"StructureDefinition-{sid}-intro.md"))
            report.append((r, f"intro-notes/StructureDefinition-{sid}-intro.md", "profile-intro"))
            processed.add(r); continue
        else:
            todos.append((r, f"subject canonical not resolvable to SD: {subj}"))

    # 5. profile pages without subject but real content -> needs manual (report)
    report.append((r, "??? UNROUTED", "UNROUTED"))

# ---------------------------------------------------------------- finalize pagecontent
def _append(name, block):
    p = os.path.join(PC, name)
    if os.path.exists(p):
        with open(p, "a", encoding="utf-8") as fh:
            fh.write(block)

# empty "## Inhaltsverzeichnis" left by {{index:root}} removal
_ip = os.path.join(PC, "index.md")
_it = open(_ip, encoding="utf-8").read().replace("## Inhaltsverzeichnis\n\n", "")
open(_ip, "w", encoding="utf-8").write(_it)

# cross-links so non-menu pages are reachable (avoid orphan-page warnings)
_append("terminologien.md",
        "\n\n### Weitere Terminologie-Seiten\n\n"
        "- [Terminologien: Systemische Therapie](terminologien-systemische-therapie.html)\n"
        "- [Terminologien: Weitere Klassifikationen](terminologien-weitere-klassifikationen.html)\n")
_append("verwendung-extensions.md",
        "\n\n### Weitere Extension-Seiten\n\n"
        "- [Extensions Strahlentherapie: Bestrahlung](extension-bestrahlung.html)\n")
_append("fhir-profile.md",
        "\n\n### Weiterführende Seiten\n\n"
        "- [FHIR-Profil (Ressourcentyp)](fhir-profil-ressourcentyp.html)\n"
        "- [Organspezifische Module](organspezifische-module.html)\n")
_append("organspezifische-krk.md", "\n\n## Beispiel\n\n- [KRK-Bundle Beispiel](example-krk-bundle.html)\n")
_append("organspezifische-mamma.md", "\n\n## Beispiel\n\n- [Mamma-Bundle Beispiel](example-mamma-bundle.html)\n")
_append("organspezifische-melanom.md", "\n\n## Beispiel\n\n- [Melanom-Bundle Beispiel](example-melanom-bundle.html)\n")

# ---------------------------------------------------------------- report
print("==== ROUTING REPORT ====")
kinds = {}
for s, d, k in report:
    kinds[k] = kinds.get(k, 0) + 1
for k, n in sorted(kinds.items()):
    print(f"  {k:22} {n}")
print("\n==== UNROUTED ====")
for s, d, k in report:
    if k == "UNROUTED":
        print("  ", s)
print("\n==== TODOs (%d) ====" % len(todos))
for d, m in todos:
    print(f"  [{d}] {m}")
print("\nTOTAL source md:", len(report), " processed:", len(processed))
