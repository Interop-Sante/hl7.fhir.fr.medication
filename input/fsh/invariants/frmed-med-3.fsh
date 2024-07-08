Invariant: frmed-med-3
Description: "If fr-medication is a other-medication, its code SHALL NOT be SNOMED CT"
Severity: #error
Expression: "coding.system != 'http://snomed.info/sct'"