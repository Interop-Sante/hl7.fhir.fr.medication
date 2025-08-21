Profile: FrRedicationCompound
Parent: Medication
Id: fr-medication-compound
Title: "FR Medication Compound"
Description: "A complex medication composed of two to many simple medication. The simple medications component are described in as many ingredient.itemReference referencing a Medication resource profiled fr-medication-non-compound."
* ^status = #draft
* ^experimental = false
* ^purpose = "Compound medication description"
* . ^short = "Definition of a Medication compound of a MedicinalRequest, Dispense or Usage"
* . ^definition = "Medication compound of a Medication representing the composition of a MedicationRequest, a MedicationDispense or a MedicationUsage (pka MedicationStatement). For instance, Glucose 5% 1L part of an infusion made of 3 compounds, Glucose 5% 1L + Sodium chloride 3g + Potassium chloride 2g."

* form from FrMpDoseForm (extensible)

* ingredient 1..
* ingredient ^short = "Medication component of compound medication"
* ingredient ^definition = "Identifies a medicinal component of the compound medicinal product"
* ingredient ^comment = "The Medication SHALL contain ALL the items of the item element list AND ONLY the items of the item element list."

* ingredient.extension contains fr-is-vehicle named IsVehicle 0..1
* ingredient.item[x] ^short = "The actual compound"
* ingredient.item[x] ^definition = "The actual compound, either nonproprietary named medication or branded named medication identified by a UCD code."
* ingredient.itemReference only Reference(fr-medication-noncompound)
* batch ..0