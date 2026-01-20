# code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT**

## CodeSystem: code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-discrepancy | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRMedicationReconciliationDiscrepancy |

 
Le système de codage de la divergence identifiée sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRMedicationReconciliationQualifiedDiscrepancy](ValueSet-fr-medication-reconciliation-qualified-discrepancy.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-medication-reconciliation-discrepancy",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-discrepancy",
  "version" : "0.1.0",
  "name" : "FRMedicationReconciliationDiscrepancy",
  "title" : "code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT",
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
  "description" : "Le système de codage de la divergence identifiée sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
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
  "count" : 4,
  "property" : [
    {
      "code" : "isQualified",
      "description" : "Une divergence peut ne pas être qualifiée. Une absence de divergence n'a pas à être qualifiée.",
      "type" : "boolean"
    }
  ],
  "concept" : [
    {
      "code" : "10000001",
      "display" : "Pas de divergence",
      "definition" : "Pas de divergence entre la ligne de traitement du Bilan Médicamenteux et celle du Traitement Courant",
      "property" : [
        {
          "code" : "isQualified",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000002",
      "display" : "Divergence non qualifiée",
      "definition" : "Divergence identifiée mais non qualifiée, entre la ligne de traitement du Bilan Médicamenteux et celle du Traitement Courant",
      "property" : [
        {
          "code" : "isQualified",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000003",
      "display" : "Divergence intentionnelle",
      "definition" : "Divergence identifiée et qualifiée, entre la ligne de traitement du Bilan Médicamenteux et celle du Traitement Courant. Le Bilan Médicamenteux a été pris en compte par le prescripteur dans le Traitement Courant.",
      "property" : [
        {
          "code" : "isQualified",
          "valueBoolean" : true
        }
      ]
    },
    {
      "code" : "10000004",
      "display" : "Divergence non-intentionnelle",
      "definition" : "Divergence identifiée et qualifiée, entre la ligne de traitement du Bilan Médicamenteux et celle du Traitement Courant. Méconnaissance, par le prescripteur, du Bilan Médicamenteux dans le Traitement Courant.",
      "property" : [
        {
          "code" : "isQualified",
          "valueBoolean" : true
        }
      ]
    }
  ]
}

```
