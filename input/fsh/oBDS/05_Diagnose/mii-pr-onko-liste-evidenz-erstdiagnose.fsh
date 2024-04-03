Profile: MII_PR_Onko_Liste_Evidenz_Erstdiagnose
Parent: List
Id: mii-pr-onko-liste-evidenz-erstdiagnose
Title: "MII PR Onkologie Diagnose"
Description: "Dieses Profil beschreibt eine Liste, die alle Observationen enthält, die für eine Erstdiagnostik relevant waren.  (synchrone Observationen im Sinne der Krebsregister)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* mode MS 
* mode = #snapshot
* status MS
* status = #current
* entry 1.. MS 
* entry.flag MS
* entry.item MS
* entry.item only Reference(Observation)
