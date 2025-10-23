# Presc-DOLIPRANE-20DoseParKG - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Presc-DOLIPRANE-20DoseParKG**

## Example Bundle: Presc-DOLIPRANE-20DoseParKG

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle Presc-DOLIPRANE-20DoseParKG de type searchset

-------

Entry 1

Ressource Medication :

> 

Profil: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

**code**:DOLIPRANE® 2.4% ss sucre, susp buv

### Ingredients

| | |
| :--- | :--- |
| - | **IsActive** |
| * | true |


-------

Entry 2

Ressource MedicationRequest :

> 

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**groupIdentifier**:`https://somehospital.fr/Prescrption-ID`/Presc-14626**status**: Active**intent**: Order**priority**: Routine**subject**:[Patient/14602](Patient/14602)**authoredOn**: 2021-07-28 15:20:31+0000**requester**:[Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)
> **dosageInstruction****sequence**: 1**timing**: Once**route**:Voie orale

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 20 dose_kg |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "Presc-DOLIPRANE-20DoseParKG",
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
        "id" : "medication-Presc-DOLIPRANE-20DoseParKG",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-Presc-DOLIPRANE-20DoseParKG\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-Presc-DOLIPRANE-20DoseParKG</b></p><a name=\"medication-Presc-DOLIPRANE-20DoseParKG\"> </a><a name=\"hcmedication-Presc-DOLIPRANE-20DoseParKG\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/UCD 3400892028057}\">DOLIPRANE® 2.4% ss sucre, susp buv</span></p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10106000}\">suspension buvable</span></p><p><b style=\"color: maroon\">Exception Generating Narrative: Cannot invoke &quot;org.hl7.fhir.r5.renderers.utils.ResourceWrapper.has(String)&quot; because &quot;q&quot; is null </b></p></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400892028057",
              "display" : "DOLIPRANE 2,4% BUV FV100ML"
            }
          ],
          "text" : "DOLIPRANE® 2.4% ss sucre, susp buv"
        },
        "form" : {
          "coding" : [
            {
              "system" : "http://standardterms.edqm.eu",
              "code" : "10106000",
              "display" : "suspension buvable"
            }
          ],
          "text" : "suspension buvable"
        },
        "ingredient" : [
          {
            "itemCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
                  "code" : "100000090270",
                  "display" : "paracétamol"
                }
              ],
              "text" : "PARACETAMOL"
            },
            "isActive" : true,
            "strength" : {
              "numerator" : {
                "value" : 15,
                "unit" : "mg",
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              }
            }
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-Presc-DOLIPRANE-20DoseParKG",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Presc-DOLIPRANE-20DoseParKG\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Presc-DOLIPRANE-20DoseParKG</b></p><a name=\"medicationrequest-Presc-DOLIPRANE-20DoseParKG\"> </a><a name=\"hcmedicationrequest-Presc-DOLIPRANE-20DoseParKG\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#medication-Presc-DOLIPRANE-20DoseParKG</code></p><p><b>subject</b>: <a href=\"Patient/14602\">Patient/14602</a></p><p><b>authoredOn</b>: 2021-07-28 15:20:31+0000</p><p><b>requester</b>: <a href=\"Practitioner/smart-Practitioner-71482713\">Practitioner/smart-Practitioner-71482713</a></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/Presc-14626</p><blockquote><p><b>dosageInstruction</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Once</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/dose-rate-type ordered}\">Ordered</span></td><td>20 dose_kg</td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#medication-Presc-DOLIPRANE-20DoseParKG"
        },
        "subject" : {
          "reference" : "Patient/14602"
        },
        "authoredOn" : "2021-07-28T15:20:31.592Z",
        "requester" : {
          "reference" : "Practitioner/smart-Practitioner-71482713"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "Presc-14626"
        },
        "dosageInstruction" : [
          {
            "sequence" : 1,
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2021-07-28T15:20:00Z",
                  "end" : "2021-08-02T15:19:59Z"
                },
                "timeOfDay" : ["07:00:00", "18:00:00"]
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
                "type" : {
                  "coding" : [
                    {
                      "system" : "http://terminology.hl7.org/CodeSystem/dose-rate-type",
                      "code" : "ordered",
                      "display" : "Ordered"
                    }
                  ],
                  "text" : "Ordered"
                },
                "doseQuantity" : {
                  "value" : 20,
                  "unit" : "dose_kg"
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
