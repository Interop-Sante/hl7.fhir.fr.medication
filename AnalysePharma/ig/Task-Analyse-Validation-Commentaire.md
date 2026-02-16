# Analyse-Validation-Commentaire - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Validation-Commentaire**

## Example Task: Analyse-Validation-Commentaire

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-3657

**status**: Completed

**intent**: proposal

**authoredOn**: 2025-07-23 10:56:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = une gélule le soir (à 20h) pendant huit jours; status = active; intent = order; priority = routine; medication[x] = MORPHINE LP 10mg gélule microgranulé à libération prolongée; authoredOn = 2025-07-23 10:33:00+0100; groupIdentifier = Presc-3657; note = Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours](MedicationRequest-InLine-Analyse-Presc-Morphine.md) |

> **output****type**: résultat de l'analyse**value**: VALIDATION

> **output****type**: commentaire**value**: Dose totale de morphine pour ce patient proche de la limite haute recommandée



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Validation-Commentaire",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    ]
  },
  "groupIdentifier" : {
    "value" : "Presc-3657"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2025-07-23T10:56:00+01:00",
  "performerType" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
          "code" : "21",
          "display" : "Pharmacien"
        }
      ]
    }
  ],
  "owner" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "input" : [
    {
      "type" : {
        "text" : "ligne de prescription analysée"
      },
      "valueReference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-Morphine"
      }
    }
  ],
  "output" : [
    {
      "type" : {
        "text" : "résultat de l'analyse"
      },
      "valueCode" : "VALIDATION"
    },
    {
      "type" : {
        "text" : "commentaire"
      },
      "valueString" : "Dose totale de morphine pour ce patient proche de la limite haute recommandée"
    }
  ]
}

```
