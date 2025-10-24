# code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT**

## CodeSystem: code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-resolution | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:FRMedicationReconciliationResolution |

 
Le système de codage de la résolution d’une divergence sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRMedicationReconciliationResolution](ValueSet-fr-medication-reconciliation-resolution.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-medication-reconciliation-resolution",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-resolution",
  "version" : "0.1.0",
  "name" : "FRMedicationReconciliationResolution",
  "title" : "code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT",
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
  "description" : "Le système de codage de la résolution d'une divergence sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "10000001",
      "display" : "Dose corrigée",
      "definition" : "La dose initialement prescrite a été corrigée."
    },
    {
      "code" : "10000002",
      "display" : "Repris",
      "definition" : "La prescription interrompue a été reprise."
    },
    {
      "code" : "10000003",
      "display" : "Spécialité corrigée",
      "definition" : "Le choix de la spécialité prescrite a été corrigé."
    },
    {
      "code" : "10000004",
      "display" : "Forme corrigée",
      "definition" : "La forme galénique prescrite a été corrigée."
    },
    {
      "code" : "10000005",
      "display" : "Arrêt",
      "definition" : "La prescription a été arrêtée."
    }
  ]
}

```
