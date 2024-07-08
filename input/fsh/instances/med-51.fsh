Instance: med-51
InstanceOf: FrMedicationUcd
Usage: #inline
* code = $SIPh-CIO_UCD#3400893936047 "CODOLIPRANE 500 mg/30 mg, cpr"
* code.text = "CODOLIPRANE 500 mg/30 mg, cpr"
* form = $sct#421026006 "comprimé oral"
* form.text = "comprimé"
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