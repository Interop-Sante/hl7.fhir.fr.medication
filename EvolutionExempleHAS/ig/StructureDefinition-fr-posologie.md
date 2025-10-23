# Posologie - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Posologie**

## Logical Model: Posologie 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-posologie | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:Posologie |

 
Structuration d’une posologie en fonction des critères de la HAS. Cette structuration prend en compte le modèle de donnée[Xt-EHR](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/StructureDefinition-EHDSDosaging.html)(CI-BUILD) 

**Usages:**

* Use this Logical Model: [Ligne de prescription](StructureDefinition-fr-ligne-prescription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-posologie)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-posologie.csv), [Excel](StructureDefinition-fr-posologie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-posologie",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-posologie",
  "version" : "0.1.0",
  "name" : "Posologie",
  "title" : "Posologie",
  "status" : "draft",
  "date" : "2025-10-23T12:45:10+00:00",
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
  "description" : "Structuration d'une posologie en fonction des critères de la HAS. Cette structuration prend en compte le modèle de donnée [Xt-EHR](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/StructureDefinition-EHDSDosaging.html) (CI-BUILD)",
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
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-posologie",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "fr-posologie",
        "path" : "fr-posologie",
        "short" : "Posologie",
        "definition" : "Structuration d'une posologie en fonction des critères de la HAS. Cette structuration prend en compte le modèle de donnée [Xt-EHR](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/StructureDefinition-EHDSDosaging.html) (CI-BUILD)"
      },
      {
        "id" : "fr-posologie.doseEtDebit",
        "path" : "fr-posologie.doseEtDebit",
        "short" : "Quantité de médicament administrée par prise",
        "definition" : "Quantité de médicament administrée par prise",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-posologie.doseEtDebit.dose[x]",
        "path" : "fr-posologie.doseEtDebit.dose[x]",
        "short" : "La quantité de médicament administrée par prise",
        "definition" : "La quantité de médicament administrée par prise",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          }
        ],
        "example" : [
          {
            "label" : "- 1 comprimé, 2-3 comprimés, 20ml",
            "valueQuantity" : {
              "value" : 20,
              "unit" : "mg",
              "system" : "http://unitsofmeasure.org",
              "code" : "mg"
            }
          }
        ]
      },
      {
        "id" : "fr-posologie.doseEtDebit.rate[x]",
        "path" : "fr-posologie.doseEtDebit.rate[x]",
        "short" : "Période temporelle pendant laquelle une dose définie est administrée (pendant 1 heure, entre 5 et 10 minutes)",
        "definition" : "Période temporelle pendant laquelle une dose définie est administrée (pendant 1 heure, entre 5 et 10 minutes)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          }
        ],
        "example" : [
          {
            "label" : "- pendant 1 heure, entre 5 et 10 minutes"
          }
        ]
      },
      {
        "id" : "fr-posologie.sequence",
        "path" : "fr-posologie.sequence",
        "short" : "Numéro de séquence permettant d'indiquer l'ordre des posologies dans le cas où il y a plusieurs posologies. La séquence s+1 commence à la fin de la séquence s. En cas de séquences ayant le même numéro, celles-ci se déroulent simultanément.",
        "definition" : "Numéro de séquence permettant d'indiquer l'ordre des posologies dans le cas où il y a plusieurs posologies. La séquence s+1 commence à la fin de la séquence s. En cas de séquences ayant le même numéro, celles-ci se déroulent simultanément.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "fr-posologie.voieAdministration",
        "path" : "fr-posologie.voieAdministration",
        "short" : "Voie d'administration du traitement",
        "definition" : "Voie d'administration du traitement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-posologie.siteAdministration",
        "path" : "fr-posologie.siteAdministration",
        "short" : "Région anatomique d'administration du traitement",
        "definition" : "Région anatomique d'administration du traitement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-posologie.quantitePrescrite",
        "path" : "fr-posologie.quantitePrescrite",
        "short" : "Quantité de traitement prescrite",
        "definition" : "Quantité de traitement prescrite",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-posologie.quantitePrescrite.valeur",
        "path" : "fr-posologie.quantitePrescrite.valeur",
        "short" : "Quantité à prendre par prise",
        "definition" : "Quantité à prendre par prise",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "fr-posologie.quantitePrescrite.valeurMax",
        "path" : "fr-posologie.quantitePrescrite.valeurMax",
        "short" : "Quantité maximale à prendre par prise",
        "definition" : "Quantité maximale à prendre par prise",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "fr-posologie.quantitePrescrite.unite",
        "path" : "fr-posologie.quantitePrescrite.unite",
        "short" : "Unité de la quantité prescrite (ex : comprimé, mg, ...)",
        "definition" : "Unité de la quantité prescrite (ex : comprimé, mg, ...)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-posologie.quantiteMaxParPeriode",
        "path" : "fr-posologie.quantiteMaxParPeriode",
        "short" : "Quantité maximale par unité de temps",
        "definition" : "Quantité maximale par unité de temps",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-posologie.quantiteMaxParPeriode.quantite",
        "path" : "fr-posologie.quantiteMaxParPeriode.quantite",
        "short" : "Quantité maximale à administrer pour l'unité de temps donnée",
        "definition" : "Quantité maximale à administrer pour l'unité de temps donnée",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ]
      },
      {
        "id" : "fr-posologie.quantiteMaxParPeriode.duree",
        "path" : "fr-posologie.quantiteMaxParPeriode.duree",
        "short" : "Durée pour laquelle il y a une quantité maximale administrable",
        "definition" : "Durée pour laquelle il y a une quantité maximale administrable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration|5.2.0"
            ]
          }
        ],
        "example" : [
          {
            "label" : "- Par jour, par semaine, par mois, ..."
          }
        ]
      },
      {
        "id" : "fr-posologie.conditionDePrise",
        "path" : "fr-posologie.conditionDePrise",
        "short" : "Code ou texte de la condition sous laquelle le traitement doit être pris (ex : en cas de douleurs).",
        "definition" : "Code ou texte de la condition sous laquelle le traitement doit être pris (ex : en cas de douleurs).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-posologie.instructionPatient",
        "path" : "fr-posologie.instructionPatient",
        "short" : "Instruction au patient sous forme textuelle",
        "definition" : "Instruction au patient sous forme textuelle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "fr-posologie.frequence",
        "path" : "fr-posologie.frequence",
        "short" : "Description de fréquence de prise",
        "definition" : "Description de fréquence de prise",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-posologie.frequence.valeur",
        "path" : "fr-posologie.frequence.valeur",
        "short" : "Nombre de prise de la quantité \"quantitePrescrite\" par période",
        "definition" : "Nombre de prise de la quantité \"quantitePrescrite\" par période",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "fr-posologie.frequence.repetitionPeriode",
        "path" : "fr-posologie.frequence.repetitionPeriode",
        "short" : "nombre de prise par période (ex : le 3 dans une fois tous les trois jours)",
        "definition" : "nombre de prise par période (ex : le 3 dans une fois tous les trois jours)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-posologie.frequence.unitePeriode",
        "path" : "fr-posologie.frequence.unitePeriode",
        "short" : "unité de la période (ex : jour dans le 3 dans une fois tous les trois jours)",
        "definition" : "unité de la période (ex : jour dans le 3 dans une fois tous les trois jours)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-posologie.frequence.jourSemaine",
        "path" : "fr-posologie.frequence.jourSemaine",
        "short" : "Jour de la semaine de la prise",
        "definition" : "Jour de la semaine de la prise",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-posologie.frequence.heurePrise",
        "path" : "fr-posologie.frequence.heurePrise",
        "short" : "Heure de la prise",
        "definition" : "Heure de la prise",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "fr-posologie.frequence.precision",
        "path" : "fr-posologie.frequence.precision",
        "short" : "Instruction additionelle",
        "definition" : "Instruction additionelle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "fr-posologie.dureeAdministration",
        "path" : "fr-posologie.dureeAdministration",
        "short" : "Durée ou rythme d'administration - indique le temps d'administration des prises de la séquence",
        "definition" : "Durée ou rythme d'administration - indique le temps d'administration des prises de la séquence",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ],
        "example" : [
          {
            "label" : "- La durée d'administration est par exemple utile dans le cas des perfusion : durée de 10 minutes"
          }
        ]
      },
      {
        "id" : "fr-posologie.dureeAdministration.duree",
        "path" : "fr-posologie.dureeAdministration.duree",
        "short" : "Durée de l'administration",
        "definition" : "Durée de l'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "fr-posologie.dureeAdministration.dureeUnite",
        "path" : "fr-posologie.dureeAdministration.dureeUnite",
        "short" : "Unité de la durée d'administration",
        "definition" : "Unité de la durée d'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "fr-posologie.dureeAdministration.dureeMax",
        "path" : "fr-posologie.dureeAdministration.dureeMax",
        "short" : "Durée maximale de l'administration",
        "definition" : "Durée maximale de l'administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "fr-posologie.date[x]",
        "path" : "fr-posologie.date[x]",
        "short" : "Période de la séquence (date de début et de fin), durée ou intervalle de traitement (un parmi les trois)",
        "definition" : "Période de la séquence (date de début et de fin), durée ou intervalle de traitement (un parmi les trois)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          },
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration|5.2.0"
            ]
          },
          {
            "code" : "Range"
          }
        ],
        "example" : [
          {
            "label" : "- La période représente une date de début et de fin (ex : du 1/10/2025 au 10/10/2025), la durée représente une quantité (ex : 5 jours), l'intervalle représente une quantité minimale et une quantité maximale (ex : de 5 à 10 jours))"
          }
        ]
      },
      {
        "id" : "fr-posologie.dateDePrise",
        "path" : "fr-posologie.dateDePrise",
        "short" : "Date précise du moment de prise",
        "definition" : "Date précise du moment de prise",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "fr-posologie.momentDePrise",
        "path" : "fr-posologie.momentDePrise",
        "short" : "Définition du moment de prise au cours de la journée (ex : 30 minutes avant le repas)",
        "definition" : "Définition du moment de prise au cours de la journée (ex : 30 minutes avant le repas)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "fr-posologie.momentDePrise.code",
        "path" : "fr-posologie.momentDePrise.code",
        "short" : "Code ou texte du moment de prise",
        "definition" : "Code ou texte du moment de prise",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "fr-posologie.momentDePrise.offset",
        "path" : "fr-posologie.momentDePrise.offset",
        "short" : "Temps en minute avant/après l'élément déclenchant",
        "definition" : "Temps en minute avant/après l'élément déclenchant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "unsignedInt"
          }
        ]
      },
      {
        "id" : "fr-posologie.evenementFinSequence",
        "path" : "fr-posologie.evenementFinSequence",
        "short" : "Evenement de fin de la séquence",
        "definition" : "Evenement de fin de la séquence",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
