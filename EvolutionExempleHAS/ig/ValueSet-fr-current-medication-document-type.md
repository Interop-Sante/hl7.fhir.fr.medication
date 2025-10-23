# value set Interop'Santé - type de document de la ressource Composition d'une FCT - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **value set Interop'Santé - type de document de la ressource Composition d'une FCT**

## ValueSet: value set Interop'Santé - type de document de la ressource Composition d'une FCT 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ValueSet/fr-current-medication-document-type | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrCurrentMedicationDocumentType |

 
Le jeu de valeurs à utiliser pour coder le type de document de la ressource**Composition**d’une liste des Traitements Médicamenteux Courants. 

 **References** 

* [FR Current Medication Composition](StructureDefinition-fr-current-medication-composition.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include codes provenant de[`https://hl7.fr/ig/fhir/medication/CodeSystem/fr-document-type`](CodeSystem-fr-document-type.md)version 📦0.1.0 où isCurrentMedication = true

 

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
  "id" : "fr-current-medication-document-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-current-medication-document-type",
  "version" : "0.1.0",
  "name" : "FrCurrentMedicationDocumentType",
  "title" : "value set Interop'Santé - type de document de la ressource Composition d'une FCT",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-23T14:53:51+00:00",
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
  "description" : "Le jeu de valeurs à utiliser pour coder le type de document de la ressource *Composition* d'une liste des Traitements Médicamenteux Courants.",
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
        "system" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-document-type",
        "filter" : [
          {
            "property" : "isCurrentMedication",
            "op" : "=",
            "value" : "true"
          }
        ]
      }
    ]
  }
}

```
