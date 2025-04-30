Extension: FrStrengthCodeableConcept
Id: fr-strength-codeableconcept
Title: "Strength CodeableConcept"
Description: "Additional non unit value for strength"
* ^context.type = #element
* ^context.expression = "Medication.ingredient.strength"
* . ^short = "codeable ingredient'strength"
* . ^definition = "codeable ingredient's strength"

* value[x] only CodeableConcept
* value[x] from $medication-ingredientstrength_1