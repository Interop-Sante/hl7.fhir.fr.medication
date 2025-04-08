Profile: FrSimpleQuantityEdqm
Parent: SimpleQuantity
Id: FrSimpleQuantityEdqm
Title: "SimpleQuantity with EDQM quantity unit"
Description: "simple quantity datatype requiring an EDQM unit"
* . ^short = "A fixed quantity (no comparator) with EDQM unit"
* . ^definition = "The comparator is not used on a SimpleQuantity. The unit SHALL be an EDQM code."
* . ^comment = "The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use explicitely excludes the use of the simpleQuantity \"comparator\" element."
* . ^constraint.source = "Quantity"
* comparator ..0
* comparator ^definition = "Not allowed to be used in this context"
* system 1.. MS
* system = "http://standardterms.edqm.eu" (exactly)
* system ^definition = "EDQM requiered for the identification of the system that provides the coded form of the unit."
* system ^requirements = "EDQM requiered."
* code 1..
* code ^comment = "EDQM code required."