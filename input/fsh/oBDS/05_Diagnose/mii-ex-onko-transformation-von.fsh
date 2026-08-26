// Kausale Achse "ist Transformation von" — orthogonal zu occurredFollowing
// (rein zeitlich "trat auf nach"). Fälle: MDS→AML (hämato), ZNS /0→/3,
// CUP→identifizierter Primärtumor (Best-Of-Regel Manual Kap. 6.2).
// Ziel ist bewusst NUR die registrierte Onko-Diagnose: Eine Transformation
// setzt einen bekannten Ursprung voraus (beads 14w.9).
Extension: MII_EX_Onko_Transformation_Von
Id: mii-ex-onko-transformation-von
Title: "MII EX Onkologie Transformation von"
Description: "Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist (z. B. MDS → AML, ZNS-Tumor /0 → /3, CUP → identifizierter Primärtumor). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen)."
* insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von"
* ^context.type = #element
* ^context.expression = "Condition"
* value[x] only Reference(MII_PR_Onko_Diagnose_Primaertumor)
* valueReference ^short = "Transformation aus registriertem Primärtumor"
* insert Translation(valueReference ^short, de-DE, Transformation aus registriertem Primärtumor)
