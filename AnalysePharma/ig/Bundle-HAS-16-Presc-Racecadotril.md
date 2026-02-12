# HAS-16-Presc-Racecadotril - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-16-Presc-Racecadotril**

## Example Bundle: HAS-16-Presc-Racecadotril



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-16-Presc-Racecadotril",
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
        "id" : "medicationrequest-HAS-16-Presc-Racecadotril",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-16-Presc-Racecadotril\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-16-Presc-Racecadotril</b></p><a name=\"medicationrequest-HAS-16-Presc-Racecadotril\"> </a><a name=\"hcmedicationrequest-HAS-16-Presc-Racecadotril\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours.</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes :{http://BogusSystemMedicabase.com MV00000139}\">RACECADOTRIL 100 mg gélule</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: RACECADOTRIL 100 mg gélule: 1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours.</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>additionalInstruction</b>: <span title=\"Codes :\">A poursuivre tant que la diarrhée persiste</span></p><p><b>timing</b>: 0min , avant les repas, 3 par 1 day</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 gélule<span style=\"background: LightGoldenRodYellow\"> (Détails : code EDQM Standard Terms15012000 = 'Capsule')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours."
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://BogusSystemMedicabase.com",
              "code" : "MV00000139",
              "display" : "RACECADOTRIL 100 mg gélule"
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
            "text" : "Prescription textuelle: RACECADOTRIL 100 mg gélule: 1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours."
          }
        ],
        "dosageInstruction" : [
          {
            "additionalInstruction" : [
              {
                "text" : "A poursuivre tant que la diarrhée persiste"
              }
            ],
            "timing" : {
              "repeat" : {
                "countMax" : 21,
                "frequency" : 3,
                "period" : 1,
                "periodUnit" : "d",
                "when" : ["AC"],
                "offset" : 0
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 1,
                  "unit" : "gélule",
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
