Profile: FrRatioMedication
Parent: Ratio
Id: FrRatioMedication
Title: "Ratio with UCUM or EDQM quantity units"
Description: "Ratio with numerator and denominator unit UCUM or EDQM encoded"
* ^status = #draft
* . ^short = "A ratio of two precise Quantity values - a numerator and a denominator"
* . ^definition = "A relationship of two Quantity values - expressed as a precise numerator and a precise denominator."
* numerator only FrSimpleMedication
* numerator ^short = "Numerator with UCUM or EDQM unit"
* numerator ^definition = "unit of measure SHALL be UCUM or EDQM encoded"
* denominator only FrSimpleMedication
* denominator ^short = "Denominator with UCUM or EDQM unit"
* denominator ^definition = "unit of measure SHALL be UCUM or EDQM encoded"