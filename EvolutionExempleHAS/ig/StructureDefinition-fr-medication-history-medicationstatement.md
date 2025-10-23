# FR Medication History MedicationStatement - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication History MedicationStatement**

## Resource Profile: FR Medication History MedicationStatement 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-medicationstatement | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRMedicationHistoryMedicationStatement |

 
Profil de la ressource**MedicationStatement**du Bilan médicamenteux. Medication History MedicationStatement resource profile 

 
Ce profil est utilisé pour les ressources MedicationStatement figurant dans un bilan médicamenteux. Chaque ressource MeciationStatement y représente une ligne de médicament du Bilan. 

**Usages:**

* Refer to this Profile: [FR Medication History Composition](StructureDefinition-fr-medication-history-composition.md) and [FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication-history-medicationstatement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication-history-medicationstatement.csv), [Excel](StructureDefinition-fr-medication-history-medicationstatement.xlsx), [Schematron](StructureDefinition-fr-medication-history-medicationstatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-history-medicationstatement",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-medicationstatement",
  "version" : "0.1.0",
  "name" : "FRMedicationHistoryMedicationStatement",
  "title" : "FR Medication History MedicationStatement",
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
  "description" : "Profil de la ressource *MedicationStatement* du Bilan médicamenteux.\nMedication History MedicationStatement resource profile",
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
  "purpose" : "Ce profil est utilisé pour les ressources MedicationStatement figurant dans un bilan médicamenteux. Chaque ressource MeciationStatement y représente une ligne de médicament du Bilan.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationStatement",
        "path" : "MedicationStatement",
        "short" : "Ligne de traitement médicamenteux du Bilan Médicamenteux",
        "definition" : "Ligne de traitement médicamenteux du Bilan Médicamenteux, avec son *sourcing* (liste des sources concordantes attanchées à cette ligne).",
        "comment" : "Les règles natives HL7-FHIR sont applicables et à respecter. When interpreting a medicationStatement, the value of the status and NotTaken needed to be considered:\r1. MedicationStatement.status + MedicationStatement.wasNotTaken\r2. Status=Active + NotTaken=T = Not currently taking\r3. Status=Completed + NotTaken=T = Not taken in the past\r4. Status=Intended + NotTaken=T = No intention of taking\r5. Status=Active + NotTaken=F = Taking, but not as prescribed\r6. Status=Active + NotTaken=F = Taking\r7. Status=Intended +NotTaken= F = Will be taking (not started)\r8. Status=Completed + NotTaken=F = Taken in past\r9. Status=In Error + NotTaken=N/A = In Error."
      },
      {
        "id" : "MedicationStatement.meta.tag",
        "path" : "MedicationStatement.meta.tag",
        "requirements" : "applications are not required to consider the tags when interpreting the meaning of a resource",
        "max" : "0"
      },
      {
        "id" : "MedicationStatement.implicitRules",
        "path" : "MedicationStatement.implicitRules",
        "requirements" : "--> implementers and/or specification writers should avoid using this element",
        "max" : "0"
      },
      {
        "id" : "MedicationStatement.language",
        "path" : "MedicationStatement.language",
        "meaningWhenMissing" : "langage de la ressource parente *Composition*"
      },
      {
        "id" : "MedicationStatement.extension",
        "path" : "MedicationStatement.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationStatement.extension:statementSourcing",
        "path" : "MedicationStatement.extension",
        "sliceName" : "statementSourcing",
        "short" : "Sourcing de la ligne de traitement",
        "definition" : "Sourcing de la ligne de traitement du Bilan Médicamenteux : nombre de sources ET liste des sources",
        "comment" : "Nombre de sources concordantes pour cette ligne de traitement (quel que soit leur nombre), supérieur à zéro ET la liste de ces sources, au moins une.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-sources"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.status",
        "path" : "MedicationStatement.status",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.medication[x]",
        "path" : "MedicationStatement.medication[x]",
        "short" : "Le médicament constitutif de cette ligne",
        "definition" : "Identifie le médicament constitutif de cette ligne. C'est lien vers une ressource Medication qui décrit ce médicament.",
        "comment" : "Même si le médicament n'est composé que d'une spécialité (par exemple un comprimé), il est défini par référence à une Medication qui décrira sa composition d'une seule spécialité",
        "requirements" : "traitement univoque de l'élément *medication[x]*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.medication[x].reference",
        "path" : "MedicationStatement.medication[x].reference",
        "requirements" : "Identification du *médicament* uniquement par référence à une ressource *Medication* profilée *fr-medication*\\.",
        "min" : 1
      },
      {
        "id" : "MedicationStatement.medication[x].type",
        "path" : "MedicationStatement.medication[x].type",
        "patternUri" : "Medication"
      },
      {
        "id" : "MedicationStatement.medication[x].identifier",
        "path" : "MedicationStatement.medication[x].identifier",
        "requirements" : "Identification du *médicament* uniquement par référence à une ressource *Medication* profilée *fr-medication*\\.",
        "max" : "0"
      },
      {
        "id" : "MedicationStatement.subject",
        "path" : "MedicationStatement.subject",
        "definition" : "Le patient qui prend cette ligne de traitement médicamenteux.",
        "comment" : "Obligatoire dans la ressource FHIR *MedicationStatement* originelle, donc DOIT ABSOLUMENT être identique au patient identifé dans la ressource *Composition* du Bilan Médicamenteux. Cf. *Composition.subjet*\\.",
        "requirements" : "Le Bilan Médicamenteux ne s'applique qu'à un seul patient. Toutes ses lignes doivent référencer le même patient, celui référencé par l'element *subject* de la ressource parente *Composition*\\.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.subject.type",
        "path" : "MedicationStatement.subject.type",
        "patternUri" : "Patient"
      },
      {
        "id" : "MedicationStatement.informationSource",
        "path" : "MedicationStatement.informationSource",
        "comment" : "Dans le contexte de la Conciliation des Traitements médicamenteux, le sourcing des informations de la ligne du Bilan Médicamenteux doit être réalisé à travers l'extension *statementSourcing* et à travers elle seulement",
        "requirements" : "Garantir la règle de gestion du sourcing exclusivement à travers l'extension *statementSourcing*",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage",
        "path" : "MedicationStatement.dosage",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.doseAndRate.dose[x]",
        "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
        "short" : "Precise amount of medication per dose",
        "definition" : "Amount of medication per dose. No use of element 'comparator' in the simpleQuantity definitions.",
        "type" : [
          {
            "code" : "Range",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRangeMedication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.doseAndRate.rate[x]",
        "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRatioMedication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.maxDosePerPeriod",
        "path" : "MedicationStatement.dosage.maxDosePerPeriod",
        "short" : "Upper precise limit on medication per unit of time",
        "definition" : "Upper limit on medication per unit of time. This datatype excludes measurements whose uncertainity is described by the simpleQuantity \"comparator\" element.",
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrRatioMedication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.maxDosePerAdministration",
        "path" : "MedicationStatement.dosage.maxDosePerAdministration",
        "short" : "Precise upper limit on medication per administration with UCUM or EDQM unit",
        "definition" : "Fixed upper limit on medication per administration with UCUM or EDQM unit.",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.dosage.maxDosePerLifetime",
        "path" : "MedicationStatement.dosage.maxDosePerLifetime",
        "short" : "A fixed measured or measurable amount with UCUM or EDQM unit",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/FrSimpleQuantityMedication"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
