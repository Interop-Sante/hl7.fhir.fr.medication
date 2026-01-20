# Conversion PN13 vers FHIR pour un médicament non composé d'une prescription de médicaments - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour un médicament non composé d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour un médicament non composé d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-medicationnoncompound-conceptmap | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrPN13FHIRMedicationNonCompoundConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un médicament non composé d’une prescritpion de médicament 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-medicationnoncompound-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-medicationnoncompound-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationNonCompoundConceptMap",
  "title" : "Conversion PN13 vers FHIR pour un médicament non composé d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2026-01-20T11:00:00+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un médicament non composé d'une prescritpion de médicament",
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
  "targetUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-noncompound",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_1",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_2",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_3",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_4",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_5",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_6",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_7",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_8",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_9",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_10",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_11",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_12",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_13",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_14",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_1",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equivalent",
              "comment" : "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code",
              "product" : [
                {
                  "property" : "Medication.code.coding.system",
                  "value" : "http://data.esante.gouv.fr/ansm/medicament/UCD"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_2",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equivalent",
              "comment" : "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est pas un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code",
              "product" : [
                {
                  "property" : "Medication.code.coding.system",
                  "value" : "http://data.esante.gouv.fr/ansm/medicament/UCD"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_3",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equivalent",
              "comment" : "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_4",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equal",
              "comment" : "Le code utilisé pour une préparation hospitalière est un code local, Medication.code.coding.system est alors à définir pour identifier dans quel périmètre ce code peut être compris"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_5",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equivalent",
              "comment" : "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code",
              "product" : [
                {
                  "property" : "Medication.code.coding.system",
                  "value" : "http://data.esante.gouv.fr/ansm/medicament/UCD"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_6",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equivalent",
              "comment" : "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code",
              "product" : [
                {
                  "property" : "Medication.code.coding.system",
                  "value" : "http://data.esante.gouv.fr/ansm/medicament/UCD"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_7",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equal",
              "comment" : "Le code utilisé pour une préparation magistrale est un code local, Medication.code.coding.system est alors à définir pour identifier dans quel périmètre ce code peut être compris"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_8",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equivalent",
              "comment" : "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_9",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "inexact",
              "comment" : "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_10",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "inexact",
              "comment" : "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_11",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "inexact",
              "comment" : "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_12",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "inexact",
              "comment" : "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_13",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "equivalent",
              "comment" : "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_14",
          "target" : [
            {
              "code" : "Medication.code.coding.code",
              "equivalence" : "inexact",
              "comment" : "Les codes medicabase ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Libellé_composant",
          "target" : [
            {
              "code" : "Medication.code.text",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cette élément est utilisé pour le mapping des doses/rates au niveau de la ressource ConceptMap PN13-FHIR-prescmed-dosageinstruction-conceptmap"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cette élément est mappé au niveau de la ressource ConceptMap PN13-FHIR-prescmed-dosageinstruction-conceptmap"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/ALD_exonérante",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Indication",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Prévu pour une version ultérieure de ce guide"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Indication_structurée",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Prévu pour une version ultérieure de ce guide"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Commentaire",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Prévu pour une version ultérieure de ce guide"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Commentaire_structuré",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Prévu pour une version ultérieure de ce guide"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Véhicule",
          "target" : [
            {
              "code" : "Medication.extension($fr-is-vehicle).valueBoolean",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Non_substituable",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément est mappé au niveau de la ressource ConceptMap PN13-FHIR-prescmed-medicationrequest-conceptmap"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Dans le cas des médicaments composés, la forme est à indiqué au niveau de la ressource Medication chapeau suivant le profil fr-medication-compound",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic",
                  "value" : "{Présence de plusieurs éléments Elément_prescr_médic dans le message PN13}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme",
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equivalent",
              "comment" : "le code cible est à trouver dans le mapping Free Set CIO-DC FORME",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "SIPh-CIO_Forme"
                },
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic",
                  "value" : "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme",
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equivalent",
              "comment" : "le code cible est à trouver dans le mapping Free Set CIO-DC FORME",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "{Absent}"
                },
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic",
                  "value" : "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme",
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "EDQM"
                },
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic",
                  "value" : "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
                }
              ],
              "product" : [
                {
                  "property" : "Medication.form.coding.system",
                  "value" : "http://standardterms.edqm.eu"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme",
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "relatedto",
              "comment" : "Certains codes cibles peuvent être trouvés dans le mapping Free Set CIO-DC FORME. Dans le cas contraire, si la traduction en EDQM n'est pas possible, Medication.form.text peut être utilisé mais pourrait poser des problèmes d'interprétation",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "SIPh-Forme"
                },
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic",
                  "value" : "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

```
