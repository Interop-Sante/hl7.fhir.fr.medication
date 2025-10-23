# FRMedicationStatementReconciliationProperties - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRMedicationStatementReconciliationProperties**

## Extension: FRMedicationStatementReconciliationProperties 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationstatement-reconciliation-properties | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRMedicationStatementReconciliationProperties |

Propiétés spécifiques de la ligne de médicament, ajoutée à la ressource MedicationStatement dans la Fiche de Conciliation des Traitements médicamenteux (FCT)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medicationstatement-reconciliation-properties)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medicationstatement-reconciliation-properties.csv), [Excel](StructureDefinition-fr-medicationstatement-reconciliation-properties.xlsx), [Schematron](StructureDefinition-fr-medicationstatement-reconciliation-properties.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medicationstatement-reconciliation-properties",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationstatement-reconciliation-properties",
  "version" : "0.1.0",
  "name" : "FRMedicationStatementReconciliationProperties",
  "status" : "draft",
  "date" : "2025-10-23T14:53:51+00:00",
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
  "description" : "Propiétés spécifiques de la ligne de médicament, ajoutée à la ressource MedicationStatement dans la Fiche de Conciliation des Traitements médicamenteux (FCT)",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "MedicationStatement"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Propriétés de conciliation d'une ligne de traitement médicamenteux",
        "definition" : "Propriétés de conciliation d'une ligne de traitement médicamenteux dans une Fiche de Conciliation des Traitements médicamenteux (FCT)",
        "comment" : "Ces propriétés sont documentées par le pharmacien puis par le prescripteur. C'est la raison pour laquelle chacune a son propre lot de propriétés d'édition (date, statut et auteur(s)). Ces propriétés d'édition sont facultatives pour supporter les cas d'usage qui n'ont pas besoin de ce niveau de finesse. Par exemple, transmettre une fiche de conciliation complète et validée, cosignée du pharmacien et du prescripteur, d'un logiciel de conciliation au DPI sans qu'il n'y ait de dialogue entre les deux logiciels.\r\nUne ligne de Fiche de Conciliation des Traitements médicamenteux doit être crée avec au moins les deux propriétés *status* et *isDiscrepant* renseignées, cardinalité minimale 2. Le nombre de *comment* est indéterminé, cardinalité maximale *."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 2
      },
      {
        "id" : "Extension.extension:status",
        "path" : "Extension.extension",
        "sliceName" : "status",
        "short" : "statut de divergence sur la ligne de traitement",
        "definition" : "valeur codée du statut de divergence de la ligne (MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux : { Continué ; Équivalence ; Arrêté ; Modifié ; Initié }",
        "comment" : "Ce statut est attribué par le pharmacien (en général, même si un prescripteur est habilité à le faire), dès la création de la Fiche de Conciliation. C'est pourquoi il est obligatoire et sa cardinalité [1..1].",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:status.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:status.extension:value",
        "path" : "Extension.extension.extension",
        "sliceName" : "value",
        "short" : "valeur de la propriété *status*",
        "definition" : "valeur codée (coding) de la propriété *status* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s))",
        "comment" : "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi.",
        "requirements" : "Qualifier le statut de divergence de la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension",
        "path" : "Extension.extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:code",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "code",
        "short" : "valeur codée de la propriété *status*",
        "definition" : "valeur codée (coding) de la propriété *status* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s).",
        "comment" : "La valeur codée de la propriété *status* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire.",
        "requirements" : "Contraindre l'usage d'une valeur codée et de son jeu de valeurs.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:code.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:code.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "code"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:code.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-reconciliation-status"
        }
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:date",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "date",
        "short" : "date d'édition de la propriété *status*",
        "definition" : "date d'édition de l'information portée par l'élément *status* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date",
        "requirements" : "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "date de la Fiche de Conciliation des Traitements médicamenteux, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:date.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:date.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "date"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:date.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:edStatus",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "edStatus",
        "short" : "statut éditorial (codé) de la propriété *status*",
        "definition" : "statut éditorial (code) de l'information portée par l'élément *status* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *status* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux.",
        "requirements" : "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "Pas de gestion du statut éditorial de la valeur de la propriété *status* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:edStatus.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:edStatus.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "edStatus"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:edStatus.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "fr-editorial-status",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-editorial-status"
        }
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:author",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "author",
        "short" : "auteur(s) de la propriété *status*",
        "definition" : "auteur(s) de l'information portée par l'élément *status* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author",
        "requirements" : "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:author.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:author.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "author"
      },
      {
        "id" : "Extension.extension:status.extension:value.extension:author.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "short" : "identité de l'auteur par son rôle et, de préférence, aussi sa personne",
        "definition" : "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL).",
        "comment" : "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:status.extension:value.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:status.extension:value.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:status.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "status"
      },
      {
        "id" : "Extension.extension:status.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:isDiscrepant",
        "path" : "Extension.extension",
        "sliceName" : "isDiscrepant",
        "short" : "identification oui/non d'une divergence sur la ligne de traitement",
        "definition" : "Booléen marqueur de l'identification d'une divergence ou non sur cette ligne (MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux.\r\nLa qualification de la divergence, intentionnelle ou non, est portée par l'élément codé *discrepancy*.",
        "comment" : "Ce marquage est réalisé par le pharmacien (en général, même si un prescripteur est habilité à le faire), dès la création de la Fiche de Conciliation des Traitements médicamenteux. C'est pourquoi il est obligatoire et sa cardinalité [1..1] et dissocié de la qualification de la divergence qui est portée par la propriété *discrepancy*.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value",
        "path" : "Extension.extension.extension",
        "sliceName" : "value",
        "short" : "valeur booléenne de la propriété *isDiscrepant*",
        "definition" : "valeur booléenne (bool) de la propriété *isDiscrepant* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s)).",
        "comment" : "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi.",
        "requirements" : "Marquer par un booléen l'identification de l'existence d'une divergence dans la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension",
        "path" : "Extension.extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:yesNo",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "yesNo",
        "short" : "valeur booléenne de la propriété *isDiscrepant*",
        "definition" : "valeur booléenne (bool) de la propriété *isDiscrepant* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s).",
        "comment" : "La valeur booléenne de la propriété *isDiscrepant* de la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux est obligatoire.",
        "requirements" : "Contraindre l'usage d'une valeur booléenne.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:yesNo.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:yesNo.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "yesNo"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:yesNo.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:date",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "date",
        "short" : "date d'édition de la propriété *isDiscrepant*",
        "definition" : "date d'édition de l'information portée par l'élément *isDiscrepant*de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date",
        "requirements" : "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "date de la Fiche de Conciliation des Traitements médicamenteux, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:date.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:date.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "date"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:date.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:edStatus",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "edStatus",
        "short" : "statut éditorial (codé) de la propriété *isDiscrepant*",
        "definition" : "statut éditorial (code) de l'information portée par l'élément *isDiscrepant* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *isDiscrepant* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux.",
        "requirements" : "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "Pas de gestion du statut éditorial de la valeur de la propriété *isDiscrepant* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:edStatus.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:edStatus.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "edStatus"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:edStatus.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "fr-editorial-status",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-editorial-status"
        }
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:author",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "author",
        "short" : "auteur(s) de la propriété *isDiscrepant*",
        "definition" : "auteur(s) de l'information portée par l'élément *isDiscrepant* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author",
        "requirements" : "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "*",
        "meaningWhenMissing" : "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:author.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:author.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "author"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.extension:author.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "short" : "identité de l'auteur par son rôle et, de préférence, aussi sa personne",
        "definition" : "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL).",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:isDiscrepant.extension:value.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:isDiscrepant.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "isDiscrepant"
      },
      {
        "id" : "Extension.extension:isDiscrepant.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:discrepancy",
        "path" : "Extension.extension",
        "sliceName" : "discrepancy",
        "short" : "qualification de la divergence identifiée sur la ligne de traitement",
        "definition" : "valeur codée (coding) qualifiant la divergence de la ligne (MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux : { Intentionnelle ; Non-intentionnelle }\r\nNote : le concept de non-divergence est porté par la propriété *isDiscrepant* à la valeur FAUX ; le concept de divergence non-qualifiée est porté par la combinaison de la propriété *isDiscrepant* à la valeur VRAI et de cette propriété *discrepancy* non renseignée.",
        "comment" : "Cette qualification est généralement apportée par le prescripteur en réponse à la sollicitation du pharmacien ayant identifié qu'il y a une divergence (propriété *isDiscrepant* à la valeur VRAI). Elle peut être apportée par la pharmacien s'il dispose d'une documentation suffisante de la prescription concernée.",
        "requirements" : "Qualifier le caractère intentionnel ou non-intentionnel de la divergence identifiée, c'est-à-dire quand la propriété *isDiscrepant* a la valeur VRAI.",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "La Divergence, si elle est idenfiée (propriété *isDiscrepant* à la valeur VRAI), n'est pas encore qualifiée Intentionnelle ou Non-intentionnelle.\r\nS'il n'y a pas de Divergence identifiée (propriété *isDiscrepant* à la valeur FAUX), propriété NON-APPLICABLE."
      },
      {
        "id" : "Extension.extension:discrepancy.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value",
        "path" : "Extension.extension.extension",
        "sliceName" : "value",
        "short" : "valeur codée de la propriété *discrepancy*",
        "definition" : "valeur codée (coding) de la propriété *discrepancy* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s)). { DI ; DNI } pour divergence intentionnelle et divergence non-intentionnelle.\r\nNote : le concept de non-divergence est porté par la propriété *isDiscrepant* à la valeur FAUX ; le concept de divergence non-qualifiée est porté par la combinaison de la propriété *isDiscrepant* à la valeur VRAI et de cette propriété *discrepancy* non renseignée.",
        "comment" : "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi.",
        "requirements" : "Qualifier la divergence identifiée sur la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension",
        "path" : "Extension.extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:code",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "code",
        "short" : "valeur codée de la propriété *discrepancy*",
        "definition" : "valeur codée (coding) de la propriété *discrepancy* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s).",
        "comment" : "La valeur codée de la propriété *discrepancy* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire.",
        "requirements" : "Contraindre l'usage d'une valeur codée et de son jeu de valeurs.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:code.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:code.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "code"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:code.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "fr-medication-reconciliation-qualified-discrepancy",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-reconciliation-qualified-discrepancy"
        }
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:date",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "date",
        "short" : "date d'édition de la propriété *discrepancy*",
        "definition" : "date d'édition de l'information portée par l'élément *discrepancy* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la fiche de Conciliation, cf. ressource Composition.date",
        "requirements" : "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:date.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:date.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "date"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:date.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:edStatus",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "edStatus",
        "short" : "statut éditorial (codé) de la propriété *discrepancy*",
        "definition" : "statut éditorial (code) de l'information portée par l'élément *discrepancy* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *discrepancy* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux.",
        "requirements" : "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "Pas de gestion du statut éditorial de la valeur de la propriété *discrepancy* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:edStatus.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:edStatus.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "edStatus"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:edStatus.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "fr-editorial-status",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-editorial-status"
        }
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:author",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "author",
        "short" : "auteur(s) de la propriété *discrepancy*",
        "definition" : "auteur(s) de l'information portée par l'élément *discrepancy* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author",
        "requirements" : "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "*",
        "meaningWhenMissing" : "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:author.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:author.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "author"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.extension:author.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "short" : "identité de l'auteur par son rôle et, de préférence, aussi sa personne",
        "definition" : "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL).",
        "comment" : "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:discrepancy.extension:value.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:discrepancy.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "discrepancy"
      },
      {
        "id" : "Extension.extension:discrepancy.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:comment",
        "path" : "Extension.extension",
        "sliceName" : "comment",
        "short" : "commentaires libres (documentation) de la ligne de traitement",
        "definition" : "commentaires libres de la ligne (MedicationStatement) de la Fiche de Conciliation des Traitements médicamenteux",
        "comment" : "Il peut y avoir plusieurs commentaires, cardinalité [0..\\*]. Le *text*\\, le *edStatus* et le ou les *author* à *date* donnée peuvent évoluer pour chaque commentaire, cardinalité [1..\\*] de l'élément *value*.",
        "requirements" : "Documenter la Conciliation de la ligne de traitement, au-delà du codage de ses propriétés codées",
        "min" : 0,
        "max" : "*",
        "meaningWhenMissing" : "Absence de documentation complémentaire aux propriétés codées de Conciliaton de la ligne de prescription"
      },
      {
        "id" : "Extension.extension:comment.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:comment.extension:value",
        "path" : "Extension.extension.extension",
        "sliceName" : "value",
        "short" : "texte de la propriété *comment*",
        "definition" : "valeur texte de la propriété *comment* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s))",
        "comment" : "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi.",
        "requirements" : "Porter la documentation textuelle _riche_ (possibilité de balisage markdown) de la conciliation de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension",
        "path" : "Extension.extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:text",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "text",
        "short" : "texte de la propriété *comment*",
        "definition" : "valeur texte libre potentiellement riche (markdown) de la propriété *comment* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s).",
        "comment" : "La valeur texte libre potentiellement riche (balisage markdown) de la propriété *status* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire.",
        "requirements" : "Contraindre l'usage d'une valeur texte libre potentiellement riche (balisage markdown).",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:text.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:text.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "text"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:text.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "markdown"
          }
        ]
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:date",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "date",
        "short" : "date d'édition de la propriété *comment*",
        "definition" : "date d'édition de l'information portée par l'élément *comment* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date",
        "requirements" : "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:date.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:date.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "date"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:date.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:edStatus",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "edStatus",
        "short" : "statut éditorial (codé) de la propriété *comment*",
        "definition" : "statut éditorial (code) de l'information portée par l'élément *comment* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *comment* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux.",
        "requirements" : "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "Pas de gestion du statut éditorial de la valeur de la propriété *comment* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:edStatus.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:edStatus.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "edStatus"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:edStatus.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "fr-editorial-status",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-editorial-status"
        }
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:author",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "author",
        "short" : "auteur(s) de la propriété *commentaire*",
        "definition" : "auteur(s) de l'information portée par l'élément *comment* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author",
        "requirements" : "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "*",
        "meaningWhenMissing" : "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:author.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:author.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "author"
      },
      {
        "id" : "Extension.extension:comment.extension:value.extension:author.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "short" : "identité de l'auteur par son rôle et, de préférence, aussi sa personne",
        "definition" : "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL).",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:comment.extension:value.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:comment.extension:value.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:comment.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "comment"
      },
      {
        "id" : "Extension.extension:comment.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type",
        "path" : "Extension.extension",
        "sliceName" : "type",
        "short" : "type de l'écart/erreur entre Bilan et Traitement Courant pour la ligne de traitement",
        "definition" : "type l'écart/erreur entre la ligne dans le Bilan et celle dans le Traitement Courant de la Fiche de Conciliation des Traitements médicamenteux, écart aussi intitulé erreur médicamenteuse. Ex: { Erreur posologie ; Oubli médicament prescrit ; Oubli automédication ; Erreur substitution ; Erreur forme galénique ; Ajout ; Autre }, _jeu de valeurs extensible_",
        "comment" : "Cette propriété pourrait ne pas être limitée aux seules DNI (divergences non-intensionnelles)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:type.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:type.extension:value",
        "path" : "Extension.extension.extension",
        "sliceName" : "value",
        "short" : "valeur codée de la propriété *type*",
        "definition" : "valeur codée (coding) de la propriété *type* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s).",
        "comment" : "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi.",
        "requirements" : "Qualifier le type d'écart/erreur sur la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension",
        "path" : "Extension.extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:code",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "code",
        "short" : "valeur codée de la propriété *type*",
        "definition" : "valeur codée (coding) de la propriété *type* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition edStatut, date, author(s).",
        "comment" : "La valeur codée de la propriété *type* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire.",
        "requirements" : "Contraindre l'usage d'une valeur codée et de son jeu de valeurs.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:code.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:code.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "code"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:code.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "description" : "fr-medication-reconciliation-type",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-reconciliation-type"
        }
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:date",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "date",
        "short" : "date d'édition de la propriété *type*",
        "definition" : "date d'édition de l'information portée par l'élément *type* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *status* défini par son ou ses auteurs *author* dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date",
        "requirements" : "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:date.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:date.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "date"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:date.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:edStatus",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "edStatus",
        "short" : "statut éditorial (codé) de la propriété *type*",
        "definition" : "statut éditorial (code) de l'information portée par l'élément *type* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *type* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux.",
        "requirements" : "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "Pas de gestion du statut éditorial de la valeur de la propriété *type* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:edStatus.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:edStatus.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "edStatus"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:edStatus.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-editorial-status"
        }
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:author",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "author",
        "short" : "auteur(s) de la propriété *type*",
        "definition" : "auteur(s) de l'information portée par l'élément *type* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author",
        "requirements" : "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "*",
        "meaningWhenMissing" : "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:author.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:author.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "author"
      },
      {
        "id" : "Extension.extension:type.extension:value.extension:author.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "short" : "identité de l'auteur par son rôle et, de préférence, aussi sa personne",
        "definition" : "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL).",
        "comment" : "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:type.extension:value.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:type.extension:value.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:type.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "type"
      },
      {
        "id" : "Extension.extension:type.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:outcome",
        "path" : "Extension.extension",
        "sliceName" : "outcome",
        "short" : "gravité estimée de la divergence identifiée sur la ligne de traitement",
        "definition" : "gravité estimée de la divergence, intitulé « Gravité de l’erreur » dans [le guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante) : { mineure ; significative ; majeure ; critique ; catastrophique }",
        "comment" : "Cette propriété pourrait ne pas être limitée aux seules DNI (divergences non-intensionnelles)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:outcome.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:outcome.extension:value",
        "path" : "Extension.extension.extension",
        "sliceName" : "value",
        "short" : "valeur codée de la propriété *outcome*",
        "definition" : "valeur codée (coding) de la propriété *outcome* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s).",
        "comment" : "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi.",
        "requirements" : "Qualifier la gravité de l'écart/erreur sur la ligne de traitement de la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension",
        "path" : "Extension.extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:code",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "code",
        "short" : "valeur codée de la propriété *outcome*",
        "definition" : "valeur codée (coding) de la propriété *outcome* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition edStatut, date, author(s).",
        "comment" : "La valeur codée de la propriété *outcome* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire.",
        "requirements" : "Contraindre l'usage d'une valeur codée et de son jeu de valeurs.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:code.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:code.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "code"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:code.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "fr-medication-reconciliation-outcome",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-reconciliation-outcome"
        }
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:date",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "date",
        "short" : "date d'édition de la propriété *outcome*",
        "definition" : "date d'édition de l'information portée par l'élément *outcome*de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date",
        "requirements" : "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:date.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:date.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "date"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:date.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:edStatus",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "edStatus",
        "short" : "statut éditorial (codé) de la propriété *outcome*",
        "definition" : "statut éditorial (code) de l'information portée par l'élément *outcome* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *outcome* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux.",
        "requirements" : "discriminer les statuts (phases) d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "Pas de gestion du statut éditorial de la valeur de la propriété *outcome* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:edStatus.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:edStatus.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "edStatus"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:edStatus.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "fr-editorial-status",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-editorial-status"
        }
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:author",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "author",
        "short" : "auteur(s) de la propriété *outcome*",
        "definition" : "auteur(s) de l'information portée par l'élément *outcome* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.author",
        "requirements" : "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "*",
        "meaningWhenMissing" : "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:author.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:author.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "author"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.extension:author.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "short" : "identité de l'auteur par son rôle et, de préférence, aussi sa personne",
        "definition" : "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL).",
        "comment" : "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:outcome.extension:value.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:outcome.extension:value.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:outcome.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "outcome"
      },
      {
        "id" : "Extension.extension:outcome.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:resolution",
        "path" : "Extension.extension",
        "sliceName" : "resolution",
        "short" : "résolution de la divergence identifiée sur la ligne de traitement",
        "definition" : "Ce qui a été fait pour résoudre la divergence non intentionnelle. Ex: { repris ; dose corrigée ; forme corrigée ; spécialité corrigée ; arrêt }, _jeu de valeurs extensible_.",
        "comment" : "Cette propriété pourrait ne pas être limitée aux seules DNI (divergences non-intensionnelles)",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:resolution.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:resolution.extension:value",
        "path" : "Extension.extension.extension",
        "sliceName" : "value",
        "short" : "valeur codée de la propriété *resolution*",
        "definition" : "valeur codée (coding) de la propriété *resolution* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, avec ses propriétés d'édition (statut, date, auteur(s)).",
        "comment" : "Cardinalité [1..\\*] car la valeur de la propriété *status* peut évoluer et ses propriétés d'édition *edStatus* et *author* à *date* donnée aussi.",
        "requirements" : "Qualifier la résolution de l'écart/erreur sur la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux par une valeur codée tirée d'un jeu de valeurs contraint.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension",
        "path" : "Extension.extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:code",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "code",
        "short" : "valeur codée de la propriété *resolution*",
        "definition" : "valeur codée (coding) de la propriété *resolution* de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux avec ses propriétés d'édition *edStatut*\\, *date*\\, *author*\\(s).",
        "comment" : "La valeur codée de la propriété *resolution* de la ligne de traitement la Fiche de Conciliation des Traitements médicamenteux est obligatoire.",
        "requirements" : "Contraindre l'usage d'une valeur codée et de son jeu de valeurs.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:code.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:code.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "code"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:code.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "description" : "fr-medication-reconciliation-resolution",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-reconciliation-resolution"
        }
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:date",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "date",
        "short" : "date d'édition de la propriété *resolution*",
        "definition" : "date d'édition de l'information portée par l'élément *resolution*de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* défini par son ou ses auteurs *author* dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, date d'édition de la Fiche de Conciliation des Traitements médicamenteux, cf. ressource Composition.date",
        "requirements" : "discriminer les dates d'édition de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "date de la fiche de Conciliation, propriété *date* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche (composition editing time)"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:date.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:date.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "date"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:date.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:edStatus",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "edStatus",
        "short" : "statut éditorial (codé) de la propriété *resolution*",
        "definition" : "statut éditorial (code) de l'information portée par l'élément *resolution* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, à la date d'édition *date* définie par son ou ses auteurs *author* dans son cycle d'édition",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, pas de gestion du statut éditorial de la valeur de la propriété *resolution* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux.",
        "requirements" : "discriminer les statuts (phases) d'édition de chacune des propriétés de la la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "Pas de gestion du statut éditorial de la valeur de la propriété *resolution* de la ligne de médicament dans la Fiche de Conciliation des Traitements médicamenteux."
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:edStatus.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:edStatus.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "edStatus"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:edStatus.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "fr-editorial-status",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-editorial-status"
        }
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:author",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "author",
        "short" : "auteur(s) de la propriété *resolution*",
        "definition" : "auteur(s) de l'information portée par l'élément *resolution* de l'extension ReconciliationProperties de la ressource MedicationStatement de la Fiche de Conciliation des Traitements médicamenteux, au statut éditorial *edStatus* et à la date d'édition *date* définis par son ou ses auteurs dans son cycle d'édition.",
        "comment" : "Facultatif si ce niveau de finesse n'est pas requis. Par défaut, les auteurs de la fiche de Conciliation, cf. ressource Composition.author",
        "requirements" : "discriminer les auteurs de chacune des propriétés de la Fiche de Conciliation des Traitements médicamenteux",
        "min" : 0,
        "max" : "*",
        "meaningWhenMissing" : "auteurs de la fiche de Conciliation, propriété *author* de la ressource Composition qui aggrège les lignes (ressources MedicationStatement) de la fiche"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:author.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:author.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "author"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.extension:author.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "short" : "identité de l'auteur par son rôle et, de préférence, aussi sa personne",
        "definition" : "identité de l'auteur avec son rôle (pharmacien ou médecin) et, de préférence, aussi sa personne (Dr UNTEL).",
        "comment" : "PrationerRole avec référence à Practioner (si pas de practioner référencé --> identification ès qualités du professionnel de santé -que par son rôle)",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:resolution.extension:value.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:resolution.extension:value.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:resolution.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "resolution"
      },
      {
        "id" : "Extension.extension:resolution.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationstatement-reconciliation-properties"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
