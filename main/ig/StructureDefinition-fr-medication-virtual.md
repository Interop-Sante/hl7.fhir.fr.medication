# FR Medication Virtual - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication Virtual**

## Resource Profile: FR Medication Virtual 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-virtual | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRMedicationVirtual |

 
Virtual medication composed of one to many substances. 

**Utilisations:**

* Ce Profil nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication-virtual)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication-virtual.csv), [Excel](StructureDefinition-fr-medication-virtual.xlsx), [Schematron](StructureDefinition-fr-medication-virtual.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-virtual",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-virtual",
  "version" : "0.1.0",
  "name" : "FRMedicationVirtual",
  "title" : "FR Medication Virtual",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-01-20T09:44:19+00:00",
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
  "description" : "Virtual medication composed of one to many substances.",
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
        "id" : "Medication.form",
        "path" : "Medication.form",
        "comment" : "When branded medication is referenced from MedicationRequest, this is the ordered form.  When Medication is referenced within MedicationDispense, this is the dispensed form.  When branded medication is referenced within MedicationAdministration, this is administered form.",
        "min" : 1,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-mp-dose-form"
        }
      },
      {
        "id" : "Medication.ingredient",
        "path" : "Medication.ingredient",
        "min" : 1
      },
      {
        "id" : "Medication.ingredient.strength",
        "path" : "Medication.ingredient.strength",
        "min" : 1,
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRatioMedication"
            ]
          }
        ]
      }
    ]
  }
}

```
