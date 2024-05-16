Invariant: frmed-med-4
Description: "if fr-medication has no code it SHALL have a text"
Severity: #error
Expression: "coding.code.exist() or text.exist()"