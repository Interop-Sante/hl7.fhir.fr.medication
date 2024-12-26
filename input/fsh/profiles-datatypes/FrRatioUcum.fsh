Profile: FrRatioUcum
Parent: Ratio
Id: FrRatioUcum
Title: "Ratio with UCUM quantity units"
Description: "Ratio with numerator and denominator unit UCUM encoded"
* ^status = #draft
* . ^short = "A ratio of two precise Quantity values - a numerator and a denominator"
* . ^definition = "A relationship of two Quantity values - expressed as a precise numerator and a precise denominator."
* numerator only FrSimpleQuantityUcum
* numerator ^short = "Numerator with UCUM unit"
* numerator ^definition = "unit of measure SHALL be UCUM encoded"
* denominator only FrSimpleQuantityUcum
* denominator ^short = "Denominator with UCUM unit"
* denominator ^definition = "unit of measure SHALL be UCUM encoded"