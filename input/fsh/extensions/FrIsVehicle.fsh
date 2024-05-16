Extension: FrIsVehicle
Id: FrIsVehicle
Title: "Medication component which is the vehicle of the compound Medication"
Description: "Medication component which is the vehicle of the compound Medication"

* ^context[0].type = #element
* ^context[=].expression = "Medication"
* ^context[+].type = #element
* ^context[=].expression = "Medication.ingredient"
* . ..1
* value[x] 1..
* value[x] only boolean
* value[x] = true (exactly)
* value[x] ^short = "true"