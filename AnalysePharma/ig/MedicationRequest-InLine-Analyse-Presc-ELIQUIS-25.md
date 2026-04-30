# InLine-Analyse-Presc-ELIQUIS-25 - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-ELIQUIS-25**

## Example MedicationRequest: InLine-Analyse-Presc-ELIQUIS-25

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**R5: Full representation of the dosage instructions (new)**: 

2 comprimés par jour

**status**: Active

**intent**: Proposal

**priority**: Routine

**medication**: ELIQUIS 2,5MG CPR

**subject**: [Patient/14602](Patient/14602)

**supportingInformation**: 

* [MedicationRequest : extension = 2 comprimés par jour; status = active; intent = order; priority = routine; medication[x] = ELIQUIS 5MG CPR; authoredOn = 2026-03-22 16:34:00+0100; groupIdentifier = Presc-20260322163400; note = Prescription textuelle: ELIQUIS 5MG : 2 comprimés par jour​](MedicationRequest-InLine-Analyse-Presc-ELIQUIS-50.md)
* [Task/Analyse-Intervention-Type7-ELIQUIS](Task/Analyse-Intervention-Type7-ELIQUIS)

**authoredOn**: 2026-03-22 18:07:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-20260322163400

**note**: 

> 

Prescription textuelle: ELIQUIS 2,5MG : 2 comprimés par jour​


> **dosageInstruction****timing**: 2 par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé (Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-ELIQUIS-25",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "2 comprimés par jour"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400893725719",
      "display" : "ELIQUIS 2,5MG CPR"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "supportingInformation" : [{
    "reference" : "MedicationRequest/InLine-Analyse-Presc-ELIQUIS-50"
  },
  {
    "reference" : "Task/Analyse-Intervention-Type7-ELIQUIS"
  }],
  "authoredOn" : "2026-03-22T18:07:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260322163400"
  },
  "note" : [{
    "text" : "Prescription textuelle: ELIQUIS 2,5MG : 2 comprimés par jour​"
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
        "unit" : "Comprimé",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15054000"
      }
    }]
  }]
}

```
