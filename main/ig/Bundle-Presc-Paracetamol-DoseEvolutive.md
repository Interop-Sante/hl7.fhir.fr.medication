# Presc-Paracetamol-DoseEvolutive - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Presc-Paracetamol-DoseEvolutive**

## Example Bundle: Presc-Paracetamol-DoseEvolutive



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Presc-Paracetamol-DoseEvolutive",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
    ]
  },
  "type" : "searchset",
  "entry" : [
    {
      "resource" : {
        "resourceType" : "Medication",
        "id" : "medication-Presc-Paracetamol-DoseEvolutive",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-Presc-Paracetamol-DoseEvolutive\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-Presc-Paracetamol-DoseEvolutive</b></p><a name=\"medication-Presc-Paracetamol-DoseEvolutive\"> </a><a name=\"hcmedication-Presc-Paracetamol-DoseEvolutive\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes :{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000090270}\">PARACETAMOL</span></p></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000090270",
              "display" : "paracétamol"
            }
          ],
          "text" : "PARACETAMOL"
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-Presc-Paracetamol-DoseEvolutive",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Presc-Paracetamol-DoseEvolutive\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Presc-Paracetamol-DoseEvolutive</b></p><a name=\"medicationrequest-Presc-Paracetamol-DoseEvolutive\"> </a><a name=\"hcmedicationrequest-Presc-Paracetamol-DoseEvolutive\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#med-221medication-Presc-Paracetamol-DoseEvolutive</code></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2021-08-12 14:29:15+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/Presc-14642</p><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Une fois</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 g<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMg = 'g')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Une fois</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>500 mg<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg = 'mg')</span></td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#med-221medication-Presc-Paracetamol-DoseEvolutive"
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2021-08-12T14:29:15.461Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "Presc-14642"
        },
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2021-08-12T14:29:00Z",
                  "end" : "2021-08-17T14:28:59Z"
                },
                "timeOfDay" : ["07:00:00"]
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
          },
          {
            "sequence" : 1,
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2021-08-12T14:29:00Z",
                  "end" : "2021-08-17T14:28:59Z"
                },
                "timeOfDay" : ["18:00:00"]
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
            ]
          }
        ]
      }
    }
  ]
}

```
