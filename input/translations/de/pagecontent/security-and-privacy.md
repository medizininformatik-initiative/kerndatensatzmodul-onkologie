<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung von input/pagecontent/security-and-privacy.md.
     Aufgebaut in den abgestimmten DREI Stufen: (1) das übergreifende
     übergreifende Datenschutzkonzept, (2) DIMP im Datenportal, (3) die
     modul-spezifischen Aspekte. Stufen 1 und 2 sind statischer übergreifender
     Inhalt — behalten; Stufe 3 füllt Ihr Modul aus. Beide Sprachfassungen
     müssen dasselbe aussagen. -->


Dieser Abschnitt richtet sich an Sicherheits- und Datenschutz-Fachleute.
Allgemeine Anforderungen stehen in der FHIR-Kernspezifikation —
[Security & Privacy Module](https://build.fhir.org/secpriv-module.html) und die
[Security-Checkliste](https://build.fhir.org/security.html). Diese Seite
wiederholt sie nicht; sie verlinkt den übergreifenden Datenschutzrahmen und nennt,
was **für dieses Modul spezifisch** ist.

#### 1. Das übergreifende Datenschutzkonzept

Das
[übergreifende Datenschutzkonzept der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/de/datenschutzkonzept)
regelt, wie Patientendaten über das Netz der Datenintegrationszentren hinweg
für die Forschung verarbeitet werden
dürfen: die Rechtsgrundlage (der Broad Consent der MII), die Rollen der
Datenintegrationszentren und der Use-&-Access-Committees sowie die
standortübergreifenden Anwendungsszenarien (Machbarkeitsanfragen, verteilte
Analysen, Daten- und Bioproben-Bereitstellung). Alles, was dieses Modul
spezifiziert, bewegt sich innerhalb dieses Rahmens — dieser Leitfaden fügt
keinen eigenen Verarbeitungszweck hinzu.

#### 2. De-Identifikation, Minimierung und Pseudonymisierung (DIMP)

Wie Daten, die ein Datenintegrationszentrum verlassen, praktisch
de-identifiziert werden, spezifiziert
[DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html)
in der Dokumentation des Datenportals: direkte Identifikatoren werden
entfernt, vom genehmigten Projekt nicht benötigte Datenelemente entfallen, und
identifizierende Werte werden durch projektspezifische Pseudonyme ersetzt
(FHIR-Pseudonymizer-Konfiguration). Die Profile dieses Moduls beschreiben die
Daten *vor* Anwendung von DIMP; welche Elemente eine konkrete
Datenbereitstellung erreicht, entscheidet je Projekt die DIMP-Konfiguration,
nicht dieser Leitfaden.

#### 3. Modul-spezifische Aspekte

Dies ist der eigene Beitrag des Moduls: die Sicherheits- und
Datenschutz-Eigenschaften, die aus der *Art der Daten dieses Moduls* folgen.
**Der Inhalt dieses Abschnitts ist optional** — nicht jedes Modul hat eigene
Aspekte. Hat Ihres keine, besteht der gesamte Abschnitt aus dem folgenden
Standardtext (löschen Sie die Beispiel- und TODO-Boxen unten und übernehmen
Sie ihn wörtlich):

> Über den oben verlinkten übergreifenden Rahmen hinaus — das übergreifende
> Datenschutzkonzept, den ihm zugrunde liegenden Broad Consent und DIMP —
> führt dieses Modul keine Datenkategorie, die eigene Sicherheits- oder
> Datenschutzaspekte aufwirft, und stellt keine modulspezifischen Sicherheits-
> oder Datenschutzanforderungen an Implementierende.

Dieses Modul führt Datenkategorien, die über den übergreifenden Rahmen hinaus
eigene Betrachtung verlangen:

- **Keimbahnbefunde mit Drittbetroffenheit.** Prädispositionssyndrome
  ([ORPHA](ValueSet-mii-vs-onko-praedispositionssyndrome-orpha.html)) und
  Prädispositionsgene ([HGNC](ValueSet-mii-vs-onko-praedispositionsgene-hgnc.html))
  sind Aussagen über Keimbahnvarianten. Sie betreffen Blutsverwandte, die in die
  Datennutzung nie eingewilligt haben. Eine Pseudonymisierung auf Profilebene
  schützt diese Dritten nicht.
- **Genetische Varianten sind für sich identifizierend.** Ein hinreichend
  spezifisches Variantenprofil
  ([Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.html))
  bleibt auch nach Pseudonymisierung rückführbar. Das Risiko liegt im Datum
  selbst, nicht in der Verknüpfung.
- **Re-Identifizierung über seltene Entitäten.** Die Kombination aus seltener
  Tumorentität (ICD-O-3-Morphologie), Alter und Region kann in kleinen Kohorten
  auf eine Person zulaufen, ohne dass ein Identifikator beteiligt ist.
- **Sterbedaten** (oBDS-Kapitel 20) und Angaben zur Studienteilnahme
  (Kapitel 24) verbinden das Modul mit weiteren Kontexten.

Daraus folgen Anforderungen an Implementierende:

- Systeme **SOLLTEN** Keimbahn- und Prädispositionsbefunde einer eigenen
  Zugriffsentscheidung unterwerfen, statt sie mit dem übrigen onkologischen
  Datensatz gemeinsam freizugeben.
- Auswertungen über seltene Entitäten **SOLLTEN** vor der Herausgabe auf
  Zellgrößen geprüft werden; die Profile dieses Moduls leisten das nicht.
- Die genannten Risiken sind **nicht** auf Profilebene lösbar. Sie sind im
  Systemdesign, im Betrieb und über Nutzungsordnungen zu behandeln — dieses
  Modul beschreibt die Struktur der Daten, nicht die Bedingungen ihrer Nutzung.
