# code system d'Interop'Santé - Codes du type d'intervention pharmaceutique - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system d'Interop'Santé - Codes du type d'intervention pharmaceutique**

## CodeSystem: code system d'Interop'Santé - Codes du type d'intervention pharmaceutique 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-intervention-type-code | *Version*:0.1.0 |
| Draft as of 2026-05-27 | *Computable Name*:FrPharmaceuticalInterventionTypeCode |

 
Le système de codage pour le typage de l’intervention pharmaceutique. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrPharmaceuticalInterventionTypeCodeValueSet](ValueSet-fr-pharmaceutical-intervention-type-code-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-pharmaceutical-intervention-type-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-intervention-type-code",
  "version" : "0.1.0",
  "name" : "FrPharmaceuticalInterventionTypeCode",
  "title" : "code system d'Interop'Santé - Codes du type d'intervention pharmaceutique",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-05-27T07:06:59+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  }],
  "description" : "Le système de codage pour le typage de l'intervention pharmaceutique.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "Ajout (prescription nouvelle)"
  },
  {
    "code" : "2",
    "display" : "Arrêt"
  },
  {
    "code" : "3",
    "display" : "Substitution/Echange"
  },
  {
    "code" : "4",
    "display" : "Choix de la voie d'administration"
  },
  {
    "code" : "5",
    "display" : "Suivi thérapeutique"
  },
  {
    "code" : "6",
    "display" : "Optimisation modalités d'administration"
  },
  {
    "code" : "7",
    "display" : "Adaptation posologique"
  }]
}

```
