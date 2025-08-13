Profile: FrRatioMedication
Parent: Ratio
Id: FrRatioMedication
Title: "Ratio with UCUM or EDQM codes if code is used"
Description: "Ratio with numerator and denominator unit UCUM or EDQM encoded if code is used"
* ^status = #draft
* . ^short = "A ratio of two precise Quantity values - a numerator and a denominator"
* . ^definition = "A relationship of two Quantity values - expressed as a precise numerator and a precise denominator."
* numerator only FrSimpleQuantityMedication
* denominator only FrSimpleQuantityMedication
