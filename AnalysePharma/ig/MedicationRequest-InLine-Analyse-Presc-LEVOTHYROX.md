# InLine-Analyse-Presc-LEVOTHYROX - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-LEVOTHYROX**

## Example MedicationRequest: InLine-Analyse-Presc-LEVOTHYROX

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**R5: Full representation of the dosage instructions (new)**: 

1 comprimé une heure avant le petit déjeuner

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: LEVOTHYROX 38µG CPR

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2026-03-20 16:10:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-20260320161000

**note**: 

> 

Prescription textuelle: LEVOTHYROX 38µG: 1 comprimé une heure avant le petit déjeuner


> **dosageInstruction****timing**: 60min , avant le petit-déjeuner, Une fois

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé (Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-LEVOTHYROX",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 comprimé une heure avant le petit déjeuner"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400890048958",
      "display" : "LEVOTHYROX 38µG CPR"
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
    "text" : "Prescription textuelle: LEVOTHYROX 38µG: 1 comprimé une heure avant le petit déjeuner"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "when" : ["ACM"],
        "offset" : 60
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
