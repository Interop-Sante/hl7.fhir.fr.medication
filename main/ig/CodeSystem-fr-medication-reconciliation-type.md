# code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT**

## CodeSystem: code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-type | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRMedicationReconciliationType |

 
Le système de codage du type d’écart/erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRMedicationReconciliationType](ValueSet-fr-medication-reconciliation-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-medication-reconciliation-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-type",
  "version" : "0.1.0",
  "name" : "FRMedicationReconciliationType",
  "title" : "code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT",
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
  "description" : "Le système de codage du type d'écart/erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
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
  "count" : 7,
  "concept" : [
    {
      "code" : "10000001",
      "display" : "Erreur posologie"
    },
    {
      "code" : "10000002",
      "display" : "Oubli médicament prescrit"
    },
    {
      "code" : "10000003",
      "display" : "Oubli automédication"
    },
    {
      "code" : "10000004",
      "display" : "Erreur substitution"
    },
    {
      "code" : "10000005",
      "display" : "Erreur forme galénique"
    },
    {
      "code" : "10000006",
      "display" : "Ajout"
    },
    {
      "code" : "10000007",
      "display" : "Autre"
    }
  ]
}

```
