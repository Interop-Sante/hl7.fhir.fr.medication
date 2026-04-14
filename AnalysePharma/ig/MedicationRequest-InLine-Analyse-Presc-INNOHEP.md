# InLine-Analyse-Presc-INNOHEP - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-INNOHEP**

## Example MedicationRequest: InLine-Analyse-Presc-INNOHEP

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

Deux seringues toutes les 12 heures

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: NNOHEP 2 500 UI anti-Xa/0,25 ml, solution injectable en seringue préremplie - 10 seringue(s) préremplie(s) en verre de 0,25 ml

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2026-03-20 17:31:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-20260320173100

**note**: 

> 

Prescription textuelle: INNOHEP 2 500 UI anti-Xa/0,25 ml : Deux seringues préremplies toutes les 12 heures


> **dosageInstruction****timing**: Une fois par 12 hours

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 2 Seringue (Détails : code EDQM Standard Terms15052000 = 'Syringe') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-INNOHEP",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "Deux seringues toutes les 12 heures"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400933433154",
      "display" : "NNOHEP 2 500 UI anti-Xa/0,25 ml, solution injectable en seringue préremplie - 10 seringue(s) préremplie(s) en verre de 0,25 ml"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2026-03-20T17:31:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320173100"
  },
  "note" : [{
    "text" : "Prescription textuelle: INNOHEP 2 500 UI anti-Xa/0,25 ml : Deux seringues préremplies toutes les 12 heures"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 12,
        "periodUnit" : "h"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 2,
        "unit" : "Seringue",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15052000"
      }
    }]
  }]
}

```
