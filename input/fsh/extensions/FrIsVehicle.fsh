Extension: FrIsVehicle
Id: fr-is-vehicle
Title: "Medication component which is the vehicle of the compound Medication"
Description: "Medication component which is the vehicle of the compound Medication"
//* ^context[0].type = #element
//* ^context[=].expression = "Medication"
* ^context.type = #element
* ^context.expression = "Medication.ingredient"
* value[x] only boolean
