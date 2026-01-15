# FRMedicationHistorySources - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FRMedicationHistorySources**

## Extension: FRMedicationHistorySources 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-sources | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FRMedicationHistorySources |

Sources des lignes du Bilan Médicamenteux que représente la ressource **Composition** ou de chacune de ses lignes que représente la ressource **MedicationStatement** référencée par l’élément **entry** de la ressource **Composition** (nombre de sources ET le type de source, défini codé avec, si possible, son auteur, défini ès qualités et, si possible, nominativement)

propriétés du sourcing de la ressource MedicationStatement définies selon les règles de gestion du Bilan Médicamenteux

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Medication History Composition](StructureDefinition-fr-medication-history-composition.md) and [FR Medication History MedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medication-history-sources)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medication-history-sources.csv), [Excel](StructureDefinition-fr-medication-history-sources.xlsx), [Schematron](StructureDefinition-fr-medication-history-sources.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-history-sources",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-sources",
  "version" : "0.1.0",
  "name" : "FRMedicationHistorySources",
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
  "description" : "Sources des lignes du Bilan Médicamenteux que représente la ressource *Composition* ou de chacune de ses lignes que représente la ressource *MedicationStatement* référencée par l'élément *entry* de la ressource *Composition* (nombre de sources ET le type de source, défini codé avec, si possible, son auteur, défini ès qualités et, si possible, nominativement)",
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
  "purpose" : "propriétés du sourcing de la ressource MedicationStatement définies selon les règles de gestion du Bilan Médicamenteux",
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
    },
    {
      "type" : "element",
      "expression" : "Composition"
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
        "short" : "Sourcing",
        "definition" : "Sourcing du Bilan Médicamenteux ou de la ligne de traitement du Bilan Médicamenteux",
        "comment" : "Nombre de sources (quel que soit leur nombre) ET la liste de ces sources définies par leur type et, éventuellement, leur auteur identifié ès qualités et, de préférence, également nominativement."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 2
      },
      {
        "id" : "Extension.extension:number",
        "path" : "Extension.extension",
        "sliceName" : "number",
        "label" : "Nombre de sources",
        "short" : "Nombre de sources",
        "definition" : "Nombre de sources consultées  du Bilan Médicamenteux / Nombre de sources condordantes  de chaque ligne du Bilan Médicamenteux.",
        "comment" : "Au niveau du Bilan Médicamenteux, dénombre les sources consultées. Au niveau de chaque ligne de traitement du Bilan Médicamenteux, dénombre les sources concordantes pour la ligne.",
        "requirements" : "Dénombrer les sources du Bilan ou de chacune de ses lignes",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:number.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:number.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "number"
      },
      {
        "id" : "Extension.extension:number.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Valeur du nombre de sources",
        "definition" : "Entier positif",
        "comment" : "Un entier strictement positif.",
        "requirements" : "Dénombrement des sources.",
        "min" : 1,
        "type" : [
          {
            "code" : "positiveInt"
          }
        ],
        "minValuePositiveInt" : 1
      },
      {
        "id" : "Extension.extension:source",
        "path" : "Extension.extension",
        "sliceName" : "source",
        "label" : "source",
        "short" : "source retenue ou concordante",
        "definition" : "Les sources retenues du Bilan médicamenteux, ou concordantes de la ligne de traitement",
        "comment" : "Au moins 1 type de source doit être identifié (cardinalité [1..*]), avec si possible son auteur",
        "requirements" : "Identifier les sources retenues",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:source.extension",
        "path" : "Extension.extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:source.extension:type",
        "path" : "Extension.extension.extension",
        "sliceName" : "type",
        "short" : "type (codé) de la source d'information retenue",
        "definition" : "Type (coding) de la source retenue. Jeu de valeurs ouvert (*extensible*), d'après [le guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante).",
        "comment" : "Le type de source est très varié. C'est la raison pour laquelle le jeu de valeurs attaché à cette valeur codée est extensible.",
        "requirements" : "Le type de la source doit être identifié",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:source.extension:type.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:source.extension:type.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "type"
      },
      {
        "id" : "Extension.extension:source.extension:type.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "short" : "valeur codée du type de source",
        "definition" : "Valeur du type codé (coding) de la source retenue. Attachée au jeu de valeurs ouvert (*extensible*) **fr-medication-history-source-type**, d'après [le guide de la HAS](https://www.has-sante.fr/jcms/c_2736442/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante).",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "description" : "fr-medication-history-source-type",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-medication-history-source-type"
        }
      },
      {
        "id" : "Extension.extension:source.extension:author",
        "path" : "Extension.extension.extension",
        "sliceName" : "author",
        "short" : "Auteur de la source d'informations retenue",
        "definition" : "Auteur de la source d'informations retenue, le patient, un profesionnel de santé ou une personne en relation avec le patient.",
        "comment" : "Il est recommandé d'identifer nominativement l'auteur de la source.\r\nL'auteur peut ne pas être explicitement précisé si le type de source en porte un implicite suffisamment défini (par exemple, *médicaments apportés par le patient*)",
        "requirements" : "Identification explicite de l'auteur, notamment s'il est identifié nominativement.",
        "min" : 0,
        "max" : "1",
        "meaningWhenMissing" : "L'auteur ès qualités est implicite du type de la source. L'auteur n'est pas nominativement identifié."
      },
      {
        "id" : "Extension.extension:source.extension:author.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:source.extension:author.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "author"
      },
      {
        "id" : "Extension.extension:source.extension:author.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "short" : "identification de l'auteur de la source",
        "definition" : "Identification de l'auteur par référence à une ressource fr-patient, fr-pratitioner-role ou fr-relatedPerson",
        "comment" : "Si un auteur est identifié, il doit l'être par référence à une ressource fr-patient, fr-pratitioner-role ou fr-relatedPerson",
        "requirements" : "Un auteur doit être identifié par référence à une ressource fr-patient, fr-pratitioner-role ou fr-relatedPerson",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner-role",
              "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:source.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "source"
      },
      {
        "id" : "Extension.extension:source.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-history-sources"
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
