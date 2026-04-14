# Analyse-Validation-Commentaire-LACRIFLUID - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Validation-Commentaire-LACRIFLUID**

## Example Task: Analyse-Validation-Commentaire-LACRIFLUID

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260318093300

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-18 11:33:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 1 goutte 2 fois par jour; status = active; intent = order; priority = routine; medication[x] = LACRIFLUID 0,13% CY UNIDOS; authoredOn = 2026-03-18 09:33:00+0100; groupIdentifier = Presc-20260318093300; note = Prescription textuelle: LACRIFLUID 0,13% CY UNIDOS: 1 goutte 2 fois par jour​](MedicationRequest-InLine-Analyse-Presc-LACRIFLUID.md) |

> **output****type**: résultat de l'analyse**value**: VALIDATION

> **output****type**: commentaire**value**: Le LACRIFLUID n'est pas référencé au livret thérapeutique. La spécialité référencée est le CELLUVISC. Cependant, le CELLUVISC est en cours de réapprovisionnement. La prescription de LACRIFLUID est validée en traitement personnel jusqu'à réapprovisionnement du CELLUVISC. Proposition jointe avec du CELLUVISC lorsque celui-ci sera disponible

> **output****type**: proposition**value**: [MedicationRequest : extension = 1 goutte 3 fois par jour; status = active; intent = proposal; priority = routine; medication[x] = CELLUVISC 4MG COLLY UNIDOS; authoredOn = 2026-03-18 11:33:00+0100; groupIdentifier = Presc-20260318093300; note = Prescription textuelle: CELLUVISC 4MG COLLY UNIDOS: 1 goutte 3 fois par jour​](MedicationRequest-InLine-Analyse-Presc-CELLUVISC.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Validation-Commentaire-LACRIFLUID",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260318093300"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-18T11:33:00+01:00",
  "performerType" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
      "code" : "21",
      "display" : "Pharmacien"
    }]
  }],
  "owner" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "input" : [{
    "type" : {
      "text" : "ligne de prescription analysée"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-LACRIFLUID"
    }
  }],
  "output" : [{
    "type" : {
      "text" : "résultat de l'analyse"
    },
    "valueCode" : "VALIDATION"
  },
  {
    "type" : {
      "text" : "commentaire"
    },
    "valueString" : "Le LACRIFLUID n'est pas référencé au livret thérapeutique. La spécialité référencée est le CELLUVISC. Cependant, le CELLUVISC est en cours de réapprovisionnement. La prescription de LACRIFLUID est validée en traitement personnel jusqu'à réapprovisionnement du CELLUVISC. Proposition jointe avec du CELLUVISC lorsque celui-ci sera disponible"
  },
  {
    "type" : {
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-CELLUVISC"
    }
  }]
}

```
