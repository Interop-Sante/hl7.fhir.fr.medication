# Ligne de prescription - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ligne de prescription**

## Logical Model: Ligne de prescription 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-ligne-prescription | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:LignePrescription |

 
Structuration d’une ligne de prescription [WIP - à compléter]. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-ligne-prescription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-ligne-prescription.csv), [Excel](StructureDefinition-fr-ligne-prescription.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-ligne-prescription",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-ligne-prescription",
  "version" : "0.1.0",
  "name" : "LignePrescription",
  "title" : "Ligne de prescription",
  "status" : "draft",
  "date" : "2025-10-23T14:53:51+00:00",
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
  "description" : "Structuration d'une ligne de prescription [WIP - à compléter].",
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
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-ligne-prescription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-ligne-prescription",
        "path" : "fr-ligne-prescription",
        "short" : "Ligne de prescription",
        "definition" : "Structuration d'une ligne de prescription [WIP - à compléter]."
      },
      {
        "id" : "fr-ligne-prescription.traitement",
        "path" : "fr-ligne-prescription.traitement",
        "short" : "Identification du traitement concerné par la ligne de prescription",
        "definition" : "Identification du traitement concerné par la ligne de prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-ligne-prescription.traitement.identifiant",
        "path" : "fr-ligne-prescription.traitement.identifiant",
        "short" : "Identifiant du traitement prescrit",
        "definition" : "Identifiant du traitement prescrit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "fr-ligne-prescription.traitement.dosage",
        "path" : "fr-ligne-prescription.traitement.dosage",
        "short" : "Quantité de substance active dans une unité de dispensation",
        "definition" : "Quantité de substance active dans une unité de dispensation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-ligne-prescription.traitement.dosage.valeur",
        "path" : "fr-ligne-prescription.traitement.dosage.valeur",
        "short" : "Valeur du dosage dans une unité de dispensiation",
        "definition" : "Valeur du dosage dans une unité de dispensiation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "fr-ligne-prescription.traitement.dosage.unite",
        "path" : "fr-ligne-prescription.traitement.dosage.unite",
        "short" : "Unité du dosage dans une unité de dispensiation",
        "definition" : "Unité du dosage dans une unité de dispensiation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-ligne-prescription.traitement.forme",
        "path" : "fr-ligne-prescription.traitement.forme",
        "short" : "Forme galénique de l'unité de dispensation",
        "definition" : "Forme galénique de l'unité de dispensation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-ligne-prescription.dateDebut",
        "path" : "fr-ligne-prescription.dateDebut",
        "short" : "Date de début de la ligne de prescription",
        "definition" : "Date de début de la ligne de prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "fr-ligne-prescription.dateFin",
        "path" : "fr-ligne-prescription.dateFin",
        "short" : "Date de fin de la ligne de prescription",
        "definition" : "Date de fin de la ligne de prescription",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "fr-ligne-prescription.posologie",
        "path" : "fr-ligne-prescription.posologie",
        "short" : "Structure de la posologie par séquences de prise.",
        "definition" : "Structure de la posologie par séquences de prise.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-posologie"
          }
        ]
      }
    ]
  }
}

```
