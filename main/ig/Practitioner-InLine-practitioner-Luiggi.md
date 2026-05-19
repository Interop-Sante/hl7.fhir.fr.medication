# InLine-practitioner-Luiggi - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-practitioner-Luiggi**

## Example Practitioner: InLine-practitioner-Luiggi

Profil: [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-practitioner.html)

**identifier**: Employee number/P082443

**name**: DENIS LUIGGI , DENIS LUIGGI (Official)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "InLine-practitioner-Luiggi",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "EI"
      }]
    },
    "system" : "https://somehospital.fr/EI",
    "value" : "P082443"
  }],
  "name" : [{
    "use" : "usual",
    "family" : "LUIGGI",
    "given" : ["DENIS"]
  },
  {
    "use" : "official",
    "family" : "LUIGGI",
    "given" : ["DENIS"]
  }]
}

```
