# FR Medication Reconciliation Composition - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication Reconciliation Composition**

## Resource Profile: FR Medication Reconciliation Composition 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-reconciliation-composition | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRMedicationReconciliationComposition |

 
Profil de la ressource**Composition**la Fiche de Conciliation des Traitements médicamenteux (FCT). 

 
Ce profil est utilisé pour la**Composition**du document FHIR**Fiche de Conciliation des Traitements médicamenteux (FCT)**. 

**Utilisations:**

* Dérivé de ce Profil: [FR On Admission Retroactive Reconciliation Composition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication-reconciliation-composition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication-reconciliation-composition.csv), [Excel](StructureDefinition-fr-medication-reconciliation-composition.xlsx), [Schematron](StructureDefinition-fr-medication-reconciliation-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-reconciliation-composition",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-reconciliation-composition",
  "version" : "0.1.0",
  "name" : "FRMedicationReconciliationComposition",
  "title" : "FR Medication Reconciliation Composition",
  "status" : "draft",
  "date" : "2026-01-20T09:44:19+00:00",
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
  "description" : "Profil de la ressource *Composition* la Fiche de Conciliation des Traitements médicamenteux (FCT).",
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
  "purpose" : "Ce profil est utilisé pour la *Composition* du document FHIR *Fiche de Conciliation des Traitements médicamenteux (FCT)*\\.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition",
        "short" : "Fiche de Conciliation des Traitements médicamenteux (FCT)",
        "definition" : "Fiche de Conciliation des Traitements médicamenteux (FCT) : Liste des traitements médicamenteux conciliés à partir du Bilan Médicamenteux (traitements avant l'hospitalisation) et du Traitement Médicamenteux Courant, conforme aux recommandations du [guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante).\r\n- référence le Bilan Médicamenteux ;\r\n- référence le Traitement Médicamenteux Courant ;\r\n- liste des lignes de traitement conciliées avec, pour chacune,\r\n  - la référence à la ligne de traitement médicamenteux du Bilan Médicamenteux si elle existe,\r\n  - la référence à la ligne de traitement médicamenteux du Traitement Médicamenteux Courant si elle existe,\r\n  - au moins une de ces deux lignes doit exister et être référencée,\r\n  - ses propriétés de conciliation.",
        "comment" : "Cette *Composition* comporte 3 <*section*\\> et 3 seulement :\r\n1. La référence au Bilan Médicamenteux, une ressource *Composition* profilée *fr-medication-history-composition*\r\n2. La référence au Traitement Médicamenteux Courant, une ressource *Composition* profilée *fr-current-medication-composition*\r\n3.  La liste des traitements médicamenteux conciliés avec chacune ses propriétés de conciliation, une <*entry*\\> (de cette 3ème section) par ligne de traitement référençant une ressource *MedicationStatement* profilée *fr-medication-reconciliation-medication-statement*"
      },
      {
        "id" : "Composition.implicitRules",
        "path" : "Composition.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Composition.language",
        "path" : "Composition.language",
        "defaultValueCode" : "fr-FR"
      },
      {
        "id" : "Composition.status",
        "path" : "Composition.status",
        "comment" : "1. Une FCT ne peut être au statut final que si elle est complète, à la fois du point de vue de la documentation des lignes de traitement médicamenteux conciliées (cf. les propriétés de conciliation de chacune de ses lignes de traitement) et du point de vue des auteurs qui assument ces contenus (cf. élément <*author*\\> de cette *Composition*\\).\r\n2. Une FCT peut être produite en plusieurs étapes pouvant mettre à disposition des versions intermédiaires, préliminaires, précédant la version finale. Cet élément <*status*\\> de la *Composition* permet alors de rendre compte de ces contenus intermédiaires  préliminaires.\r\n3. Le projet d'établissement et ses choix d'intégration inter applications peut légitimement se limiter à ne partager que la FCT à l'état final, les éventuelles versions intermédiaires préliminaires ne sortant pas du module qui en a la charge.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.type",
        "path" : "Composition.type",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-reconciliation-document-type"
        }
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "short" : "Le patient",
        "definition" : "Le patient auquel se rapporte ce document FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "comment" : "Une FCT (Fiche de Conciliation des Traitements médicamenteux) se rapporte obligatoirement à un patient, référencé en tant que ressource *Patient* profilée *fr-patient*\\.",
        "requirements" : "Identifier le patient auquel se rapporte obligatoirement une FCT (Fiche de Conciliation des Traitements médicamenteux), patient référencé en tant que ressource *Patient* profilée *fr-patient*\\.",
        "min" : 1,
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
        "id" : "Composition.subject.type",
        "path" : "Composition.subject.type",
        "patternUri" : "Patient"
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "short" : "Le ou les auteurs",
        "definition" : "Le ou les auteurs de cette FCT (Fiche de Conciliation des Traitements médicamenteux), défini ès qualités (ressource *PractitionerRole* profilée *fr-practitioner-role-profession*\\) ET, de préférence, aussi nominativement (la ressource *PractionerRole* profilée *fr-practitioner-role* instanciée réfère une instance de ressource *Practioner* profilée *fr-practitioner*\\).",
        "comment" : "1. Il est vivement recommandé d'identifier nominativement les auteurs : la ressource *PractitionerRole* profilée *fr-practitioner-role-profession* instanciée (ex: Médecin) réfère une instance de ressource *Practitioner* profilée *fr-practitioner* (ex: Dr UNTEL).\r\n2. En l'absence de signature électronique, la fiche est réputée _signée_ par ses co-auteurs (voir élement <*author*\\> de cardinalité [1..*].\r\n3. Les règles de gestion de ce co-authoring peuvent être limitée au seul pharmacien (1 seul auteur) qui assumerait la seule version finale de cette Fiche qui serait communiquée.\r\n4. Un projet plus ambitieux pourrait produire une version préliminaire de la Fiche avec comme seul auteur le pharmacien qui établit la liste des traitements à concilier avec leurs propriétés de conciliation partiellement documentées, puis, une version finale avec comme co-auteurs le phamacien et le prescripteur des lignes de traitement qui ont alors toutes leurs propriétés de conciliation documentées.",
        "requirements" : "Identifier les co-auteurs de la FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ],
        "meaningWhenMissing" : "Au moins un auteur obligatoire.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.author.type",
        "path" : "Composition.author.type",
        "patternUri" : "PractitionerRole"
      },
      {
        "id" : "Composition.attester.party",
        "path" : "Composition.attester.party",
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
        "id" : "Composition.attester.party.reference",
        "path" : "Composition.attester.party.reference",
        "min" : 1
      },
      {
        "id" : "Composition.attester.party.type",
        "path" : "Composition.attester.party.type",
        "patternUri" : "Practitioner"
      },
      {
        "id" : "Composition.attester.party.identifier",
        "path" : "Composition.attester.party.identifier",
        "max" : "0"
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "slicing" : {
          "description" : "3 sections : 1. Bilan médicamenteux ; 2Traitement Médicamenteux Courant ; 3. Conciliation proprement dite",
          "rules" : "closed"
        },
        "comment" : "3 sections, prédéfinies et ces 3 sections seulement",
        "requirements" : "Structure de la FCT française conforme au du [guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante).",
        "min" : 3,
        "max" : "3",
        "meaningWhenMissing" : "Les 3 sections prédéfinies sont obligatoires",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:MedicationHistory",
        "path" : "Composition.section",
        "sliceName" : "MedicationHistory",
        "short" : "Bilan Médicamenteux",
        "definition" : "Le Bilan Médicamenteux auquel se réfère la FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "comment" : "Une FCT (Fiche de Conciliation des Traitements médicamenteux) doit se référer à un Bilan Médicamenteux. Cette section n'a qu'une seule <*entry*\\> qui référence une ressource *Composition* profilée *fr-medication-history-Composition* portant le Bilan Médicamenteux attaché à la FCT.",
        "requirements" : "Référencer le Bilan Médicamenteux de cette conciliation des traitements médicamenteux.",
        "min" : 1,
        "max" : "1",
        "meaningWhenMissing" : "Bilan Médicamenteux obligatoire.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:MedicationHistory.title",
        "path" : "Composition.section.title",
        "min" : 1,
        "patternString" : "Bilan Médicamenteux"
      },
      {
        "id" : "Composition.section:MedicationHistory.code",
        "path" : "Composition.section.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "10160-0"
            }
          ]
        }
      },
      {
        "id" : "Composition.section:MedicationHistory.author",
        "path" : "Composition.section.author",
        "comment" : "L'auteur du Bilan Médicamenteux est celui du Bilan référencé par l'élément <*entry*\\>.\r\nL'auteur de l'inclusion de ce bilan dans la fiche de conciliation est celui de la *Composition*\\.",
        "requirements" : "L'auteur du Bilan Médicamenteux est celui du Bilan référencé par l'élément <*entry*\\>.\r\nL'auteur de l'inclusion de ce bilan dans cette fiche de conciliation est celui de la *Composition*\\.",
        "max" : "0",
        "meaningWhenMissing" : "Pas d'auteur spécifique de cette section de la composition.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:MedicationHistory.focus",
        "path" : "Composition.section.focus",
        "comment" : "Le Bilan Médicamenteux ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir element *subject* de la *Composition*\\).",
        "requirements" : "Le Bilan Médicamenteux ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir element *subject* de la *Composition*\\).",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:MedicationHistory.mode",
        "path" : "Composition.section.mode",
        "short" : "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\).",
        "comment" : "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à ***working***\\.",
        "requirements" : "Contraindre une gestion univoque de cette liste représentant le Bilan Médicamenteux.",
        "min" : 1,
        "patternCode" : "working",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:MedicationHistory.orderedBy",
        "path" : "Composition.section.orderedBy",
        "comment" : "Non concerné car il n'y a qu'une seule <*entry*\\> dans cette <*section*\\>. L'ordre des lignes du Bilan Médicamenteux attaché, sera porté par l'élément  *orderedBy* de la seule <*section*\\> de la *Composition* référencée."
      },
      {
        "id" : "Composition.section:MedicationHistory.entry",
        "path" : "Composition.section.entry",
        "short" : "La référence à la ressource *Composition* du Bilan Médicamenteux. Ce Bilan peut être vide si le patient ne prend pas de médicament en dehors de l'hospitalisation au titre de laquelle la Conciliation est réalisée.",
        "comment" : "Un Bilan Médicamenteux, même vide si la patient ne prenait pas de médicament avant son hospitalisation, doit être attaché à la FCT (Fiche de Concimaition des Traitements médicamenteux).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-composition"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:MedicationHistory.section",
        "path" : "Composition.section.section",
        "requirements" : "pas de sous-section dans le bilan médicamenteux (toutes les lignes de traitement sont au même niveau)",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:CurrentMedication",
        "path" : "Composition.section",
        "sliceName" : "CurrentMedication",
        "short" : "Traitement Médicamenteux Courant",
        "definition" : "La liste des traitements médicamenteux courants du patient hospitalisé, confrontée au Bilan Médicamenteux et qui l'objet de la conciliation des traitements.",
        "comment" : "Formellement, cette liste peut être vide.",
        "requirements" : "Référencer le Traitement Médicamenteux Courant qui fait l'objet de cette conciliation des traitements.",
        "min" : 1,
        "max" : "1",
        "meaningWhenMissing" : "La liste des Traitements Médicamenteux Courants est obligatoire (même vide). C'est l'objet même de la conciliation des traitements.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:CurrentMedication.title",
        "path" : "Composition.section.title",
        "min" : 1,
        "fixedString" : "Traitement Médicamenteux Courant"
      },
      {
        "id" : "Composition.section:CurrentMedication.author",
        "path" : "Composition.section.author",
        "requirements" : "L'auteur du Traitement Médicamenteux Courant est celui du document référencé par l'élément <*entry*\\>.\r\nL'auteur de l'inclusion de ce document dans cette fiche de conciliation est celui de la *Composition*\\.",
        "max" : "0",
        "meaningWhenMissing" : "Pas d'auteur spécifique de cette section de la composition.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:CurrentMedication.focus",
        "path" : "Composition.section.focus",
        "comment" : "Le Traitement Médicamenteux Courant ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir element *subject* de la *Composition*\\).",
        "requirements" : "Le Traitement Médicamenteux Courant ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir element *subject* de la *Composition*\\).",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:CurrentMedication.mode",
        "path" : "Composition.section.mode",
        "short" : "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\).",
        "comment" : "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à ***working***\\.",
        "requirements" : "Contraindre une gestion univoque de cette liste représentant le Traitement Médicamenteux Courant.",
        "min" : 1,
        "fixedCode" : "working",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:CurrentMedication.orderedBy",
        "path" : "Composition.section.orderedBy",
        "comment" : "Non concerné car il n'y a qu'une seule <*entry*\\> dans cette <*section*\\>. L'ordre des lignes du Traitement Médicamenteux Courant attaché, sera porté par l'élément  *orderedBy* de la seule <*section*\\> de la *Composition* référencée."
      },
      {
        "id" : "Composition.section:CurrentMedication.entry",
        "path" : "Composition.section.entry",
        "short" : "La référence à la ressource *Composition* du Traitement Médicamenteux Courant. Ce Traitement peut, formellement, être vide si le patient ne prend pas de médicament lors de son hospitalisation.",
        "comment" : "Un Traitement Médicamenteux Courant, même vide si la patient ne prend aucun médicament lors de son hospitalisation, doit être attaché à la FCT (Fiche de Concimaition des Traitements médicamenteux).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-current-medication-composition"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:CurrentMedication.section",
        "path" : "Composition.section.section",
        "requirements" : "pas de sous-section dans le traitement médicamenteux courant (toutes les lignes de traitement sont au même niveau)",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:Reconciliation",
        "path" : "Composition.section",
        "sliceName" : "Reconciliation",
        "short" : "Conciliation proprement dite",
        "definition" : "Conciliation proprement dite : synthèse des médicaments du Bilan Médicamenteux et du Traitement médicamenteux courant avec documentation des écarts",
        "requirements" : "décrire la conciliation proprement dite, à ses différentes étapes de réalisation",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:Reconciliation.title",
        "path" : "Composition.section.title",
        "min" : 1,
        "patternString" : "Fiche de Conciliation des Traitements médicamenteux"
      },
      {
        "id" : "Composition.section:Reconciliation.author",
        "path" : "Composition.section.author",
        "short" : "Who authored the section",
        "requirements" : "L'auteur du contenu de cette section conciliation proprement-dite est celui de la composition.",
        "max" : "0",
        "meaningWhenMissing" : "Pas d'auteur spécifique de cette section de la composition."
      },
      {
        "id" : "Composition.section:Reconciliation.author.reference",
        "path" : "Composition.section.author.reference",
        "min" : 1
      },
      {
        "id" : "Composition.section:Reconciliation.author.type",
        "path" : "Composition.section.author.type",
        "patternUri" : "Practitioner"
      },
      {
        "id" : "Composition.section:Reconciliation.author.identifier",
        "path" : "Composition.section.author.identifier",
        "requirements" : "Les auteurs sont identifiés exclusivement par référence à une ressource profilée fr-practioner-role",
        "max" : "0"
      },
      {
        "id" : "Composition.section:Reconciliation.focus",
        "path" : "Composition.section.focus",
        "requirements" : "La fiche de conciliation ne peut concerner que le patient déclaré comme sujet de cette Conciliation Médicamenteuse (voir élement <*subject*\\> de cette *Composition*\\).",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:Reconciliation.mode",
        "path" : "Composition.section.mode",
        "short" : "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\).",
        "comment" : "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à ***working***\\.",
        "requirements" : "Contraindre une gestion univoque de cette liste de traitements médicamenteux à concilier.",
        "min" : 1,
        "patternCode" : "working",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:Reconciliation.entry",
        "path" : "Composition.section.entry",
        "short" : "Ligne de traitement médicamenteux de la FCT (Fiche de Concilitaion des Traitements médicamenteux)",
        "comment" : "Chaque ligne est associée à une ligne du Bilan Médicamenteux et/ou une ligne du Traitement Médicamenteux courant et est documentée par étape par le pharmacien et par le prescripteur.",
        "requirements" : "Décrire chaque ligne de traitement médicamenteux à concilier, avec ses propriétés de conciliation",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-reconciliation-statement"
            ]
          }
        ],
        "meaningWhenMissing" : "Pas de médicament dans le Bilan Médicaenteux ET pas de médicament prescrit à l'admission : TRES PEU PROBABLE",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section:Reconciliation.section",
        "path" : "Composition.section.section",
        "requirements" : "pas de sous-section dans la fiche de conciliation (toutes les lignes de traitement conciliées sont au même niveau)",
        "max" : "0",
        "mustSupport" : true
      }
    ]
  }
}

```
