Profile: MII_PR_Onko_Turmokonferenz
Parent: CarePlan
Id: mii-pr-onko-turmokonferenz
Title: "MII PR Onkologie Turmokonferenz"
Description: "Diese Profil beschreibt die Turmokonferenz und die Therapieempfehlungen"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* identifier MS
* status ^fixedCode = $request-status#active
* intent ^fixedCode = $request-intent#plan

* subject MS
* subject only Reference(Patient)

* category 1..1 MS
* category.coding from $mii-vs-onko-therapieplanung-typ
* category.coding ^fixedCoding.system = $mii-cs-onko-therapieplanung-typ

// Therapieplanung Datum
* created 1..1 MS

// die Referenzieren zu Tumorerkrankung
* addresses MS

// Ist Melder/Ersteller gewünscht?
* contributor MS

* activity MS
* activity.detail MS
* activity.detail.code 1..1 MS
* activity.detail.code.coding from $mii-vs-onko-therapieempfehlung-typ
* activity.detail.code.coding ^fixedCoding.system = $mii-cs-onko-therapieempfehlung-typ
* activity.detail.status MS
* activity.detail.statusReason.coding from $mii-vs-onko-therapieabweichung
* activity.detail.statusReason.coding ^fixedCoding.system = $mii-cs-onko-therapieabweichung