# FR Inpatient MedicationDispense - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Inpatient MedicationDispense**

## Resource Profile: FR Inpatient MedicationDispense 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRInpatientMedicationDispense |

 
French medication dispense profile 

**Usages:**

* Examples for this Profile: [MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md), [MedicationDispense/Disp-DOLIPRANE-Refill-Substit](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md), [MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md), [MedicationDispense/Disp-EFFERALGAN-presc-DC](MedicationDispense-Disp-EFFERALGAN-presc-DC.md)...Show 3 more,[MedicationDispense/Disp-EFFERALGAN](MedicationDispense-Disp-EFFERALGAN.md),[MedicationDispense/Disp-group01-1](MedicationDispense-Disp-group01-1.md)and[MedicationDispense/Disp-group01-2](MedicationDispense-Disp-group01-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-inpatient-medication-dispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-inpatient-medication-dispense.csv), [Excel](StructureDefinition-fr-inpatient-medication-dispense.xlsx), [Schematron](StructureDefinition-fr-inpatient-medication-dispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-inpatient-medication-dispense",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense",
  "version" : "0.1.0",
  "name" : "FRInpatientMedicationDispense",
  "title" : "FR Inpatient MedicationDispense",
  "status" : "draft",
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
  "description" : "French medication dispense profile",
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
      "identity" : "rx-dispense-rmim",
      "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
      "name" : "V3 Pharmacy Dispense RMIM"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationDispense",
        "path" : "MedicationDispense"
      },
      {
        "id" : "MedicationDispense.medication[x]",
        "path" : "MedicationDispense.medication[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.subject",
        "path" : "MedicationDispense.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Group",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.performer.actor",
        "path" : "MedicationDispense.performer.actor",
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
        "id" : "MedicationDispense.authorizingPrescription",
        "path" : "MedicationDispense.authorizingPrescription",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.receiver",
        "path" : "MedicationDispense.receiver",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
            ]
          }
        ]
      }
    ]
  }
}

```
