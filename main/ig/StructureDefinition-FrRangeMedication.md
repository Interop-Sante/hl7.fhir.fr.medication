# Range with UCUM or EDQM codes if code is used - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Range with UCUM or EDQM codes if code is used**

## Data Type Profile: Range with UCUM or EDQM codes if code is used 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRangeMedication | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrRangeMedication |

 
Range with low and high unit UCUM or EDQM codes if code is used 

**Utilisations:**

* Utiliser ce Profil de type de données: [FR Current Medication MedicationStatement](StructureDefinition-fr-current-medication-medicationstatement.md), [FR Medication History MedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md), [FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md) and [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/FrRangeMedication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrRangeMedication.csv), [Excel](StructureDefinition-FrRangeMedication.xlsx), [Schematron](StructureDefinition-FrRangeMedication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrRangeMedication",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRangeMedication",
  "version" : "0.1.0",
  "name" : "FrRangeMedication",
  "title" : "Range with UCUM or EDQM codes if code is used",
  "status" : "draft",
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
  "description" : "Range with low and high unit UCUM or EDQM codes if code is used",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Range",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Range",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Range",
        "path" : "Range",
        "short" : "Set of values bounded by precise low and high fixed quantity (no comparator)",
        "definition" : "A set of ordered Quantities defined by a precise low and high limit defined by a fixed quantity (no comparator)",
        "comment" : "The stated low and high value are assumed to have arbitrarily high precision when it comes to determining which values are in the range. I.e. 1.99 is not in the range 2 -> 3. Low and high limit are precisely defined, no element 'comparator' in the simpleQuantity defining each bound. The limits are defined by a fixed quantity (no comparator)."
      },
      {
        "id" : "Range.low",
        "path" : "Range.low",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication"
            ]
          }
        ]
      },
      {
        "id" : "Range.high",
        "path" : "Range.high",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication"
            ]
          }
        ]
      }
    ]
  }
}

```
