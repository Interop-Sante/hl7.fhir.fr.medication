Profile: FrMPSubstanceActive
Parent: CodeableConcept
Id: fr-mp-substance-active
Title: "French Active Substance of a Medicinal Product"
Description: "code for the medicinal product substance"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-10-18"
* . ^short = "SNOMED CT Medicinal Product Substance"
* . ^example[0].label = "Glucose"
* . ^example[=].valueCodeableConcept = $sct#67079006 "glucose (substance)"
* . ^example[=].valueCodeableConcept.text = "glucose"
* . ^example[+].label = "Perindopril erbumine"
* . ^example[=].valueCodeableConcept = $sct#129485000 "perindopril erbumine (substance)|"
* . ^example[=].valueCodeableConcept.text = "perindopril erbumine (substance)"
* coding from FrMpSubstanceActive (extensible)
* coding ^binding.description = "Medicinal product Substance"