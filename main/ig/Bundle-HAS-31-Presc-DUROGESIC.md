# HAS-31-Presc-DUROGESIC - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-31-Presc-DUROGESIC**

## Example Bundle: HAS-31-Presc-DUROGESIC

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-31-Presc-DUROGESIC de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-07-23 10:33:00+0100**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)**note**:
> 

Prescription textuelle: DUROGESIC® dispositif transdermique 25 μg : un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines.


> **dosageInstruction****timing**: Durée 72hours , Once per 72 hours

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 dispositif transdermique(Details: EDQM Standard Terms code15036000 = 'Patch') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-31-Presc-DUROGESIC",
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
        "id" : "medicationrequest-HAS-31-Presc-DUROGESIC",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-31-Presc-DUROGESIC\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-31-Presc-DUROGESIC</b></p><a name=\"medicationrequest-HAS-31-Presc-DUROGESIC\"> </a><a name=\"hcmedicationrequest-HAS-31-Presc-DUROGESIC\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/UCD 3400891937626}\">DUROGESIC 25µG/H DISP TRANS</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: DUROGESIC® dispositif transdermique 25 μg : un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines.</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Durée 72hours , Once per 72 hours</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 dispositif transdermique<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15036000 = 'Patch')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400891937626",
              "display" : "DUROGESIC 25µG/H DISP TRANS"
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
            "text" : "Prescription textuelle: DUROGESIC® dispositif transdermique 25 μg : un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines."
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 2,
                  "unit" : "semaines",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "wk"
                },
                "duration" : 72,
                "durationUnit" : "h",
                "frequency" : 1,
                "period" : 72,
                "periodUnit" : "h"
              }
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 1,
                  "unit" : "dispositif transdermique",
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "15036000"
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
