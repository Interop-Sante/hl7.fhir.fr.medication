# code system Interop'Santé - Statut d'une ligne de traitement d'une FCT - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Statut d'une ligne de traitement d'une FCT**

## CodeSystem: code system Interop'Santé - Statut d'une ligne de traitement d'une FCT 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-status | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRMedicationReconciliationStatus |

 
Le système de codage du statut d’une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRMedicationReconciliationStatus](ValueSet-fr-medication-reconciliation-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-medication-reconciliation-status",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-status",
  "version" : "0.1.0",
  "name" : "FRMedicationReconciliationStatus",
  "title" : "code system Interop'Santé - Statut d'une ligne de traitement d'une FCT",
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
  "description" : "Le système de codage du statut d'une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
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
      "display" : "Continué",
      "definition" : "La spécialité et la posologie de la ligne du Traitement Courant sont identiques à celles de la ligne du traitement antérieur (Bilan Médicamenteux)."
    },
    {
      "code" : "10000002",
      "display" : "Équivalence",
      "definition" : "La ligne du traitement antérieur (Bilan Médicamenteux) est poursuivie dans le Traitement Courant, mais avec un médicament équivalent. Il s'agit souvent de substituer la spécialité du traitement antérieur par la spécialité au Livret de l'établissement."
    },
    {
      "code" : "10000003",
      "display" : "Arrêté",
      "definition" : "La ligne de traitement antérieur (Bilan Médicamenteux) ne figure pas dans le Traitement Courant. Cette ligne de traitement a donc été arrêtée."
    },
    {
      "code" : "10000004",
      "display" : "Modifié",
      "definition" : "L'intention thérapeutique de la ligne du traitement antérieur (Bilan Médicamenteux) est poursuivie mais avec modification du principe actif et/ou de la forme galénique et/ou de la voie d'adminisitration et/ou des modialités d'administration et/ou de la posologie."
    },
    {
      "code" : "10000005",
      "display" : "Initié",
      "definition" : "La ligne du traitement courant ne figure pas dans le traitement antérieur (Bilan Médicamenteux). Cette ligne de traitement a donc été initiée/démarrée."
    }
  ]
}

```
