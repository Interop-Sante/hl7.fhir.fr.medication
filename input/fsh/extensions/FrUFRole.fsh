Extension: FrUFRole
Id: fr-uf-role
Title: "UF Role"
Description: "Caracterization of the role of a functionnal unit for the patient encounter"
* ^context.type = #element
* ^context.expression = "MedicationRequest.supportingInformation"
* value[x] only code
* value[x] from fr-uf-role-code-for-prescription (required)
