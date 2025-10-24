# HAS-28-Presc-LOVENOX - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-28-Presc-LOVENOX**

## Example Bundle: HAS-28-Presc-LOVENOX

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-28-Presc-LOVENOX de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-07-23 10:33:00+0100**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)**note**:
> 

Prescription textuelle: ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention.


> **dosageInstruction****sequence**: 1**additionalInstruction**:à débuter 12 heures avant l'intervention chirurgicale**timing**: Once per 1 day**route**:Voie sous-cutanée

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Seringue(Details: EDQM Standard Terms code15052000 = 'Syringe') |


> **dosageInstruction****sequence**: 2**additionalInstruction**:après l'intervention**timing**: Once per 1 day**route**:Voie sous-cutanée

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Seringue(Details: EDQM Standard Terms code15052000 = 'Syringe') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-28-Presc-LOVENOX",
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
        "id" : "medicationrequest-HAS-28-Presc-LOVENOX",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-28-Presc-LOVENOX\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-28-Presc-LOVENOX</b></p><a name=\"medicationrequest-HAS-28-Presc-LOVENOX\"> </a><a name=\"hcmedicationrequest-HAS-28-Presc-LOVENOX\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/UCD 3400892669236}\">LOVENOX 4000UI SRG0,4ML +ERIS</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention.</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>additionalInstruction</b>: <span title=\"Codes:\">à débuter 12 heures avant l'intervention chirurgicale</span></p><p><b>timing</b>: Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20066000}\">Voie sous-cutanée</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Seringue<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15052000 = 'Syringe')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 2</p><p><b>additionalInstruction</b>: <span title=\"Codes:\">après l'intervention</span></p><p><b>timing</b>: Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20066000}\">Voie sous-cutanée</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Seringue<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15052000 = 'Syringe')</span></td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400892669236",
              "display" : "LOVENOX 4000UI SRG0,4ML +ERIS"
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
            "text" : "Prescription textuelle: ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention."
          }
        ],
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "additionalInstruction" : [
              {
                "text" : "à débuter 12 heures avant l'intervention chirurgicale"
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
                  "value" : 1,
                  "unit" : "Seringue",
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "15052000"
                }
              }
            ]
          },
          {
            "sequence" : 2,
            "additionalInstruction" : [
              {
                "text" : "après l'intervention"
              }
            ],
            "timing" : {
              "repeat" : {
                "boundsDuration" : {
                  "value" : 10,
                  "unit" : "jour",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "d"
                },
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
                  "value" : 1,
                  "unit" : "Seringue",
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "15052000"
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
