Instance: med-101
InstanceOf: FrMedicationNonproprietaryName
Usage: #inline
* code = $sct#774839004 "médicament contenant seulement bêtaméthasone"
* code.text = "BETAMETHASONE"
* amount.numerator = 1 '{appln}' "appln"
* amount.denominator = 1 '1'
* ingredient.itemCodeableConcept = $sct#116571008 "bêtaméthasone"
* ingredient.itemCodeableConcept.text = "BETAMETHASONE"
* ingredient.isActive = true
* ingredient.strength.numerator = 0.5 'mg' "mg"
* ingredient.strength.denominator = $unitsofmeasure#g "g"