# Medication descriptive properties - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication descriptive properties**

## Extension: Medication descriptive properties 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-drug-characteristic | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FrDrugCharacteristic |

Specifies descriptive properties of the medicine

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md) and [FR Medication Virtual](StructureDefinition-fr-medication-virtual.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-drug-characteristic)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-drug-characteristic.csv), [Excel](StructureDefinition-fr-drug-characteristic.xlsx), [Schematron](StructureDefinition-fr-drug-characteristic.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-drug-characteristic",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-drug-characteristic",
  "version" : "0.1.0",
  "name" : "FrDrugCharacteristic",
  "title" : "Medication descriptive properties",
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
  "description" : "Specifies descriptive properties of the medicine",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Medication"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Descriptive properties of the medicine",
        "definition" : "Specifies descriptive properties of the medicine, such as color, shape, imprints, release characteristic, etc."
      },
      {
        "id" : "Extension.extension:type",
        "path" : "Extension.extension",
        "sliceName" : "type",
        "short" : "Type of the drug characteristic",
        "definition" : "A code specifying which characteristic of the medicine is being described (for example, colour, shape, imprint, release characteristic).",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:type.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "type"
      },
      {
        "id" : "Extension.extension:type.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Type of characteristic",
        "definition" : "A code specifying which characteristic of the medicine is being described.",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://hl7.org/fhir/ValueSet/medicationknowledge-characteristic"
        }
      },
      {
        "id" : "Extension.extension:value",
        "path" : "Extension.extension",
        "sliceName" : "value",
        "short" : "Description of the characteristic",
        "definition" : "The description should be provided as a CodeableConcept, SimpleQuantity or an image. The description can be a string only when these others are not available.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:value.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:value.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:value.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "base64Binary"
          },
          {
            "code" : "string"
          },
          {
            "code" : "Attachment"
          },
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-drug-characteristic"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
