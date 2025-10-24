# HAS-01-Presc-Pantoprazole-DC - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-01-Presc-Pantoprazole-DC**

## Example Bundle: HAS-01-Presc-Pantoprazole-DC

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-01-Presc-Pantoprazole-DC de type searchset

-------

Entry 1

Ressource Medication :

> 

Profil: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

**code**:pantoprazole
> **ingredient**

-------

Entry 2

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

40 mg le soir

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-07-23 10:33:00+0100**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)**note**:
> 

Prescription textuelle: PANTOPRAZOLE 40 mg comprimé: 40 mg le soir


> **dosageInstruction****timing**: Evening, Once

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 40 mg(Details: UCUM codemg = 'mg') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-01-Presc-Pantoprazole-DC",
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
        "id" : "medication-HAS-1-Presc-Pantoprazole-DC",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-HAS-1-Presc-Pantoprazole-DC\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-HAS-1-Presc-Pantoprazole-DC</b></p><a name=\"medication-HAS-1-Presc-Pantoprazole-DC\"> </a><a name=\"hcmedication-HAS-1-Presc-Pantoprazole-DC\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000092491}\">pantoprazole</span></p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10219000}\">comprimé</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000092491}\">pantoprazole</span></td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1</td></tr></table></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000092491",
              "display" : "pantoprazole"
            }
          ]
        },
        "form" : {
          "coding" : [
            {
              "system" : "http://standardterms.edqm.eu",
              "code" : "10219000",
              "display" : "comprimé"
            }
          ]
        },
        "ingredient" : [
          {
            "itemCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
                  "code" : "100000092491",
                  "display" : "pantoprazole"
                }
              ]
            },
            "strength" : {
              "numerator" : {
                "value" : 40,
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
        "id" : "medicationrequest-HAS-1-Presc-Pantoprazole-DC",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-1-Presc-Pantoprazole-DC\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-1-Presc-Pantoprazole-DC</b></p><a name=\"medicationrequest-HAS-1-Presc-Pantoprazole-DC\"> </a><a name=\"hcmedicationrequest-HAS-1-Presc-Pantoprazole-DC\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>40 mg le soir</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#medication-HAS-1-Presc-Pantoprazole-DC</code></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: PANTOPRAZOLE 40 mg comprimé: 40 mg le soir</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Evening, Once</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "40 mg le soir"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#medication-HAS-1-Presc-Pantoprazole-DC"
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
            "text" : "Prescription textuelle: PANTOPRAZOLE 40 mg comprimé: 40 mg le soir"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "when" : ["EVE"]
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
          }
        ]
      }
    }
  ]
}

```
