Profile: FrSimpleQuantityUcum
Parent: SimpleQuantity
Id: FrSimpleQuantityUcum
Title: "SimpleQuantity with UCUM quantity unit"
Description: "simple quantity datatype requiring a UCUM unit"
* . ^short = "A fixed quantity (no comparator) with UCUM unit"
* . ^definition = "The comparator is not used on a SimpleQuantity. The unit SHALL be a UCUM code."
* . ^comment = "The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use explicitely excludes the use of the simpleQuantity \"comparator\" element."
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* . ^constraint.source = "Quantity"
* comparator ..0
* comparator ^definition = "Not allowed to be used in this context"
* system 1.. MS
* system = "http://unitsofmeasure.org" (exactly)
* system ^definition = "UCUM requiered for the identification of the system that provides the coded form of the unit."
* system ^requirements = "UCUM requiered."
* code 1..
* code ^comment = "UCUM code required."