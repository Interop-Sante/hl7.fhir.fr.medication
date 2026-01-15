# FR Current Medication MedicationStatement - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Current Medication MedicationStatement**

## Resource Profile: FR Current Medication MedicationStatement 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-current-medication-medicationstatement | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FRCurrentMedicationMedicationStatement |

 
Profil de la ressource**MedicationStatement**du traitement médicamenteux courant. Current Medication MedicationStatement resource profile 

### Usage

Chaque ressource **MedicationStatement** y représente une ligne de médicament du traitement médicamenteux courant.

When interpreting a medicationStatement, the value of the status and NotTaken needed to be considered:

*  
1. MedicationStatement.status + MedicationStatement.wasNotTaken
 
*  
1. Status=Active + NotTaken=T = Not currently taking
 
*  
1. Status=Completed + NotTaken=T = Not taken in the past
 
*  
1. Status=Intended + NotTaken=T = No intention of taking
 
*  
1. Status=Active + NotTaken=F = Taking, but not as prescribed
 
*  
1. Status=Active + NotTaken=F = Taking
 
*  
1. Status=Intended +NotTaken= F = Will be taking (not started)
 
*  
1. Status=Completed + NotTaken=F = Taken in past
 
*  
1. Status=In Error + NotTaken=N/A = In Error.
 

**Utilisations:**

* Référer à ce Profil: [FR Current Medication Composition](StructureDefinition-fr-current-medication-composition.md) and [FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-current-medication-medicationstatement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-current-medication-medicationstatement.csv), [Excel](StructureDefinition-fr-current-medication-medicationstatement.xlsx), [Schematron](StructureDefinition-fr-current-medication-medicationstatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-current-medication-medicationstatement",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-current-medication-medicationstatement",
  "version" : "0.1.0",
  "name" : "FRCurrentMedicationMedicationStatement",
  "title" : "FR Current Medication MedicationStatement",
  "status" : "draft",
  "date" : "2026-01-15T08:54:26+00:00",
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
  "description" : "Profil de la ressource *MedicationStatement* du traitement médicamenteux courant.\nCurrent Medication MedicationStatement resource profile",
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
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationStatement",
        "path" : "MedicationStatement",
        "short" : "Ligne de traitement médicamenteux du Traitement Médicamenteux Courant",
        "definition" : "Ligne de traitement médicamenteux du Traitement Médicamenteux Courant hospitalier."
      },
      {
        "id" : "MedicationStatement.implicitRules",
        "path" : "MedicationStatement.implicitRules",
        "max" : "0"
      },
      {
        "id" : "MedicationStatement.language",
        "path" : "MedicationStatement.language",
        "defaultValueCode" : "fr-FR"
      },
      {
        "id" : "MedicationStatement.status",
        "path" : "MedicationStatement.status",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.medication[x]",
        "path" : "MedicationStatement.medication[x]",
        "short" : "Le médicament constitutif de cette ligne",
        "definition" : "Identifie le médicament constitutif de cette ligne. C'est le lien vers une ressource *Medication* qui décrit ce médicament.",
        "comment" : "Même si le médicament n'est composé que d'une spécialité (par exemple un comprimé), il est défini par référence à une ressource *Medication* qui décrira sa composition d'une seule spécialité",
        "requirements" : "traitement univoque de l'élément *medication[x]*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.medication[x].reference",
        "path" : "MedicationStatement.medication[x].reference",
        "requirements" : "Identification du *médicament* uniquement par référence à une ressource *Medication* profilée *fr_medication*\\.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.medication[x].type",
        "path" : "MedicationStatement.medication[x].type",
        "patternUri" : "Medication"
      },
      {
        "id" : "MedicationStatement.medication[x].identifier",
        "path" : "MedicationStatement.medication[x].identifier",
        "requirements" : "Identification du *médicament* uniquement par référence à une ressource *Medication* profilée *fr-medication*\\.",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.subject",
        "path" : "MedicationStatement.subject",
        "short" : "Le patient qui prend cette ligne de traitement médicamenteux",
        "definition" : "Le patient qui prend cette ligne de traitement médicamenteux. Le Traitement Médicamenteux Courant ne concerne qu'un patient. Toutes ses lignes doivent référencer le même patient.",
        "comment" : "Obligatoire dans la ressource FHIR *MedicationStatement* originelle, donc DOIT ABSOLUMENT être identique à la personne à laquelle se rapporte ce document (voir element *subject* de la ressource parente *Composition*\\).",
        "requirements" : "Le Traitement Médicamenteux Courant ne concerne qu'un seul et même patient. Toutes ses lignes doivent référencer le même patient, celui référencé par l'element *subject* de la ressource parente *Composition*\\.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.subject.type",
        "path" : "MedicationStatement.subject.type",
        "patternUri" : "Patient"
      },
      {
        "id" : "MedicationStatement.dosage",
        "path" : "MedicationStatement.dosage",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.doseAndRate",
        "path" : "MedicationStatement.dosage.doseAndRate",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.doseAndRate.dose[x]",
        "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
        "short" : "Amount of medication per dose. No use of element 'comparator' in the simpleQuantity definitions.",
        "type" : [
          {
            "code" : "Range",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRangeMedication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.doseAndRate.rate[x]",
        "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRatioMedication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.maxDosePerPeriod",
        "path" : "MedicationStatement.dosage.maxDosePerPeriod",
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRatioMedication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.maxDosePerAdministration",
        "path" : "MedicationStatement.dosage.maxDosePerAdministration",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.maxDosePerLifetime",
        "path" : "MedicationStatement.dosage.maxDosePerLifetime",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
