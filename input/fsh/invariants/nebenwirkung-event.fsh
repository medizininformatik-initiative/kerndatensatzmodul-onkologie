Invariant: nebenwirkung-serious-event
Description: "Wenn der Seriousbess 3, 4 oder 5 ist, muss ein Event angegeben sein"
Severity: #error
Expression: "seriousness.coding.where(code in %w['3' '4' '5']).exists() implies event.exists()"