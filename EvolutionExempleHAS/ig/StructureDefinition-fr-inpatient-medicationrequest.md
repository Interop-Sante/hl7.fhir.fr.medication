# FR Inpatient MedicationRequest - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Inpatient MedicationRequest**

## Resource Profile: FR Inpatient MedicationRequest 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRInpatientMedicationRequest |

 
French inpatient medication request profile 

**Usages:**

* Refer to this Profile: [FR Inpatient MedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md)
* Examples for this Profile: [MedicationRequest/InLine-Presc-EFFERALGAN](MedicationRequest-InLine-Presc-EFFERALGAN.md), [MedicationRequest/InLine-presc-EFFERALGAN2](MedicationRequest-InLine-presc-EFFERALGAN2.md), [MedicationRequest/InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md) and [MedicationRequest/InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-inpatient-medicationrequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-inpatient-medicationrequest.csv), [Excel](StructureDefinition-fr-inpatient-medicationrequest.xlsx), [Schematron](StructureDefinition-fr-inpatient-medicationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-inpatient-medicationrequest",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest",
  "version" : "0.1.0",
  "name" : "FRInpatientMedicationRequest",
  "title" : "FR Inpatient MedicationRequest",
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
  "description" : "French inpatient medication request profile",
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
  "baseDefinition" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.supportingInformation.extension:UFRole",
        "path" : "MedicationRequest.supportingInformation.extension",
        "sliceName" : "UFRole",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.note.extension:noteScope",
        "path" : "MedicationRequest.note.extension",
        "sliceName" : "noteScope",
        "short" : "Scope of the note",
        "definition" : "States where the content of the note comes from",
        "comment" : "Extension used for translating PN13 messages into FHIR in order to discriminate the notes and not concatenate all the PN13 textual information into a single note which would be difficult to understand",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dispenseRequest.dispenseInterval",
        "path" : "MedicationRequest.dispenseRequest.dispenseInterval",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.validityPeriod.start",
        "path" : "MedicationRequest.dispenseRequest.validityPeriod.start",
        "definition" : "DateTime of the first prescribed dose.",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.dispenseRequest.validityPeriod.end",
        "path" : "MedicationRequest.dispenseRequest.validityPeriod.end",
        "definition" : "DateTime of the last prescribe dose. Not defined for endless prescription (at prescription time). The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03."
      },
      {
        "id" : "MedicationRequest.dispenseRequest.quantity",
        "path" : "MedicationRequest.dispenseRequest.quantity",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.comparator",
        "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.comparator",
        "max" : "0"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.performer",
        "path" : "MedicationRequest.dispenseRequest.performer",
        "max" : "0"
      }
    ]
  }
}

```
