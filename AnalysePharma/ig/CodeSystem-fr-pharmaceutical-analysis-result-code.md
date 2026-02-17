# code system d'Interop'Santé - Codes de résultat d'analyse pharmaceutique - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system d'Interop'Santé - Codes de résultat d'analyse pharmaceutique**

## CodeSystem: code system d'Interop'Santé - Codes de résultat d'analyse pharmaceutique 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-analysis-result-code | *Version*:0.1.0 |
| Draft as of 2026-02-17 | *Computable Name*:FrPharmaceuticalAnalysisResultCode |

 
Le système de codage pour le typage du résultat d’analyse pharmaceutique. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrPharmaceuticalAnalysisResultCodeValueSet](ValueSet-fr-pharmaceutical-analysis-result-code-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-pharmaceutical-analysis-result-code",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-analysis-result-code",
  "version" : "0.1.0",
  "name" : "FrPharmaceuticalAnalysisResultCode",
  "title" : "code system d'Interop'Santé - Codes de résultat d'analyse pharmaceutique",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-02-17T09:55:45+00:00",
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
  "description" : "Le système de codage pour le typage du résultat d'analyse pharmaceutique.",
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
  "count" : 2,
  "concept" : [
    {
      "code" : "VALIDATION",
      "display" : "Validation pharmaceutique"
    },
    {
      "code" : "INTERVENTION",
      "display" : "Intervention pharmaceutique"
    }
  ]
}

```
