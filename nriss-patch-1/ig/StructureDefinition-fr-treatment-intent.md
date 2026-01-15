# MedicationRequest overall treatment intent - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationRequest overall treatment intent**

## Extension: MedicationRequest overall treatment intent 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-treatment-intent | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FrTeatmentIntent |

The overall intention of the treatment

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-treatment-intent)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-treatment-intent.csv), [Excel](StructureDefinition-fr-treatment-intent.xlsx), [Schematron](StructureDefinition-fr-treatment-intent.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-treatment-intent",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-treatment-intent",
  "version" : "0.1.0",
  "name" : "FrTeatmentIntent",
  "title" : "MedicationRequest overall treatment intent",
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
  "description" : "The overall intention of the treatment",
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
      "expression" : "MedicationRequest"
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
        "short" : "MedicationRequest overall treatment intent",
        "definition" : "The overall intention of the treatment"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-treatment-intent"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "label" : "TreatmentIntent",
        "short" : "Value of overall treatment intent",
        "definition" : "overall intention of treatment Coding. SNOMED CT code minimal value set for overall intention of treatment (extensible)",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "description" : "SNOMED CT encoded treatment overall intent",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-treatment-intent"
        }
      }
    ]
  }
}

```
