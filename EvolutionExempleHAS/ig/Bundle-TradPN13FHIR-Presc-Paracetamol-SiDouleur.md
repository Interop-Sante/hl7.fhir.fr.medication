# TradPN13FHIR-Presc-Paracetamol-SiDouleur - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TradPN13FHIR-Presc-Paracetamol-SiDouleur**

## Example Bundle: TradPN13FHIR-Presc-Paracetamol-SiDouleur

Profil: [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md)

Bundle TradPN13FHIR-Presc-Paracetamol-SiDouleur de type searchset

-------

Entry 1

Ressource Patient :

> 

Profil: [FR Core Patient Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

AVION (no stated gender), Date de Naissance :1961-11-25 ( Identifiant interne: 5000001820 (use: usual, ))
-------

-------

Entry 2

Ressource Practitioner :

> 

Profil: [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner.html)

**identifier**: Employee number/P082443**name**: DENIS LUIGGI , DENIS LUIGGI (Official)

-------

Entry 3

Ressource Medication :

> 

Profil: [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md)

**code**:PARACETAMOL

-------

Entry 4

Ressource Observation :

> 

Profil: [FR Core Observation Body Height Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-observation-body-height.html)

**status**: Final**category**:Vital Signs**code**:Taille du patient [Longueur] Patient ; Numérique**subject**:`#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur`**effective**: 2018-10-25 11:06:06+0200**value**: 189 cm(Details: UCUM codecm = 'cm')

-------

Entry 5

Ressource Observation :

> 

Profil: [FR Core Observation Body Weight Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-observation-body-weight.html)

**status**: Final**category**:Vital Signs**code**:Poids corporel [Masse] Patient ; Numérique**subject**:`#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur`**effective**: 2018-06-21 16:05:10+0200**value**: 120 kg(Details: UCUM codekg = 'kg')

-------

Entry 6

Ressource MedicationRequest :

> 

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**identifier**:`https://somehospital.fr/PrescrptionLine-ID`/31626**groupIdentifier**:`https://somehospital.fr/Prescrption-ID`/10723**status**: Active**intent**: Order**priority**: Routine**subject**:`#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur`**encounter**: Identifier:`https://somehospital.fr/Sejour`/70101274**supportingInformation**:
* Identifier: `https://somehospital.fr/UF`/2571
* `#observation-1-TradPN13FHIR-Presc-Paracetamol-SiDouleur`
* `#observation-2-TradPN13FHIR-Presc-Paracetamol-SiDouleur`
**authoredOn**: 2022-04-11 16:42:53+0200**requester**:`#practitioner-TradPN13FHIR-Presc-Paracetamol-SiDouleur`**note**: , ,
> 

Prescription textuelle: PARACETAMOL (Voie orale) A la demande : 1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours


> 

Indication: En cas de douleur


> 

Commentaire: Test paracetamol DC 2 (à la demande)


> **dosageInstruction****timing**: Once per 6 hours**route**:Voie orale

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1000 mg(Details: UCUM codemg = 'mg') |

**maxDosePerPeriod**: 4 mg(Details: UCUM codemg = 'mg')/1 d(Details: UCUM coded = 'd')



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "TradPN13FHIR-Presc-Paracetamol-SiDouleur",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
    ]
  },
  "type" : "searchset",
  "entry" : [
    {
      "resource" : {
        "resourceType" : "Patient",
        "id" : "patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><p class=\"res-header-id\"><b>Narratif généré : Patient patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur</b></p><a name=\"patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><a name=\"hcpatient-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html\">FR Core Patient Profile</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">AVION  (no stated gender), Date de Naissance :1961-11-25 ( Identifiant interne: 5000001820 (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Noms alternatifs (voir plus bas)\">Nom alternatif :</td><td colspan=\"3\">JAUNE AVION (Official)</td></tr></table></div>"
        },
        "identifier" : [
          {
            "use" : "usual",
            "type" : {
              "coding" : [
                {
                  "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
                  "code" : "INTRN",
                  "display" : "Identifiant interne"
                }
              ]
            },
            "system" : "https://somehospital.fr/IPP",
            "value" : "5000001820"
          }
        ],
        "name" : [
          {
            "use" : "usual",
            "family" : "AVION"
          },
          {
            "use" : "official",
            "family" : "AVION",
            "given" : ["JAUNE"]
          }
        ],
        "birthDate" : "1961-11-25"
      }
    },
    {
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "practitioner-TradPN13FHIR-Presc-Paracetamol-SiDouleur",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_practitioner-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><p class=\"res-header-id\"><b>Narratif généré : Praticien practitioner-TradPN13FHIR-Presc-Paracetamol-SiDouleur</b></p><a name=\"practitioner-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><a name=\"hcpractitioner-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner.html\">FR Core Practitioner Profile</a></p></div><p><b>identifier</b>: Employee number/P082443</p><p><b>name</b>: DENIS LUIGGI , DENIS LUIGGI (Official)</p></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "EI"
                }
              ]
            },
            "system" : "https://somehospital.fr/EI",
            "value" : "P082443"
          }
        ],
        "name" : [
          {
            "use" : "usual",
            "family" : "LUIGGI",
            "given" : ["DENIS"]
          },
          {
            "use" : "official",
            "family" : "LUIGGI",
            "given" : ["DENIS"]
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Medication",
        "id" : "medication-TradPN13FHIR-Presc-Paracetamol-SiDouleur",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_medication-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><p class=\"res-header-id\"><b>Narratif généré : Médication medication-TradPN13FHIR-Presc-Paracetamol-SiDouleur</b></p><a name=\"medication-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><a name=\"hcmedication-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-medication-noncompound.html\">FR Medication Non Compound</a></p></div><p><b>code</b>: <span title=\"Codes:{http://data.esante.gouv.fr/ansm/medicament/codeSMS 100000090270}\">PARACETAMOL</span></p></div>"
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
              "code" : "100000090270",
              "display" : "paracétamol"
            }
          ],
          "text" : "PARACETAMOL"
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "Observation",
        "id" : "observation-1-TradPN13FHIR-Presc-Paracetamol-SiDouleur",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-1-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><p class=\"res-header-id\"><b>Narratif généré : Observation observation-1-TradPN13FHIR-Presc-Paracetamol-SiDouleur</b></p><a name=\"observation-1-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><a name=\"hcobservation-1-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-observation-body-height.html\">FR Core Observation Body Height Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8302-2}\">Taille du patient [Longueur] Patient ; Numérique</span></p><p><b>subject</b>: <code>#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur</code></p><p><b>effective</b>: 2018-10-25 11:06:06+0200</p><p><b>value</b>: 189 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codecm = 'cm')</span></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8302-2"
            }
          ]
        },
        "subject" : {
          "reference" : "#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur"
        },
        "effectiveDateTime" : "2018-10-25T11:06:06+02:00",
        "valueQuantity" : {
          "value" : 189,
          "unit" : "cm",
          "system" : "http://unitsofmeasure.org",
          "code" : "cm"
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "Observation",
        "id" : "observation-2-TradPN13FHIR-Presc-Paracetamol-SiDouleur",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_observation-2-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><p class=\"res-header-id\"><b>Narratif généré : Observation observation-2-TradPN13FHIR-Presc-Paracetamol-SiDouleur</b></p><a name=\"observation-2-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><a name=\"hcobservation-2-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-observation-body-weight.html\">FR Core Observation Body Weight Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 29463-7}\">Poids corporel [Masse] Patient ; Numérique</span></p><p><b>subject</b>: <code>#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur</code></p><p><b>effective</b>: 2018-06-21 16:05:10+0200</p><p><b>value</b>: 120 kg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codekg = 'kg')</span></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "29463-7"
            }
          ]
        },
        "subject" : {
          "reference" : "#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur"
        },
        "effectiveDateTime" : "2018-06-21T16:05:10+02:00",
        "valueQuantity" : {
          "value" : 120,
          "unit" : "kg",
          "system" : "http://unitsofmeasure.org",
          "code" : "kg"
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-TradPN13FHIR-Presc-Paracetamol-SiDouleur",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-TradPN13FHIR-Presc-Paracetamol-SiDouleur</b></p><a name=\"medicationrequest-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><a name=\"hcmedicationrequest-TradPN13FHIR-Presc-Paracetamol-SiDouleur\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>identifier</b>: <code>https://somehospital.fr/PrescrptionLine-ID</code>/31626</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <code>#medication-TradPN13FHIR-Presc-Paracetamol-SiDouleur</code></p><p><b>subject</b>: <code>#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur</code></p><p><b>encounter</b>: Identifier: <code>https://somehospital.fr/Sejour</code>/70101274</p><p><b>supportingInformation</b>: </p><ul><li>Identifier: <code>https://somehospital.fr/UF</code>/2571</li><li><code>#observation-1-TradPN13FHIR-Presc-Paracetamol-SiDouleur</code></li><li><code>#observation-2-TradPN13FHIR-Presc-Paracetamol-SiDouleur</code></li></ul><p><b>authoredOn</b>: 2022-04-11 16:42:53+0200</p><p><b>requester</b>: <code>#practitioner-TradPN13FHIR-Presc-Paracetamol-SiDouleur</code></p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/10723</p><p><b>note</b>: , , </p><blockquote><div><p>Prescription textuelle: PARACETAMOL (Voie orale) A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours</p>\n</div></blockquote><blockquote><div><p>Indication: En cas de douleur</p>\n</div></blockquote><blockquote><div><p>Commentaire: Test paracetamol DC 2 (à la demande)</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Once per 6 hours</p><p><b>asNeeded</b>: true</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1000 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table><p><b>maxDosePerPeriod</b>: 4 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 d<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  coded = 'd')</span></p></blockquote></div>"
        },
        "identifier" : [
          {
            "system" : "https://somehospital.fr/PrescrptionLine-ID",
            "value" : "31626"
          }
        ],
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "medicationReference" : {
          "reference" : "#medication-TradPN13FHIR-Presc-Paracetamol-SiDouleur"
        },
        "subject" : {
          "reference" : "#patient-TradPN13FHIR-Presc-Paracetamol-SiDouleur"
        },
        "encounter" : {
          "identifier" : {
            "system" : "https://somehospital.fr/Sejour",
            "value" : "70101274"
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
            "identifier" : {
              "system" : "https://somehospital.fr/UF",
              "value" : "2571"
            }
          },
          {
            "reference" : "#observation-1-TradPN13FHIR-Presc-Paracetamol-SiDouleur"
          },
          {
            "reference" : "#observation-2-TradPN13FHIR-Presc-Paracetamol-SiDouleur"
          }
        ],
        "authoredOn" : "2022-04-11T16:42:53+02:00",
        "requester" : {
          "reference" : "#practitioner-TradPN13FHIR-Presc-Paracetamol-SiDouleur"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "10723"
        },
        "note" : [
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
                "valueCode" : "LIPRESCTXT"
              }
            ],
            "text" : "Prescription textuelle: PARACETAMOL (Voie orale) A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours"
          },
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
                "valueCode" : "LIPRESCIND"
              }
            ],
            "text" : "Indication: En cas de douleur"
          },
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
                "valueCode" : "LIPRESCCOMM"
              }
            ],
            "text" : "Commentaire: Test paracetamol DC 2 (à la demande)"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2022-04-12T06:00:00+02:00",
                  "end" : "2022-04-15T00:00:00+02:00"
                },
                "frequencyMax" : 1,
                "period" : 6,
                "periodUnit" : "h"
              }
            },
            "asNeededBoolean" : true,
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
                  "value" : 1000,
                  "unit" : "mg",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mg"
                }
              }
            ],
            "maxDosePerPeriod" : {
              "numerator" : {
                "value" : 4,
                "unit" : "mg",
                "system" : "http://unitsofmeasure.org",
                "code" : "mg"
              },
              "denominator" : {
                "value" : 1,
                "system" : "http://unitsofmeasure.org",
                "code" : "d"
              }
            }
          }
        ]
      }
    }
  ]
}

```
