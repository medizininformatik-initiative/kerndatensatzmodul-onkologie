#!/usr/bin/env bash
# QA-Fehler ohne die bekannten Nicht-Handlungsfaelle anzeigen.
# Nutzung: qa_filter.sh [pfad/zu/qa-eslintcompact.txt]   (Default: dev-Preview)
# Bekannte Familien (alle: SU-TermServ kann die Anfrage nicht beantworten):
#  1) 'value set null'                — url-loser $batch-validate-code (Publisher-Bug, upstream bekannt)
#  2) 'must specify either valueSet or url' — dieselbe url-lose Anfrage, Type-level-Form
#  3) 'bfarm/atc version <JJJJ>'     — historische ATC-Jahrgaenge nicht auf dem TermServ geladen
set -euo pipefail
F="${1:-}"
if [ -z "$F" ]; then
  F="$(mktemp)"
  curl -sS -m 60 -o "$F" "https://medizininformatik-initiative.github.io/kerndatensatzmodul-onkologie/branches/dev/qa-eslintcompact.txt"
fi
TOTAL=$(grep -c "Error - " "$F" || true)
# EIN Durchlauf, Muster koennen sich ueberlappen — REAL = was KEINEM Muster entspricht
REAL=$(grep "Error - " "$F" | grep -v "value set 'null'" | grep -v "must specify either valueSet or url" | grep -vcE "bfarm/atc version [0-9]{4}" || true)
echo "Errors gesamt: $TOTAL — bekannt/nicht handelbar: $((TOTAL-REAL)) — REAL zu bewerten: $REAL"
echo ""
echo "Reale Fehler, geclustert:"
grep "Error - " "$F" \
  | grep -v "value set 'null'" \
  | grep -v "must specify either valueSet or url" \
  | grep -vE "bfarm/atc version [0-9]{4}" \
  | sed -E "s/.*Error - //; s/'[^']*'/X/g; s/\"[^\"]*\"/X/g; s/[0-9]+/N/g; s/\[[^]]*\]/[..]/g" \
  | sort | uniq -c | sort -rn
