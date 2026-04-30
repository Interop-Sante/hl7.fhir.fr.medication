# Jeu de valeurs Interop'Santé - Codes du type d'intervention pharmaceutique - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Jeu de valeurs Interop'Santé - Codes du type d'intervention pharmaceutique**

## ValueSet: Jeu de valeurs Interop'Santé - Codes du type d'intervention pharmaceutique 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ValueSet/fr-pharmaceutical-intervention-type-code-value-set | *Version*:0.1.0 |
| Draft as of 2026-04-30 | *Computable Name*:FrPharmaceuticalInterventionTypeCodeValueSet |

 
Codes représentant le type d’intervention pharmaceutique 

 **References** 

* [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

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
  "id" : "fr-pharmaceutical-intervention-type-code-value-set",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-pharmaceutical-intervention-type-code-value-set",
  "version" : "0.1.0",
  "name" : "FrPharmaceuticalInterventionTypeCodeValueSet",
  "title" : "Jeu de valeurs Interop'Santé - Codes du type d'intervention pharmaceutique",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-04-30T09:49:26+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  }],
  "description" : "Codes représentant le type d'intervention pharmaceutique",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "immutable" : false,
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-intervention-type-code"
    }]
  }
}

```
