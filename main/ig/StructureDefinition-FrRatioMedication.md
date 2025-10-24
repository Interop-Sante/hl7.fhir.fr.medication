# Ratio with UCUM or EDQM codes if code is used - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ratio with UCUM or EDQM codes if code is used**

## Data Type Profile: Ratio with UCUM or EDQM codes if code is used 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRatioMedication | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:FrRatioMedication |

 
Ratio with numerator and denominator unit UCUM or EDQM encoded if code is used 

**Usages:**

* Use this DataType Profile: [FR Current Medication MedicationStatement](StructureDefinition-fr-current-medication-medicationstatement.md), [FR Medication History MedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md), [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md), [FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md)...Show 3 more,[FR Medication Virtual](StructureDefinition-fr-medication-virtual.md),[FR Medication](StructureDefinition-fr-medication.md)and[FR Medication Request](StructureDefinition-fr-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/FrRatioMedication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrRatioMedication.csv), [Excel](StructureDefinition-FrRatioMedication.xlsx), [Schematron](StructureDefinition-FrRatioMedication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrRatioMedication",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRatioMedication",
  "version" : "0.1.0",
  "name" : "FrRatioMedication",
  "title" : "Ratio with UCUM or EDQM codes if code is used",
  "status" : "draft",
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
  "description" : "Ratio with numerator and denominator unit UCUM or EDQM encoded if code is used",
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
  "type" : "Ratio",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Ratio",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Ratio",
        "path" : "Ratio",
        "short" : "A ratio of two precise Quantity values - a numerator and a denominator",
        "definition" : "A relationship of two Quantity values - expressed as a precise numerator and a precise denominator."
      },
      {
        "id" : "Ratio.numerator",
        "path" : "Ratio.numerator",
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
        "id" : "Ratio.denominator",
        "path" : "Ratio.denominator",
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
