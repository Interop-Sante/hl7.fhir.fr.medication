# Analyse-Intervention-Demande-Substitution - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Demande-Substitution**

## Example Task: Analyse-Intervention-Demande-Substitution

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-4254

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-02-12 17:35:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : status = active; intent = order; priority = routine; medication[x] = NEFOPAM VIA 20MG/2ML INJ AMP; authoredOn = 2026-02-12 17:30:00+0100; groupIdentifier = Presc-4254](MedicationRequest-InLine-Analyse-Presc-NEFOPAM.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: L'utilisation du Nefopam est déconseillée chez le sujet âgé (plus de 75ans) à cause des effets anticholinergiques du nefopam. Pouvez-vous prescrire un autre antalgique?

> **output****type**: type d'intervention**value**: Substitution/Echange

> **output****type**: type de problème**value**: Interaction - Association déconseillée



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Demande-Substitution",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    ]
  },
  "groupIdentifier" : {
    "value" : "Presc-4254"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-02-12T17:35:00+01:00",
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
        "reference" : "MedicationRequest/InLine-Analyse-Presc-NEFOPAM"
      }
    }
  ],
  "output" : [
    {
      "type" : {
        "text" : "résultat de l'analyse"
      },
      "valueCode" : "INTERVENTION"
    },
    {
      "type" : {
        "text" : "commentaire"
      },
      "valueString" : "L'utilisation du Nefopam est déconseillée chez le sujet âgé (plus de 75ans) à cause des effets anticholinergiques du nefopam. Pouvez-vous prescrire un autre antalgique?"
    },
    {
      "type" : {
        "text" : "type d'intervention"
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "code" : "3",
            "display" : "Substitution/Echange"
          }
        ]
      }
    },
    {
      "type" : {
        "text" : "type de problème"
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "code" : "6.3",
            "display" : "Interaction - Association déconseillée"
          }
        ]
      }
    }
  ]
}

```
