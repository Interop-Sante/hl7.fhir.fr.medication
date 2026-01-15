# InLine-presc-Paracetamol2 - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-presc-Paracetamol2**

## Example MedicationRequest: InLine-presc-Paracetamol2

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**status**: Active

**intent**: Order

**medication**: [Medication paracétamol](Medication-InLine-med-Paracetamol.md)

**subject**: [Patient/14603](Patient/14603)

**authoredOn**: 2021-07-14 09:07:28+0000

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

> **dosageInstruction****timing**: Une fois**route**:Voie orale

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 500 mg(Détails : code UCUMmg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-presc-Paracetamol2",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/InLine-med-Paracetamol"
  },
  "subject" : {
    "reference" : "Patient/14603"
  },
  "authoredOn" : "2021-07-14T09:07:28.914Z",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "dosageInstruction" : [
    {
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2021-07-14T09:07:00Z",
            "end" : "2021-07-17T09:06:59Z"
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
            "value" : 500,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }
      ]
    }
  ]
}

```
