Instance: Inline-Instance-for-14619-1
InstanceOf: FrMedicationNonproprietaryName
Usage: #inline
* id = "med-31"
* code = $sct#775360007 "Product containing only codeine and paracetamol (medicinal product)"
* code.text = "PARACETAMOL+CODEINE"
* ingredient[0].itemCodeableConcept = $sct#387517004 "paracétamol"
* ingredient[=].itemCodeableConcept.text = "PARACETAMOL"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 500 'mg' "mg"
* ingredient[=].strength.denominator = 1 '1'
* ingredient[+].itemCodeableConcept = $sct#387494007 "codéine"
* ingredient[=].itemCodeableConcept.text = "CODEINE"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 30 'mg' "mg"
* ingredient[=].strength.denominator = 1 '1'