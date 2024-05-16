Extension: FrBasisOfDoseComponent
Id: FrBasisOfDoseComponent
Title: "Medication component Basis of dose"
Description: "When the medication element of the resource in which a dose applies is compound, this extension references the Medication resource component of the medication element which is the Basis of the dose quantity or volume."
* ^purpose = "When To reference the Medication resource component which is the Basis of the dose quantity or volume"
* ^context.type = #element
* ^context.expression = "Dosage.doseAndRate"
* . ..1
* value[x] 1..
* value[x] only Reference(Medication)