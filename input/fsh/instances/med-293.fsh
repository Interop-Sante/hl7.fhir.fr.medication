Instance: med-293
InstanceOf: FrMedicationNonproprietaryName
Usage: #inline
* extension.url = "http://interopsante.org/fhir/StructureDefinition/FrIsVehicle"
* extension.valueBoolean = true
* code = $sct#776119003 "médicament contenant seulement glucose"
* code.text = "GLUCOSE"
* form = $sct#385229008 "solution pour perfusion"
* form.text = "solution pour perfusion"
* amount.numerator = 100 'mL' "mL"
* amount.denominator = 1 '1'
* ingredient.itemCodeableConcept = $sct#67079006 "glucose"
* ingredient.itemCodeableConcept.text = "GLUCOSE"
* ingredient.isActive = true
* ingredient.strength.numerator = 50 'mg' "mg"
* ingredient.strength.denominator = $unitsofmeasure#mL "mL"