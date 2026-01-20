# Additional relatedAction relationship - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Additional relatedAction relationship**

## Extension: Additional relatedAction relationship 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-action-relationship | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrAdditionalActionRelationship |

Extension to specify relationship between action in a RequestGroup

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR RequestGroup For Prescription](StructureDefinition-fr-requestgroup-for-prescription.md)
* Exemples pour ce Extension: [Bundle/MultiLine-Presc-METFORMINE-GLICLAZIDE](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.md) and [Bundle/TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE](Bundle-TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-additional-action-relationship)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-additional-action-relationship.csv), [Excel](StructureDefinition-fr-additional-action-relationship.xlsx), [Schematron](StructureDefinition-fr-additional-action-relationship.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-additional-action-relationship",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-action-relationship",
  "version" : "0.1.0",
  "name" : "FrAdditionalActionRelationship",
  "title" : "Additional relatedAction relationship",
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
  "description" : "Extension to specify relationship between action in a RequestGroup",
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
      "expression" : "RequestGroup.action.retaledAction"
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
        "short" : "Additional relatedAction relationship",
        "definition" : "Extension to specify relationship between action in a RequestGroup. If present, RequestGroup.action.relatedAction.relationship shall be concurrent"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-action-relationship"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-additional-action-relationship-type-value-set"
        }
      }
    ]
  }
}

```
