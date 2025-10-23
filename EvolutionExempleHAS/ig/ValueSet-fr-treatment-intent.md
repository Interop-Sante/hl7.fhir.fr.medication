# French overall intention of the treatment - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **French overall intention of the treatment**

## ValueSet: French overall intention of the treatment 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ValueSet/fr-treatment-intent | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrTreatmentIntent |

 
Le jeu de valeurs à utiliser pour coder l’élément**treatmentIntent**de la ressource**FRInpatientMedicationRequest**. 

 **References** 

* [MedicationRequest overall treatment intent](StructureDefinition-fr-treatment-intent.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include codes provenant de[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) où constraint = < 363675004 |Intents (nature of procedure values) (qualifier value)|

 

### Expansion

Expansion from smt.esante.gouv.fr based on SNOMED CT 11000315107 edition 21-Jun 2025

Ce jeu de valeur (ValueSet) contient 16 concepts

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
  "id" : "fr-treatment-intent",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-treatment-intent",
  "version" : "0.1.0",
  "name" : "FrTreatmentIntent",
  "title" : "French overall intention of the treatment",
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
  "description" : "Le jeu de valeurs à utiliser pour coder l'élément *treatmentIntent* de la ressource *FRInpatientMedicationRequest*.",
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
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "constraint",
            "op" : "=",
            "value" : "< 363675004 |Intents (nature of procedure values) (qualifier value)|"
          }
        ]
      }
    ]
  }
}

```
