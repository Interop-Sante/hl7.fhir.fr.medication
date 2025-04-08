Profile: FrSimpleQuantityMedication
Parent: SimpleQuantity
Id: FrSimpleQuantityMedication
Title: "SimpleQuantity with UCUM or EDQM quantity unit"
Description: "simple quantity datatype requiring a UCUM or EDQM unit"
* . ^short = "A fixed quantity (no comparator) with UCUM or EDQM unit"
* . ^definition = "The comparator is not used on a SimpleQuantity. The unit SHALL be a UCUM or EDQM code."
* . ^comment = "The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use explicitely excludes the use of the simpleQuantity \"comparator\" element."
* . ^constraint.source = "Quantity"
* comparator ..0
* comparator ^definition = "Not allowed to be used in this context"
* system 1.. MS
* system = "http://standardterms.edqm.eu" or "http://unitsofmeasure.org"
* system ^definition = "UCUM or EDQM requiered for the identification of the system that provides the coded form of the unit."
* system ^requirements = "UCUM or EDQM requiered."
* code 1..
* code ^comment = "UCUM or EDQM code required."