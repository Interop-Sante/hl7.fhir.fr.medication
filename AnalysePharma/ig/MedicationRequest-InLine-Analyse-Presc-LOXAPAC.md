# InLine-Analyse-Presc-LOXAPAC - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-LOXAPAC**

## Example MedicationRequest: InLine-Analyse-Presc-LOXAPAC

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

60 gouttes par jour

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: LOXAPAC 25MG/ML BUV FV30ML

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2026-03-20 16:53:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-20260320165300

**note**: 

> 

Prescription textuelle: LOXAPAC 25MG/ML: 60 gouttes par jour


> **dosageInstruction****timing**: Une fois par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 60 Goutte (Détails : code EDQM Standard Terms15022000 = 'Drop') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-LOXAPAC",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "60 gouttes par jour"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400890551847",
      "display" : "LOXAPAC 25MG/ML BUV FV30ML"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2026-03-20T16:53:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320165300"
  },
  "note" : [{
    "text" : "Prescription textuelle: LOXAPAC 25MG/ML: 60 gouttes par jour"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 60,
        "unit" : "Goutte",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15022000"
      }
    }]
  }]
}

```
