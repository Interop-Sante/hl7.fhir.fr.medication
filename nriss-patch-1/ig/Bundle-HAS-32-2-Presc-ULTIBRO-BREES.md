# HAS-32-2-Presc-ULTIBRO-BREES - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-32-2-Presc-ULTIBRO-BREES**

## Example Bundle: HAS-32-2-Presc-ULTIBRO-BREES



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-32-2-Presc-ULTIBRO-BREES",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
    ]
  },
  "type" : "searchset",
  "entry" : [
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-HAS-32-2-Presc-ULTIBRO-BREES",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-32-2-Presc-ULTIBRO-BREES\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-32-2-Presc-ULTIBRO-BREES</b></p><a name=\"medicationrequest-HAS-32-2-Presc-ULTIBRO-BREES\"> </a><a name=\"hcmedicationrequest-HAS-32-2-Presc-ULTIBRO-BREES\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois.</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes :{http://data.esante.gouv.fr/ansm/medicament/UCD 3400893964361}\">ULTIBRO BREEZ.85/43 GELU+INH</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: ULTIBRO BREEZ® 85/43 µg gélule : 1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois.</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>additionalInstruction</b>: <span title=\"Codes :\">à la même heure chaque jour</span></p><p><b>timing</b>: Une fois par 1 day</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20020000}\">Voie inhalée</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Gélule ou capsule molle<span style=\"background: LightGoldenRodYellow\"> (Détails : code EDQM Standard Terms15012000 = 'Capsule')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois."
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400893964361",
              "display" : "ULTIBRO BREEZ.85/43 GELU+INH"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2025-07-23T10:33:00+01:00",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "note" : [
          {
            "text" : "Prescription textuelle: ULTIBRO BREEZ® 85/43 µg gélule : 1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois."
          }
        ],
        "dosageInstruction" : [
          {
            "additionalInstruction" : [
              {
                "text" : "à la même heure chaque jour"
              }
            ],
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 1,
                  "unit" : "mois",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mo"
                },
                "frequency" : 1,
                "period" : 1,
                "periodUnit" : "d"
              }
            },
            "route" : {
              "coding" : [
                {
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "20020000",
                  "display" : "Voie inhalée"
                }
              ]
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 1,
                  "unit" : "Gélule ou capsule molle",
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "15012000"
                }
              }
            ]
          }
        ]
      }
    }
  ]
}

```
