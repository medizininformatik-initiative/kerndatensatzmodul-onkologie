Dieses Profil beschreibt die T-Kategorie der TNM-Klassifikation. Die T-Kategorie kodiert für die Tumorgröße und wird entitätsspezifisch kodiert.

> **UICC-Präfixe y/r/a (modifierExtension):** Die Präfixe y (während/nach multimodaler
> Therapie), r (Rezidiv) und a (Autopsie) werden auf Kategorie-Ebene als
> **modifierExtension** abgebildet (`mii-ex-onko-tnm-y-praefix`, `…-r-praefix`,
> `…-a-praefix`), da sie die Interpretation des Kategorie-Wertes verändern —
> ypT2 ist prognostisch nicht mit pT2 vergleichbar. Verarbeitende Systeme müssen
> diese Extensions kennen. Das c/p/u-Präfix bleibt eine normale Extension auf
> `code`, da diese Information redundant im Observable-Code und im SNOMED-CT-Wert
> enthalten ist. Die Symbol-Observations (y-/r-/a-Symbol) auf Ebene der
> TNM-Klassifikation bleiben für das oBDS-Mapping (8.3–8.5) erhalten; gemischte
> Präfix-Situationen (z. B. ypT2 cN0) werden über die Kategorie-Präfixe abgebildet.

---

**Beispiele**

[mii-exa-onko-tnm-t-kategorie-Tis](Observation-mii-exa-onko-tnm-t-kategorie-Tis.html)

[mii-exa-onko-tnm-t-kategorie-uT2a2](Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.html)
