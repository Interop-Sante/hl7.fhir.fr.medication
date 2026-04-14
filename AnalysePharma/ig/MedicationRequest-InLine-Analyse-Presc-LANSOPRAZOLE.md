# InLine-Analyse-Presc-LANSOPRAZOLE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-LANSOPRAZOLE**

## Example MedicationRequest: InLine-Analyse-Presc-LANSOPRAZOLE

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

1 gélule par jour

**status**: Active

**intent**: Proposal

**priority**: Routine

**medication**: LANSOPRAZOLE EG 15MG GELU

**subject**: [Patient/14602](Patient/14602)

**supportingInformation**: 

* [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = ESOMEPRAZOLE EVO 20MG CPR; authoredOn = 2026-03-22 16:19:00+0100; groupIdentifier = Presc-20260322161900; note = Prescription textuelle: ESOMEPRAZOLE EVO 20MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-ESOMEPRAZOLE.md)
* [Task : groupIdentifier = Presc-20260322161900; status = completed; intent = proposal; authoredOn = 2026-03-22 17:57:00+0100; performerType = Pharmacien](Task-Analyse-Intervention-Type3-ESOMEPRAZOLE.md)

**authoredOn**: 2026-03-22 17:57:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-20260322161900

**note**: 

> 

Prescription textuelle: LANSOPRAZOLE EG 15MG : 1 gélule par jour​


> **dosageInstruction****timing**: Une fois par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Gélule (Détails : code EDQM Standard Terms15012000 = 'Capsule') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-LANSOPRAZOLE",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 gélule par jour"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400893069479",
      "display" : "LANSOPRAZOLE EG 15MG GELU"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "supportingInformation" : [{
    "reference" : "MedicationRequest/InLine-Analyse-Presc-ESOMEPRAZOLE"
  },
  {
    "reference" : "Task/Analyse-Intervention-Type3-ESOMEPRAZOLE"
  }],
  "authoredOn" : "2026-03-22T17:57:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260322161900"
  },
  "note" : [{
    "text" : "Prescription textuelle: LANSOPRAZOLE EG 15MG : 1 gélule par jour​"
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
        "value" : 1,
        "unit" : "Gélule",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15012000"
      }
    }]
  }]
}

```
