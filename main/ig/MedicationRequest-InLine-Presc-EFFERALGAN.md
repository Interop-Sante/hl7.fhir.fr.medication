# InLine-Presc-EFFERALGAN - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Presc-EFFERALGAN**

## Example MedicationRequest: InLine-Presc-EFFERALGAN

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: [Medication EFFERALGANMED 1000MG CPR](Medication-InLine-med-EFFERALGAN.md)

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2021-07-28 14:52:40+0000

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: `https://somehospital.fr/Prescrption-ID`/Presc-24624

> **dosageInstruction****timing**: Once**route**:Voie orale

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 1 Comprimé(Details: EDQM Standard Terms code15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Presc-EFFERALGAN",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationReference" : {
    "reference" : "Medication/InLine-med-EFFERALGAN"
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2021-07-28T14:52:40.936Z",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "system" : "https://somehospital.fr/Prescrption-ID",
    "value" : "Presc-24624"
  },
  "dosageInstruction" : [
    {
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2021-07-28T14:52:00Z",
            "end" : "2021-08-02T14:51:59Z"
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
