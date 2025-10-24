# HAS-15-Presc-Morphine - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-15-Presc-Morphine**

## Example Bundle: HAS-15-Presc-Morphine

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-15-Presc-Morphine de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

une gélule le soir (à 20h) pendant huit jours

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-07-23 10:33:00+0100**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)**note**:
> 

Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours


> **dosageInstruction****timing**: Evening, Once

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 gélule(Details: EDQM Standard Terms code15012000 = 'Capsule') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-15-Presc-Morphine",
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
        "id" : "medicationrequest-HAS-15-Presc-Morphine",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-15-Presc-Morphine\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-15-Presc-Morphine</b></p><a name=\"medicationrequest-HAS-15-Presc-Morphine\"> </a><a name=\"hcmedicationrequest-HAS-15-Presc-Morphine\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>une gélule le soir (à 20h) pendant huit jours</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://BogusSystemMedicabase.com MV00001636}\">MORPHINE LP 10mg gélule microgranulé à libération prolongée</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Evening, Once</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 gélule<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15012000 = 'Capsule')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "une gélule le soir (à 20h) pendant huit jours"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://BogusSystemMedicabase.com",
              "code" : "MV00001636",
              "display" : "MORPHINE LP 10mg gélule microgranulé à libération prolongée"
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
            "text" : "Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 8,
                  "unit" : "jour",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "d"
                },
                "timeOfDay" : ["20:00:00"],
                "when" : ["EVE"]
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 1,
                  "unit" : "gélule",
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
