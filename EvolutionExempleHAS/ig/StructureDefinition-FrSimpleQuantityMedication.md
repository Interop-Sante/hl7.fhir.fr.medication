# SimpleQuantity with UCUM or EDQM codes or code not used - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SimpleQuantity with UCUM or EDQM codes or code not used**

## Data Type Profile: SimpleQuantity with UCUM or EDQM codes or code not used 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrSimpleQuantityMedication |

 
simple quantity datatype requiring a UCUM or EDQM code or no code (only unti) 

**Usages:**

* Use this DataType Profile: [Range with UCUM or EDQM codes if code is used](StructureDefinition-FrRangeMedication.md), [Ratio with UCUM or EDQM codes if code is used](StructureDefinition-FrRatioMedication.md), [FR Current Medication MedicationStatement](StructureDefinition-fr-current-medication-medicationstatement.md), [FR Medication History MedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md)...Show 2 more,[FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md)and[FR Medication Request](StructureDefinition-fr-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/FrSimpleQuantityMedication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FrSimpleQuantityMedication.csv), [Excel](StructureDefinition-FrSimpleQuantityMedication.xlsx), [Schematron](StructureDefinition-FrSimpleQuantityMedication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FrSimpleQuantityMedication",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication",
  "version" : "0.1.0",
  "name" : "FrSimpleQuantityMedication",
  "title" : "SimpleQuantity with UCUM or EDQM codes or code not used",
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
  "description" : "simple quantity datatype requiring a UCUM or EDQM code or no code (only unti)",
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
  "type" : "Quantity",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/SimpleQuantity",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Quantity",
        "path" : "Quantity",
        "short" : "A fixed quantity (no comparator) with UCUM or EDQM code or no code",
        "definition" : "The comparator is not used on a SimpleQuantity. The code SHALL be a UCUM or EDQM code if used.",
        "comment" : "The context of use may frequently define what kind of quantity this is and therefore what kind of units can be used. The context of use explicitely excludes the use of the simpleQuantity \"comparator\" element.",
        "constraint" : [
          {
            "key" : "ele-1",
            "severity" : "error",
            "human" : "All FHIR elements must have a @value or children",
            "expression" : "hasValue() or (children().count() > id.count())",
            "xpath" : "@value|f:*|h:div",
            "source" : "Quantity"
          },
          {
            "key" : "fr-med-smpl-quant-1",
            "severity" : "error",
            "human" : "system SHALL be UCUM or EDQM if code is used",
            "expression" : "code.exists() implies (system.exists() and (system = 'http://standardterms.edqm.eu' or system = 'http://unitsofmeasure.org'))",
            "source" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication"
          },
          {
            "key" : "fr-med-smpl-quant-2",
            "severity" : "error",
            "human" : "system SHALL not be used if code is not used",
            "expression" : "code.empty() implies system.empty()",
            "source" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication"
          }
        ]
      }
    ]
  }
}

```
