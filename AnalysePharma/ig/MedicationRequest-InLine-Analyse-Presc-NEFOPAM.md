# InLine-Analyse-Presc-NEFOPAM - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-NEFOPAM**

## Example MedicationRequest: InLine-Analyse-Presc-NEFOPAM

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: NEFOPAM VIA 20MG/2ML INJ AMP

**subject**: [Patient/25678](Patient/25678)

**authoredOn**: 2026-02-12 17:30:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-4254

> **dosageInstruction****timing**: Une fois par 6 hours**route**: Voie intramusculaire

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Ampoule (Détails : code EDQM Standard Terms15002000 = 'Ampoule') |

**maxDosePerPeriod**: 120 mg (Détails : code UCUMmg = 'mg')/24 h (Détails : code UCUMh = 'h')



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-NEFOPAM",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
        "code" : "3400893485552",
        "display" : "NEFOPAM VIA 20MG/2ML INJ AMP"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/25678"
  },
  "authoredOn" : "2026-02-12T17:30:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
  },
  "groupIdentifier" : {
    "value" : "Presc-4254"
  },
  "dosageInstruction" : [
    {
      "timing" : {
        "repeat" : {
          "boundsDuration" : {
            "value" : 2,
            "unit" : "semaines",
            "system" : "http://unitsofmeasure.org",
            "code" : "wk"
          },
          "frequency" : 1,
          "period" : 6,
          "periodUnit" : "h"
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "http://standardterms.edqm.eu",
            "code" : "20035000",
            "display" : "Voie intramusculaire"
          }
        ],
        "text" : "Voie intramusculaire"
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Ampoule",
            "system" : "http://standardterms.edqm.eu",
            "code" : "15002000"
          }
        }
      ],
      "maxDosePerPeriod" : {
        "numerator" : {
          "value" : 120,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 24,
          "unit" : "h",
          "system" : "http://unitsofmeasure.org",
          "code" : "h"
        }
      }
    }
  ]
}

```
