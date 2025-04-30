Profile: FrRangeMedication
Parent: Range
Id: FrRangeMedication
Title: "Range with UCUM or EDQM quantity units"
Description: "Range with low and high unit UCUM or EDQM encoded"
* ^status = #draft
* . ^short = "Set of values bounded by precise low and high fixed quantity (no comparator) with UCUM or EDQM unit"
* . ^definition = "A set of ordered Quantities defined by a precise low and high limit defined by a fixed quantity (no comparator) with UCUM or EDQM unit"
* . ^comment = "The stated low and high value are assumed to have arbitrarily high precision when it comes to determining which values are in the range. I.e. 1.99 is not in the range 2 -> 3. Low and high limit are precisely defined, no element 'comparator' in the simpleQuantity defining each bound. The limits are defined by a fixed quantity (no comparator) with UCUM unit."
* low only FrSimpleQuantityMedication
* low ^short = "low bound with UCUM or EDQM unit"
* low ^definition = "unit of measure SHALL be UCUM or EDQM encoded"
* low ^requirements = "force UCUM or EDQM unit encoding"
* high only FrSimpleQuantityMedication
* high ^short = "high bound with UCUM or EDQM unit"
* high ^definition = "unit of measure SHALL be UCUM or EDQM encoded"
* high ^requirements = "force UCUM or EDQM unit encoding"