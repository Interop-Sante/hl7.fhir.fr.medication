# HAS-17-Presc-Budesonide - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-17-Presc-Budesonide**

## Example Bundle: HAS-17-Presc-Budesonide



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-17-Presc-Budesonide",
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
        "id" : "medicationrequest-HAS-17-Presc-Budesonide",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-17-Presc-Budesonide\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-17-Presc-Budesonide</b></p><a name=\"medicationrequest-HAS-17-Presc-Budesonide\"> </a><a name=\"hcmedicationrequest-HAS-17-Presc-Budesonide\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>A administrer en 20 min à 8h, 14h, 18h, et 22h</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes :{http://BogusSystemMedicabase.com MV00004231}\">Budésonide 1 mg/2 ml (0,5 mg/ml) suspension pour inhalation par nébuliseur en récipient unidose</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: BUDESONIDE  1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose\n1 récipient unidose de 1 mg 4 fois par jour selon les modalités d'administration  suivantes :</p>\n<p>Préparation pour nébuliseur ultrasonique :\n- 3 mL Eau Pour Préparation Injectable\n- 1 récipient unidose (soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur</p>\n<p>A administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Durée 20?? , Une fois</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 mg<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg = 'mg')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "A administrer en 20 min à 8h, 14h, 18h, et 22h"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://BogusSystemMedicabase.com",
              "code" : "MV00004231",
              "display" : "Budésonide 1 mg/2 ml (0,5 mg/ml) suspension pour inhalation par nébuliseur en récipient unidose"
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
            "text" : "Prescription textuelle: BUDESONIDE  1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose \n1 récipient unidose de 1 mg 4 fois par jour selon les modalités d'administration  suivantes : \n\nPréparation pour nébuliseur ultrasonique : \n     - 3 mL Eau Pour Préparation Injectable \n     - 1 récipient unidose (soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur\n\nA administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2023-03-16"
                },
                "duration" : 20,
                "durationUnit" : "min",
                "timeOfDay" : ["08:00:00", "14:00:00", "18:00:00", "22:00:00"]
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 1,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
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
