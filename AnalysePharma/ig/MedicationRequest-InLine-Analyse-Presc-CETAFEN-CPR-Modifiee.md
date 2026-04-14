# InLine-Analyse-Presc-CETAFEN-CPR-Modifiee - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-CETAFEN-CPR-Modifiee**

## Example MedicationRequest: InLine-Analyse-Presc-CETAFEN-CPR-Modifiee

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

2 comprimés toutes les 12 heures

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: CETAFEN 500MG/150MG CPR

**subject**: [Patient/25678](Patient/25678)

**supportingInformation**: [Task : groupIdentifier = Presc-20260320174600; status = completed; businessStatus = Acceptée avec modification de proposition(s); intent = proposal; authoredOn = 2026-03-20 18:23:00+0100; performerType = Pharmacien](Task-Analyse-Intervention-Acceptee-Modifiee.md)

**authoredOn**: 2026-03-20 18:37:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-20260320174600

**note**: 

> 

Prescription textuelle: CETAFEN 500MG/150MG : 2 comprimés toutes les 12 heures


> **dosageInstruction****timing**: Une fois par 12 hours

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 2 Comprimé (Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-CETAFEN-CPR-Modifiee",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "2 comprimés toutes les 12 heures"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400890032483",
      "display" : "CETAFEN 500MG/150MG CPR"
    }]
  },
  "subject" : {
    "reference" : "Patient/25678"
  },
  "supportingInformation" : [{
    "reference" : "Task/Analyse-Intervention-Acceptee-Modifiee"
  }],
  "authoredOn" : "2026-03-20T18:37:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320174600"
  },
  "note" : [{
    "text" : "Prescription textuelle: CETAFEN 500MG/150MG : 2 comprimés toutes les 12 heures"
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
        "unit" : "Comprimé",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15054000"
      }
    }]
  }]
}

```
