# Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin**

## Example Bundle: Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**groupIdentifier**:`https://somehospital.fr/Prescrption-ID`/Presc-14639**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2021-08-11 18:21:20+0000**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)
> **dosageInstruction****sequence**: 1**additionalInstruction**:Délais minimum entre 2 prises : 4h**timing**: Once per 4 hours**route**:Voie orale

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé(Details: EDQM Standard Terms code15054000 = 'Tablet') |

**maxDosePerPeriod**: 6 Comprimé(Details: EDQM Standard Terms code15054000 = 'Tablet')/24 h(Details: UCUM codeh = 'h')**maxDosePerAdministration**: 2 Comprimé(Details: EDQM Standard Terms code15054000 = 'Tablet')



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin",
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
        "id" : "medicationrequest-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin</b></p><a name=\"medicationrequest-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin\"> </a><a name=\"hcmedicationrequest-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/UCD 3400891705256}\">CLARADOL® 500 mg, cpr séc</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2021-08-11 18:21:20+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/Presc-14639</p><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>additionalInstruction</b>: <span title=\"Codes:\">Délais minimum entre 2 prises : 4h</span></p><p><b>timing</b>: Once per 4 hours</p><p><b>asNeeded</b>: <span title=\"Codes:{http://snomed.info/sct 22253000}\">Si douleurs</span></p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Comprimé<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15054000 = 'Tablet')</span></td></tr></table><p><b>maxDosePerPeriod</b>: 6 Comprimé<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15054000 = 'Tablet')</span>/24 h<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeh = 'h')</span></p><p><b>maxDosePerAdministration</b>: 2 Comprimé<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15054000 = 'Tablet')</span></p></blockquote></div>"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400891705256",
              "display" : "CLARADOL 500MG CPR"
            }
          ],
          "text" : "CLARADOL® 500 mg, cpr séc"
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2021-08-11T18:21:20.641Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "Presc-14639"
        },
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "additionalInstruction" : [
              {
                "text" : "Délais minimum entre 2 prises : 4h"
              }
            ],
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2021-08-11T18:21:00Z",
                  "end" : "2021-08-17T18:20:59Z"
                },
                "frequencyMax" : 1,
                "period" : 4,
                "periodUnit" : "h"
              }
            },
            "asNeededCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "22253000",
                  "display" : "douleur"
                }
              ],
              "text" : "Si douleurs"
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
            ],
            "maxDosePerPeriod" : {
              "numerator" : {
                "value" : 6,
                "unit" : "Comprimé",
                "system" : "http://standardterms.edqm.eu",
                "code" : "15054000"
              },
              "denominator" : {
                "value" : 24,
                "unit" : "h",
                "system" : "http://unitsofmeasure.org",
                "code" : "h"
              }
            },
            "maxDosePerAdministration" : {
              "value" : 2,
              "unit" : "Comprimé",
              "system" : "http://standardterms.edqm.eu",
              "code" : "15054000"
            }
          }
        ]
      }
    }
  ]
}

```
