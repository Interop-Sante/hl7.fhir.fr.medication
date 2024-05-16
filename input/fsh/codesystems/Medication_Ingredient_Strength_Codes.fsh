CodeSystem: Medication_Ingredient_Strength_Codes
Id: medication-ingredient-strength-codes
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #phx
* ^url = "http://hl7.org/fhir/CodeSystem/medication-ingredientstrength" // TODO - pourquoi redéfinir un code d'HL7 International ?
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.1.1427"
* ^version = "4.6.0"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/medication-ingredientstrength"
* ^content = #complete
* #qs "QS" "As much as is sufficient."
* #trace "Trace" "Very small amount."