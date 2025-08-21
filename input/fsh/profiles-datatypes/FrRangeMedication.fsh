Profile: FrRangeMedication
Parent: Range
Id: FrRangeMedication
Title: "Range with UCUM or EDQM codes if code is used"
Description: "Range with low and high unit UCUM or EDQM codes if code is used"
* ^status = #draft
* . ^short = "Set of values bounded by precise low and high fixed quantity (no comparator)"
* . ^definition = "A set of ordered Quantities defined by a precise low and high limit defined by a fixed quantity (no comparator)"
* . ^comment = "The stated low and high value are assumed to have arbitrarily high precision when it comes to determining which values are in the range. I.e. 1.99 is not in the range 2 -> 3. Low and high limit are precisely defined, no element 'comparator' in the simpleQuantity defining each bound. The limits are defined by a fixed quantity (no comparator)."
* low only FrSimpleQuantityMedication
* high only FrSimpleQuantityMedication
