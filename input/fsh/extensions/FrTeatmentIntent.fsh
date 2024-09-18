Extension: FrTeatmentIntent
Id: FrTeatmentIntent
Title: "MedicationRequest overall treatment intent"
Description: "The overall intention of the treatment"
* ^context.type = #element
* ^context.expression = "MedicationRequest"
* . ^short = "MedicationRequest overall treatment intent"
* . ^definition = "The overall intention of the treatment"

* value[x] only CodeableConcept
* value[x] ^label = "TreatmentIntent"
* value[x] ^short = "Value of overall treatment intent"
* value[x] ^definition = "overall intention of treatment Coding"

* value[x].coding from FrTreatmentIntent (extensible)
* value[x].coding ^definition = "SNOMED CT code minimal value set for overall intention of treatment (extensible)"
* value[x].coding ^binding.description = "SNOMED CT encoded treatment overall intent"