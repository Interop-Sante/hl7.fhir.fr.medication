# Medication_Ingredient_Strength_Codes - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication_Ingredient_Strength_Codes**

## CodeSystem: Medication_Ingredient_Strength_Codes 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/CodeSystem/medication-ingredientstrength | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:Medication_Ingredient_Strength_Codes |
| *Other Identifiers:*OID:2.16.840.1.113883.4.642.1.1427 | |

 This Code system is referenced in the content logical definition of the following value sets: 

* [MedicationIngredientStrengthCodes](ValueSet-medication-ingredient-strength-codes.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-ingredient-strength-codes",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "phx"
    }
  ],
  "url" : "http://hl7.org/fhir/CodeSystem/medication-ingredientstrength",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.4.642.1.1427"
    }
  ],
  "version" : "0.1.0",
  "name" : "Medication_Ingredient_Strength_Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-23T12:45:10+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    }
  ],
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "valueSet" : "http://hl7.org/fhir/ValueSet/medication-ingredientstrength",
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "qs",
      "display" : "QS",
      "definition" : "As much as is sufficient."
    },
    {
      "code" : "trace",
      "display" : "Trace",
      "definition" : "Very small amount."
    }
  ]
}

```
