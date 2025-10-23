# FR Medication - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication**

## Resource Profile: FR Medication 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRMedication |

 
profil de la ressource Medication décrivant le médicament dans une ressource MedicationRequest ou MedicationStatement profilée par InterOp’Santé 

 
décrit le médicament figurant dans une ressource InterOp’Santé (fr) MedicationStatement (Bilan Médicamenteux, Conciliation) ou MedicationRequest (prescription) 

**Usages:**

* Refer to this Profile: [FR Current Medication MedicationStatement](StructureDefinition-fr-current-medication-medicationstatement.md), [FR Inpatient MedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md), [FR Medication History MedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md) and [FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md)
* Examples for this Profile: [Medication/InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md), [Medication/InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md) and [Medication/InLine-med-Paracetamol](Medication-InLine-med-Paracetamol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication.csv), [Excel](StructureDefinition-fr-medication.xlsx), [Schematron](StructureDefinition-fr-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication",
  "version" : "0.1.0",
  "name" : "FRMedication",
  "title" : "FR Medication",
  "status" : "draft",
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
  "description" : "profil de la ressource Medication décrivant le médicament dans une ressource MedicationRequest ou MedicationStatement profilée par InterOp'Santé",
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
  "purpose" : "décrit le médicament figurant dans une ressource InterOp'Santé (fr) MedicationStatement (Bilan Médicamenteux, Conciliation) ou MedicationRequest (prescription)",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication"
      },
      {
        "id" : "Medication.implicitRules",
        "path" : "Medication.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Medication.amount",
        "path" : "Medication.amount",
        "requirements" : "Le médicament d'une MedicationRequest ou MedicationStatement n'est pas une boite contenant plusieurs unités",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Medication.ingredient.item[x]",
        "path" : "Medication.ingredient.item[x]",
        "label" : "Ingredient",
        "definition" : "The actual ingredient - a medication defined as a codeable concept",
        "requirements" : "L'ingredient doit être un concept codé de Medicament réréfençant un système de codage à partir duquelle la description de cet ingredient-médicament peut être connue.\r\nContraint l'application qui consomme la ressource à savoir ce que représente ce concept : une spécialité (DOLIPRANE 500 mg comprimé), une DC (PARACETAMOL), un MV (médicament virtuel, PARACETAMOL 500 mg comprimé) en interrogeant le référentiel ad hoc.\r\nDans PN13, ce niveau d'information est convoyé par l'attribut ComposantPrescrit.TypeComposant qui prend ses valeurs dans la nomenclature SIPh-TypeComposant.\r\nCes éléments d'interopérabilité sémantique ne sont pas adressés par FHIR, pas directement dans MedicationRequest en tout cas. Le système de codage doit fournir le type de médicament que représente le concept codé.",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Medication.ingredient.strength",
        "path" : "Medication.ingredient.strength",
        "short" : "Quantity of ingredient present with UCUM or EDQM unit",
        "definition" : "Specifies how many (or how much) of the item there are in this Medication. No use of element 'comparator' in the simpleQuantity definitions.\r\n1. Si l'item est une UCD, alors la quantité doit être un nombre de cette UCD (ex: 3 [ampoules] d'une UCD ampoule de 1 g de Chlorure de sodium).\r\n2. Si l'item est une unité de médicament en DC quantifiée en quantité (ex. PARACETAMOL 500 mg), alors la quantité doit être un nombre d'unité de ce médicament en DC qantifiée (ex: 2 [unités]). \r\n3. Si l'item est un médicament en DC quantifié en concentration (ex: PARACETAMOL 2,4%) , alors la quantité est exprimée en volume (ex: 5 mL).\r\n4. Si l'item est un médicament en DC non quantifié (ex: PARACETAMOL), alors la quantité est exprimée en quantité (ex: 225 mg).",
        "comment" : "The Ratio datatype should only be used to express a relationship of two numbers if the relationship cannot be suitably expressed using a Quantity and a common unit.  Where the denominator value is known to be fixed to \"1\", Quantity should be used instead of Ratio.\r\nNo use of element 'comparator' in the simpleQuantity definitions.",
        "requirements" : "unit SHALL be UCUM or EDQM encoded",
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRatioMedication"
            ]
          }
        ]
      },
      {
        "id" : "Medication.batch",
        "path" : "Medication.batch",
        "max" : "0"
      }
    ]
  }
}

```
