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

* code 1..
* code ^short = "No code that identify this medication unless possibly if it is a magistral preparation, a hospital preparation or a virtual medication"
* code ^definition = "Defines the text of the compound detailed in this compound Medication."
* code ^requirements = "Text of compound SHALL be provided. Code MAY be provided"
//* code.coding ^short = "Generaly no code for compound medicinal product unless possibly if it is a magistral preparation, a hospital preparation or a virtual medication"
//* code.coding ^definition = "A code identifing the compound medicinal product. Generaly none : no code defined for G5 1L + NaCl 3g + KCl 2g. May exist as local code for magistral preparation or hospital preparation. May exist as a medication database code for virtual medication"

* code.text 1..
* code.text ^requirements = "Although a code might not be available for a compoud medicinal product, there is alway a denomination for it."

* form from FrMpDoseForm (extensible)
//* amount only FrRatioMedication
//* amount ^definition = "Specific amount in Medication defined by the element collection. For instance 1 L for the amount of the compound Glucose 5% of an infusion Glucose 5% 1L + Sodium chloride 3g + Potassium chloride 2g. Or 3 g for the amount of compound Sodium chloride of the same infusion. SHALL be 1 (without unit, ie. code = 1 in UCUM system) when there is multiple ingredient element with at least the strenght element of two of them expressed in asbolute quantity (ie. simple quantity)."
//* amount ^comment = "The Ratio datatype is limited to numerator value, leading back to the SimpleQuantity datatype."

* ingredient 1..
* ingredient ^short = "Medication component of compound medication"
* ingredient ^definition = "Identifies a medicinal component of the compound medicinal product"
* ingredient ^comment = "The Medication SHALL contain ALL the items of the item element list AND ONLY the items of the item element list."

* ingredient.extension contains fr-is-vehicle named IsVehicle 0..1
* ingredient.item[x] ^short = "The actual compound"
* ingredient.item[x] ^definition = "The actual compound, either nonproprietary named medication or branded named medication identified by a UCD code."
* ingredient.itemReference only Reference(fr-medication-noncompound)
* batch ..0