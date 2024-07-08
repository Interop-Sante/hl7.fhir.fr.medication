Profile: FrRatioUcum
Parent: Ratio
Id: FrRatioUcum
Title: "Ratio with UCUM quantity units"
Description: "Ratio with numerator and denominator unit UCUM encoded"
* ^url = "http://interopsante.org/fhir/StructureDefinition/FrRatioUcum"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2021-10-18"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^copyright = "Interop'Santé 2021"
* . ^short = "A ratio of two precise Quantity values - a numerator and a denominator"
* . ^definition = "A relationship of two Quantity values - expressed as a precise numerator and a precise denominator."
* numerator only FrSimpleQuantityUcum
* numerator ^short = "Numerator with UCUM unit"
* numerator ^definition = "unit of measure SHALL be UCUM encoded"
* denominator only FrSimpleQuantityUcum
* denominator ^short = "Denominator with UCUM unit"
* denominator ^definition = "unit of measure SHALL be UCUM encoded"