# InLine-Analyse-Presc-LACRIFLUID - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-LACRIFLUID**

## Example MedicationRequest: InLine-Analyse-Presc-LACRIFLUID

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**R5: Full representation of the dosage instructions (new)**: 

1 goutte 2 fois par jour

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: LACRIFLUID 0,13% CY UNIDOS

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2026-03-18 09:33:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-20260318093300

**note**: 

> 

Prescription textuelle: LACRIFLUID 0,13% CY UNIDOS: 1 goutte 2 fois par jour​


> **dosageInstruction****timing**: 2 par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Goutte (Détails : code EDQM Standard Terms15022000 = 'Drop') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-LACRIFLUID",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 goutte 2 fois par jour"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400893062555",
      "display" : "LACRIFLUID 0,13% CY UNIDOS"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2026-03-18T09:33:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260318093300"
  },
  "note" : [{
    "text" : "Prescription textuelle: LACRIFLUID 0,13% CY UNIDOS: 1 goutte 2 fois par jour​"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Goutte",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15022000"
      }
    }]
  }]
}

```
