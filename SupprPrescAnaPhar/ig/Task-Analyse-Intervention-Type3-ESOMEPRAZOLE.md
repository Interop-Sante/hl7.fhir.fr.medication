# Analyse-Intervention-Type3-ESOMEPRAZOLE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type3-ESOMEPRAZOLE**

## Example Task: Analyse-Intervention-Type3-ESOMEPRAZOLE

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260322161900

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-22 17:57:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = ESOMEPRAZOLE EVO 20MG CPR; authoredOn = 2026-03-22 16:19:00+0100; groupIdentifier = Presc-20260322161900; note = Prescription textuelle: ESOMEPRAZOLE EVO 20MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-ESOMEPRAZOLE.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: L'ESOMEPRAZOLE n'est pas référencé au livret thérapeutique. Proposition de substitution par LANSOPRAZOLE

> **output****type**: type d'intervention**value**: Substitution/Echange

> **output****type**: type de problème**value**: Non conformité aux référentiels / Contre-indication

> **output****type**: proposition**value**: [MedicationRequest : extension = 1 gélule par jour; status = active; intent = proposal; priority = routine; medication[x] = LANSOPRAZOLE EG 15MG GELU; authoredOn = 2026-03-22 17:57:00+0100; groupIdentifier = Presc-20260322161900; note = Prescription textuelle: LANSOPRAZOLE EG 15MG : 1 gélule par jour​](MedicationRequest-InLine-Analyse-Presc-LANSOPRAZOLE.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type3-ESOMEPRAZOLE",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260322161900"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-22T17:57:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-ESOMEPRAZOLE"
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
    "valueString" : "L'ESOMEPRAZOLE n'est pas référencé au livret thérapeutique. Proposition de substitution par LANSOPRAZOLE"
  },
  {
    "type" : {
      "text" : "type d'intervention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "3",
        "display" : "Substitution/Echange"
      }]
    }
  },
  {
    "type" : {
      "text" : "type de problème"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "1",
        "display" : "Non conformité aux référentiels / Contre-indication"
      }]
    }
  },
  {
    "type" : {
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-LANSOPRAZOLE"
    }
  }]
}

```
