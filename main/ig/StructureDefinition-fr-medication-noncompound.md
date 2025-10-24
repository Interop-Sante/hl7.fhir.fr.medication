# FR Medication Non Compound - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication Non Compound**

## Resource Profile: FR Medication Non Compound 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:FRMedicationNonCompound |

 
Simple prescribed, dispensed, administered or used medication composed of one to many substances. If composed of many substance, the strengh SHALL be defined. 

 
Simple medication description, include those composed of many substances. 

**Usages:**

* Refer to this Profile: [FR Medication Compound](StructureDefinition-fr-medication-compound.md) and [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication-noncompound)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication-noncompound.csv), [Excel](StructureDefinition-fr-medication-noncompound.xlsx), [Schematron](StructureDefinition-fr-medication-noncompound.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-noncompound",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound",
  "version" : "0.1.0",
  "name" : "FRMedicationNonCompound",
  "title" : "FR Medication Non Compound",
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
  "description" : "Simple prescribed, dispensed, administered or used medication composed of one to many substances. If composed of many substance, the strengh SHALL be defined.",
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
  "purpose" : "Simple medication description, include those composed of many substances.",
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
        "path" : "Medication",
        "short" : "Simple Medication",
        "definition" : "This ressource is profiled for describing a simple medication (vs compound medication) in the presription line represented by a MedicationRequest, a MedicationDispense or a MedicationUsage (pka MedicationStatement).",
        "comment" : "A simple medication is made of one single component made of one to many substances.\r\nOptionality of doseForm, amount and strehgth attributes supports different levels of granularity.\r\nThe coarser level only defines the substances it's made of. For instance, contaning only paracetamol or containing only glucose.\r\nThe finest level is the defines the composition and the dose form. For instance, paracetamol 500 mg tablet or  500 mL glucose 5% (50 mg/mL) solution for injection.",
        "constraint" : [
          {
            "key" : "frmed-med-1",
            "severity" : "error",
            "human" : "If fr-medication is a simple medication, ingredient SHALL NOT be a Reference",
            "expression" : "code.coding.system.exists() implies (ingredient.item as Reference).empty()",
            "source" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          }
        ]
      },
      {
        "id" : "Medication.extension",
        "path" : "Medication.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Medication.extension:drugCharacteristic",
        "path" : "Medication.extension",
        "sliceName" : "drugCharacteristic",
        "short" : "descriptive properties of the medicine",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-drug-characteristic"
            ]
          }
        ]
      },
      {
        "id" : "Medication.code",
        "path" : "Medication.code",
        "definition" : "A RIUM id that specify this medication.",
        "requirements" : "The developper SHALL support the infusion use case, which requires a multi-compounds Medication ressource.",
        "min" : 1
      },
      {
        "id" : "Medication.code.coding",
        "path" : "Medication.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "coding.system"
            }
          ],
          "description" : "One slice for code from the official medication referential in France: Référentiel Unique d'Interopérabilité du Médicament (RUIM) browsable with https://smt.esante.gouv.fr/explorer-les-concepts/terminologie-ref_interop_med/ and downloadable through https://smt.esante.gouv.fr/catalogue-des-terminologies/",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Medication.code.coding:nonCompoundCode",
        "path" : "Medication.code.coding",
        "sliceName" : "nonCompoundCode",
        "short" : "Codes that identify this simple medication",
        "definition" : "Codes that identify this simple medication",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "description" : "UCD, SMS or ANSM code",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-code"
        }
      },
      {
        "id" : "Medication.code.text",
        "path" : "Medication.code.text",
        "comment" : "When some code is available, the text is the same as a displayName of one of the codings."
      },
      {
        "id" : "Medication.form",
        "path" : "Medication.form",
        "comment" : "When branded medication is referenced from MedicationRequest, this is the ordered form.  When Medication is referenced within MedicationDispense, this is the dispensed form.  When branded medication is referenced within MedicationAdministration, this is administered form.",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-mp-dose-form"
        }
      },
      {
        "id" : "Medication.amount",
        "path" : "Medication.amount",
        "comment" : "If the strenght of the ingredients is a concentration, it is the volume (liquid) or mass (ointment) in the Medication of the MedicationRequest, Dispense or Use (pka MedicationStatement).\r\nIf there is only one ingredient and the strenght is not defined, it is the quantity of the substance."
      },
      {
        "id" : "Medication.ingredient",
        "path" : "Medication.ingredient",
        "definition" : "Identifies a particular constituent in the product."
      },
      {
        "id" : "Medication.ingredient.item[x]",
        "path" : "Medication.ingredient.item[x]",
        "short" : "Substance",
        "definition" : "The actual substance (simple ingredient) of the simple medication (ie. made of single component).",
        "requirements" : "The composition of the medication for this ingredient SHALL be defined for prescrption of virtual medication so that strength can be defined. It MAY be defined for other medication",
        "type" : [
          {
            "code" : "CodeableConcept",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-mp-substance"
            ]
          }
        ]
      },
      {
        "id" : "Medication.ingredient.strength",
        "path" : "Medication.ingredient.strength",
        "definition" : "Specifies how much of the items there are in this Medication",
        "comment" : "The quantity of this igredient defining the medication. For instance, 50 mg/mL defining the glucose quantity for the glucose 5% or 500 mg medicine and 30 mg respectively defining the paracetamol and the codeine quantity for the paracetamol+codeine 500 mg+30 mg medicine.",
        "requirements" : "In cas of virtual medication strength SHALL be provided",
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
        "definition" : "This applies for the proprietary named medication involved in a MedicationDispense, MedicationAdministration or a MedicationUse.",
        "comment" : "WARNING: it is the batch number of the part.\r\nIf it is not discerned for each part, it SHALL NOT be provided here but at the grouping level where it is defined, most often the UCD."
      }
    ]
  }
}

```
