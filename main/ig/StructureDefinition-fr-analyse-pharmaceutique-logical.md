# Résultat d'analyse pharmaceutique - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Résultat d'analyse pharmaceutique**

## Logical Model: Résultat d'analyse pharmaceutique 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-analyse-pharmaceutique-logical | *Version*:0.1.0 |
| Draft as of 2026-05-19 | *Computable Name*:FrAnalysePharmaceutiqueLogical |

 
Structure du résultat d’analyse pharmaceutique (validation ou intervention pharmacetique) 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-analyse-pharmaceutique-logical)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-analyse-pharmaceutique-logical.csv), [Excel](StructureDefinition-fr-analyse-pharmaceutique-logical.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-analyse-pharmaceutique-logical",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-analyse-pharmaceutique-logical",
  "version" : "0.1.0",
  "name" : "FrAnalysePharmaceutiqueLogical",
  "title" : "Résultat d'analyse pharmaceutique",
  "status" : "draft",
  "date" : "2026-05-19T09:10:48+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  }],
  "description" : "Structure du résultat d'analyse pharmaceutique (validation ou intervention pharmacetique)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-analyse-pharmaceutique-logical",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-analyse-pharmaceutique-logical",
      "path" : "fr-analyse-pharmaceutique-logical",
      "short" : "Résultat d'analyse pharmaceutique",
      "definition" : "Structure du résultat d'analyse pharmaceutique (validation ou intervention pharmacetique)"
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.date",
      "path" : "fr-analyse-pharmaceutique-logical.date",
      "short" : "Date de l'analyse pharmaceutique",
      "definition" : "Date de l'analyse pharmaceutique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.auteur",
      "path" : "fr-analyse-pharmaceutique-logical.auteur",
      "short" : "Identité du professionnel ayant effectué l'analyse",
      "definition" : "Identité du professionnel ayant effectué l'analyse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.lignePrescriptionAnalysee",
      "path" : "fr-analyse-pharmaceutique-logical.lignePrescriptionAnalysee",
      "short" : "Ligne(s) de prescription analysée(s) portant les informations de contexte des lignes analysées",
      "definition" : "Ligne(s) de prescription analysée(s) portant les informations de contexte des lignes analysées",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.resultatAnalyse",
      "path" : "fr-analyse-pharmaceutique-logical.resultatAnalyse",
      "short" : "Informations caractérisant le résultat de l'analyse pharmaceutique",
      "definition" : "Informations caractérisant le résultat de l'analyse pharmaceutique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.type",
      "path" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.type",
      "short" : "Validation ou Intervention pharmaceutique",
      "definition" : "Validation ou Intervention pharmaceutique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.commentaire",
      "path" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.commentaire",
      "short" : "Commentaire de validation ou d'intervention pharmaceutique",
      "definition" : "Commentaire de validation ou d'intervention pharmaceutique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.proposition",
      "path" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.proposition",
      "short" : "Proposition de ajout/modofcation/suppression de ligne de prescription",
      "definition" : "Proposition de ajout/modofcation/suppression de ligne de prescription",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.typeIntervention",
      "path" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.typeIntervention",
      "short" : "Dans le cas d'une intervention pharmaceutique, type d'intervention",
      "definition" : "Dans le cas d'une intervention pharmaceutique, type d'intervention",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.typeProbleme",
      "path" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.typeProbleme",
      "short" : "Dans le cas d'une intervention pharmaceutique, type de problème détecté",
      "definition" : "Dans le cas d'une intervention pharmaceutique, type de problème détecté",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.devenirIntervention",
      "path" : "fr-analyse-pharmaceutique-logical.resultatAnalyse.devenirIntervention",
      "short" : "Dans le cas d'une intervention pharmaceutique, devenir de l'intervention",
      "definition" : "Dans le cas d'une intervention pharmaceutique, devenir de l'intervention",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
