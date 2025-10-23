# code system Interop'Santé - Codes additionnels pour l'élément when - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Codes additionnels pour l'élément when**

## CodeSystem: code system Interop'Santé - Codes additionnels pour l'élément when 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-additional-when-codes | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrAdditionalWhenCodes |

 
Le système de codage pour des périodes d’occurrence qui ne sont pas définies dans FHIR. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrAdditionalWhenCodes](ValueSet-fr-additional-when-codes.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-additional-when-codes",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-additional-when-codes",
  "version" : "0.1.0",
  "name" : "FrAdditionalWhenCodes",
  "title" : "code system Interop'Santé - Codes additionnels pour l'élément when",
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
  "description" : "Le système de codage pour des périodes d'occurrence qui ne sont pas définies dans FHIR.",
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
  "content" : "complete",
  "count" : 16,
  "concept" : [
    {
      "code" : "AGU",
      "display" : "L'événement se produit avant [offset] le levé / event occurs [offset] before getting up"
    },
    {
      "code" : "PGU",
      "display" : "L'événement se produit après [offset] le levé / event occurs [offset] after getting up"
    },
    {
      "code" : "AT",
      "display" : "L'événement se produit avant [offset] la toilette / event occurs [offset] before toilette (self grooming/washing)"
    },
    {
      "code" : "T",
      "display" : "L'événement se produit lors de la toilette / event occurs during toilette (self grooming/washing)"
    },
    {
      "code" : "PT",
      "display" : "L'événement se produit après [offset] la toilette / event occurs [offset] after toilette (self grooming/washing)"
    },
    {
      "code" : "ASK",
      "display" : "L'événement se produit avant [offset] la collation / event occurs [offset] before snack"
    },
    {
      "code" : "SK",
      "display" : "L'événement se produit lors de la collation / event occurs during snack"
    },
    {
      "code" : "PSK",
      "display" : "L'événement se produit après [offset] la collation / event occurs [offset] after snack"
    },
    {
      "code" : "AMS",
      "display" : "L'événement se produit avant [offset] la collation du matin / event occurs [offset] before morning snack"
    },
    {
      "code" : "MS",
      "display" : "L'événement se produit lors de la collation du matin / event occurs during morning snack"
    },
    {
      "code" : "PMS",
      "display" : "L'événement se produit après [offset] la collation du matin / event occurs [offset] after morning snack"
    },
    {
      "code" : "AAS",
      "display" : "L'événement se produit avant [offset] la collation de l'après-midi / event occurs [offset] before afternoon snack"
    },
    {
      "code" : "AS",
      "display" : "L'événement se produit lors de la collation de l'après-midi / event occurs during afternoon snack"
    },
    {
      "code" : "PAS",
      "display" : "L'événement se produit après [offset] la collation de l'après-midi / event occurs [offset] after afternoon snack"
    },
    {
      "code" : "ABT",
      "display" : "L'événement se produit avant [offset] le coucher / event occurs [offset] before going to bed (bedtime)"
    },
    {
      "code" : "PBT",
      "display" : "L'événement se produit après [offset] le coucher / event occurs [offset] after going to bed (bedtime)"
    }
  ]
}

```
