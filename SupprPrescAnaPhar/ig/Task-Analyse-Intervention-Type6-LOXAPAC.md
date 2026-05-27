# Analyse-Intervention-Type6-LOXAPAC - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type6-LOXAPAC**

## Example Task: Analyse-Intervention-Type6-LOXAPAC

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260320165300

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-20 17:59:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 60 gouttes par jour; status = active; intent = order; priority = routine; medication[x] = LOXAPAC 25MG/ML BUV FV30ML; authoredOn = 2026-03-20 16:53:00+0100; groupIdentifier = Presc-20260320165300; note = Prescription textuelle: LOXAPAC 25MG/ML: 60 gouttes par jour](MedicationRequest-InLine-Analyse-Presc-LOXAPAC.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: La seringue fournie avec le loxapac est graduée en mg. Or posologie prescrite en goutte, on a donc un risque d'erreur lors de l'administration. Pouvez-vous represcrire le Loxapac en mg pour limiter le risque d'erreur lors de l'administration ?

> **output****type**: type d'intervention**value**: Optimisation modalités d'administration

> **output****type**: type de problème**value**: Voie/administration inappropriée



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type6-LOXAPAC",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320165300"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-20T17:59:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-LOXAPAC"
    }
  }],
  "output" : [{
    "type" : {
      "text" : "résultat de l'analyse"
    },
    "valueCode" : "INTERVENTION"
  },
  {
    "type" : {
      "text" : "commentaire"
    },
    "valueString" : "La seringue fournie avec le loxapac est graduée en mg. Or posologie prescrite en goutte, on a donc un risque d'erreur lors de l'administration. Pouvez-vous represcrire le Loxapac en mg pour limiter le risque d'erreur lors de l'administration ?"
  },
  {
    "type" : {
      "text" : "type d'intervention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "6",
        "display" : "Optimisation modalités d'administration"
      }]
    }
  },
  {
    "type" : {
      "text" : "type de problème"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "8",
        "display" : "Voie/administration inappropriée"
      }]
    }
  }]
}

```
