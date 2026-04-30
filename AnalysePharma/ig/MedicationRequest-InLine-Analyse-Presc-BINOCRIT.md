# InLine-Analyse-Presc-BINOCRIT - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-BINOCRIT**

## Example MedicationRequest: InLine-Analyse-Presc-BINOCRIT

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**R5: Full representation of the dosage instructions (new)**: 

Une seringue préremplie toutes les deux semaines

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: BINOCRIT 20000UI INJ S0,5ML +A

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2026-03-20 11:50:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-20260320115000

**note**: 

> 

Prescription textuelle: BINOCRIT 20000 UI/0,5ml : Une seringue préremplie toutes les deux semaines


> **dosageInstruction****timing**: Une fois par 2 weeks

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Seringue (Détails : code EDQM Standard Terms15052000 = 'Syringe') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-BINOCRIT",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "Une seringue préremplie toutes les deux semaines"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400893634318",
      "display" : "BINOCRIT 20000UI INJ S0,5ML +A"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2026-03-20T11:50:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320115000"
  },
  "note" : [{
    "text" : "Prescription textuelle: BINOCRIT 20000 UI/0,5ml : Une seringue préremplie toutes les deux semaines"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 2,
        "periodUnit" : "wk"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Seringue",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15052000"
      }
    }]
  }]
}

```
