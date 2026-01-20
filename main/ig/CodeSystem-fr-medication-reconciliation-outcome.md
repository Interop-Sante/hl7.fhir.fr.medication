# code system Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT**

## CodeSystem: code system Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-outcome | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRMedicationReconciliationOutcome |

 
Le système de codage de la gravité de l’erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRMedicationReconciliationOutcome](ValueSet-fr-medication-reconciliation-outcome.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-medication-reconciliation-outcome",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-reconciliation-outcome",
  "version" : "0.1.0",
  "name" : "FRMedicationReconciliationOutcome",
  "title" : "code system Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT",
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
  "description" : "Le système de codage de la gravité de l'erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
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
      "display" : "Mineure",
      "definition" : "Erreur médicamenteuse sans conséquence pour le patient."
    },
    {
      "code" : "10000002",
      "display" : "Significative",
      "definition" : "Erreur médicamenteuse avec surveillance indispensable pour le patient mais sans conséquence clinique pour lui."
    },
    {
      "code" : "10000003",
      "display" : "Majeure",
      "definition" : "Erreur médicamenteuse avec conséquences cliniques temporaires pour le patient : à l’origine d’une atteinte physique ou psychologique réversible qui nécessite un traitement ou une intervention ou un transfert vers un (autre) établissement, induction ou allongement du séjour hospitalier."
    },
    {
      "code" : "10000004",
      "display" : "Critique",
      "definition" : "Erreur médicamenteuse avec conséquences cliniques permanentes pour le patient : à l’origine d’une atteinte physique ou psychologique permanente irréversible."
    },
    {
      "code" : "10000005",
      "display" : "Catastrophique",
      "definition" : "Erreur médicamenteuse avec mise en jeu du pronostic vital ou décès du patient."
    }
  ]
}

```
