# Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-observation-conceptmap | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FrPN13FHIRObservationConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un renseignement complémentare d’une prescritpion de médicament 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-observation-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-observation-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRObservationConceptMap",
  "title" : "Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2026-01-15T08:54:26+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    }
  ],
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un renseignement complémentare d'une prescritpion de médicament",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "sourceUri" : "https://interopsante.org/pn13/xsd",
  "targetUri" : "https://hl7.org/fhir/R4/observation",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/",
          "target" : [
            {
              "code" : "Observation",
              "equivalence" : "relatedto",
              "comment" : "Groupe pour initialiser les éléments nécessaires à la ressource Observation qui ne viennent pas de PN13",
              "product" : [
                {
                  "property" : "Observation.status",
                  "value" : "final"
                },
                {
                  "property" : "Observation.subject.reference",
                  "value" : "{Référence vers la ressource Patient sujet de la prescription}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_1",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "equivalent",
              "product" : [
                {
                  "property" : "Observation.meta.profile",
                  "value" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
                },
                {
                  "property" : "Observation.code.coding.code",
                  "value" : "29463-7"
                },
                {
                  "property" : "Observation.code.coding.system",
                  "value" : "http://loinc.org"
                },
                {
                  "property" : "Observation.category.coding.code",
                  "value" : "vital-signs"
                },
                {
                  "property" : "Observation.category.coding.system",
                  "value" : "http://terminology.hl7.org/CodeSystem/observation-category"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_2",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "equivalent",
              "product" : [
                {
                  "property" : "Observation.meta.profile",
                  "value" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
                },
                {
                  "property" : "Observation.code.coding.code",
                  "value" : "8302-2"
                },
                {
                  "property" : "Observation.code.coding.system",
                  "value" : "http://loinc.org"
                },
                {
                  "property" : "Observation.category.coding.code",
                  "value" : "vital-signs"
                },
                {
                  "property" : "Observation.category.coding.system",
                  "value" : "http://terminology.hl7.org/CodeSystem/observation-category"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_3",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "equivalent",
              "product" : [
                {
                  "property" : "Observation.code.coding.code",
                  "value" : "8277-6"
                },
                {
                  "property" : "Observation.code.coding.system",
                  "value" : "http://loinc.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_4",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_5",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "equivalent",
              "product" : [
                {
                  "property" : "Observation.code.coding.code",
                  "value" : "33558-8"
                },
                {
                  "property" : "Observation.code.coding.system",
                  "value" : "http://loinc.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_6",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_7",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_8",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_9",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_10",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Dh_enreg_rens_compl",
          "target" : [
            {
              "code" : "Observation.issued",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Dh_rens_compl",
          "target" : [
            {
              "code" : "Observation.effectiveDateTime",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Nombre",
          "target" : [
            {
              "code" : "Observation.valueQuantity.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité",
                  "value" : "UCUM"
                }
              ],
              "product" : [
                {
                  "property" : "Observation.valueQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.unit",
              "equivalence" : "equivalent",
              "comment" : "Traduire Rens_compl/Valeur_rens_compl_1/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Différent de UCUM}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Nombre",
          "target" : [
            {
              "code" : "Observation.valueQuantity.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité",
                  "value" : "UCUM"
                }
              ],
              "product" : [
                {
                  "property" : "Observation.valueQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.unit",
              "equivalence" : "equivalent",
              "comment" : "Traduire Rens_compl/Valeur_rens_compl_2/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Différent de UCUM}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Nombre",
          "target" : [
            {
              "code" : "Observation.valueQuantity.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité",
                  "value" : "UCUM"
                }
              ],
              "product" : [
                {
                  "property" : "Observation.valueQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.unit",
              "equivalence" : "equivalent",
              "comment" : "Traduire Rens_compl/Valeur_rens_compl_3/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Différent de UCUM}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_4/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Nombre",
          "target" : [
            {
              "code" : "Observation.valueQuantity.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité",
                  "value" : "UCUM"
                }
              ],
              "product" : [
                {
                  "property" : "Observation.valueQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.unit",
              "equivalence" : "equivalent",
              "comment" : "Traduire Rens_compl/Valeur_rens_compl_5/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Différent de UCUM}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_6/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_7/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_8/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_9/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_10/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    }
  ]
}

```
