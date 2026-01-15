# FR Current Medication Composition - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Current Medication Composition**

## Resource Profile: FR Current Medication Composition 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-current-medication-composition | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FRCurrentMedicationComposition |

 
Profil de la ressource Composition du traitement médicamenteux courant. 

 
Ce profil est utilisé pour la ressource**Composition**de tout document FHIR**Traitement médicamenteux courant**. Par exemple, celui résultant de la prescription d’admission intitulé**Ordonnance Médicale d’Admission**(OMA). 

**Utilisations:**

* Dérivé de ce Profil: [FR On Admission Medication Composition](StructureDefinition-fr-on-admission-medication-composition.md)
* Référer à ce Profil: [FR Medication Reconciliation Composition](StructureDefinition-fr-medication-reconciliation-composition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-current-medication-composition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-current-medication-composition.csv), [Excel](StructureDefinition-fr-current-medication-composition.xlsx), [Schematron](StructureDefinition-fr-current-medication-composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-current-medication-composition",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-current-medication-composition",
  "version" : "0.1.0",
  "name" : "FRCurrentMedicationComposition",
  "title" : "FR Current Medication Composition",
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
  "description" : "Profil de la ressource Composition du traitement médicamenteux courant.",
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
  "purpose" : "Ce profil est utilisé pour la ressource *Composition* de tout document FHIR *Traitement médicamenteux courant*\\. Par exemple, celui résultant de la prescription d'admission intitulé *Ordonnance Médicale d'Admission* (OMA).",
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
        "short" : "Traitement Médicamenteux Courant",
        "definition" : "Traitement Médicamenteux Courant : liste des lignes de traitement médicamenteux courant hospitalier.",
        "comment" : "En général, une ligne par médicament prescrit en cours. Des différences de construction des lignes peuvent exister d'un logiciel à un autre, liées à la structuration de la posologie (nombre de doses unitaires par période, quantité des doses unitaires, horaire des doses unitaires). Le jeu de tests de prescriptions intiales de référence permet l'évaluation de la capacité des logiciels à supporter la structuration de posologies complexes."
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
        "short" : "Type de liste des Traitements Médicamenteux Courants",
        "definition" : "Le contexte de la liste des Traitements Médicamenteux Courants (sans précision, OMA, sortie, transfert) ; jeu de valeurs extensible",
        "comment" : "Tous les types de liste des Traitements Médicamenteux Courants n'ont pas de code LOINC. Le contexte de la liste des Traitements médicamenteux Courant peut dépasser le périmètre du jeu de valeurs associé, binding *extensible*\\.",
        "requirements" : "Préciser le contexte de réalisation de la liste des Traitements Médicamenteux Courants",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "description" : "Type of a Current Medciation.",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-current-medication-document-type"
        }
      },
      {
        "id" : "Composition.subject",
        "path" : "Composition.subject",
        "short" : "Le patient",
        "definition" : "Le patient auquel se rapporte ce document Traitement Médicamenteux Courant.",
        "comment" : "Un Traitement Médicamenteux Courant se rapporte obligatoirement à un patient, référencé en tant que ressource *Patient* profilée *fr-patient*\\.",
        "requirements" : "Identifier le patient auquel se rapporte obligatoirement un Traitement Médicamenteux Courant, patient référencé en tant que ressource *Patient* profilée *fr-patient*\\.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"
            ]
          }
        ],
        "meaningWhenMissing" : "Patient obligatoire.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.subject.type",
        "path" : "Composition.subject.type",
        "min" : 1,
        "patternUri" : "Patient"
      },
      {
        "id" : "Composition.encounter",
        "path" : "Composition.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter"
            ]
          }
        ]
      },
      {
        "id" : "Composition.date",
        "path" : "Composition.date",
        "short" : "Date de détermination du Traitement Médicamenteux Courant",
        "definition" : "Date de détermination du Traitementeux Courant par son auteur (cf. element *author*\\).  //The composition editing time, when the composition was last logically changed by the author."
      },
      {
        "id" : "Composition.author",
        "path" : "Composition.author",
        "short" : "Le prescripteur",
        "definition" : "Le prescripteur de ce Traitement Médicamenteux Courant, défini ès qualités (ressource *PractitionerRole* profilée *fr-practitioner-role*\\) ET, de préférence, aussi nominativement (la ressource *PractionerRole* profilée *fr-practitioner-role-profession* instanciée réfère une instance de ressource *Practioner* profilée *fr-practitioner*\\).",
        "comment" : "Il est vivement recommandé d'identifier nominativement les auteurs : la ressource *PractitionerRole* profilée *fr-practitioner-role-profession* instanciée (ex: Médecin) réfère une instance de ressource *Practitioner* profilée *fr-practitioner* (ex: Dr UNTEL).",
        "requirements" : "Identifier le prescriteur.",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role"
            ]
          }
        ],
        "meaningWhenMissing" : "Auteur obligatoire",
        "mustSupport" : true
      },
      {
        "id" : "Composition.title",
        "path" : "Composition.title",
        "patternString" : "Traitement Médicamenteux Courant"
      },
      {
        "id" : "Composition.attester.party",
        "path" : "Composition.attester.party",
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
        "id" : "Composition.section",
        "path" : "Composition.section",
        "short" : "Liste des médicaments prescrits",
        "definition" : "La liste des lignes de prescription médicamenteuse en cours.",
        "comment" : "Une ligne par <*entry*\\>, de médicament prescrit, avec sa posologie.",
        "requirements" : "Fournir la liste des prescriptions médicamenteuses en cours.",
        "min" : 1,
        "max" : "1",
        "meaningWhenMissing" : "Section obligatoire, éventuellement vide si aucun traitement médicamenteux en cours.",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section.title",
        "path" : "Composition.section.title",
        "patternString" : "Liste des médicaments prescrits en cours"
      },
      {
        "id" : "Composition.section.author",
        "path" : "Composition.section.author",
        "requirements" : "L'auteur de la section est celui de l'ensemble du document",
        "max" : "0"
      },
      {
        "id" : "Composition.section.focus",
        "path" : "Composition.section.focus",
        "definition" : "Le sujet sur lequel porte la *section*\\, quand ce n'est pas celui sur lequel porte la *Composition*\\.",
        "comment" : "Le Traitement Médicamenteux Courant ne concerne que le patient courant, sujet de la *Composition*\\.\r\n- La manière de décrire pour le nouveau-né ou le nourisson, les substances prises par sa mère qu'il absorberait par allaitement maternel, n'a pas été explicitement définie. Il s'agirait, de toute façon et sous réserve que cette substance doive figurer dans le Traitement Médicamenteux Courant du bébé, d'une <*entry*\\> de cette section, une ressource *MedicationStatement* profilée *fr-current-medication-medication-statement* dont il serait précisé qu'elle provient de l'allaitement maternel. Cas d'usage non détaillé.",
        "requirements" : "Le Traitement Médicamenteux Courant ne concerne que le patient auquel se rapporte ce document (voir element *subject* de la *Composition*\\).",
        "max" : "0"
      },
      {
        "id" : "Composition.section.mode",
        "path" : "Composition.section.mode",
        "short" : "Liste courante exhaustive",
        "definition" : "Liste courante exhaustive à sa date de réalisation (cf. element *date*\\) par son auteur (cf. element *author*\\).",
        "comment" : "This element is labeled as a modifier because a change list must not be misunderstood as a complete list. **Dans ce profil**\\, sa valeur est fixée à ***working***\\.",
        "requirements" : "Contraindre une gestion univoque de cette liste représentant le Bilan Médicamenteux.",
        "min" : 1,
        "patternCode" : "working",
        "mustSupport" : true
      },
      {
        "id" : "Composition.section.orderedBy",
        "path" : "Composition.section.orderedBy",
        "short" : "Ordre des lignes du Traitement Médicamenteux Courant",
        "definition" : "L'ordre des lignes de traitement du Traitement Médicamenteux Courant, c'est à dire, l'ordre des <*entry*\\> de son unique <*section*\\>.",
        "comment" : "Il est recommandé d'utiliser la valeur codée ***user*** si l'ordre des <*entry*\\> provient d'un choix de l'auteur à travers l'IHM de son logiciel qui est conservé dans la génération de la ressource Traitement Médicamenteux Courant. Car, rappel des spécifications HL7-FHIR : *If there is no order specified, the order is unknown, though there may still be some order.*"
      },
      {
        "id" : "Composition.section.entry",
        "path" : "Composition.section.entry",
        "short" : "La ligne de traitement médicamenteux",
        "definition" : "Référence à la ligne de traitement médicamenteux courant, ressource *MedicationStatement* profilée *fr-current-medication-medication-statement*\\.",
        "comment" : "0 à n lignes de traitement médicamenteux dans le Traitement Médicamenteux Courant.",
        "requirements" : "Porter les lignes du traitement médicamenteux courant.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-current-medication-medicationstatement"
            ]
          }
        ],
        "meaningWhenMissing" : "Absence de traitement médicamenteux en cours (aucune prescription en cours ou toutes sont terminées ou ont été arrêtées).",
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
