# HAS-22-Presc-Prednisolone - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-22-Presc-Prednisolone**

## Example Bundle: HAS-22-Presc-Prednisolone

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-22-Presc-Prednisolone de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

en une prise le matin 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-07-23 10:33:00+0100**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)**note**:
> 

Prescription textuelle: PREDNISOLONE 20 mg comprimé (sécable) : en une prise le matin 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution


> **dosageInstruction****sequence**: 1**additionalInstruction**:Jusqu'à obtenir 3 bandelettes urinaires négatives**timing**: Morning, Once

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 60 mg(Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 2**timing**: Durée 1week , Morning, Once

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 50 mg(Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 3**timing**: Durée 1week , Morning, Once

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 40 mg(Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 4**timing**: Durée 1week , Morning, Once

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 30 mg(Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 5**timing**: Durée 1week , Morning, Once

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 20 mg(Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 6**timing**: Durée 2weeks , Morning, Once

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 10 mg(Details: UCUM codemg = 'mg') |


> **dosageInstruction****sequence**: 7**additionalInstruction**:Revoir pour l'arrêt selon évolution



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-22-Presc-Prednisolone",
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
        "id" : "medicationrequest-HAS-22-Presc-Prednisolone",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-22-Presc-Prednisolone\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-22-Presc-Prednisolone</b></p><a name=\"medicationrequest-HAS-22-Presc-Prednisolone\"> </a><a name=\"hcmedicationrequest-HAS-22-Presc-Prednisolone\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>en une prise le matin 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://BogusSystemMedicabase.com MV00002248}\">PREDNISOLONE 20 mg comprimé</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: PREDNISOLONE 20 mg comprimé (sécable) : en une prise le matin 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>additionalInstruction</b>: <span title=\"Codes:\">Jusqu'à obtenir 3 bandelettes urinaires négatives</span></p><p><b>timing</b>: Morning, Once</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>60 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 2</p><p><b>timing</b>: Durée 1week , Morning, Once</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>50 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 3</p><p><b>timing</b>: Durée 1week , Morning, Once</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 4</p><p><b>timing</b>: Durée 1week , Morning, Once</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>30 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 5</p><p><b>timing</b>: Durée 1week , Morning, Once</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>20 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 6</p><p><b>timing</b>: Durée 2weeks , Morning, Once</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>10 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 7</p><p><b>additionalInstruction</b>: <span title=\"Codes:\">Revoir pour l'arrêt selon évolution</span></p></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "en une prise le matin 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://BogusSystemMedicabase.com",
              "code" : "MV00002248",
              "display" : "PREDNISOLONE 20 mg comprimé"
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
            "text" : "Prescription textuelle: PREDNISOLONE 20 mg comprimé (sécable) : en une prise le matin 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
          }
        ],
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "additionalInstruction" : [
              {
                "text" : "Jusqu'à obtenir 3 bandelettes urinaires négatives"
              }
            ],
            "timing" : {
              "repeat" : {
                "frequency" : 1,
                "periodUnit" : "wk",
                "when" : ["MORN"]
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 60,
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
                "duration" : 1,
                "durationUnit" : "wk",
                "frequency" : 1,
                "periodUnit" : "wk",
                "when" : ["MORN"]
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 50,
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
                "duration" : 1,
                "durationUnit" : "wk",
                "frequency" : 1,
                "periodUnit" : "wk",
                "when" : ["MORN"]
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 40,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
                }
              }
            ]
          },
          {
            "sequence" : 4,
            "timing" : {
              "repeat" : {
                "duration" : 1,
                "durationUnit" : "wk",
                "frequency" : 1,
                "periodUnit" : "wk",
                "when" : ["MORN"]
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 30,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
                }
              }
            ]
          },
          {
            "sequence" : 5,
            "timing" : {
              "repeat" : {
                "duration" : 1,
                "durationUnit" : "wk",
                "frequency" : 1,
                "periodUnit" : "wk",
                "when" : ["MORN"]
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 20,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
                }
              }
            ]
          },
          {
            "sequence" : 6,
            "timing" : {
              "repeat" : {
                "duration" : 2,
                "durationUnit" : "wk",
                "frequency" : 1,
                "periodUnit" : "wk",
                "when" : ["MORN"]
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 10,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
                }
              }
            ]
          },
          {
            "sequence" : 7,
            "additionalInstruction" : [
              {
                "text" : "Revoir pour l'arrêt selon évolution"
              }
            ]
          }
        ]
      }
    }
  ]
}

```
