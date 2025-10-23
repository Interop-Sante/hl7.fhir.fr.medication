# HAS-03-Presc-INNOHEP - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-03-Presc-INNOHEP**

## Example Bundle: HAS-03-Presc-INNOHEP

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-03-Presc-INNOHEP de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

12 000UI anti-Xa (soit 170UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-07-23 10:33:00+0100**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)**note**:
> 

Prescription textuelle: INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée


> **dosageInstruction****additionalInstruction**:soit 170UI anti-Xa /kg**timing**: Once per 1 day**route**:Voie sous-cutanée

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 12000 UI anti-Xa |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-03-Presc-INNOHEP",
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
        "id" : "medicationrequest-HAS-3-Presc-INNOHEP",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-3-Presc-INNOHEP\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-3-Presc-INNOHEP</b></p><a name=\"medicationrequest-HAS-3-Presc-INNOHEP\"> </a><a name=\"hcmedicationrequest-HAS-3-Presc-INNOHEP\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>12 000UI anti-Xa (soit 170UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/UCD 3400891846515}\">INNOHEP 14000 INJ SRG0,7ML</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>additionalInstruction</b>: <span title=\"Codes:\">soit 170UI anti-Xa /kg</span></p><p><b>timing</b>: Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20066000}\">Voie sous-cutanée</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>12000 UI anti-Xa</td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "12 000UI anti-Xa (soit 170UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400891846515",
              "display" : "INNOHEP 14000 INJ SRG0,7ML"
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
            "text" : "Prescription textuelle: INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée"
          }
        ],
        "dosageInstruction" : [
          {
            "additionalInstruction" : [
              {
                "text" : "soit 170UI anti-Xa /kg"
              }
            ],
            "timing" : {
              "repeat" : {
                "frequency" : 1,
                "period" : 1,
                "periodUnit" : "d"
              }
            },
            "route" : {
              "coding" : [
                {
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "20066000",
                  "display" : "Voie sous-cutanée"
                }
              ]
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 12000,
                  "unit" : "UI anti-Xa"
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
