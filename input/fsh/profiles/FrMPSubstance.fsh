Profile: FrMPSubstance
Parent: CodeableConcept
Id: fr-mp-substance
Title: "French Substance of a Medicinal Product"
Description: "code for the medicinal product substance"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* . ^short = "RIUM Medicinal Product Substance"
* . ^example[0].label = "Glucose"
* . ^example[=].valueCodeableConcept = $SMS#100000078171 "glucose"
* . ^example[=].valueCodeableConcept.text = "glucose"
* . ^example[+].label = "Périndopril tert-butylamine"
* . ^example[=].valueCodeableConcept = $SMS#100000091602 "périndopril tert-butylamine"
* . ^example[=].valueCodeableConcept.text = "périndopril tert-butylamine"
* coding from fr-substance-code (required)
* coding ^binding.description = "Medicinal product Substance"