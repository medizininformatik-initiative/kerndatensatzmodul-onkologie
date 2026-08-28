// Kausale Achse "ist Transformation von" — orthogonal zu occurredFollowing
// (rein zeitlich "trat auf nach"). Anwendungsfälle sind Transformationen, bei
// denen das KREBSREGISTER-REGELWERK eine NEUE Tumor-Entität führt (MDS→AML,
// ZNS /0→/3). NICHT der Normalfall bei CUP-Auflösung: Dort wird nach der
// Best-Of-Regel (Manual Kap. 6.2) DIESELBE Entität geändert (Tumor-ID und
// Diagnosedatum bleiben) — registerkonform ist die Aktualisierung derselben
// Condition (FHIR-Versionierung), nicht eine zweite Ressource.
// Bewusst KEINE modifierExtension: Das Fehlen der Extension macht keine
// Aussage der Ressource falsch — die Diagnose (Code, Morphologie, Datum)
// bleibt wahr und sicher verarbeitbar, es fehlt lediglich der Herkunfts-
// Kontext. (Wo die WHO die Herkunft zur Entität macht, trägt sie ohnehin
// der Code selbst, z. B. 9895/3 AML-MRC — das ist aber nicht garantiert,
// vgl. sekundäres Glioblastom als 9440/3.) Gleiche Kategorie wie
// condition-occurredFollowing.
// Ziel ist bewusst NUR die registrierte Onko-Diagnose (beads 14w.9).
Extension: MII_EX_Onko_Transformation_Von
Id: mii-ex-onko-transformation-von
Title: "MII EX Onkologie Transformation von"
Description: "Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist — für Fälle, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen) und von der CUP-Auflösung nach der Best-Of-Regel, bei der dieselbe Entität aktualisiert wird (keine zweite Ressource)."
* insert PR_CS_VS_Version
* insert OnkoCRMIExtension
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von"
* ^context.type = #element
* ^context.expression = "Condition"
* value[x] only Reference(MII_PR_Onko_Diagnose_Primaertumor)
* valueReference ^short = "Transformation aus registriertem Primärtumor"
* insert Translation(valueReference ^short, de-DE, Transformation aus registriertem Primärtumor)
