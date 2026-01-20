# TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE**

## Example Bundle: TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE",
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
        "id" : "patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE\"> </a><p class=\"res-header-id\"><b>Narratif généré : Patient patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE</b></p><a name=\"patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE\"> </a><a name=\"hcpatient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient-ins.html\">FR Core Patient INS Profile</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">ARASGAIN  Female, Date de Naissance :1989-01-02 ( Identifiant interne: 6032486 (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Autre identifiant (voir ci-dessus)\">Autre identifiant :</td><td colspan=\"3\">NIR définitif/289062913400149 (utilisation : official, )</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Noms alternatifs (voir plus bas)\">Nom alternatif :</td><td colspan=\"3\">MARSALI CUIMEANACH (Official)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The registered place of birth of the patient. A sytem may use the address.text if they don't store the birthPlace address in discrete elements.\"><a href=\"http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-birthPlace.html\">Patient Birth Place</a></td><td colspan=\"3\"></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Reliabilility of the patient's identity | Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) avec la méthode de collection\">FR Core Patient Ident Reliability Extension:</td><td colspan=\"3\"><ul><li>identityStatus: <a href=\"https://hl7.fr/ig/fhir/core/2.1.0/CodeSystem-fr-core-cs-v2-0445.html#fr-core-cs-v2-0445-VALI\">FR Core CodeSystem v2-0445: VALI</a> (Identité validée)</li></ul></td></tr></table></div>"
        },
        "extension" : [
          {
            "extension" : [
              {
                "url" : "identityStatus",
                "valueCoding" : {
                  "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
                  "code" : "VALI"
                }
              }
            ],
            "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
            "valueAddress" : {
              "extension" : [
                {
                  "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
                  "valueCoding" : {
                    "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
                    "code" : "29134"
                  }
                }
              ]
            }
          }
        ],
        "identifier" : [
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
                  "code" : "INS-NIR",
                  "display" : "NIR définitif"
                }
              ]
            },
            "system" : "urn:oid:1.2.250.1.213.1.4.8",
            "value" : "289062913400149"
          },
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
            "system" : "urn:oid:1.2.250.1.507454354.43654.2346659",
            "value" : "6032486"
          }
        ],
        "name" : [
          {
            "use" : "usual",
            "family" : "ARASGAIN"
          },
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
                "valueString" : "MARSALI MORAG MAIREAD"
              }
            ],
            "use" : "official",
            "family" : "CUIMEANACH",
            "given" : ["MARSALI"]
          }
        ],
        "gender" : "female",
        "birthDate" : "1989-01-02"
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-Trad-Presc-Alt-METFORMINE",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Trad-Presc-Alt-METFORMINE\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Trad-Presc-Alt-METFORMINE</b></p><a name=\"medicationrequest-Trad-Presc-Alt-METFORMINE\"> </a><a name=\"hcmedicationrequest-Trad-Presc-Alt-METFORMINE\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>identifier</b>: https://somehospital.fr/Medication-ID</p><p><b>status</b>: Active</p><p><b>intent</b>: Option</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes :{http://data.esante.gouv.fr/ansm/medicament/UCD 3400890020275}\">METFORMINE ACC 1000MG CPR</span></p><p><b>subject</b>: <code>#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE</code></p><p><b>encounter</b>: Identifier: <code>https://somehospital.fr/Sejour</code>/765093464568</p><p><b>supportingInformation</b>: </p><ul><li>Identifier: <code>https://somehospital.fr/UF</code>/603</li><li>Identifier: <code>https://somehospital.fr/UF</code>/506</li></ul><p><b>authoredOn</b>: 2025-05-02 14:48:44+0200</p><p><b>requester</b>: Identifier: <code>urn:oid:1.2.250.1.71.4.2.1</code>/899999999999</p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/10543744</p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: Par voie orale : METFORMINE 1000MG 0,5 comprimé 2 fois par jour avec les repas -- À partir du 02/05/2025 à 19:00 jusqu'au 31/05/2025 à 19h00</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: aux repas, 2</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>0.5 Comprimé<span style=\"background: LightGoldenRodYellow\"> (Détails : code EDQM Standard Terms15054000 = 'Tablet')</span></td></tr></table></blockquote></div>"
        },
        "identifier" : [
          {
            "value" : "https://somehospital.fr/Medication-ID"
          }
        ],
        "status" : "active",
        "intent" : "option",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400890020275",
              "display" : "METFORMINE ACC 1000MG CPR"
            }
          ]
        },
        "subject" : {
          "reference" : "#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE"
        },
        "encounter" : {
          "identifier" : {
            "system" : "https://somehospital.fr/Sejour",
            "value" : "765093464568"
          }
        },
        "supportingInformation" : [
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role",
                "valueCode" : "UFHEB"
              }
            ],
            "type" : "Organization",
            "identifier" : {
              "system" : "https://somehospital.fr/UF",
              "value" : "603"
            }
          },
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
              "value" : "506"
            }
          }
        ],
        "authoredOn" : "2025-05-02T14:48:44+02:00",
        "requester" : {
          "identifier" : {
            "system" : "urn:oid:1.2.250.1.71.4.2.1",
            "value" : "899999999999"
          }
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "10543744"
        },
        "note" : [
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
                "valueCode" : "LIPRESCTXT"
              }
            ],
            "text" : "Prescription textuelle: Par voie orale : METFORMINE 1000MG 0,5 comprimé 2 fois par jour avec les repas -- À partir du 02/05/2025 à 19:00 jusqu'au 31/05/2025 à 19h00"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2025-05-02T19:00:00+02:00",
                  "end" : "2025-05-31T18:59:59+02:00"
                },
                "frequency" : 2,
                "periodUnit" : "d",
                "when" : ["C"]
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
                  "value" : 0.5,
                  "unit" : "Comprimé",
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "15054000"
                }
              }
            ]
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "MedicationRequest",
        "id" : "medicationrequest-Trad-Presc-Alt-GLICLAZIDE",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_medicationrequest-Trad-Presc-Alt-GLICLAZIDE\"> </a><p class=\"res-header-id\"><b>Narratif généré : PrescriptionMédicamenteuseTODO medicationrequest-Trad-Presc-Alt-GLICLAZIDE</b></p><a name=\"medicationrequest-Trad-Presc-Alt-GLICLAZIDE\"> </a><a name=\"hcmedicationrequest-Trad-Presc-Alt-GLICLAZIDE\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-inpatient-medicationrequest.html\">FR Inpatient MedicationRequest</a></p></div><p><b>identifier</b>: https://somehospital.fr/Medication-ID</p><p><b>status</b>: Active</p><p><b>intent</b>: Option</p><p><b>priority</b>: Routine</p><p><b>medication</b>: <span title=\"Codes :{http://data.esante.gouv.fr/ansm/medicament/UCD 3400893541364}\">GLICLAZIDE ARW 30MG CPR LM</span></p><p><b>subject</b>: <code>#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE</code></p><p><b>encounter</b>: Identifier: <code>https://somehospital.fr/Sejour</code>/765093464568</p><p><b>supportingInformation</b>: </p><ul><li>Identifier: <code>https://somehospital.fr/UF</code>/603</li><li>Identifier: <code>https://somehospital.fr/UF</code>/506</li></ul><p><b>authoredOn</b>: 2025-05-02 14:48:44+0200</p><p><b>requester</b>: Identifier: <code>urn:oid:1.2.250.1.71.4.2.1</code>/899999999999</p><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/10543744</p><p><b>note</b>: </p><blockquote><div><p>Prescription textuelle: Par voie orale : GLICLAZIDE 30MG 3 comprimés au petit déjeuner -- À partir du 02/05/2025 à 19:00 jusqu'au 31/05/2025 à 19h00</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: au petit déjeuner, Une fois</p><p><b>route</b>: <span title=\"Codes :{http://standardterms.edqm.eu 20053000}\">Voie orale</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>3 Comprimé<span style=\"background: LightGoldenRodYellow\"> (Détails : code EDQM Standard Terms15054000 = 'Tablet')</span></td></tr></table></blockquote></div>"
        },
        "identifier" : [
          {
            "value" : "https://somehospital.fr/Medication-ID"
          }
        ],
        "status" : "active",
        "intent" : "option",
        "priority" : "routine",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
              "code" : "3400893541364",
              "display" : "GLICLAZIDE ARW 30MG CPR LM"
            }
          ]
        },
        "subject" : {
          "reference" : "#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE"
        },
        "encounter" : {
          "identifier" : {
            "system" : "https://somehospital.fr/Sejour",
            "value" : "765093464568"
          }
        },
        "supportingInformation" : [
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role",
                "valueCode" : "UFHEB"
              }
            ],
            "type" : "Organization",
            "identifier" : {
              "system" : "https://somehospital.fr/UF",
              "value" : "603"
            }
          },
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
              "value" : "506"
            }
          }
        ],
        "authoredOn" : "2025-05-02T14:48:44+02:00",
        "requester" : {
          "identifier" : {
            "system" : "urn:oid:1.2.250.1.71.4.2.1",
            "value" : "899999999999"
          }
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "10543744"
        },
        "note" : [
          {
            "extension" : [
              {
                "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
                "valueCode" : "LIPRESCTXT"
              }
            ],
            "text" : "Prescription textuelle: Par voie orale : GLICLAZIDE 30MG 3 comprimés au petit déjeuner -- À partir du 02/05/2025 à 19:00 jusqu'au 31/05/2025 à 19h00"
          }
        ],
        "dosageInstruction" : [
          {
            "timing" : {
              "repeat" : {
                "boundsPeriod" : {
                  "start" : "2025-05-02T19:00:00+02:00",
                  "end" : "2025-05-31T18:59:59+02:00"
                },
                "when" : ["CM"]
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
                  "value" : 3,
                  "unit" : "Comprimé",
                  "system" : "http://standardterms.edqm.eu",
                  "code" : "15054000"
                }
              }
            ]
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "RequestGroup",
        "id" : "requestgroup-Trad-Presc-Alt-METFORMINE-GLICLAZIDE",
        "meta" : {
          "profile" : [
            "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-requestgroup-for-prescription"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"RequestGroup_requestgroup-Trad-Presc-Alt-METFORMINE-GLICLAZIDE\"> </a><p class=\"res-header-id\"><b>Narratif généré : RequestGroup requestgroup-Trad-Presc-Alt-METFORMINE-GLICLAZIDE</b></p><a name=\"requestgroup-Trad-Presc-Alt-METFORMINE-GLICLAZIDE\"> </a><a name=\"hcrequestgroup-Trad-Presc-Alt-METFORMINE-GLICLAZIDE\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-fr-requestgroup-for-prescription.html\">FR RequestGroup For Prescription</a></p></div><p><b>groupIdentifier</b>: <code>https://somehospital.fr/Prescrption-ID</code>/10543744</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>priority</b>: Routine</p><p><b>subject</b>: <code>#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE</code></p><blockquote><p><b>action</b></p><blockquote><p><b>id</b></p>20250502144844570</blockquote><p><b>description</b>: En cas d'intolérance digestive au METFORMINE</p><h3>RelatedActions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>ActionId</b></td><td><b>Relationship</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>20250502144844569</td><td>Concurrent</td></tr></table><p><b>resource</b>: <code>#medicationrequest-Trad-Presc-Alt-GLICLAZIDE</code></p></blockquote><blockquote><p><b>action</b></p><blockquote><p><b>id</b></p>20250502144844569</blockquote><p><b>description</b>: Sans intolérance digestive au METFORMINE</p><h3>RelatedActions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>ActionId</b></td><td><b>Relationship</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>20250502144844570</td><td>Concurrent</td></tr></table><p><b>resource</b>: <code>#medicationrequest-Trad-Presc-Alt-METFORMINE</code></p></blockquote></div>"
        },
        "groupIdentifier" : {
          "system" : "https://somehospital.fr/Prescrption-ID",
          "value" : "10543744"
        },
        "status" : "active",
        "intent" : "order",
        "priority" : "routine",
        "subject" : {
          "reference" : "#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE"
        },
        "action" : [
          {
            "id" : "20250502144844570",
            "description" : "En cas d'intolérance digestive au METFORMINE",
            "relatedAction" : [
              {
                "extension" : [
                  {
                    "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-action-relationship",
                    "valueCode" : "ALT"
                  }
                ],
                "actionId" : "20250502144844569",
                "relationship" : "concurrent"
              }
            ],
            "resource" : {
              "reference" : "#medicationrequest-Trad-Presc-Alt-GLICLAZIDE"
            }
          },
          {
            "id" : "20250502144844569",
            "description" : "Sans intolérance digestive au METFORMINE",
            "relatedAction" : [
              {
                "extension" : [
                  {
                    "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-action-relationship",
                    "valueCode" : "ALT"
                  }
                ],
                "actionId" : "20250502144844570",
                "relationship" : "concurrent"
              }
            ],
            "resource" : {
              "reference" : "#medicationrequest-Trad-Presc-Alt-METFORMINE"
            }
          }
        ]
      }
    }
  ]
}

```
