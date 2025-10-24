# Disp-DOLIPRANE-Refill-presc-DC - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Disp-DOLIPRANE-Refill-presc-DC**

## Example MedicationDispense: Disp-DOLIPRANE-Refill-presc-DC

Profil: [FR Inpatient MedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md)

**status**: Completed

**medication**: [Medication/InLine-med-DOLIPRANE](Medication/InLine-med-DOLIPRANE)

**subject**: [Patient/14602](Patient/14602)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner/smart-Practitioner-7148xxxx](Practitioner/smart-Practitioner-7148xxxx) |

**authorizingPrescription**: [MedicationRequest : status = active; intent = order; medication[x] = ->Medication paracétamol; authoredOn = 2021-07-13 08:48:39+0000; groupIdentifier = Presc-24625](MedicationRequest-InLine-presc-Paracetamol1.md)

**type**: Refill - Part

**quantity**: 6 1(Details: UCUM code1 = '1')

**daysSupply**: 2 jour(Details: UCUM coded = 'd')

**whenPrepared**: 2021-07-16 10:10:00+0000

**whenHandedOver**: 2021-07-16 10:24:00+0000

> **dosageInstruction****sequence**: 1**timing**: Once**route**:Voie orale

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 2 Comprimé(Details: EDQM Standard Terms code15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "Disp-DOLIPRANE-Refill-presc-DC",
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
      "reference" : "MedicationRequest/InLine-presc-Paracetamol1"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "RFP",
        "display" : "Refill - Part"
      }
    ]
  },
  "quantity" : {
    "value" : 6,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "daysSupply" : {
    "value" : 2,
    "unit" : "jour",
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
            "end" : "2021-07-18T10:09:59Z"
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
            "value" : 2,
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
