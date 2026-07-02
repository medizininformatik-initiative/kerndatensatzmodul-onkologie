Die folgenden Seiten enthalten die Ergebnisse eines oBDS-SNOMED-Mappings auf SNOMED, durchgeführt mit der internationalen SNOMED-CT Version März 2024, ergänzt um die UICC-TNM- und Residualtumorkonzepte aus dem März 2025. 

1. Es wurde Fokus auf die im oBDS hinterlegten Antwortlisten gelegt. Für das Mapping von anderen nationalen und internationalen Klassifikationen und Terminologien (ICD-10, ICD-O, OPS, ATC, ...) ist das BfArM der zuständige Ansprechpartner. 
1. Neben den Antwortlisten sind die Datenfelder selbst häufig ebenfalls in SNOMED und oder LOINC kodiert. (zu finden als `code`-Element an den meisten Ressourcen)
1. Äquivalenz-Bewertung: Jeder Code ist mit einem von vier möglichen Kodierungen gekennzeichnet, der die inhaltliche Beziehung von Quell- und Zielkonzept beschreibt
    - `equivalent`: inhaltlich (nahezu) identisch und gleichwertig zu behandeln
    - `wider`: das Zielkonzept ist allgemeiner als das Quellkonzept und kann z.B. noch andere Konzepte umfassen
    - `narrower`: das Zielkonzept ist spezifischer als das Quellkonzept und umfasst z.B. nur konkrete Ausprägungen
    - `unmatched`: Es wurde kein adäquat vergleichbares Zielkonzept gefunden.
