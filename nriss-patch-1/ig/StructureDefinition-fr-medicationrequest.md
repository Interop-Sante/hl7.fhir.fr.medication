# FR Medication Request - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication Request**

## Resource Profile: FR Medication Request 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FRMedicationRequest |

 
French medication request profile 

**Utilisations:**

* Dérivé de ce Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medicationrequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medicationrequest.csv), [Excel](StructureDefinition-fr-medicationrequest.xlsx), [Schematron](StructureDefinition-fr-medicationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medicationrequest",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest",
  "version" : "0.1.0",
  "name" : "FRMedicationRequest",
  "title" : "FR Medication Request",
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
  "description" : "French medication request profile",
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.extension",
        "path" : "MedicationRequest.extension",
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
        "id" : "MedicationRequest.extension:renderedDosageInstruction",
        "path" : "MedicationRequest.extension",
        "sliceName" : "renderedDosageInstruction",
        "short" : "Full representation of the dosage instructions",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.extension:treatmentIntent",
        "path" : "MedicationRequest.extension",
        "sliceName" : "treatmentIntent",
        "short" : "overall treatment intent",
        "definition" : "the overall intention of the treatment",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-treatment-intent"
            ]
          }
        ],
        "meaningWhenMissing" : "overall intention of the treatment not specified"
      },
      {
        "id" : "MedicationRequest.extension:treatmentIntent.value[x].coding",
        "path" : "MedicationRequest.extension.value[x].coding",
        "definition" : "SNOMED CT code minimal value set for overall treatment intent (extensible)"
      },
      {
        "id" : "MedicationRequest.medication[x]",
        "path" : "MedicationRequest.medication[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationReference",
        "path" : "MedicationRequest.medication[x]",
        "sliceName" : "medicationReference",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound",
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-compound"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
        "path" : "MedicationRequest.medication[x]",
        "sliceName" : "medicationCodeableConcept",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-code"
        }
      },
      {
        "id" : "MedicationRequest.subject",
        "path" : "MedicationRequest.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.encounter",
        "path" : "MedicationRequest.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.authoredOn",
        "path" : "MedicationRequest.authoredOn",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.requester",
        "path" : "MedicationRequest.requester",
        "short" : "Who requested the Request",
        "definition" : "The prescriber that initiated the request and has responsibility for its activation.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.dosageInstruction.patientInstruction",
        "path" : "MedicationRequest.dosageInstruction.patientInstruction",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.dosageInstruction.timing.repeat.extension:AdditionalWhenValues",
        "path" : "MedicationRequest.dosageInstruction.timing.repeat.extension",
        "sliceName" : "AdditionalWhenValues",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-when-values"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction.route",
        "path" : "MedicationRequest.dosageInstruction.route",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-route-of-administration"
        }
      },
      {
        "id" : "MedicationRequest.dosageInstruction.method",
        "path" : "MedicationRequest.dosageInstruction.method",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/FrMethodOfAdministration"
        }
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.extension:BasisOfDoseComponent",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.extension",
        "sliceName" : "BasisOfDoseComponent",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-basis-of-dose-component"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "sliceName" : "doseRange",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRangeMedication"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseQuantity",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "sliceName" : "doseQuantity",
        "min" : 0,
        "max" : "1",
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
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
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
        "definition" : "Amount of medication per unit of time. Using a ratio, the denominator SHALL be a quantity of time. Using a simple quantity the UCUM unit SHALL be a unit of rate."
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "sliceName" : "rateRatio",
        "min" : 0,
        "max" : "1",
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
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "sliceName" : "rateRange",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRangeMedication"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateQuantity",
        "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "sliceName" : "rateQuantity",
        "min" : 0,
        "max" : "1",
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
        "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
        "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
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
        "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
        "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
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
        "id" : "MedicationRequest.dosageInstruction.maxDosePerAdministration",
        "path" : "MedicationRequest.dosageInstruction.maxDosePerAdministration",
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
        "id" : "MedicationRequest.dosageInstruction.maxDosePerLifetime",
        "path" : "MedicationRequest.dosageInstruction.maxDosePerLifetime",
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
