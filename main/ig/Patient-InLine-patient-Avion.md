# InLine-patient-Avion - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-patient-Avion**

## Example Patient: InLine-patient-Avion

Profil: [FR Core Patient Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

AVION (sexe non précisé), Date de Naissance :1961-11-25 ( Identifiant interne: 5000001820 (use: usual, ))

-------

| | |
| :--- | :--- |
| Nom alternatif : | JAUNE AVION (Official) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "InLine-patient-Avion",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
  },
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "INTRN",
        "display" : "Identifiant interne"
      }]
    },
    "system" : "https://somehospital.fr/IPP",
    "value" : "5000001820"
  }],
  "name" : [{
    "use" : "usual",
    "family" : "AVION"
  },
  {
    "use" : "official",
    "family" : "AVION",
    "given" : ["JAUNE"]
  }],
  "birthDate" : "1961-11-25"
}

```
