# code system Interop'Santé - Statut éditorial d'une valeur - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Statut éditorial d'une valeur**

## CodeSystem: code system Interop'Santé - Statut éditorial d'une valeur 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-editorial-status | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrEditorialStatus |

 
Le système de codage du statut éditorial d’une valeur. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrEditorialStatus](ValueSet-fr-editorial-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-editorial-status",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-editorial-status",
  "version" : "0.1.0",
  "name" : "FrEditorialStatus",
  "title" : "code system Interop'Santé - Statut éditorial d'une valeur",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-20T11:00:00+00:00",
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
  "description" : "Le système de codage du statut éditorial d'une valeur.",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "10000001",
      "display" : "Créé"
    },
    {
      "code" : "10000002",
      "display" : "Mis-à-jour"
    },
    {
      "code" : "10000003",
      "display" : "Scellé"
    },
    {
      "code" : "10000004",
      "display" : "Supprimé"
    }
  ]
}

```
