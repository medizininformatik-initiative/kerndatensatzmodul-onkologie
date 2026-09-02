// Kuratierte KDL-Dokumentklassen des onkologischen Behandlungspfads (beads 14w.25).
// Grundlage: Cluster-Analyse kdl-onko-dokumentklassen.md (KDL 2025, 557 Konzepte),
// Cluster entlang der oBDS-Kapitel. Begleitartefakt für DocumentReference.type —
// bewusst Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument (type.coding:KDL),
// KEINE eigenen Codes. Deprecated-Codes sind ausgefiltert (insb. AD060106
// Tumorkonferenzprotokoll alt — gültig ist SD150103); alle 45 Codes einzeln
// gegen den MII-TermServ verifiziert (Displays = KDL 2025).
// Bekannte KDL-Lücken (kein onkologischer Bildbefund, keine Humangenetik-/
// Obduktionsklasse): siehe IG-Seite KDL-Dokumentklassen — ggf. DVMD-Change-Request.
ValueSet: MII_VS_Onko_KDL_Dokumentklassen
Id: mii-vs-onko-kdl-dokumentklassen
Title: "MII VS Onkologie KDL Dokumentklassen"
Description: "Kuratierte Auswahl der KDL-Dokumentklassen (KDL 2025) entlang des onkologischen Behandlungspfads (oBDS-Kapitel: Diagnose/Pathologie, Staging-Bildgebung, Tumorkonferenz, Operation, Strahlentherapie, Systemische Therapie, Verlauf/Labor, Tod, Studien, übergreifende Dokumente) als Begleitartefakt für DocumentReference.type. Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument; deprecated-Klassen sind ausgeschlossen."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

// Cluster 1 — Diagnose & Erstmeldung (oBDS 5, 6)
* $KDL#PT080102 "Histologiebefund"
* $KDL#PT260102 "Zytologiebefund"
* $KDL#PT130102 "Molekularpathologiebefund"
* $KDL#SD150102 "Meldebogen Krebsregister"
* $KDL#SD150104 "Tumorlokalisationsbogen"
// Cluster 2 — Staging & Bildgebung (oBDS 8, 11)
* $KDL#DG020103 "CT-Befund"
* $KDL#DG020105 "Endoskopiebefund"
* $KDL#DG020107 "MRT-Befund"
* $KDL#DG020109 "PET-Befund"
* $KDL#DG020110 "Röntgenbefund"
* $KDL#DG020111 "Sonographiebefund"
* $KDL#DG020112 "SPECT-Befund"
* $KDL#DG020113 "Szintigraphiebefund"
* $KDL#DG020114 "Mammographiebefund"
* $KDL#DG020199 "Sonstige Dokumentation bildgebende Diagnostik"
// Cluster 3 — Tumorkonferenz (oBDS 18/19); NICHT AD060106 (deprecated)
* $KDL#SD150103 "Tumorkonferenzprotokoll"
* $KDL#AD060103 "Konsilbericht intern"
* $KDL#AD060104 "Konsilbericht extern"
* $KDL#AD060110 "Konsilbericht"
// Cluster 4 — Operation (oBDS 13)
* $KDL#OP150103 "OP-Bericht"
* $KDL#OP150104 "OP-Bilddokumentation"
* $KDL#OP150106 "OP-Protokoll"
* $KDL#AM010303 "Operationsaufklärungsbogen"
// Cluster 5 — Strahlentherapie (oBDS 14)
* $KDL#TH020101 "Bestrahlungsplan"
* $KDL#TH020102 "Bestrahlungsprotokoll"
* $KDL#TH020103 "Bestrahlungsverordnung"
* $KDL#TH020104 "Radiojodtherapieprotokoll"
* $KDL#TH020105 "Therapieprotokoll mit Radionukliden"
// Cluster 6 — Systemische Therapie (oBDS 16)
* $KDL#TH130102 "Arzneiadministration"
* $KDL#TH130103 "Chemotherapieprotokoll"
* $KDL#TH130104 "Hormontherapieprotokoll"
* $KDL#TH130107 "Medikationsplan"
* $KDL#AM010304 "Aufklärungsbogen Therapie"
// Cluster 7 — Verlauf & Nachsorge (oBDS 17)
* $KDL#SD150101 "Follow up-Bogen"
* $KDL#LB120102 "Laborbefund extern"
* $KDL#LB120103 "Laborbefund intern"
* $KDL#LB120106 "Hämatologisches Speziallabor"
* $KDL#LB120107 "Laborbefund"
// Cluster 8 — Tod (oBDS 20)
* $KDL#AD020103 "Todesbescheinigung"
// Cluster 9 — Studien / Forschungsvorhaben
* $KDL#SF190101 "CRF-Bogen"
* $KDL#SF190102 "Einwilligung Studie"
* $KDL#SF190106 "Studienbericht"
// Cluster 10 — Übergreifend
* $KDL#AD010103 "Entlassungsbericht intern"
* $KDL#AD010104 "Entlassungsbericht extern"
* $KDL#SD150199 "Sonstiger onkologischer Dokumentationsbogen"
