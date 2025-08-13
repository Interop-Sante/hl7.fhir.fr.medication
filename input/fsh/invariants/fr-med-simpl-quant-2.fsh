Invariant: fr-med-smpl-quant-2
Description: "system SHALL not be used if code is not used"
Severity: #error
Expression: "code.empty() and system.empty()"