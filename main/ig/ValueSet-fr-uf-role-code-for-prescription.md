# value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription**

## ValueSet: value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ValueSet/fr-uf-role-code-for-prescription | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrUfRoleCodesForPrescriptionValueSet |

 
Le jeu de valeurs à utiliser dans l’extension pour indiquer le type d’UF référencée dans Medication.supportingInfo 

 **References** 

* [UF Role](StructureDefinition-fr-uf-role.md)

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
  "id" : "fr-uf-role-code-for-prescription",
  "url" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-uf-role-code-for-prescription",
  "version" : "0.1.0",
  "name" : "FrUfRoleCodesForPrescriptionValueSet",
  "title" : "value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription",
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
  "description" : "Le jeu de valeurs à utiliser dans l'extension pour indiquer le type d'UF référencée dans Medication.supportingInfo",
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
        "system" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-uf-role-codes"
      }
    ]
  }
}

```
