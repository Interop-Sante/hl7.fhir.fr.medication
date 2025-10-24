# HAS-05b-Presc-ACTISKENAN - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-05b-Presc-ACTISKENAN**

## Example Bundle: HAS-05b-Presc-ACTISKENAN

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-05b-Presc-ACTISKENAN de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

dix milligrammes par jour pendant sept jours

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-07-23 10:33:00+0100**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)**note**:
> 

Prescription textuelle: ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours


> **dosageInstruction****timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 10 mg(Details: UCUM codemg = 'mg') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-05b-Presc-ACTISKENAN",
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
        "id" : "medicationrequest-HAS-5b-Presc-ACTISKENAN",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-5b-Presc-ACTISKENAN\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-5b-Presc-ACTISKENAN</b></p><a name=\"medicationrequest-HAS-5b-Presc-ACTISKENAN\"> </a><a name=\"hcmedicationrequest-HAS-5b-Presc-ACTISKENAN\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>dix milligrammes par jour pendant sept jours</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/UCD 3400892083926}\">ACTISKENAN 10MG GELU</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Once per 1 day</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>10 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "dix milligrammes par jour pendant sept jours"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400892083926",
              "display" : "ACTISKENAN 10MG GELU"
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
            "text" : "Prescription textuelle: ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 7,
                  "unit" : "jour",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "d"
                },
                "frequency" : 1,
                "period" : 1,
                "periodUnit" : "d"
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
          }
        ]
      }
    }
  ]
}

```
