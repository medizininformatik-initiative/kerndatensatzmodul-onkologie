### Inhalt

Dieses Profil beschreibt den prozentualen Befall der am stärksten befallenen
Stanze einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der
Onkologie. Diese Angabe ist ein wichtiger histopathologischer Parameter zur
Beurteilung der Tumorausdehnung und Aggressivität bei Prostatakarzinom.

Das Profil basiert auf einer FHIR-Observation-Ressource und verwendet LOINC
zur Kodierung des beobachteten Parameters. Der Wert wird als Prozentsatz
angegeben und bezieht sich auf die am stärksten befallene Stanze der Biopsie.

### Verknüpfungen zu anderen Ressourcen

Der Karzinom-Befall der Stanze ist eine wichtige histopathologische
Beobachtung:

- verweist über `Observation.focus` auf die Primärdiagnose
  ([MII_PR_Onko_Diagnose_Primaertumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html))
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall
  verknüpft werden
- kann über `Observation.specimen` mit der entsprechenden Gewebeprobe
  verknüpft werden

### oBDS-Kontext

Gemäß oBDS P4.3 wird der prozentuale Karzinombefall der am stärksten
befallenen Stanze einer Prostata-Biopsie dokumentiert. Dies ist ein wichtiger
Parameter für die histopathologische Beurteilung der Tumorausdehnung.

### Terminologie-Binding

Das Profil verwendet einen **required** LOINC-Code für die eindeutige
Identifikation der Beobachtung:

- **LOINC**: `44654-2` "Tissue involved by tumor in Prostate tumor"

### Beispiel

- [Beispielinstanz Karzinom-Befall Stanze](Observation-mii-exa-onko-prostata-ca-befall-stanze-1.html)
