# Medication component which is the vehicle of the compound Medication - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication component which is the vehicle of the compound Medication**

## Extension: Medication component which is the vehicle of the compound Medication 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-is-vehicle | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrIsVehicle |

Medication component which is the vehicle of the compound Medication

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Medication Compound](StructureDefinition-fr-medication-compound.md)
* Exemples pour ce Extension: [Bundle/Presc-MiniperfCefotaxime-En20min-Pdt3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md), [Bundle/Presc-PerfDobutamine-Qsp40mL](Bundle-Presc-PerfDobutamine-Qsp40mL.md), [Bundle/Presc-PerfGl-NaCl-KCl-500ml](Bundle-Presc-PerfGl-NaCl-KCl-500ml.md) and [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-is-vehicle)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-is-vehicle.csv), [Excel](StructureDefinition-fr-is-vehicle.xlsx), [Schematron](StructureDefinition-fr-is-vehicle.sch) 

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-is-vehicle",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-is-vehicle",
  "version" : "0.1.0",
  "name" : "FrIsVehicle",
  "title" : "Medication component which is the vehicle of the compound Medication",
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
  "description" : "Medication component which is the vehicle of the compound Medication",
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
      "expression" : "Medication.ingredient"
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
        "short" : "Medication component which is the vehicle of the compound Medication",
        "definition" : "Medication component which is the vehicle of the compound Medication"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-is-vehicle"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
