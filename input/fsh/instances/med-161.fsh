Instance: med-161
InstanceOf: FrMedicationNonproprietaryName
Usage: #inline
* code = $unitsofmeasure#776123006 "médicament contenant seulement glucose et chlorure de potassium et chlorure de sodium"
* code.text = "GLUCOSE + SODIUM CHLORURE + POTASSIUM CHLORURE"
* form = $sct#385229008 "solution pour perfusion"
* form.text = "solution pour perfusion"
* amount.numerator = 500 'mL' "mL"
* amount.denominator = 1 '1'
* ingredient[0].itemCodeableConcept = $sct#67079006 "glucose"
* ingredient[=].itemCodeableConcept.text = "GLUCOSE"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 50 'mg' "mg"
* ingredient[=].strength.denominator = $unitsofmeasure#mL "mL"
* ingredient[+].itemCodeableConcept = $sct#387390002 "clhorure de sodium"
* ingredient[=].itemCodeableConcept.text = "SODIUM CHLORURE"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 2 'g' "g"
* ingredient[=].strength.denominator = 1 '1'
* ingredient[+].itemCodeableConcept = $sct#8631001 "chlorure de potassium"
* ingredient[=].itemCodeableConcept.text = "POTASSIUM CHLORURE"
* ingredient[=].isActive = true
* ingredient[=].strength.numerator = 1 'g' "g"
* ingredient[=].strength.denominator = 1 '1'