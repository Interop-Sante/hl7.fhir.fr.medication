# Disp-EFFERALGAN - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Disp-EFFERALGAN**

## Example MedicationDispense: Disp-EFFERALGAN

Profil: [FR Inpatient MedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md)

**status**: Completed

**medication**: [Medication EFFERALGANMED 1000MG CPR](Medication-InLine-med-EFFERALGAN.md)

**subject**: [Patient/14602](Patient/14602)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner/smart-Practitioner-7148xxxx](Practitioner/smart-Practitioner-7148xxxx) |

**authorizingPrescription**: [MedicationRequest : status = active; intent = order; priority = routine; medication[x] = ->#medication-Presc-EFFERALGAN; authoredOn = 2021-07-28 14:52:40+0000; groupIdentifier = https://somehospital.fr/Prescrption-ID#Presc-14624](Bundle-Presc-EFFERALGAN.md#MedicationRequest_medicationrequest-Presc-EFFERALGAN)

**type**: First Fill - Complete

**quantity**: 15 1(Details: UCUM code1 = '1')

**daysSupply**: 5 jours(Details: UCUM coded = 'd')

**whenPrepared**: 2021-07-28 15:25:00+0000

**whenHandedOver**: 2021-07-28 16:41:00+0000

> **dosageInstruction****sequence**: 1**timing**: Once**route**:Voie orale

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 1 Comprimé(Details: EDQM Standard Terms code15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "Disp-EFFERALGAN",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    ]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/InLine-med-EFFERALGAN"
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/smart-Practitioner-7148xxxx"
      }
    }
  ],
  "authorizingPrescription" : [
    {
      "reference" : "MedicationRequest/medicationrequest-Presc-EFFERALGAN"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "FFC",
        "display" : "First Fill - Complete"
      }
    ]
  },
  "quantity" : {
    "value" : 15,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "daysSupply" : {
    "value" : 5,
    "unit" : "jours",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenPrepared" : "2021-07-28T15:25:00Z",
  "whenHandedOver" : "2021-07-28T16:41:00Z",
  "dosageInstruction" : [
    {
      "sequence" : 1,
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2021-07-28T16:41:00Z",
            "end" : "2021-08-02T16:40:59Z"
          },
          "timeOfDay" : ["07:00:00", "12:00:00", "18:00:00"]
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Voie orale"
          }
        ],
        "text" : "Voie orale"
      },
      "doseAndRate" : [
        {
          "type" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/dose-rate-type",
                "code" : "ordered",
                "display" : "Ordered"
              }
            ],
            "text" : "Ordered"
          },
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Comprimé",
            "system" : "http://standardterms.edqm.eu",
            "code" : "15054000"
          }
        }
      ]
    }
  ]
}

```
