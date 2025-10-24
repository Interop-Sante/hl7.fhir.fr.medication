# HAS-04a-Presc-Paracetamol - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-04a-Presc-Paracetamol**

## Example Bundle: HAS-04a-Presc-Paracetamol

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-04a-Presc-Paracetamol de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

2 gélules toutes les 6 h pendant 10 jours si douleurs

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-06-06 14:48:44+0200**requester**: Identifier: 899999999999**note**:
> 

Prescription textuelle: Prescription textuelle: PARACETAMOL 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs


> **dosageInstruction****timing**: Once per 6 hours

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 2 gélule ou capsule molle(Details: EDQM Standard Terms code15012000 = 'Capsule') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-04a-Presc-Paracetamol",
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
        "id" : "medicationrequest-HAS-4a-Presc-Paracetamol",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-4a-Presc-Paracetamol\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-4a-Presc-Paracetamol</b></p><a name=\"medicationrequest-HAS-4a-Presc-Paracetamol\"> </a><a name=\"hcmedicationrequest-HAS-4a-Presc-Paracetamol\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>2 gélules toutes les 6 h pendant 10 jours si douleurs</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://BogusSystemMedicabase.com MV00000557}\">PARACETAMOL 500 mg gélule</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-06-06 14:48:44+0200</p><p><b>requester</b>: Identifier: 899999999999</p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: Prescription textuelle: PARACETAMOL 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Once per 6 hours</p><p><b>asNeeded</b>: <span title=\"Codes:{http://snomed.info/sct 22253000}\">Si douleurs</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2 gélule ou capsule molle<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15012000 = 'Capsule')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "2 gélules toutes les 6 h pendant 10 jours si douleurs"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://BogusSystemMedicabase.com",
              "code" : "MV00000557",
              "display" : "PARACETAMOL 500 mg gélule"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2025-06-06T14:48:44+02:00",
        "requester" : {
          "identifier" : {
            "value" : "899999999999"
          }
        },
        "note" : [
          {
            "text" : "Prescription textuelle: Prescription textuelle: PARACETAMOL 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 10,
                  "unit" : "jour",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "d"
                },
                "frequency" : 1,
                "period" : 6,
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
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 2,
                  "unit" : "gélule ou capsule molle",
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
