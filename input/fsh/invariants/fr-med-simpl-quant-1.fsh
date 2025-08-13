Invariant: fr-med-smpl-quant-1
Description: "system SHALL be UCUM or EDQM if code is used"
Severity: #error
Expression: "code.exists() implies (system.exists() and (system = `http://standardterms.edqm.eu` or system = `http://unitsofmeasure.org`))"
