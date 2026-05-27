# InLine-Analyse-Presc-METFORMINE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-METFORMINE**

## Example MedicationRequest: InLine-Analyse-Presc-METFORMINE

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**R5: Full representation of the dosage instructions (new)**: 

1 comprimé 3 fois par jour

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: METFORMINE EG 500MG CPR

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2026-03-23 11:27:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-20260323112700

**note**: 

> 

Prescription textuelle: METFORMINE EG 500MG : 1 comprimé 3 fois par jour​


> **dosageInstruction****timing**: 3 par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé (Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-METFORMINE",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 comprimé 3 fois par jour"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400893701126",
      "display" : "METFORMINE EG 500MG CPR"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2026-03-23T11:27:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260323112700"
  },
  "note" : [{
    "text" : "Prescription textuelle: METFORMINE EG 500MG : 1 comprimé 3 fois par jour​"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 3,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Comprimé",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15054000"
      }
    }]
  }]
}

```
