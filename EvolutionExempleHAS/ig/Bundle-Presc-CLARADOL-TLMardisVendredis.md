# Presc-CLARADOL-TLMardisVendredis - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Presc-CLARADOL-TLMardisVendredis**

## Example Bundle: Presc-CLARADOL-TLMardisVendredis

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle Presc-CLARADOL-TLMardisVendredis de type searchset

-------

Entry 1

Ressource MedicationRequest :

> 

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**groupIdentifier**:`https://somehospital.fr/Prescrption-ID`/Presc-14645**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2021-08-13 09:28:14+0000**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)
> **dosageInstruction****sequence**: 1**timing**: Once**route**:Voie orale

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé(Details: EDQM Standard Terms code15054000 = 'Tablet') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Presc-CLARADOL-TLMardisVendredis",
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
        "id" : "medicationrequest-Presc-CLARADOL-TLMardisVendredis",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Presc-CLARADOL-TLMardisVendredis\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Presc-CLARADOL-TLMardisVendredis</b></p><a name=\"medicationrequest-Presc-CLARADOL-TLMardisVendredis\"> </a><a name=\"hcmedicationrequest-Presc-CLARADOL-TLMardisVendredis\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/UCD 3400891705256}\">CLARADOL® 500 mg, cpr séc</span></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2021-08-13 09:28:14+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/Presc-14645</p><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Once</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Comprimé<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15054000 = 'Tablet')</span></td></tr></table></blockquote></div>"
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
        "authoredOn" : "2021-08-13T09:28:14.342Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "Presc-14645"
        },
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2021-08-13T09:28:00Z",
                  "end" : "2021-11-13T09:27:59Z"
                },
                "dayOfWeek" : ["tue", "fri"],
                "timeOfDay" : ["18:00:00"]
              }
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
            ]
          }
        ]
      }
    }
  ]
}

```
