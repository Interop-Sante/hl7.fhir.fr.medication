Instance: med-301
InstanceOf: FrMedicationCompound
Usage: #inline
* code.text = "Céfotaxine 4g dans miniperf G5 100 mL"
* ingredient[0].itemReference.reference = "#med-302"
* ingredient[=].isActive = true
* ingredient[+].extension.url = "http://interopsante.org/fhir/StructureDefinition/FrIsVehicle"
* ingredient[=].extension.valueBoolean = true
* ingredient[=].itemReference.reference = "#med-303"
* ingredient[=].isActive = true