# Additional values for when element - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Additional values for when element**

## Extension: Additional values for when element 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-when-values | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrAdditionalWhenValues |

Additional values for Timing.repeat.when

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-additional-when-values)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-additional-when-values.csv), [Excel](StructureDefinition-fr-additional-when-values.xlsx), [Schematron](StructureDefinition-fr-additional-when-values.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-additional-when-values",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-when-values",
  "version" : "0.1.0",
  "name" : "FrAdditionalWhenValues",
  "title" : "Additional values for when element",
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
  "description" : "Additional values for Timing.repeat.when",
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
      "expression" : "Dosage.timing.repeat"
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
        "short" : "Additional values for when element",
        "definition" : "Specifies additional codes for time period of occurrence that are not in the event-timing value set"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-when-values"
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
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-additional-when-codes"
        }
      }
    ]
  }
}

```
