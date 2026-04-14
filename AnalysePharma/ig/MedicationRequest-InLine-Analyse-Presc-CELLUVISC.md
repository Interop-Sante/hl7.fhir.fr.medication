# InLine-Analyse-Presc-CELLUVISC - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-CELLUVISC**

## Example MedicationRequest: InLine-Analyse-Presc-CELLUVISC

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

1 goutte 3 fois par jour

**status**: Active

**intent**: Proposal

**priority**: Routine

**medication**: CELLUVISC 4MG COLLY UNIDOS

**subject**: [Patient/14602](Patient/14602)

**supportingInformation**: 

* [MedicationRequest : extension = 1 goutte 2 fois par jour; status = active; intent = order; priority = routine; medication[x] = LACRIFLUID 0,13% CY UNIDOS; authoredOn = 2026-03-18 09:33:00+0100; groupIdentifier = Presc-20260318093300; note = Prescription textuelle: LACRIFLUID 0,13% CY UNIDOS: 1 goutte 2 fois par jour​](MedicationRequest-InLine-Analyse-Presc-LACRIFLUID.md)
* [Task : groupIdentifier = Presc-20260318093300; status = completed; intent = proposal; authoredOn = 2026-03-18 11:33:00+0100; performerType = Pharmacien](Task-Analyse-Validation-Commentaire-LACRIFLUID.md)

**authoredOn**: 2026-03-18 11:33:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-20260318093300

**note**: 

> 

Prescription textuelle: CELLUVISC 4MG COLLY UNIDOS: 1 goutte 3 fois par jour​


> **dosageInstruction****timing**: 3 par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Goutte (Détails : code EDQM Standard Terms15022000 = 'Drop') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-CELLUVISC",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 goutte 3 fois par jour"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400891817478",
      "display" : "CELLUVISC 4MG COLLY UNIDOS"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "supportingInformation" : [{
    "reference" : "MedicationRequest/InLine-Analyse-Presc-LACRIFLUID"
  },
  {
    "reference" : "Task/Analyse-Validation-Commentaire-LACRIFLUID"
  }],
  "authoredOn" : "2026-03-18T11:33:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260318093300"
  },
  "note" : [{
    "text" : "Prescription textuelle: CELLUVISC 4MG COLLY UNIDOS: 1 goutte 3 fois par jour​"
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
        "unit" : "Goutte",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15022000"
      }
    }]
  }]
}

```
