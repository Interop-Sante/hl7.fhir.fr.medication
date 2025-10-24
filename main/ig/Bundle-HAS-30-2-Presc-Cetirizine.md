# HAS-30-2-Presc-Cetirizine - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HAS-30-2-Presc-Cetirizine**

## Example Bundle: HAS-30-2-Presc-Cetirizine

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle HAS-30-2-Presc-Cetirizine de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**:

1 à 4 comprimés par jour selon les symptômes (urticaire)

**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2025-07-23 10:33:00+0100**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)**note**:
> 

Prescription textuelle: CETIRIZINE 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire)


> **dosageInstruction****additionalInstruction**:Selon les symptômes (urticaire)

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1-4 Comprimé |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "HAS-30-2-Presc-Cetirizine",
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
        "id" : "medicationrequest-HAS-30-2-Presc-Cetirizine",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-HAS-30-2-Presc-Cetirizine\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-HAS-30-2-Presc-Cetirizine</b></p><a name=\"medicationrequest-HAS-30-2-Presc-Cetirizine\"> </a><a name=\"hcmedicationrequest-HAS-30-2-Presc-Cetirizine\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medicationrequest.html\">FR Medication Request</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>1 à 4 comprimés par jour selon les symptômes (urticaire)</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://BogusSystemMedicabase.com MV00000524}\">Cétirizine dichlorhydrate 10 mg comprimé</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2025-07-23 10:33:00+0100</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: CETIRIZINE 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire)</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>additionalInstruction</b>: <span title=\"Codes:\">Selon les symptômes (urticaire)</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1-4 Comprimé</td></tr></table></blockquote></div>"
        },
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "1 à 4 comprimés par jour selon les symptômes (urticaire)"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://BogusSystemMedicabase.com",
              "code" : "MV00000524",
              "display" : "Cétirizine dichlorhydrate 10 mg comprimé"
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
            "text" : "Prescription textuelle: CETIRIZINE 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire)"
          }
        ],
        "dosageInstruction" : [
          {
            "additionalInstruction" : [
              {
                "text" : "Selon les symptômes (urticaire)"
              }
            ],
            "doseAndRate" : [
              {
                "doseRange" : {
                  "low" : {
                    "value" : 1,
                    "unit" : "Comprimé",
                    "system" : "http://standardterms.edqm.eu",
                    "code" : "15054000"
                  },
                  "high" : {
                    "value" : 4,
                    "unit" : "Comprimé",
                    "system" : "http://standardterms.edqm.eu",
                    "code" : "15054000"
                  }
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
