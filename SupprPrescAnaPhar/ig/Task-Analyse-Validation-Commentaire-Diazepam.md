# Analyse-Validation-Commentaire-Diazepam - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Validation-Commentaire-Diazepam**

## Example Task: Analyse-Validation-Commentaire-Diazepam

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260317103300

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-17 14:33:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 1 comprimé toutes les 6 heures; status = active; intent = order; priority = routine; medication[x] = DIAZEPAM 10 mg (VALIUM) Comprimé bisécable; authoredOn = 2026-03-17 10:33:00+0100; groupIdentifier = Presc-20260317103300; note = Prescription textuelle: DIAZEPAM 10 mg comprimé bisécable (VALIUM®): 1 comprimé toutes les 6 heures​](MedicationRequest-InLine-Analyse-Presc-Diazepam.md) |

> **output****type**: résultat de l'analyse**value**: VALIDATION

> **output****type**: commentaire**value**: Le diazepam est prescrit depuis plus de 6 mois, il serait judicieux de commencer à proposer une diminution des doses



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Validation-Commentaire-Diazepam",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260317103300"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-17T14:33:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-Diazepam"
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
    "valueString" : "Le diazepam est prescrit depuis plus de 6 mois, il serait judicieux de commencer à proposer une diminution des doses"
  }]
}

```
