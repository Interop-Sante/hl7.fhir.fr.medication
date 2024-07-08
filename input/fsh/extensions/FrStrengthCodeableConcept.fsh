Extension: FrStrengthCodeableConcept
Id: FrStrengthCodeableConcept
Title: "Strength CodeableConcept"
* ^context.type = #element
* ^context.expression = "Medication.ingredient.strength"
* . ^short = "codeable ingredient'strength"
* . ^definition = "codeable ingredient's strength"

* value[x] only CodeableConcept
* value[x] from $medication-ingredientstrength_1
* value[x] ^binding.description = "medication-ingredient strength"