# HAS-27-2-presc-Rifampicine - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-27-2-presc-Rifampicine**

## Example Bundle: HAS-27-2-presc-Rifampicine



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-27-2-presc-Rifampicine",
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
        "id" : "medicationrequest-HAS-27-2-presc-Rifampicine",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-27-2-presc-Rifampicine\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-27-2-presc-Rifampicine</b></p><a name=\"medicationrequest-HAS-27-2-presc-Rifampicine\"> </a><a name=\"hcmedicationrequest-HAS-27-2-presc-Rifampicine\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>2 gélules le matin 30 minutes avant le petit-déjeuner</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes :{http://BogusSystemMedicabase.com MV00002500}\">RIFAMPICINE 300 mg en gélule</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: RIFAMPICINE 300 mg en gélule 2 gélules le matin 30 minutes avant le petit-déjeuner​</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: 30min , avant le petit-déjeuner, Une fois</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2 Gélule ou capsule molle<span style=\"background: LightGoldenRodYellow\"> (Détails : code EDQM Standard Terms15012000 = 'Capsule')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "2 gélules le matin 30 minutes avant le petit-déjeuner"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://BogusSystemMedicabase.com",
              "code" : "MV00002500",
              "display" : "RIFAMPICINE 300 mg en gélule"
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
            "text" : "Prescription textuelle: RIFAMPICINE 300 mg en gélule 2 gélules le matin 30 minutes avant le petit-déjeuner​"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "when" : ["ACM"],
                "offset" : 30
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 2,
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
