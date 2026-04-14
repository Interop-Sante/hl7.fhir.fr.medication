# InLine-Analyse-Presc-CETAFEN-INJ - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-CETAFEN-INJ**

## Example MedicationRequest: InLine-Analyse-Presc-CETAFEN-INJ

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

1 flacon en perfusion de 15 mn toutes les 12 heures

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: CETAFEN 10MG/3MG/ML FL100ML

**subject**: [Patient/25678](Patient/25678)

**authoredOn**: 2026-03-20 17:46:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-20260320174600

**note**: 

> 

Prescription textuelle: CETAFEN 10MG/3MG/ML FL100ML : 1 flacon en perfusion de 15 mn toutes les 12 heures


> **dosageInstruction****timing**: Une fois par 12 hours**route**: Voie intraveineuse

### DoseAndRates

| | |
| :--- | :--- |
| - | **Rate[x]** |
| * | 1 Flacon (Détails : code EDQM Standard Terms15009000 = 'Bottle')/15 min (Détails : code UCUMmin = 'min') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-CETAFEN-INJ",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 flacon en perfusion de 15 mn toutes les 12 heures"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400890026710",
      "display" : "CETAFEN 10MG/3MG/ML FL100ML"
    }]
  },
  "subject" : {
    "reference" : "Patient/25678"
  },
  "authoredOn" : "2026-03-20T17:46:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320174600"
  },
  "note" : [{
    "text" : "Prescription textuelle: CETAFEN 10MG/3MG/ML FL100ML : 1 flacon en perfusion de 15 mn toutes les 12 heures"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 12,
        "periodUnit" : "h"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Voie intraveineuse"
      }]
    },
    "doseAndRate" : [{
      "rateRatio" : {
        "numerator" : {
          "value" : 1,
          "unit" : "Flacon",
          "system" : "http://standardterms.edqm.eu",
          "code" : "15009000"
        },
        "denominator" : {
          "value" : 15,
          "unit" : "min",
          "system" : "http://unitsofmeasure.org",
          "code" : "min"
        }
      }
    }]
  }]
}

```
