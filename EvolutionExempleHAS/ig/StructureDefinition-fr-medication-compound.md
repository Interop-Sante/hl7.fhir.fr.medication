# FR Medication Compound - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication Compound**

## Resource Profile: FR Medication Compound 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-compound | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrRedicationCompound |

 
A complex medication composed of two to many simple medication. The simple medications component are described in as many ingredient.itemReference referencing a Medication resource profiled fr-medication-non-compound. 

 
Compound medication description 

**Usages:**

* Refer to this Profile: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication-compound)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication-compound.csv), [Excel](StructureDefinition-fr-medication-compound.xlsx), [Schematron](StructureDefinition-fr-medication-compound.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-compound",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-compound",
  "version" : "0.1.0",
  "name" : "FrRedicationCompound",
  "title" : "FR Medication Compound",
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
  "description" : "A complex medication composed of two to many simple medication. The simple medications component are described in as many ingredient.itemReference referencing a Medication resource profiled fr-medication-non-compound.",
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
  "purpose" : "Compound medication description",
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
        "short" : "Definition of a Medication compound of a MedicinalRequest, Dispense or Usage",
        "definition" : "Medication compound of a Medication representing the composition of a MedicationRequest, a MedicationDispense or a MedicationUsage (pka MedicationStatement). For instance, Glucose 5% 1L part of an infusion made of 3 compounds, Glucose 5% 1L + Sodium chloride 3g + Potassium chloride 2g."
      },
      {
        "id" : "Medication.form",
        "path" : "Medication.form",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-mp-dose-form"
        }
      },
      {
        "id" : "Medication.ingredient",
        "path" : "Medication.ingredient",
        "short" : "Medication component of compound medication",
        "definition" : "Identifies a medicinal component of the compound medicinal product",
        "comment" : "The Medication SHALL contain ALL the items of the item element list AND ONLY the items of the item element list.",
        "min" : 1
      },
      {
        "id" : "Medication.ingredient.extension",
        "path" : "Medication.ingredient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Medication.ingredient.extension:IsVehicle",
        "path" : "Medication.ingredient.extension",
        "sliceName" : "IsVehicle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-is-vehicle"
            ]
          }
        ]
      },
      {
        "id" : "Medication.ingredient.item[x]",
        "path" : "Medication.ingredient.item[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "The actual compound",
        "definition" : "The actual compound, either nonproprietary named medication or branded named medication identified by a UCD code."
      },
      {
        "id" : "Medication.ingredient.item[x]:itemReference",
        "path" : "Medication.ingredient.item[x]",
        "sliceName" : "itemReference",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
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
