# InLine-presc-EFFERALGAN2 - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-presc-EFFERALGAN2**

## Example MedicationRequest: InLine-presc-EFFERALGAN2

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**status**: Active

**intent**: Order

**medication**: [Medication EFFERALGANMED 1000MG CPR](Medication-InLine-med-EFFERALGAN.md)

**subject**: [Patient/14604](Patient/14604)

**authoredOn**: 2021-07-15 11:02:39+0000

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

> **dosageInstruction****timing**: Une fois**route**:Voie orale

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 1 Comprimé(Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-presc-EFFERALGAN2",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/InLine-med-EFFERALGAN"
  },
  "subject" : {
    "reference" : "Patient/14604"
  },
  "authoredOn" : "2021-07-15T11:02:39.847Z",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "dosageInstruction" : [
    {
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2021-07-15T11:02:00Z",
            "end" : "2021-07-25T11:01:59Z"
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
