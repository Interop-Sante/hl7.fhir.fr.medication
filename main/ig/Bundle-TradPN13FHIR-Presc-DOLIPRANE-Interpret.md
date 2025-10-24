# TradPN13FHIR-Presc-DOLIPRANE-Interpret - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TradPN13FHIR-Presc-DOLIPRANE-Interpret**

## Example Bundle: TradPN13FHIR-Presc-DOLIPRANE-Interpret

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle TradPN13FHIR-Presc-DOLIPRANE-Interpret de type searchset

-------

Entry 1

Ressource Medication :

> 

Profil: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

**code**:DOLIPRANE 1 000 mg, cpr efferv

-------

Entry 2

Ressource MedicationRequest :

> 

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**identifier**:`https://somehospital.fr/PrescrptionLine-ID`/id1**groupIdentifier**:`https://somehospital.fr/Prescrption-ID`/IdentifiantAttribuePourLaTraductionEnFHIR**status**: Active**intent**: Order**priority**: Routine**subject**: Identifier:`https://somehospital.fr/IPP`/123456**encounter**: Identifier:`https://somehospital.fr/Sejour`/234567**supportingInformation**: Identifier:`https://somehospital.fr/UF`/2571**authoredOn**: 2007-12-27 10:33:00+0100**requester**: Identifier:`https://somehospital.fr/EI`/345678**note**:
> 

Prescription textuelle: Doliprane cpr 3x1g/j x 3j


> **dosageInstruction****timing**: 3 per 1 day**route**:Voie orale

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé(Details: EDQM Standard Terms code15036000 = 'Patch') |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "TradPN13FHIR-Presc-DOLIPRANE-Interpret",
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
        "id" : "medication-TradPN13FHIR-Presc-DOLIPRANE-Interpret",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-TradPN13FHIR-Presc-DOLIPRANE-Interpret\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-TradPN13FHIR-Presc-DOLIPRANE-Interpret</b></p><a name=\"medication-TradPN13FHIR-Presc-DOLIPRANE-Interpret\"> </a><a name=\"hcmedication-TradPN13FHIR-Presc-DOLIPRANE-Interpret\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/UCD 3400892169026}\">DOLIPRANE 1 000 mg, cpr efferv</span></p></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400892169026",
              "display" : "DOLIPRANE 1000MG CPR EFFV"
            }
          ],
          "text" : "DOLIPRANE 1 000 mg, cpr efferv"
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-TradPN13FHIR-Presc-DOLIPRANE-Interpret",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-TradPN13FHIR-Presc-DOLIPRANE-Interpret\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-TradPN13FHIR-Presc-DOLIPRANE-Interpret</b></p><a name=\"medicationrequest-TradPN13FHIR-Presc-DOLIPRANE-Interpret\"> </a><a name=\"hcmedicationrequest-TradPN13FHIR-Presc-DOLIPRANE-Interpret\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>identifier</b>: <code>https://somehospital.fr/PrescrptionLine-ID</code>/id1</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#medication-TradPN13FHIR-Presc-DOLIPRANE-Interpret</code></p><p><b>subject</b>: Identifier: <code>https://somehospital.fr/IPP</code>/123456</p><p><b>encounter</b>: Identifier: <code>https://somehospital.fr/Sejour</code>/234567</p><p><b>supportingInformation</b>: Identifier: <code>https://somehospital.fr/UF</code>/2571</p><p><b>authoredOn</b>: 2007-12-27 10:33:00+0100</p><p><b>requester</b>: Identifier: <code>https://somehospital.fr/EI</code>/345678</p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/IdentifiantAttribuePourLaTraductionEnFHIR</p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: Doliprane cpr 3x1g/j x 3j</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: 3 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Comprimé<span style=\"background: LightGoldenRodYellow\"> (Details: EDQM Standard Terms  code15036000 = 'Patch')</span></td></tr></table></blockquote></div>"
        },
        "identifier" : [
          {
            "system" : "https://somehospital.fr/PrescrptionLine-ID",
            "value" : "id1"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#medication-TradPN13FHIR-Presc-DOLIPRANE-Interpret"
        },
        "subject" : {
          "identifier" : {
            "system" : "https://somehospital.fr/IPP",
            "value" : "123456"
          }
        },
        "encounter" : {
          "identifier" : {
            "system" : "https://somehospital.fr/Sejour",
            "value" : "234567"
          }
        },
        "supportingInformation" : [
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role",
                "valueCode" : "UFMED"
              }
            ],
            "type" : "Organization",
            "identifier" : {
              "system" : "https://somehospital.fr/UF",
              "value" : "2571"
            }
          }
        ],
        "authoredOn" : "2007-12-27T10:33:00+01:00",
        "requester" : {
          "identifier" : {
            "system" : "https://somehospital.fr/EI",
            "value" : "345678"
          }
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "IdentifiantAttribuePourLaTraductionEnFHIR"
        },
        "note" : [
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
                "valueCode" : "LIPRESCTXT"
              }
            ],
            "text" : "Prescription textuelle: Doliprane cpr 3x1g/j x 3j"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2007-12-28T07:00:00+01:00",
                  "end" : "2007-12-30T18:00:00+01:00"
                },
                "frequency" : 3,
                "period" : 1,
                "periodUnit" : "d"
              }
            },
            "route" : {
              "coding" : [
                {
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "20053000",
                  "display" : "Voie orale"
                }
              ]
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 1,
                  "unit" : "Comprimé",
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
