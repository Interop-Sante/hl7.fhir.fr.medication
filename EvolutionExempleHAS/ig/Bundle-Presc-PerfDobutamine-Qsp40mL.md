# Presc-PerfDobutamine-Qsp40mL - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Presc-PerfDobutamine-Qsp40mL**

## Example Bundle: Presc-PerfDobutamine-Qsp40mL

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle Presc-PerfDobutamine-Qsp40mL de type searchset

-------

Entry 1

Ressource Medication :

> 

Profil: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

**code**:DOBUTAMINE

-------

Entry 2

Ressource Medication :

> 

Profil: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

**code**:GLUCOSE
> **ingredient**

-------

Entry 3

Ressource Medication :

> 

Profil: [FR Medication Compound](StructureDefinition-fr-medication-compound.md)

**code**:Dobutamine 200 mg dans G5 qsp 40 mL

### Ingredients

| | |
| :--- | :--- |
| - | **Extension** |
| * |  |


-------

Entry 4

Ressource MedicationRequest :

> 

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**groupIdentifier**:`https://somehospital.fr/Prescrption-ID`/Presc-14651**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2021-10-15 10:25:27+0000**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)
> **dosageInstruction****sequence**: 1**timing**: Durée 1?? , Once**route**:Voie intraveineuse

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **Rate[x]** |
| * |  | 400 µg(Details: UCUM codeug = 'ug')/1 min(Details: UCUM codemin = 'min') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Presc-PerfDobutamine-Qsp40mL",
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
        "id" : "medication-1-Presc-PerfDobutamine-Qsp40mL",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-1-Presc-PerfDobutamine-Qsp40mL\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-1-Presc-PerfDobutamine-Qsp40mL</b></p><a name=\"medication-1-Presc-PerfDobutamine-Qsp40mL\"> </a><a name=\"hcmedication-1-Presc-PerfDobutamine-Qsp40mL\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000081844}\">DOBUTAMINE</span></p><p><b>amount</b>: 200 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1</p></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000081844",
              "display" : "dobutamine"
            }
          ],
          "text" : "DOBUTAMINE"
        },
        "amount" : {
          "numerator" : {
            "value" : 200,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 1
          }
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "Medication",
        "id" : "medication-2-Presc-PerfDobutamine-Qsp40mL",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-2-Presc-PerfDobutamine-Qsp40mL\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-2-Presc-PerfDobutamine-Qsp40mL</b></p><a name=\"medication-2-Presc-PerfDobutamine-Qsp40mL\"> </a><a name=\"hcmedication-2-Presc-PerfDobutamine-Qsp40mL\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000078171}\">GLUCOSE</span></p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 11210000}\">solution pour perfusion</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000078171}\">GLUCOSE</span></td><td>50 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td></tr></table></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000078171",
              "display" : "glucose"
            }
          ],
          "text" : "GLUCOSE"
        },
        "form" : {
          "coding" : [
            {
              "system" : "http://standardterms.edqm.eu",
              "code" : "11210000",
              "display" : "solution pour perfusion"
            }
          ],
          "text" : "solution pour perfusion"
        },
        "ingredient" : [
          {
            "itemCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
                  "code" : "100000078171",
                  "display" : "glucose"
                }
              ],
              "text" : "GLUCOSE"
            },
            "strength" : {
              "numerator" : {
                "value" : 50,
                "unit" : "mg",
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              },
              "denominator" : {
                "value" : 1,
                "unit" : "mL",
                "system" : "http://unitsofmeasure.org",
                "code" : "mL"
              }
            }
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Medication",
        "id" : "medication-C-Presc-PerfDobutamine-Qsp40mL",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-compound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-C-Presc-PerfDobutamine-Qsp40mL\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-C-Presc-PerfDobutamine-Qsp40mL</b></p><a name=\"medication-C-Presc-PerfDobutamine-Qsp40mL\"> </a><a name=\"hcmedication-C-Presc-PerfDobutamine-Qsp40mL\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-compound.html\">FR Medication Compound</a></p></div><p><b>code</b>: <span title=\"Codes:\">Dobutamine 200 mg dans G5 qsp 40 mL</span></p><p><b>amount</b>: 40 ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeml = 'ml')</span>/1</p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Item[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td><code>#medication-2-Presc-PerfDobutamine-Qsp40mL</code></td></tr></table></div>"
        },
        "code" : {
          "text" : "Dobutamine 200 mg dans G5 qsp 40 mL"
        },
        "amount" : {
          "numerator" : {
            "value" : 40,
            "unit" : "ml",
            "system" : "http://unitsofmeasure.org",
            "code" : "ml"
          },
          "denominator" : {
            "value" : 1
          }
        },
        "ingredient" : [
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-is-vehicle",
                "valueBoolean" : true
              }
            ],
            "itemReference" : {
              "reference" : "#medication-2-Presc-PerfDobutamine-Qsp40mL"
            }
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-Presc-PerfDobutamine-Qsp40mL",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Presc-PerfDobutamine-Qsp40mL\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Presc-PerfDobutamine-Qsp40mL</b></p><a name=\"medicationrequest-Presc-PerfDobutamine-Qsp40mL\"> </a><a name=\"hcmedicationrequest-Presc-PerfDobutamine-Qsp40mL\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#medication-C-Presc-PerfDobutamine-Qsp40mL</code></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2021-10-15 10:25:27+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/Presc-14651</p><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Durée 1?? , Once</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20045000}\">Voie intraveineuse</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Rate[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>400 µg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeug = 'ug')</span>/1 min<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemin = 'min')</span></td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#medication-C-Presc-PerfDobutamine-Qsp40mL"
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2021-10-15T10:25:27.401Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "Presc-14651"
        },
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2021-10-15T10:25:00Z",
                  "end" : "2021-10-16T10:24:59Z"
                },
                "duration" : 1,
                "durationUnit" : "d"
              }
            },
            "route" : {
              "coding" : [
                {
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "20045000",
                  "display" : "Voie intraveineuse"
                }
              ],
              "text" : "Voie intraveineuse"
            },
            "doseAndRate" : [
              {
                "extension" : [
                  {
                    "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-basis-of-dose-component",
                    "valueReference" : {
                      "reference" : "#medication-1-Presc-PerfDobutamine-Qsp40mL"
                    }
                  }
                ],
                "rateRatio" : {
                  "numerator" : {
                    "value" : 400,
                    "unit" : "µg",
                    "system" : "http://unitsofmeasure.org",
                    "code" : "ug"
                  },
                  "denominator" : {
                    "value" : 1,
                    "unit" : "min",
                    "system" : "http://unitsofmeasure.org",
                    "code" : "min"
                  }
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
