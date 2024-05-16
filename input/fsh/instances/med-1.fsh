Instance: med-1
InstanceOf: FrMedicationCompound
Usage: #inline
* code.text = "G5 1L + NaCl 3g + KCl 2g"
* ingredient[0].itemReference.reference = "#med-2"
* ingredient[=].isActive = true
* ingredient[+].itemReference.reference = "#med-3"
* ingredient[=].isActive = true
* ingredient[+].itemReference.reference = "#med-4"
* ingredient[=].isActive = true