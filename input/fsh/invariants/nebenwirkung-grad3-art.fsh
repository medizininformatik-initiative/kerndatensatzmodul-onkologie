Invariant: nebenwirkung-grad3-art
Description: "Bei CTCAE-Schweregrad 3, 4 oder 5 muss die Art der Nebenwirkung (event.coding) angegeben sein. Bei Grad 1/2 darf sie fehlen (oBDS 15.2)."
Severity: #warning
Expression: "seriousness.coding.where(system = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad' and (code = '3' or code = '4' or code = '5')).exists() implies event.coding.exists()"
