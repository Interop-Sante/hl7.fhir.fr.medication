# Disp-DOLIPRANE-Refill-Compl-presc-DC - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Disp-DOLIPRANE-Refill-Compl-presc-DC**

## Example MedicationDispense: Disp-DOLIPRANE-Refill-Compl-presc-DC

Profil: [FR Inpatient MedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md)

**status**: Completed

**medication**: [Medication/InLine-med-DOLIPRANE](Medication/InLine-med-DOLIPRANE)

**subject**: [Patient/14603](Patient/14603)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner/smart-Practitioner-7148xxxx](Practitioner/smart-Practitioner-7148xxxx) |

**authorizingPrescription**: [MedicationRequest : status = active; intent = order; medication[x] = ->Medication paracétamol; authoredOn = 2021-07-14 09:07:28+0000](MedicationRequest-InLine-presc-Paracetamol2.md)

**type**: Refill - Complete

**quantity**: 2 1(Détails : code UCUM1 = '1')

**daysSupply**: 2 jours(Détails : code UCUMd = 'd')

**whenPrepared**: 2021-07-16 10:10:00+0000

**whenHandedOver**: 2021-07-16 10:24:00+0000

> **dosageInstruction****sequence**: 1**timing**: Une fois**route**:Voie orale

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 1 Comprimé(Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "Disp-DOLIPRANE-Refill-Compl-presc-DC",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    ]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/InLine-med-DOLIPRANE"
  },
  "subject" : {
    "reference" : "Patient/14603"
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
      "reference" : "MedicationRequest/InLine-presc-Paracetamol2"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "RFC",
        "display" : "Refill - Complete"
      }
    ]
  },
  "quantity" : {
    "value" : 2,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "daysSupply" : {
    "value" : 2,
    "unit" : "jours",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenPrepared" : "2021-07-16T10:10:00Z",
  "whenHandedOver" : "2021-07-16T10:24:00Z",
  "dosageInstruction" : [
    {
      "sequence" : 1,
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2021-07-16T10:10:00Z",
            "end" : "2021-07-17T10:09:59Z"
          },
          "timeOfDay" : ["07:00:00", "18:00:00"]
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
