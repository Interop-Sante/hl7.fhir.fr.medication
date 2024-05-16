Invariant: frmed-med-1
Description: "If fr-medication is a simple medication, ingredient SHALL NOT be a Reference"
Severity: #error
Expression: "code.coding.system.exists() implies (ingredient.item as Reference).empty()"