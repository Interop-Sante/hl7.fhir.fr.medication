# code system d'Interop'Santé - Codes du problème identifié dans l'intervention pharmaceutique - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system d'Interop'Santé - Codes du problème identifié dans l'intervention pharmaceutique**

## CodeSystem: code system d'Interop'Santé - Codes du problème identifié dans l'intervention pharmaceutique 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-intervention-problem-code | *Version*:0.1.0 |
| Draft as of 2026-05-19 | *Computable Name*:FrPharmaceuticalInterventionProblemCode |

 
Le système de codage pour le typage du problème identifié dans l’intervention pharmaceutique. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrPharmaceuticalInterventionProblemCodeValueSet](ValueSet-fr-pharmaceutical-intervention-problem-code-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-pharmaceutical-intervention-problem-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-pharmaceutical-intervention-problem-code",
  "version" : "0.1.0",
  "name" : "FrPharmaceuticalInterventionProblemCode",
  "title" : "code system d'Interop'Santé - Codes du problème identifié dans l'intervention pharmaceutique",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-05-19T09:10:48+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  }],
  "description" : "Le système de codage pour le typage du problème identifié dans l'intervention pharmaceutique.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "content" : "complete",
  "count" : 14,
  "concept" : [{
    "code" : "1",
    "display" : "Non conformité aux référentiels / Contre-indication"
  },
  {
    "code" : "2",
    "display" : "Indication non traitée"
  },
  {
    "code" : "3",
    "display" : "Sous-dosage"
  },
  {
    "code" : "4",
    "display" : "Surdosage"
  },
  {
    "code" : "5",
    "display" : "Médicament non indiqué"
  },
  {
    "code" : "6.1",
    "display" : "Interaction - A prendre en compte"
  },
  {
    "code" : "6.2",
    "display" : "Interaction - Précaution d'emploi"
  },
  {
    "code" : "6.3",
    "display" : "Interaction - Association déconseillée"
  },
  {
    "code" : "6.4",
    "display" : "Interaction - Association contre-indiquée"
  },
  {
    "code" : "6.5",
    "display" : "Interaction - Publiée (=hors GTIAM de l'AFSSAPS)"
  },
  {
    "code" : "7",
    "display" : "Effet indésirable"
  },
  {
    "code" : "8",
    "display" : "Voie/administration inappropriée"
  },
  {
    "code" : "9",
    "display" : "Traitement non reçu"
  },
  {
    "code" : "10",
    "display" : "Monitorage à suivre"
  }]
}

```
