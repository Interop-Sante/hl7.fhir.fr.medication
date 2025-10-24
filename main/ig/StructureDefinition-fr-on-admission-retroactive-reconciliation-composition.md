# FR On Admission Retroactive Reconciliation Composition - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR On Admission Retroactive Reconciliation Composition**

## Resource Profile: FR On Admission Retroactive Reconciliation Composition 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-on-admission-retroactive-reconciliation-composition | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:FROnAdmissionRetroactiveReconciliationComposition |

 
Profil de la ressource**Composition**de la Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d’admission. 

 
Ce profil est utilisé pour la**Composition**du document FHIR**Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d’admission**. 

### Usage

Fiche de Conciliation des Traitements médicamenteux (FCT) :

Liste des traitements médicamenteux conciliés à partir du Bilan Médicamenteux (traitements avant l’hospitalisation) et de l’Ordonnance médicale d’Admission (OMA), conforme aux recommandations du [guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante).

* référence le Bilan Médicamenteux ;
* référence l’Ordonnance médicale d’Admission (OMA) ;
* liste des lignes de traitement conciliées avec, pour chacune,
* la référence à la ligne de traitement médicamenteux du Bilan Médicamenteux si elle existe,
* la référence à la ligne de traitement médicamenteux de l’OMA si elle existe,
* au moins une de ces deux lignes doit exister et être référencée,
* ses propriétés de conciliation.”

Cette **Composition** comporte 3 <**section**\> et 3 seulement :

1. La référence au Bilan Médicamenteux, une ressource**Composition**profilée**fr-medication-history-composition**
1. La référence à l’OMA, une ressource**Composition**profilée**fr-on-adsmission-medication-composition**
1. La liste des traitements médicamenteux conciliés avec chacune ses propriétés de conciliation, une <**entry**\> (de cette 3ème section) par ligne de traitement référençant une ressource**MedicationStatement**profilée**fr-medication-reconciliation-medication-statement**”

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-on-admission-retroactive-reconciliation-composition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.csv), [Excel](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.xlsx), [Schematron](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-on-admission-retroactive-reconciliation-composition",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-on-admission-retroactive-reconciliation-composition",
  "version" : "0.1.0",
  "name" : "FROnAdmissionRetroactiveReconciliationComposition",
  "title" : "FR On Admission Retroactive Reconciliation Composition",
  "status" : "draft",
  "date" : "2025-10-24T13:47:42+00:00",
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
  "description" : "Profil de la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission.",
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
  "purpose" : "Ce profil est utilisé pour la *Composition* du document FHIR *Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission*\\.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-reconciliation-composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition",
        "short" : "Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission"
      },
      {
        "id" : "Composition.type",
        "path" : "Composition.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://hl7.fr/fhir/fr/medication/CodeSystem/fr-document-type",
              "code" : "10000002",
              "display" : "FCT rétroactive d'admission"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:CurrentMedication",
        "path" : "Composition.section",
        "sliceName" : "CurrentMedication",
        "short" : "Ordonnance Médicale d'admission (OMA)",
        "definition" : "La liste des traitements médicamenteux prescrit à l'admission (Ordonnance Médicale d'admission - OMA), confrontée au Bilan Médicamenteux et qui l'objet de la conciliation des traitements.",
        "requirements" : "Référencer l'Ordonnance Médicale d'Admission qui fait l'objet de cette conciliation des traitements."
      },
      {
        "id" : "Composition.section:CurrentMedication.entry",
        "path" : "Composition.section.entry",
        "short" : "La composition de l'Ordonnance Médicale d'Admission (OMA) attachée",
        "definition" : "La référence à la ressource *Composition* de l'Ordonnance Médicale d'Admission (OMA). Cette Ordonnance peut, formellement, être vide si le patient n'a aucun médicament prescrit à son admission.",
        "comment" : "Une Ordonnance Médicale d'Admission (OMA), même vide si la patient n'a aucun médicament prescrit lors de son admission, doit être attachée à la FCT (Fiche de Concimaition des Traitements médicamenteux).",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-on-admission-medication-composition"
            ]
          }
        ]
      }
    ]
  }
}

```
