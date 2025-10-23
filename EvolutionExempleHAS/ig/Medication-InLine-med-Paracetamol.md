# InLine-med-Paracetamol - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-med-Paracetamol**

## Example Medication: InLine-med-Paracetamol

Profil: [FR Medication](StructureDefinition-fr-medication.md)

**code**: PARACETAMOL



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "InLine-med-Paracetamol",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
        "code" : "100000090270",
        "display" : "paracétamol"
      }
    ],
    "text" : "PARACETAMOL"
  }
}

```
