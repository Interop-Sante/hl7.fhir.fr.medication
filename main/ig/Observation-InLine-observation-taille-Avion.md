# InLine-observation-taille-Avion - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-observation-taille-Avion**

## Example Observation: InLine-observation-taille-Avion

Profil: [FR Core Observation Body Height Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-observation-body-height.html)

**status**: Final

**category**: Vital Signs

**code**: Taille du patient [Longueur] Patient ; Numérique

**subject**: [AVION (sexe non précisé), Date de Naissance :1961-11-25 ( Identifiant interne: 5000001820 (use: usual, ))](Patient-InLine-patient-Avion.md)

**effective**: 2018-10-25 11:06:06+0200

**value**: 189 cm (Détails : code UCUMcm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "InLine-observation-taille-Avion",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"]
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
      "code" : "8302-2"
    }]
  },
  "subject" : {
    "reference" : "Patient/InLine-patient-Avion"
  },
  "effectiveDateTime" : "2018-10-25T11:06:06+02:00",
  "valueQuantity" : {
    "value" : 189,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
