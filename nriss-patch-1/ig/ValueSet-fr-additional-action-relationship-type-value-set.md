# Interop'Santé value set - Additional codes for relationship between action - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Interop'Santé value set - Additional codes for relationship between action**

## ValueSet: Interop'Santé value set - Additional codes for relationship between action 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ValueSet/fr-additional-action-relationship-type-value-set | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FrAdditionalRequestGroupRelationshipValueSet |

 
Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type. 

 **References** 

* [Additional relatedAction relationship](StructureDefinition-fr-additional-action-relationship.md)

### Définition logique (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-additional-action-relationship-type-value-set",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-additional-action-relationship-type-value-set",
  "version" : "0.1.0",
  "name" : "FrAdditionalRequestGroupRelationshipValueSet",
  "title" : "Interop'Santé value set - Additional codes for relationship between action",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-15T08:54:26+00:00",
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
  "description" : "Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type.",
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
  "immutable" : false,
  "compose" : {
    "include" : [
      {
        "system" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-additional-action-relationship-type"
      }
    ]
  }
}

```
