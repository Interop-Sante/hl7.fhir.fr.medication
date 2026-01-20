# FR RequestGroup For Prescription - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR RequestGroup For Prescription**

## Resource Profile: FR RequestGroup For Prescription 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-requestgroup-for-prescription | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRRequestGroupForPrescription |

 
RequestGroup for expressing links between lines of a prescription 

**Utilisations:**

* Ce Profil nest utilisé par aucun profil dans ce guide dimplémentation

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-requestgroup-for-prescription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-requestgroup-for-prescription.csv), [Excel](StructureDefinition-fr-requestgroup-for-prescription.xlsx), [Schematron](StructureDefinition-fr-requestgroup-for-prescription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-requestgroup-for-prescription",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-requestgroup-for-prescription",
  "version" : "0.1.0",
  "name" : "FRRequestGroupForPrescription",
  "title" : "FR RequestGroup For Prescription",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "RequestGroup for expressing links between lines of a prescription",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RequestGroup",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RequestGroup",
        "path" : "RequestGroup"
      },
      {
        "id" : "RequestGroup.groupIdentifier",
        "path" : "RequestGroup.groupIdentifier",
        "min" : 1
      },
      {
        "id" : "RequestGroup.action.relatedAction.extension",
        "path" : "RequestGroup.action.relatedAction.extension",
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
        "id" : "RequestGroup.action.relatedAction.extension:additionalRelationship",
        "path" : "RequestGroup.action.relatedAction.extension",
        "sliceName" : "additionalRelationship",
        "short" : "Additional relatedAction relationship",
        "definition" : "If the extension is used, RequestGroup.action.relatedAction.relationship shall be concurrent",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-action-relationship"
            ]
          }
        ]
      }
    ]
  }
}

```
