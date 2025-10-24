# value set Interop'Santé - Codes identifiant les substances - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **value set Interop'Santé - Codes identifiant les substances**

## ValueSet: value set Interop'Santé - Codes identifiant les substances 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ValueSet/fr-substance-code | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:FrSubstanceCode |

 
Le jeu de valeurs à utiliser pour indiquer un ingrédient composant un médicament dans Medication.ingredient.itemCodeableConcept.coding.code 

 **References** 

* [FR Meditinal Product Substance](StructureDefinition-fr-mp-substance.md)

### Logical Definition (CLD)

Ce jeu de valeur (ValueSet) inclut les codes selon les règles suivantes :

* Inclut tous les codes définis dans `http://data.esante.gouv.fr/ansm/medicament/codeSMS`version Not Stated (use latest from terminology server)
* Inclut tous les codes définis dans `http://data.esante.gouv.fr/ansm/medicament/substance`version Not Stated (use latest from terminology server)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "fr-substance-code",
  "url" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-substance-code",
  "version" : "0.1.0",
  "name" : "FrSubstanceCode",
  "title" : "value set Interop'Santé - Codes identifiant les substances",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-24T13:47:42+00:00",
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
  "description" : "Le jeu de valeurs à utiliser pour indiquer un ingrédient composant un médicament dans Medication.ingredient.itemCodeableConcept.coding.code",
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
        "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS"
      },
      {
        "system" : "http://data.esante.gouv.fr/ansm/medicament/substance"
      }
    ]
  }
}

```
