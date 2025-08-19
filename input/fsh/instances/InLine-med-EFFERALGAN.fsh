Instance: InLine-med-EFFERALGAN
InstanceOf: FRMedication
Usage: #example
Description: "Medication EFFERALGAN® pour exemple de dispensation"
* code = $UCD#3400893766521 "EFFERALGANMED 1000MG CPR"
* code.text = "EFFERALGAN® 1 000 mg, cpr"
* form = $EDQM#10219000 "Comprimé"
* form.text = "comprimé"
* ingredient.itemCodeableConcept = $SMS#100000090270 "paracétamol"
* ingredient.itemCodeableConcept.text = "PARACETAMOL"
* ingredient.isActive = true
* ingredient.strength.numerator = 1000 $unitsofmeasure#mg "mg"
* indredient.strength.denominator.value = 1
