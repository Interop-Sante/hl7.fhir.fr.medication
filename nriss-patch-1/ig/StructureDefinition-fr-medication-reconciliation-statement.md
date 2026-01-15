# FR Medication Reconciliation MedicationStatement - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication Reconciliation MedicationStatement**

## Resource Profile: FR Medication Reconciliation MedicationStatement 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-reconciliation-statement | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FRMedicationReconciliationMedicationStatement |

 
Profil de la ressource**MedicationStatement**référencée dans la ressource**Composition**de la Fiche de Conciliation des Traitements médicamenteux (FCT). 

**Utilisations:**

* Référer à ce Profil: [FR Medication Reconciliation Composition](StructureDefinition-fr-medication-reconciliation-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication-reconciliation-statement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication-reconciliation-statement.csv), [Excel](StructureDefinition-fr-medication-reconciliation-statement.xlsx), [Schematron](StructureDefinition-fr-medication-reconciliation-statement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-reconciliation-statement",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-reconciliation-statement",
  "version" : "0.1.0",
  "name" : "FRMedicationReconciliationMedicationStatement",
  "title" : "FR Medication Reconciliation MedicationStatement",
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
  "description" : "Profil de la ressource *MedicationStatement* référencée dans la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT).",
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
        "short" : "Ligne de traitement médicamenteux de la FCT (Fiche de Conciliation ds Traitements médicamenteux)",
        "definition" : "Ligne de traitement médicamenteux de la FCT (Fiche de Conciliation ds Traitements médicamenteux), avec ses propriétés de documentation de la conciliation."
      },
      {
        "id" : "MedicationStatement.meta.tag",
        "path" : "MedicationStatement.meta.tag",
        "max" : "0"
      },
      {
        "id" : "MedicationStatement.implicitRules",
        "path" : "MedicationStatement.implicitRules",
        "max" : "0"
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
        "id" : "MedicationStatement.extension:reconciliation",
        "path" : "MedicationStatement.extension",
        "sliceName" : "reconciliation",
        "short" : "Propriétés de la conciliation de cette ligne de traitement médicamenteux",
        "definition" : "Documentation de la conciliation : statut, divergence, commentaire, type d'erreur/écart, conséquence de l'erreur/écart, résolution de l'erreur/écart",
        "comment" : "La documentation de la conciliation est renseignée progressivement par le pharmacien puis le prescripteur lors du dialogue qui s'instaure entre eux-deux.\r\nL'élément complexe *reconciliation* peut porter tout l'historique de ce renseignement progressif ou ne porter que son état courant, c'est-à-dire pour chaque propriété, l'information à sa dernière date d'enregistrement par son ou ses auteurs.",
        "requirements" : "Porter la documentation de la Conciliation Médicamenteuse selon les règles de gestion en vigueur en France",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationstatement-reconciliation-properties"
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
        "short" : "Le médicament constitutif de cette ligne | What medication was taken",
        "definition" : "Identifie le médicament constitutif de cette ligne. C'est lien vers une ressource Medication qui décrit ce médicament. Identifies the medication being administered. This is a link to a resource representing the details of the medication.",
        "comment" : "Même si le médicament n'est composé que d'une spécialité (par exemple un comprimé), il est défini par référence à une Medication qui décrira sa composition d'une seule spécialité",
        "requirements" : "traitement univoque de l'élément medication[x]",
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
        "id" : "MedicationStatement.subject",
        "path" : "MedicationStatement.subject",
        "definition" : "Le patient qui prend ou a pris cette ligne de traitement médicamenteux.",
        "comment" : "Obligatoire dans la ressource FHIR *MedicationStatement* originelle, donc DOIT ABSOLUMENT être identique au patient identifé dans la ressource *Composition* de la Fiche. Cf. *Composition.subjet*\\.",
        "requirements" : "La Fiche de Conciliation des Traitements médicamenteux ne s'applique qu'à un patient",
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
        "id" : "MedicationStatement.subject.reference",
        "path" : "MedicationStatement.subject.reference",
        "requirements" : "référence la ressource Patient selon la profile fr-patient défini par Interop'Santé",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.subject.type",
        "path" : "MedicationStatement.subject.type",
        "fixedUri" : "Patient"
      },
      {
        "id" : "MedicationStatement.subject.identifier",
        "path" : "MedicationStatement.subject.identifier",
        "requirements" : "Identification du patient exclusivement par référence à une ressource Patient selon le profil fr-patient défini par Interop'Santé",
        "max" : "0"
      },
      {
        "id" : "MedicationStatement.informationSource",
        "path" : "MedicationStatement.informationSource",
        "comment" : "Dans le contexte de la Conciliation des Traitements médicamenteux, le sourcing des informations de la ligne de la Fiche de Conciliation des Traitements médicamenteux doit être réalisé à travers la collection d'éléments *derivedFrom* et à travers elle seulement.",
        "requirements" : "Garantir la règle de gestion du sourcing exclusivement à travers la collection d'éléments *derivedFrom*",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.derivedFrom",
        "path" : "MedicationStatement.derivedFrom",
        "slicing" : {
          "description" : "lien avec telle ligne du Bilan Médicamenteux et/ou telle ligne de la Prescription d'Admission",
          "rules" : "open"
        },
        "comment" : "Une ligne de la Fiche de Conciliation doit être en relation avec au moins une ligne du Bilan d'Admission ou une ligne de la Prescription d'Admission",
        "requirements" : "fournir le lien entre la Fiche de Conciliation et le Bilan Médicamenteux et la Prescription d'Admission.",
        "min" : 1,
        "max" : "2",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.derivedFrom:fromMedicationHistory",
        "path" : "MedicationStatement.derivedFrom",
        "sliceName" : "fromMedicationHistory",
        "short" : "Ligne du Bilan Médicamenteux",
        "definition" : "Ligne du Bilan Médicamenteux en relation avec cette ligne de la Fiche de Conciliation",
        "comment" : "Un ligne de la Fiche de Conciliation peut n'être en relation avec aucune des lignes du bilan Médicamenteux (ligne initiée lors de la Prescription d'Admission)",
        "requirements" : "Référencer une ressource ligne de Bilan Médicamenteux",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-medicationstatement"
            ]
          }
        ],
        "meaningWhenMissing" : "Aucune ligne du Bilan Médicamenteux n'est en relation avec cette ligne de la Fiche de Conciliation",
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.derivedFrom:fromMedicationHistory.reference",
        "path" : "MedicationStatement.derivedFrom.reference",
        "min" : 1
      },
      {
        "id" : "MedicationStatement.derivedFrom:fromMedicationHistory.identifier",
        "path" : "MedicationStatement.derivedFrom.identifier",
        "requirements" : "identifier la ligne de Bilan Médicamenteux par référence à une ressource MedicationStatement profilée SiPh",
        "max" : "0"
      },
      {
        "id" : "MedicationStatement.derivedFrom:fromCurrentMedication",
        "path" : "MedicationStatement.derivedFrom",
        "sliceName" : "fromCurrentMedication",
        "short" : "Ligne du Traitement Médicamenteux Courant",
        "definition" : "Ligne du Traitement Médicamenteux Courant en relation avec cette ligne de la Fiche de Conciliation",
        "comment" : "Un ligne de la Fiche de Conciliation peut n'être en relation avec aucune des lignes de la Prescription d'Admission (ligne arrêtée ou oubliée lors de la Prescription d'Admission)",
        "requirements" : "Référencer une ressource ligne de Traitement Médicamenteux Courant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-current-medication-medicationstatement"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "MedicationStatement.derivedFrom:fromCurrentMedication.reference",
        "path" : "MedicationStatement.derivedFrom.reference",
        "min" : 1
      },
      {
        "id" : "MedicationStatement.derivedFrom:fromCurrentMedication.identifier",
        "path" : "MedicationStatement.derivedFrom.identifier",
        "requirements" : "identifier la ligne du Bilan d'Admission par référence à une ressource MedicationStatement profilée SiPh",
        "max" : "0"
      },
      {
        "id" : "MedicationStatement.note",
        "path" : "MedicationStatement.note",
        "definition" : "Information textuelle complémentaire pour ce médicament, ***A L'EXCEPTION*** des notes concernant la documentation de la Conciliation proprement-dite de ce médicament qui doivent figurer dans l'élément *commentaire* de l'extension *reconciliation*.",
        "comment" : "Bien distinguer les informations complémentaires relatives au traitement médicamenteux que représente cette ligne, qui doivent figurer ici, de celles relative à la conciliation proprement-dite de cette ligne avec le Bilan Médicamenteux et le Traitement Médicamenteux Courant, qui doivent figurer dans l'extension *reconciliation*",
        "requirements" : "Bien distinguer information complémentaire concernant le traitement médicamenteux de celle concernant la conciliation proprement-dite.",
        "meaningWhenMissing" : "Toute l'information nécessaire à la compréhension du traitement médicamenteux que représente cette ressource *MedicationStatement* est contenue dans ses autres éléments.",
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
        "short" : "Precise amount of medication per unit of time",
        "definition" : "Amount of medication per unit of time No use of element 'comparator' in the simpleQuantity definitions.",
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
