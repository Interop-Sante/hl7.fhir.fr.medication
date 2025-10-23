# FR Meditinal Product Substance - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Meditinal Product Substance**

## Data Type Profile: FR Meditinal Product Substance 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-mp-substance | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRMPSubstance |

 
code for the medicinal product substance 

**Usages:**

* Use this DataType Profile: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-mp-substance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-mp-substance.csv), [Excel](StructureDefinition-fr-mp-substance.xlsx), [Schematron](StructureDefinition-fr-mp-substance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-mp-substance",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-mp-substance",
  "version" : "0.1.0",
  "name" : "FRMPSubstance",
  "title" : "FR Meditinal Product Substance",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "code for the medicinal product substance",
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
    },
    {
      "identity" : "orim",
      "uri" : "http://hl7.org/orim",
      "name" : "Ontological RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CodeableConcept",
        "path" : "CodeableConcept",
        "short" : "RIUM Medicinal Product Substance",
        "example" : [
          {
            "label" : "Glucose",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
                  "code" : "100000078171",
                  "display" : "glucose"
                }
              ],
              "text" : "glucose"
            }
          },
          {
            "label" : "Périndopril tert-butylamine",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
                  "code" : "100000091602",
                  "display" : "périndopril tert-butylamine"
                }
              ],
              "text" : "périndopril tert-butylamine"
            }
          }
        ]
      },
      {
        "id" : "CodeableConcept.coding",
        "path" : "CodeableConcept.coding",
        "binding" : {
          "strength" : "required",
          "description" : "Medicinal product Substance",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-substance-code"
        }
      }
    ]
  }
}

```
