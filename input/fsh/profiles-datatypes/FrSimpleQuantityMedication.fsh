Profile: FrSimpleQuantityMedication
Parent: SimpleQuantity
Id: FrSimpleQuantityMedication
Title: "SimpleQuantity with UCUM or EDQM codes or code not used"
Description: "simple quantity datatype requiring a UCUM or EDQM code or no code (only unti)"
* . ^short = "A fixed quantity (no comparator) with UCUM or EDQM code or no code"
* . ^definition = "The comparator is not used on a SimpleQuantity. The code SHALL be a UCUM or EDQM code if used."
* . ^comment = "The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use explicitely excludes the use of the simpleQuantity \"comparator\" element."
* . ^constraint.source = "Quantity"
* obeys fr-med-smpl-quant-1 and fr-med-smpl-quant-2
* comparator ..0
* comparator ^definition = "Not allowed to be used in this context"
