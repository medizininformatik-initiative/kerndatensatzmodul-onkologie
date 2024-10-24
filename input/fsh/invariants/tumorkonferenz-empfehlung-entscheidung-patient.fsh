Invariant: tumorkonferenz-empfehlung-entscheidung-patient
Description: "Therapieabweichung aufgrund Patientenwunsch: Bei nichtangetretener oder abgebrochener Therapie ist anzugeben, ob dies dem Patientenwunsch entspricht oder ggfs. andere Gründe hat "
Severity: #error
Expression: "status = 'cancelled' or status = 'stopped' implies statusReason.exists()"