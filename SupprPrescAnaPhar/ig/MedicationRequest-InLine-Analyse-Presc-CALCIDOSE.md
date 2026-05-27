# InLine-Analyse-Presc-CALCIDOSE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-CALCIDOSE**

## Example MedicationRequest: InLine-Analyse-Presc-CALCIDOSE

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**R5: Full representation of the dosage instructions (new)**: 

1 sachet au petit déjeuner

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: CALCIDOSE D3 500MG/800U SACH

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2026-03-20 16:10:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-20260320161000

**note**: 

> 

Prescription textuelle: CALCIDOSE D3 500MG/800UI: 1 sachet au petit déjeuner


> **dosageInstruction****timing**: au petit déjeuner, Une fois

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Sachet (Détails : code EDQM Standard Terms15045000 = 'Sachet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-CALCIDOSE",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 sachet au petit déjeuner"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400890007368",
      "display" : "CALCIDOSE D3 500MG/800U SACH"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "authoredOn" : "2026-03-20T16:10:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320161000"
  },
  "note" : [{
    "text" : "Prescription textuelle: CALCIDOSE D3 500MG/800UI: 1 sachet au petit déjeuner"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "when" : ["CM"]
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
