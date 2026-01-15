# Presc-Methylpredinosolone-DosesEvolutives - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Presc-Methylpredinosolone-DosesEvolutives**

## Example Bundle: Presc-Methylpredinosolone-DosesEvolutives



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Presc-Methylpredinosolone-DosesEvolutives",
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
        "id" : "medication-Presc-Methylpredinosolone-DosesEvolutives",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-Presc-Methylpredinosolone-DosesEvolutives\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-Presc-Methylpredinosolone-DosesEvolutives</b></p><a name=\"medication-Presc-Methylpredinosolone-DosesEvolutives\"> </a><a name=\"hcmedication-Presc-Methylpredinosolone-DosesEvolutives\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes :{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000091803}\">METHYLPREDNISOLONE</span></p></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000091803",
              "display" : "méthylprednisolone"
            }
          ],
          "text" : "METHYLPREDNISOLONE"
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-Presc-Methylpredinosolone-DosesEvolutives",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Presc-Methylpredinosolone-DosesEvolutives\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Presc-Methylpredinosolone-DosesEvolutives</b></p><a name=\"medicationrequest-Presc-Methylpredinosolone-DosesEvolutives\"> </a><a name=\"hcmedicationrequest-Presc-Methylpredinosolone-DosesEvolutives\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#medication-Presc-Methylpredinosolone-DosesEvolutives</code></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2021-08-14 18:17:26+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/Presc-14647</p><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Une fois</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 2</p><p><b>timing</b>: Une fois</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>4 mg<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 3</p><p><b>timing</b>: Une fois</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2 mg<span style=\"background: LightGoldenRodYellow\"> (Détails : code UCUMmg = 'mg')</span></td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#medication-Presc-Methylpredinosolone-DosesEvolutives"
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2021-08-14T18:17:26.372Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "Presc-14647"
        },
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 2,
                  "unit" : "jour",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "d"
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
                  "value" : 6,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
                }
              }
            ]
          },
          {
            "sequence" : 2,
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 2,
                  "unit" : "jour",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "d"
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
                  "value" : 4,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
                }
              }
            ]
          },
          {
            "sequence" : 3,
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 2,
                  "unit" : "jour",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "d"
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
                  "value" : 2,
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
