# Conversion PN13 FHIR des code de sexe administratif - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 FHIR des code de sexe administratif**

## ConceptMap: Conversion PN13 FHIR des code de sexe administratif 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-gender-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrPN13FHIRGenderConceptMap |

 
ConceptMap pour la conversion des codes de sexe administratif entre PN13 et FHIR 

Mapping from https://interopsante.org/pn13/SIPh_sexe to [http://hl7.org/fhir/administrative-gender](http://hl7.org/fhir/R4/codesystem-administrative-gender.html)

**Group 1**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: M (Mâle)
  * **relation**: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Target Code**: male
  * **Commentaire**: 
* **Source Code**: F (Femelle)
  * **relation**: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Target Code**: female
  * **Commentaire**: 
* **Source Code**: U (Non connu)
  * **relation**: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Target Code**: unknown
  * **Commentaire**: 
* **Source Code**: O (Autre)
  * **relation**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Target Code**: unknown
  * **Commentaire**: La terminologie FHIR pour le sexe administratif n'a pas d'équivalent pour le concept autre. Le mapping sur unknown est proposé pour permettre un passage de PN13 à FHIR



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-gender-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-gender-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRGenderConceptMap",
  "title" : "Conversion PN13 FHIR des code de sexe administratif",
  "status" : "draft",
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
  "description" : "ConceptMap pour la conversion des codes de sexe administratif entre PN13 et FHIR",
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
  "sourceUri" : "https://interopsante.org/pn13/SIPh_sexe",
  "targetUri" : "http://hl7.org/fhir/administrative-gender",
  "group" : [
    {
      "element" : [
        {
          "code" : "M",
          "display" : "Mâle",
          "target" : [
            {
              "code" : "male",
              "display" : "Male",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "F",
          "display" : "Femelle",
          "target" : [
            {
              "code" : "female",
              "display" : "Female",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "U",
          "display" : "Non connu",
          "target" : [
            {
              "code" : "unknown",
              "display" : "Unknown",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "O",
          "display" : "Autre",
          "target" : [
            {
              "code" : "unknown",
              "display" : "Unknown",
              "equivalence" : "inexact",
              "comment" : "La terminologie FHIR pour le sexe administratif n'a pas d'équivalent pour le concept autre. Le mapping sur unknown est proposé pour permettre un passage de PN13 à FHIR"
            }
          ]
        }
      ]
    }
  ]
}

```
