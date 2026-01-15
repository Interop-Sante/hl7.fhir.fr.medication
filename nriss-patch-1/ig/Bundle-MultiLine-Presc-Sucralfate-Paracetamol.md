# MultiLine-Presc-Sucralfate-Paracetamol - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MultiLine-Presc-Sucralfate-Paracetamol**

## Example Bundle: MultiLine-Presc-Sucralfate-Paracetamol



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "MultiLine-Presc-Sucralfate-Paracetamol",
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
        "id" : "medicationrequest-MultiLine-Presc-Sucralfate",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-MultiLine-Presc-Sucralfate\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-MultiLine-Presc-Sucralfate</b></p><a name=\"medicationrequest-MultiLine-Presc-Sucralfate\"> </a><a name=\"hcmedicationrequest-MultiLine-Presc-Sucralfate\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Option</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes :{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000091545}\">sucralfate</span></p><p><b>subject</b>: <a href=\"Patient/30004\">Patient/30004</a></p><p><b>authoredOn</b>: 2025-05-02 14:48:44+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-3004\">Practitioner/smart-Practitioner-3004</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescription-ID</code>/Presc-30004</p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: 60min , avant le petit-déjeuner, avant le dîner, Une fois</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 g<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMg = 'g')</span></td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "intent" : "option",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000091545",
              "display" : "sucralfate"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/30004"
        },
        "authoredOn" : "2025-05-02T14:48:44.461Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-3004"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescription-ID",
          "value" : "Presc-30004"
        },
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2025-05-02T14:49:00Z",
                  "end" : "2025-05-31T14:48:59Z"
                },
                "when" : ["ACM", "ACV"],
                "offset" : 60
              }
            },
            "route" : {
              "coding" : [
                {
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "20053000",
                  "display" : "Voie orale"
                }
              ],
              "text" : "Voie orale"
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 1,
                  "unit" : "g",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "g"
                }
              }
            ]
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-MultiLine-Presc-Paracetamol",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-MultiLine-Presc-Paracetamol\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-MultiLine-Presc-Paracetamol</b></p><a name=\"medicationrequest-MultiLine-Presc-Paracetamol\"> </a><a name=\"hcmedicationrequest-MultiLine-Presc-Paracetamol\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Option</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes :{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000090270}\">paracétamol</span></p><p><b>subject</b>: <a href=\"Patient/30004\">Patient/30004</a></p><p><b>authoredOn</b>: 2025-05-02 14:48:44+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-3004\">Practitioner/smart-Practitioner-3004</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescription-ID</code>/Presc-30004</p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Une fois par 4 hours</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>500 mg<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg = 'mg')</span></td></tr></table><p><b>maxDosePerPeriod</b>: 3 g<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMg = 'g')</span>/1 d<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMd = 'd')</span></p></blockquote></div>"
        },
        "status" : "active",
        "intent" : "option",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000090270",
              "display" : "paracétamol"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/30004"
        },
        "authoredOn" : "2025-05-02T14:48:44.461Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-3004"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescription-ID",
          "value" : "Presc-30004"
        },
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2025-05-02T14:49:00Z",
                  "end" : "2025-05-31T14:48:59Z"
                },
                "frequency" : 1,
                "period" : 4,
                "periodUnit" : "h"
              }
            },
            "route" : {
              "coding" : [
                {
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "20053000",
                  "display" : "Voie orale"
                }
              ],
              "text" : "Voie orale"
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 500,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
                }
              }
            ],
            "maxDosePerPeriod" : {
              "numerator" : {
                "value" : 3,
                "unit" : "g",
                "system" : "http://unitsofmeasure.org",
                "code" : "g"
              },
              "denominator" : {
                "value" : 1,
                "unit" : "d",
                "system" : "http://unitsofmeasure.org",
                "code" : "d"
              }
            }
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "RequestGroup",
        "id" : "requestgroup-Presc-Sucralfate-Paracetamol",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-requestgroup-for-prescription"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"RequestGroup_requestgroup-Presc-Sucralfate-Paracetamol\"> </a><p class=\"res-header-id\"><b>Narratif généré : RequestGroup requestgroup-Presc-Sucralfate-Paracetamol</b></p><a name=\"requestgroup-Presc-Sucralfate-Paracetamol\"> </a><a name=\"hcrequestgroup-Presc-Sucralfate-Paracetamol\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-requestgroup-for-prescription.html\">FR RequestGroup For Prescription</a></p></div><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescription-ID</code>/Presc-30004</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>subject</b>: <a href=\"Patient/30004\">Patient/30004</a></p><blockquote><p><b>action</b></p><blockquote><p><b>id</b></p>Action1</blockquote><h3>RelatedActions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ActionId</b></td><td><b>Relationship</b></td><td><b>Offset[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>Action2</td><td>After</td><td>Pas daffichage pour {0}  (value : 2; unit : h; system : http://unitsofmeasure.org; code : h)</td></tr></table><p><b>resource</b>: <code>#medicationrequest-MultiLine-Presc-Paracetamol</code></p></blockquote><blockquote><p><b>action</b></p><blockquote><p><b>id</b></p>Action2</blockquote><p><b>resource</b>: <code>#medicationrequest-MultiLinePresc-Sucralfate</code></p></blockquote></div>"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescription-ID",
          "value" : "Presc-30004"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "subject" : {
          "reference" : "Patient/30004"
        },
        "action" : [
          {
            "id" : "Action1",
            "relatedAction" : [
              {
                "actionId" : "Action2",
                "relationship" : "after",
                "offsetDuration" : {
                  "value" : 2,
                  "unit" : "h",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "h"
                }
              }
            ],
            "resource" : {
              "reference" : "#medicationrequest-MultiLine-Presc-Paracetamol"
            }
          },
          {
            "id" : "Action2",
            "resource" : {
              "reference" : "#medicationrequest-MultiLinePresc-Sucralfate"
            }
          }
        ]
      }
    }
  ]
}

```
