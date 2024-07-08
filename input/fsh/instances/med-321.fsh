Instance: med-321
InstanceOf: FrMedicationCompound
Usage: #inline
* code.text = "Dobutamine 200 mg dans G5 qsp 40 mL"
* amount.numerator = 40 'mL' "mL"
* amount.denominator = 1 '1'
* ingredient[0].itemReference.reference = "#med-322"
* ingredient[=].isActive = true
* ingredient[+].extension.url = "http://interopsante.org/fhir/StructureDefinition/FrIsVehicle"
* ingredient[=].extension.valueBoolean = true
* ingredient[=].itemReference.reference = "#med-323"
* ingredient[=].isActive = true