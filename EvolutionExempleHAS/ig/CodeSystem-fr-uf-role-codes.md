# code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient**

## CodeSystem: code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-uf-role-codes | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrUFRoleCodes |

 
Le système de codage pour les types de rôle qu’une UF peut avoir par rapport à un séjour patient. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrUfRoleCodesForPrescriptionValueSet](ValueSet-fr-uf-role-code-for-prescription.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-uf-role-codes",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-uf-role-codes",
  "version" : "0.1.0",
  "name" : "FrUFRoleCodes",
  "title" : "code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient",
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
  "description" : "Le système de codage pour les types de rôle qu'une UF peut avoir par rapport à un séjour patient.",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "UFSOIN",
      "display" : "UF de responsabilité des soins"
    },
    {
      "code" : "UFMED",
      "display" : "UF de responsabilité médicale"
    },
    {
      "code" : "UFHEB",
      "display" : "UF d'hébergement"
    }
  ]
}

```
