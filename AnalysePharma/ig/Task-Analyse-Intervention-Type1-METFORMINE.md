# Analyse-Intervention-Type1-METFORMINE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type1-METFORMINE**

## Example Task: Analyse-Intervention-Type1-METFORMINE

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260323112700

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-23 11:46:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 1 comprimé 3 fois par jour; status = active; intent = order; priority = routine; medication[x] = METFORMINE EG 500MG CPR; authoredOn = 2026-03-23 11:27:00+0100; groupIdentifier = Presc-20260323112700; note = Prescription textuelle: METFORMINE EG 500MG : 1 comprimé 3 fois par jour​](MedicationRequest-InLine-Analyse-Presc-METFORMINE.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: La patiente souffre égaleemnt d'hypertension mais aucun médicament hypertenseur n'a été prescrit à l'hospitalisation.

> **output****type**: type d'intervention**value**: Ajout (prescription nouvelle)

> **output****type**: type de problème**value**: Indication non traitée



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type1-METFORMINE",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260323112700"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-23T11:46:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-METFORMINE"
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
    "valueString" : "La patiente souffre égaleemnt d'hypertension mais aucun médicament hypertenseur n'a été prescrit à l'hospitalisation."
  },
  {
    "type" : {
      "text" : "type d'intervention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "1",
        "display" : "Ajout (prescription nouvelle)"
      }]
    }
  },
  {
    "type" : {
      "text" : "type de problème"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "2",
        "display" : "Indication non traitée"
      }]
    }
  }]
}

```
