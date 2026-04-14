# InLine-Analyse-Presc-Paracetamol - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-Paracetamol**

## Example MedicationRequest: InLine-Analyse-Presc-Paracetamol

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**status**: Active

**intent**: Order

**medication**: PARACETAMOL 500 mg gélule

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2021-07-13 08:48:39+0000

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-3567

> **dosageInstruction****sequence**: 1**timing**: Une fois**route**: Voie orale

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 g (Détails : code UCUMg = 'g') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-Paracetamol",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://BogusSystemMedicabase.com",
      "code" : "MV00000557",
      "display" : "PARACETAMOL 500 mg gélule"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2021-07-13T08:48:39.825Z",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-3567"
  },
  "dosageInstruction" : [{
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
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Voie orale"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      }
    }]
  }]
}

```
