ValueSet: MedicationIngredientStrengthCodes
Id: medication-ingredient-strength-codes
Description: "Medication Ingredient Strength Codes"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #phx
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/ValueSet/medication-ingredientstrength" // TODO : pourquoi définit-on une url en hl7.org ? Je ne pense pas qu'on ait le droit de faire ça
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.3.1426"
* ^version = "4.6.0"
* ^status = #draft
* ^publisher = "FHIR Project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* include codes from system $medication-ingredientstrength