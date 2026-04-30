# InLine-Analyse-Presc-MACROGOL - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-MACROGOL**

## Example MedicationRequest: InLine-Analyse-Presc-MACROGOL

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**R5: Full representation of the dosage instructions (new)**: 

1 sachet par jour le matin

**status**: Active

**intent**: Proposal

**priority**: Routine

**medication**: MACROGOL BGA 10G BUV SACH

**subject**: [Patient/14602](Patient/14602)

**supportingInformation**: 

* [MedicationRequest : extension = une gélule le soir (à 20h); status = active; intent = order; priority = routine; medication[x] = MORPHINE LP 10mg gélule microgranulé à libération prolongée; authoredOn = 2025-07-23 10:33:00+0100; groupIdentifier = Presc-3657; note = Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h)](MedicationRequest-InLine-Analyse-Presc-Morphine.md)
* [Task : groupIdentifier = Presc-3657; status = completed; intent = proposal; authoredOn = 2025-07-23 10:56:00+0100; performerType = Pharmacien](Task-Analyse-Validation-Ajout-Morphine.md)

**authoredOn**: 2025-07-23 10:56:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-3657

**note**: 

> 

Prescription textuelle: MACROGOL 10G : 1 sachet par jour le matin


> **dosageInstruction****timing**: Matin, Une fois par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Sachet (Détails : code EDQM Standard Terms15045000 = 'Sachet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-MACROGOL",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 sachet par jour le matin"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400893244777",
      "display" : "MACROGOL BGA 10G BUV SACH"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "supportingInformation" : [{
    "reference" : "MedicationRequest/InLine-Analyse-Presc-Morphine"
  },
  {
    "reference" : "Task/Analyse-Validation-Ajout-Morphine"
  }],
  "authoredOn" : "2025-07-23T10:56:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-3657"
  },
  "note" : [{
    "text" : "Prescription textuelle: MACROGOL 10G : 1 sachet par jour le matin"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Sachet",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15045000"
      }
    }]
  }]
}

```
