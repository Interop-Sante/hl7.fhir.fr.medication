# InLine-presc-Paracetamol1 - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-presc-Paracetamol1**

## Example MedicationRequest: InLine-presc-Paracetamol1

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**status**: Active

**intent**: Order

**medication**: [Medication paracétamol](Medication-InLine-med-Paracetamol.md)

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2021-07-13 08:48:39+0000

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-24625

> **dosageInstruction****sequence**: 1**timing**: Once**route**:Voie orale

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 1 g(Details: UCUM codeg = 'g') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-presc-Paracetamol1",
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
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2021-07-13T08:48:39.825Z",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-24625"
  },
  "dosageInstruction" : [
    {
      "sequence" : 1,
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2021-07-13T08:48:00Z",
            "end" : "2021-07-18T08:47:59Z"
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
        ]
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
            "unit" : "g",
            "system" : "http://unitsofmeasure.org",
            "code" : "g"
          }
        }
      ]
    }
  ]
}

```
