# code system Interop'Santé - Codes pour le périmètre des notes - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Codes pour le périmètre des notes**

## CodeSystem: code system Interop'Santé - Codes pour le périmètre des notes 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-note-scope-codes | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FrNoteScopeCodes |

 
Le système de codage pour la qualification du périmètre des notes en FHIR. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrNoteScopeCodeValueSet](ValueSet-fr-note-scope-codes-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-note-scope-codes",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-note-scope-codes",
  "version" : "0.1.0",
  "name" : "FrNoteScopeCodes",
  "title" : "code system Interop'Santé - Codes pour le périmètre des notes",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Le système de codage pour la qualification du périmètre des notes en FHIR.",
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
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "PRESCCOM",
      "display" : "Commentaire au niveau de la prescription"
    },
    {
      "code" : "LIPRESCTXT",
      "display" : "Formulation textuelle d'une ligne de prescription par le prescripteur (vs élément .text généré automatiquement)"
    },
    {
      "code" : "LIPRESCIND",
      "display" : "Indication textuelle au niveau de la ligne de prescription"
    },
    {
      "code" : "LIPRESCCOMM",
      "display" : "Commentaire au niveau de la ligne de prescription"
    },
    {
      "code" : "LIPRESCRENSCOMP",
      "display" : "Renseignement complémentaire textuel"
    },
    {
      "code" : "MEDIND",
      "display" : "Indication au niveau du médicament prescrit"
    },
    {
      "code" : "MEDCOM",
      "display" : "Commentaire au niveau du médicament prescrit"
    },
    {
      "code" : "LIPRESCCONDAPPL",
      "display" : "Conditions d’application de la ligne de prescription"
    },
    {
      "code" : "LIPRESCLIBMED",
      "display" : "Libellé textuel du médicament prescrit"
    }
  ]
}

```
