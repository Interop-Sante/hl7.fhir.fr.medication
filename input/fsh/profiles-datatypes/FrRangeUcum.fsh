Profile: FrRangeUcum
Parent: Range
Id: FrRangeUcum
Title: "Range with UCUM quantity units"
Description: "Range with low and high unit UCUM encoded"
* ^status = #draft
* . ^short = "Set of values bounded by precise low and high fixed quantity (no comparator) with UCUM unit"
* . ^definition = "A set of ordered Quantities defined by a precise low and high limit defined by a fixed quantity (no comparator) with UCUM unit"
* . ^comment = "The stated low and high value are assumed to have arbitrarily high precision when it comes to determining which values are in the range. I.e. 1.99 is not in the range 2 -> 3. Low and high limit are precisely defined, no element 'comparator' in the simpleQuantity defining each bound. The limits are defined by a fixed quantity (no comparator) with UCUM unit."
* low only FrSimpleQuantityUcum
* low ^short = "low bound with UCUM unit"
* low ^definition = "unit of measure SHALL be UCUM encoded"
* low ^requirements = "force UCUM unit encoding"
* high only FrSimpleQuantityUcum
* high ^short = "high bound with UCUM unit"
* high ^definition = "unit of measure SHALL be UCUM encoded"
* high ^requirements = "force UCUM unit encoding"