# code system d'Interop'Santé - Codes de devenir de l'intervention pharmaceutique - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system d'Interop'Santé - Codes de devenir de l'intervention pharmaceutique**

## CodeSystem: code system d'Interop'Santé - Codes de devenir de l'intervention pharmaceutique 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-intervention-devenir-code | *Version*:0.1.0 |
| Draft as of 2026-04-30 | *Computable Name*:FrPharmaceuticalInterventionDevenirCode |

 
Le système de codage pour le typage du devenir l’intervention pharmaceutique. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrPharmaceuticalInterventionDevenirCodeValueSet](ValueSet-fr-pharmaceutical-intervention-devenir-code-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-pharmaceutical-intervention-devenir-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-intervention-devenir-code",
  "version" : "0.1.0",
  "name" : "FrPharmaceuticalInterventionDevenirCode",
  "title" : "code system d'Interop'Santé - Codes de devenir de l'intervention pharmaceutique",
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
  "description" : "Le système de codage pour le typage du devenir l'intervention pharmaceutique.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "Acceptée"
  },
  {
    "code" : "2",
    "display" : "Non-acceptée"
  }]
}

```
