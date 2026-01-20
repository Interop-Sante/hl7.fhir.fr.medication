# Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec d'autres éléments qu'uniquement l'identifiant - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec d'autres éléments qu'uniquement l'identifiant**

## ConceptMap: Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec d'autres éléments qu'uniquement l'identifiant 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-practitioner-identite-conceptmap | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrPN13FHIRMedicationPrescriptionPractitionerIdentiteConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR du professionnel prescripteur d’une prescritpion de médicament avec d’autres éléments qu’uniquement l’identifiant 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-practitioner-identite-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-practitioner-identite-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionPractitionerIdentiteConceptMap",
  "title" : "Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec d'autres éléments qu'uniquement l'identifiant",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR du professionnel prescripteur d'une prescritpion de médicament avec d'autres éléments qu'uniquement l'identifiant",
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
  "targetUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Identifiant",
          "target" : [
            {
              "code" : "Practitioner.identifier.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Domaine_identification",
          "target" : [
            {
              "code" : "Practitioner.identifier.system",
              "equivalence" : "equivalent",
              "comment" : "Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Nom_usage",
          "target" : [
            {
              "code" : "Practitioner.name.family",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "Practitioner.name.use",
                  "value" : "usual"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Prénom_usage",
          "target" : [
            {
              "code" : "Practitioner.name.given",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Civilité",
          "target" : [
            {
              "code" : "Practitioner.name.prefix",
              "equivalence" : "equivalent",
              "comment" : "Les civilités sont libres dans PN13 alors qu'elles proviennent d'un jeu de valeurs extensible dans le profil FrCorePractitioner"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Titre",
          "target" : [
            {
              "code" : "Practitioner.name.suffix",
              "equivalence" : "equivalent",
              "comment" : "Les titres sont libres dans PN13 alors qu'ils proviennent d'un jeu de valeurs extensible dans le profil FrCorePractitioner"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Nom_famille",
          "target" : [
            {
              "code" : "Practitioner.name.family",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "Practitioner.name.use",
                  "value" : "official"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Prénoms",
          "target" : [
            {
              "code" : "Practitioner.name.given",
              "equivalence" : "equivalent",
              "comment" : "L'élément PN13 contient une liste de prénoms difficile à parser pour en extraire les différents prénoms à mettre dans une répétition de given en FHIR"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Initiales",
          "target" : [
            {
              "equivalence" : "unmatched"
            }
          ]
        }
      ]
    }
  ]
}

```
