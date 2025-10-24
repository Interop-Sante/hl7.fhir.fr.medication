# Medication component Basis of dose - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication component Basis of dose**

## Extension: Medication component Basis of dose 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-basis-of-dose-component | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:FrBasisOfDoseComponent |

When the medication element of the resource in which a dose applies is compound, this extension references the Medication resource component of the medication element which is the Basis of the dose quantity or volume.

When To reference the Medication resource component which is the Basis of the dose quantity or volume

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Medication Request](StructureDefinition-fr-medicationrequest.md)
* Examples for this Extension: [Bundle/Presc-MiniperfCefotaxime-En20min-Pdt3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md), [Bundle/Presc-MiniperfCefotaxime-En20min-Pdt4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.md) and [Bundle/Presc-PerfDobutamine-Qsp40mL](Bundle-Presc-PerfDobutamine-Qsp40mL.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-basis-of-dose-component)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-basis-of-dose-component.csv), [Excel](StructureDefinition-fr-basis-of-dose-component.xlsx), [Schematron](StructureDefinition-fr-basis-of-dose-component.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-basis-of-dose-component",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-basis-of-dose-component",
  "version" : "0.1.0",
  "name" : "FrBasisOfDoseComponent",
  "title" : "Medication component Basis of dose",
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
  "description" : "When the medication element of the resource in which a dose applies is compound, this extension references the Medication resource component of the medication element which is the Basis of the dose quantity or volume.",
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
  "purpose" : "When To reference the Medication resource component which is the Basis of the dose quantity or volume",
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
      "expression" : "Dosage.doseAndRate"
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
        "short" : "Medication component Basis of dose",
        "definition" : "When the medication element of the resource in which a dose applies is compound, this extension references the Medication resource component of the medication element which is the Basis of the dose quantity or volume."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-basis-of-dose-component"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Medication"]
          }
        ]
      }
    ]
  }
}

```
