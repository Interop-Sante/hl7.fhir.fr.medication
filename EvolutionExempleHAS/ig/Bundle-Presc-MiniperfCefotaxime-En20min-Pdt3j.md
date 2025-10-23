# Presc-MiniperfCefotaxime-En20min-Pdt3j - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Presc-MiniperfCefotaxime-En20min-Pdt3j**

## Example Bundle: Presc-MiniperfCefotaxime-En20min-Pdt3j

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle Presc-MiniperfCefotaxime-En20min-Pdt3j de type searchset

-------

Entry 1

Ressource Medication :

> 

Profil: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

**code**:CEFOTAXINE

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

### Ingredients

| | |
| :--- | :--- |
| - | **Extension** |
| * |  |
| * |  |


-------

Entry 4

Ressource MedicationRequest :

> 

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**groupIdentifier**:`https://somehospital.fr/Prescrption-ID`/Presc-14650**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2021-10-02 17:22:25+0000**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)
> **dosageInstruction****timing**: Once per 6 hours**route**:Voie intraveineuse

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **Rate[x]** |
| * |  | 4 g(Details: UCUM codeg = 'g')/20 min(Details: UCUM codemin = 'min') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Presc-MiniperfCefotaxime-En20min-Pdt3j",
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
        "id" : "medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j</b></p><a name=\"medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><a name=\"hcmedication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000092662}\">CEFOTAXINE</span></p></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000092662",
              "display" : "céfotaxime"
            }
          ],
          "text" : "CEFOTAXINE"
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "Medication",
        "id" : "medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j</b></p><a name=\"medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><a name=\"hcmedication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000078171}\">GLUCOSE</span></p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 11210000}\">solution pour perfusion</span></p><p><b>amount</b>: 100 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span>/1</p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000078171}\">GLUCOSE</span></td><td>50 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td></tr></table></div>"
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
        "amount" : {
          "numerator" : {
            "value" : 100,
            "unit" : "mL",
            "system" : "http://unitsofmeasure.org",
            "code" : "mL"
          },
          "denominator" : {
            "value" : 1
          }
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
        "id" : "medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-compound"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j</b></p><a name=\"medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><a name=\"hcmedication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-compound.html\">FR Medication Compound</a></p></div><blockquote><p><b>ingredient</b></p><p><b>item</b>: <code>#medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j</code></p></blockquote><blockquote><p><b>ingredient</b></p><p><b>Medication component which is the vehicle of the compound Medication</b>: true</p><p><b>item</b>: <code>#medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j</code></p></blockquote></div>"
        },
        "ingredient" : [
          {
            "itemReference" : {
              "reference" : "#medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j"
            }
          },
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-is-vehicle",
                "valueBoolean" : true
              }
            ],
            "itemReference" : {
              "reference" : "#medication-2-Presc-MiniperfCefotaxime-En20min-Pdt3j"
            }
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt3j",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt3j</b></p><a name=\"medicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><a name=\"hcmedicationrequest-Presc-MiniperfCefotaxime-En20min-Pdt3j\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j</code></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2021-10-02 17:22:25+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/Presc-14650</p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Once per 6 hours</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20045000}\">Voie intraveineuse</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Rate[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>4 g<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg = 'g')</span>/20 min<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemin = 'min')</span></td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#medication-C-Presc-MiniperfCefotaxime-En20min-Pdt3j"
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2021-10-02T17:22:25.401Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "Presc-14650"
        },
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2021-10-02T17:22:00Z",
                  "end" : "2021-10-05T17:21:59Z"
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
                      "reference" : "#medication-1-Presc-MiniperfCefotaxime-En20min-Pdt3j"
                    }
                  }
                ],
                "rateRatio" : {
                  "numerator" : {
                    "value" : 4,
                    "unit" : "g",
                    "system" : "http://unitsofmeasure.org",
                    "code" : "g"
                  },
                  "denominator" : {
                    "value" : 20,
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
