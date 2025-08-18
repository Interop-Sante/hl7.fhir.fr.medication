Instance: InLine-DOLIPRANE
InstanceOf: FRMedication
Usage: #example
Description: "Medication DOLIPRANE® pour exemple de dispensation"
* code = $UCD#3400891996128 "DOLIPRANE 500MG GELU"
* code.text = "DOLIPRANE® 500 mg, gélule"
* form = $EDQM#10210000 "Gélule"
* form.text = "gélule"
* ingredient.itemCodeableConcept = $SMS#100000090270 "paracétamol"
* ingredient.itemCodeableConcept.text = "PARACETAMOL"
* ingredient.isActive = true
* ingredient.strength.numerator = 500 'mg' "mg"
* ingredient.strength.denominator = 1 '1'