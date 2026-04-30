# InLine-Analyse-Presc-INEGY - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-INEGY**

## Example MedicationRequest: InLine-Analyse-Presc-INEGY

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**R5: Full representation of the dosage instructions (new)**: 

1 comprimé par jour

**status**: Active

**intent**: Proposal

**priority**: Routine

**medication**: INEGY 10MG/20MG CPR

**subject**: [Patient/14602](Patient/14602)

**supportingInformation**: 

* [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = SIMVASTATINE EVO 20MG CPR; authoredOn = 2026-03-19 15:19:00+0100; groupIdentifier = Presc-20260319151900; note = Prescription textuelle: SIMVASTATINE 20MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-SIMVASTATINE.md)
* [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = EZETIMIBE ARW 10MG CPR; authoredOn = 2026-03-19 15:19:00+0100; groupIdentifier = Presc-20260319151900; note = Prescription textuelle: EZETIMIBE 10MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-EZETIMIBE.md)
* [Task : groupIdentifier = Presc-20260319151900; status = completed; intent = proposal; authoredOn = 2026-03-19 15:47:00+0100; performerType = Pharmacien](Task-Analyse-Intervention-Type3-Remplacement1pour2-INEGY.md)

**authoredOn**: 2026-03-19 15:47:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-20260319151900

**note**: 

> 

Prescription textuelle: INEGY 10/20 : 1 comprimé par jour​


> **dosageInstruction****timing**: Une fois par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé (Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-INEGY",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 comprimé par jour"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400892778617",
      "display" : "INEGY 10MG/20MG CPR"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "supportingInformation" : [{
    "reference" : "MedicationRequest/InLine-Analyse-Presc-SIMVASTATINE"
  },
  {
    "reference" : "MedicationRequest/InLine-Analyse-Presc-EZETIMIBE"
  },
  {
    "reference" : "Task/Analyse-Intervention-Type3-Remplacement1pour2-INEGY"
  }],
  "authoredOn" : "2026-03-19T15:47:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260319151900"
  },
  "note" : [{
    "text" : "Prescription textuelle: INEGY 10/20 : 1 comprimé par jour​"
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
        "unit" : "Comprimé",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15054000"
      }
    }]
  }]
}

```
