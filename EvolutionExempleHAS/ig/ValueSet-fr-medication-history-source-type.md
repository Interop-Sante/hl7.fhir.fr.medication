# value set SIPh - Nature des sources d'un Bilan Médicamenteux - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **value set SIPh - Nature des sources d'un Bilan Médicamenteux**

## ValueSet: value set SIPh - Nature des sources d'un Bilan Médicamenteux 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-history-source-type | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRMedicationHistorySourceType |

 
Un jeu de valeurs à utiliser pour coder les sources d’un Bilan Médicamenteux. 

 **References** 

* [FRMedicationHistorySources](StructureDefinition-fr-medication-history-sources.md)

### Logical Definition (CLD)

Profil: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include tous les codes définis dans [`https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-history-source-type`](CodeSystem-fr-medication-history-source-type.md)version 📦0.1.0

 

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
  "id" : "fr-medication-history-source-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-history-source-type",
  "version" : "0.1.0",
  "name" : "FRMedicationHistorySourceType",
  "title" : "value set SIPh - Nature des sources d'un Bilan Médicamenteux",
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
  "description" : "Un jeu de valeurs à utiliser pour coder les sources d'un Bilan Médicamenteux.",
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
        "system" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-history-source-type"
      }
    ]
  }
}

```
