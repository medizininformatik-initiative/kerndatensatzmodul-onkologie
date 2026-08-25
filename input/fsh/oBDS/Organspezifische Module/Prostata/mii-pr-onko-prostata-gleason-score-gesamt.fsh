Profile: MII_PR_Onko_Prostata_Gleason_Score_Gesamt
Parent: Observation
Id: mii-pr-onko-prostate-gleason-score-gesamt
Title: "MII PR Onkologie Prostata Gleason Score Gesamt"
Description: "Dieses Profil beschreibt den Gleason-Gesamtscore als Summe aus primärem und sekundärem Pattern. Es wird verwendet, wenn im Befund nur das Score-Ergebnis dokumentiert ist und keine Aufschlüsselung in Primär-/Sekundär-Pattern und keine ISUP Grade Group vorliegt. Für die detaillierte Dokumentation mit Grade Group ist MII_PR_Onko_Prostata_Gleason_Grade_Group zu verwenden, für die einzelnen Patterns MII_PR_Onko_Prostata_Gleason_Pattern."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* specimen 0..1 MS

* code MS
* code 1..1
* code ^definition = "Gleason Score. Der Gleason Score ist ein histopathologisches Klassifikationssystem zur Beurteilung der Morphologie von Adenokarzinomen der Prostata und wird aus der Summe von primärem und sekundärem Pattern berechnet. Der Wertebereich reicht von 2 bis 10."
* code ^short = "Gleason Score (Gesamt)"
* code.coding = $SCT#372278000 "Gleason score (observable entity)"
// alternativ * code.coding[+] = $LNC#35266-6 "Gleason score in Specimen Qualitative"

// P3.1 Gleason Score Gesamtwert
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from MII_VS_Onko_Prostata_Gleason_Score_Gesamt (extensible)
* valueCodeableConcept.coding.code 1.. MS
* insert Label(valueCodeableConcept.coding, Gleason-Score, Gleason-Gesamtscore einer Prostata-Biopsie oder Operation ohne Aufschlüsselung in Primär- und Sekundär-Pattern)
* insert Translation(valueCodeableConcept.coding ^short, de-DE, Gleason-Score)
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, Gleason-Gesamtscore einer Prostata-Biopsie oder Operation ohne Aufschlüsselung in Primär- und Sekundär-Pattern)

// P3 Datum der Stanzen
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Probenentnahme, Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats )
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Probenentnahme)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats)
