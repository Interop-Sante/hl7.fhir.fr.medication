# InLine-Observation-poids-Avion - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Observation-poids-Avion**

## Example Observation: InLine-Observation-poids-Avion

Profil: [FR Core Observation Body Weight Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-observation-body-weight.html)

**status**: Final

**category**: Vital Signs

**code**: Poids corporel [Masse] Patient ; Numérique

**subject**: [AVION (sexe non précisé), Date de Naissance :1961-11-25 ( Identifiant interne: 5000001820 (use: usual, ))](Patient-InLine-patient-Avion.md)

**effective**: 2018-06-21 16:05:10+0200

**value**: 120 kg (Détails : code UCUMkg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "InLine-Observation-poids-Avion",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "29463-7"
    }]
  },
  "subject" : {
    "reference" : "Patient/InLine-patient-Avion"
  },
  "effectiveDateTime" : "2018-06-21T16:05:10+02:00",
  "valueQuantity" : {
    "value" : 120,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
