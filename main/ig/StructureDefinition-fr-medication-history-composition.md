# FR Medication History Composition - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Medication History Composition**

## Resource Profile: FR Medication History Composition 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-composition | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRMedicationHistoryComposition |

 
Profil de la ressource Composition du Bilan Médicamenteux. Medication Assessment Composition resource profile. 

 
Ce profil est utilisé pour la Composition du Bundle portant le document FHIR Bilan Médicamenteux. 

**Utilisations:**

* Référer à ce Profil: [FR Medication Reconciliation Composition](StructureDefinition-fr-medication-reconciliation-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication-history-composition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication-history-composition.csv), [Excel](StructureDefinition-fr-medication-history-composition.xlsx), [Schematron](StructureDefinition-fr-medication-history-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-history-composition",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-composition",
  "version" : "0.1.0",
  "name" : "FRMedicationHistoryComposition",
  "title" : "FR Medication History Composition",
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
  "description" : "Profil de la ressource Composition du Bilan Médicamenteux.\nMedication Assessment Composition resource profile.",
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
  "purpose" : "Ce profil est utilisé pour la Composition du Bundle portant le document FHIR Bilan Médicamenteux.",
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
        "short" : "Bilan Médicamenteux",
        "definition" : "Bilan Médicamenteux : liste des traitements médicamenteux du patient avant son entrée à l'hôpital.",
        "comment" : "Ce Bilan Médicamenteux est la première étape de la Conciliation Médicamenteuse. Voir [le guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante)."
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
        "id" : "Composition.type",
        "path" : "Composition.type",
        "requirements" : "Coder le contexte *Bilan Médicamenteux* de cette Composition.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.type.coding",
        "path" : "Composition.type.coding",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://loinc.org",
          "code" : "10160-0",
          "display" : "History of Medication use Narrative"
        }
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "short" : "Le patient",
        "definition" : "Le patient auquel se rapporte ce document Bilan Médicamenteux.",
        "comment" : "Un Bilan Médicamenteux se rapporte obligatoirement à un patient, référencé en tant que ressource *Patient* profilée *fr-patient*\\.",
        "requirements" : "Identifier le patient auquel se rapporte obligatoirement un Bilan Médicamenteux, patient référencé en tant que ressource *Patient* profilée *fr-patient*\\.",
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
        "id" : "Composition.date",
        "path" : "Composition.date",
        "short" : "Date de réalisation du Bilan Médicamenteux",
        "definition" : "Date de réalisation du Bilan Médicamenteux par son auteur. //The composition editing time, when the composition was last logically changed by the author.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "short" : "Auteur du Bilan Médicamenteux",
        "definition" : "Auteur du Bilan Médicamenteux, défini ès qualités (ressource *FrPractionerRoleProfession*\\) ET, de préférence, aussi nominativement (la ressource *FrPractionerRoleProfession* instanciée réfère une instance de ressource *FrPractioner*\\).",
        "comment" : "Il est vivement recommandé d'identifier nominativement le ou les auteurs : la ressource *FrPractionerRoleProfession* instanciée (ex: Pharmacien) réfère une instance de ressource *FrPractioner* (ex: Dr UNTEL).",
        "requirements" : "Identifer le ou les auteurs du Bilan Médicamenteux.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Composition.title",
        "path" : "Composition.title",
        "requirements" : "titre de ce document en français",
        "fixedString" : "Bilan médicamenteux"
      },
      {
        "id" : "Composition.attester",
        "path" : "Composition.attester",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Composition.attester.party",
        "path" : "Composition.attester.party",
        "definition" : "Professionnel de santé défini ès qualités (ressource *FrPractionerRoleProfession*\\) ET, de préférence, aussi nominativement (la ressource *FrPractionerRoleProfession* instanciée réfère une instance de ressource *FrPractioner*\\).",
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
        "id" : "Composition.attester.party.identifier",
        "path" : "Composition.attester.party.identifier",
        "requirements" : "Identification du professionnel de santé uniquement par référence à une ressource *PractitionerRole* profilée *fr-practitioner-role*\\.",
        "max" : "0"
      },
      {
        "id" : "Composition.section",
        "path" : "Composition.section",
        "short" : "Les lignes de traitement médicamenteux",
        "definition" : "Les lignes de traitement médicamenteux du Bilan, 1 ligne par <*entry*\\>",
        "comment" : "1 seule section dans le BIlan Médicamenteux, le Bilan",
        "requirements" : "Composition univoque de la ressource *Bilan Médicamenteux*",
        "min" : 1,
        "max" : "1",
        "meaningWhenMissing" : "absence de traitement médicamenteux avant l'hospitalisation",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section.extension",
        "path" : "Composition.section.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Composition.section.extension:compositionSourcing",
        "path" : "Composition.section.extension",
        "sliceName" : "compositionSourcing",
        "short" : "sourcing du Bilan Médicamenteux",
        "definition" : "sources consultées pour réaliser le Bilan Médicamenteux",
        "comment" : "Ce sourcing est obligatoire : il n'est pas possible de réaliser un Bilan Médicamenteux sans jamais consulter aucune source.",
        "requirements" : "Décrire obligatoirement les sources consultées.",
        "min" : 0,
        "max" : "*",
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
        "id" : "Composition.section.title",
        "path" : "Composition.section.title",
        "fixedString" : "Liste des médicaments"
      },
      {
        "id" : "Composition.section.code.coding",
        "path" : "Composition.section.code.coding",
        "fixedCoding" : {
          "system" : "http://loinc.org",
          "code" : "10160-0",
          "display" : "History of Medication use Narrative"
        }
      },
      {
        "id" : "Composition.section.author",
        "path" : "Composition.section.author",
        "requirements" : "L'auteur de la section est celui de l'ensemble du document",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section.focus",
        "path" : "Composition.section.focus",
        "definition" : "Le sujet sur lequel porte la *section*\\, quand ce n'est pas celui sur lequel porte la *Composition*\\.",
        "comment" : "Le Blian Médicamenteux ne concerne que le patient courant, sujet de la *Composition*\\.\r\n- La manière de décrire pour le nouveau-né ou le nourisson, les substances prises par sa mère qu'il absorberait par allaitement maternel, n'a pas été explicitement définie. Il s'agirait, de toute façon, si cette substance devait figurer dans le Bilan Médicamenteux du bébé, d'une <*entry*\\> de cette section, une ressource *MedicationStatement* profilée *fr_medication-history-medication-statement* dont il serait précisé qu'elle provient de l'allaitement maternel. Cas d'usage non détaillé.",
        "requirements" : "Le Blian Médicamenteux ne concerne que le patient courant (voir élément *subject* de la *Composition*\\).",
        "max" : "0",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section.mode",
        "path" : "Composition.section.mode",
        "short" : "Liste courante exhaustive",
        "definition" : "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\).",
        "comment" : "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à *working*.",
        "requirements" : "Contraindre une gestion univoque de cette liste représentant le Bilan Médicamenteux.",
        "min" : 1,
        "patternCode" : "working",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section.orderedBy",
        "path" : "Composition.section.orderedBy",
        "short" : "Ordre des lignes du Bilan Médicamenteux",
        "definition" : "L'ordre des lignes de traitement du Bilan Médicamenteux, c'est à dire, l'ordre des <*entry*\\> de son unique <*section*\\>.",
        "comment" : "Il est recommandé d'utiliser la valeur codée *user* si l'ordre des <*entry*\\> provient d'un choix de l'auteur à travers l'IHM de son logiciel qui est conservé dans la génération de la ressource Bilan Médicamenteux. Car, rappel des spécifications HL7-FHIR : *If there is no order specified, the order is unknown, though there may still be some order.*"
      },
      {
        "id" : "Composition.section.entry",
        "path" : "Composition.section.entry",
        "short" : "La ligne de traitement médicamenteux",
        "definition" : "Référence à la ligne de traitement médicamenteux, ressource *MedicationStatement* profilée *fr-medication-history-medication-statement*",
        "comment" : "0 à n lignes de traitement médicamenteux dans le Bilan.",
        "requirements" : "Porter les lignes de traitement médicamenteux du Bilan",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-medicationstatement"
            ]
          }
        ],
        "meaningWhenMissing" : "Aucun traitement avant l'hospitalisation",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section.section",
        "path" : "Composition.section.section",
        "max" : "0"
      }
    ]
  }
}

```
