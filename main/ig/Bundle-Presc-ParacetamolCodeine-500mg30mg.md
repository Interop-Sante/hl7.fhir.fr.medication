# Presc-ParacetamolCodeine-500mg30mg - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Presc-ParacetamolCodeine-500mg30mg**

## Example Bundle: Presc-ParacetamolCodeine-500mg30mg

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle Presc-ParacetamolCodeine-500mg30mg de type searchset

-------

Entry 1

Ressource Medication :

> 

Profil: [FR Medication Compound](StructureDefinition-fr-medication-compound.md)

**code**:PARACETAMOL+CODEINE 500mg+30mg
> **ingredient**

> **ingredient**

-------

Entry 2

Ressource MedicationRequest :

> 

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**groupIdentifier**:`https://somehospital.fr/Prescrption-ID`/Presc-14658**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2021-07-19 16:22:39+0000**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)
> **dosageInstruction****sequence**: 1**timing**: Once**route**:Voie orale

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé(Details: EDQM Standard Terms code15054000 = 'Tablet') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Presc-ParacetamolCodeine-500mg30mg",
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
        "id" : "medication-Presc-ParacetamolCodeine-500mg30mg",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-compound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-Presc-ParacetamolCodeine-500mg30mg\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-Presc-ParacetamolCodeine-500mg30mg</b></p><a name=\"medication-Presc-ParacetamolCodeine-500mg30mg\"> </a><a name=\"hcmedication-Presc-ParacetamolCodeine-500mg30mg\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-compound.html\">FR Medication Compound</a></p></div><p><b>code</b>: <span title=\"Codes:\">PARACETAMOL+CODEINE 500mg+30mg</span></p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10219000}\">Comprimé</span></p><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000090270}\">PARACETAMOL</span></p><p><b>strength</b>: 500 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1</p></blockquote><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000079790}\">CODEINE</span></p><p><b>strength</b>: 30 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1</p></blockquote></div>"
        },
        "code" : {
          "text" : "PARACETAMOL+CODEINE 500mg+30mg"
        },
        "form" : {
          "coding" : [
            {
              "system" : "http://standardterms.edqm.eu",
              "code" : "10219000",
              "display" : "Comprimé"
            }
          ]
        },
        "ingredient" : [
          {
            "itemCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
                  "code" : "100000090270",
                  "display" : "paracétamol"
                }
              ],
              "text" : "PARACETAMOL"
            },
            "strength" : {
              "numerator" : {
                "value" : 500,
                "unit" : "mg",
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              },
              "denominator" : {
                "value" : 1
              }
            }
          },
          {
            "itemCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
                  "code" : "100000079790",
                  "display" : "codéine"
                }
              ],
              "text" : "CODEINE"
            },
            "strength" : {
              "numerator" : {
                "value" : 30,
                "unit" : "mg",
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              },
              "denominator" : {
                "value" : 1
              }
            }
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-Presc-ParacetamolCodeine-500mg30mg",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Presc-ParacetamolCodeine-500mg30mg\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Presc-ParacetamolCodeine-500mg30mg</b></p><a name=\"medicationrequest-Presc-ParacetamolCodeine-500mg30mg\"> </a><a name=\"hcmedicationrequest-Presc-ParacetamolCodeine-500mg30mg\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#medication-Presc-ParacetamolCodeine-500mg30mg</code></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2021-07-19 16:22:39+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/Presc-14658</p><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Once</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Comprimé<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15054000 = 'Tablet')</span></td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#medication-Presc-ParacetamolCodeine-500mg30mg"
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2021-07-19T16:22:39.825Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "Presc-14658"
        },
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2021-07-19T16:22:00Z",
                  "end" : "2021-07-24T16:23:59Z"
                },
                "timeOfDay" : ["07:00:00", "18:00:00"]
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
                  "unit" : "Comprimé",
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "15054000"
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
