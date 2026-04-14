# Analyse-Intervention-Type5-DOSTINEX - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type5-DOSTINEX**

## Example Task: Analyse-Intervention-Type5-DOSTINEX

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260320163100

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-20 17:26:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 1 comprimé par semaine; status = active; intent = order; priority = routine; medication[x] = DOSTINEX 0,5MG CPR; authoredOn = 2026-03-20 16:31:00+0100; groupIdentifier = Presc-20260320163100; note = Prescription textuelle: DOSTINEX 0,5MG: 1 comprimé par semaine](MedicationRequest-InLine-Analyse-Presc-DOSTINEX.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Au cours d'un traitement à long terme de Dostinex qui est indiqué dans l'adénome hypophysaire qui secrète prolactine, des troubles fibrotiques peuvent apparaître. Il convient donc de rechercher régulièrement chez les patients des manifestations éventuelles de fibrose progressive.

> **output****type**: type d'intervention**value**: Suivi thérapeutique

> **output****type**: type de problème**value**: Effet indésirable



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type5-DOSTINEX",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320163100"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-20T17:26:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-DOSTINEX"
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
    "valueString" : "Au cours d'un traitement à long terme de Dostinex qui est indiqué dans l'adénome hypophysaire qui secrète prolactine, des troubles fibrotiques peuvent apparaître. Il convient donc de rechercher régulièrement chez les patients des manifestations éventuelles de fibrose progressive."
  },
  {
    "type" : {
      "text" : "type d'intervention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "5",
        "display" : "Suivi thérapeutique"
      }]
    }
  },
  {
    "type" : {
      "text" : "type de problème"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "7",
        "display" : "Effet indésirable"
      }]
    }
  }]
}

```
