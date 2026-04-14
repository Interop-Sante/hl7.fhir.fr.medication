# Analyse-Intervention-Type3-Remplacement1pour2-INEGY - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type3-Remplacement1pour2-INEGY**

## Example Task: Analyse-Intervention-Type3-Remplacement1pour2-INEGY

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260319151900

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-19 15:47:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

> **input****type**: ligne de prescription analysée**value**: [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = SIMVASTATINE EVO 20MG CPR; authoredOn = 2026-03-19 15:19:00+0100; groupIdentifier = Presc-20260319151900; note = Prescription textuelle: SIMVASTATINE 20MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-SIMVASTATINE.md)

> **input****type**: ligne de prescription analysée**value**: [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = EZETIMIBE ARW 10MG CPR; authoredOn = 2026-03-19 15:19:00+0100; groupIdentifier = Presc-20260319151900; note = Prescription textuelle: EZETIMIBE 10MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-EZETIMIBE.md)

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: La SIMVASTATINE et l'EZEMITIBE ne sont pas référencées au livret thérapeutique. Proposition de substitution par INEGY

> **output****type**: type d'intervention**value**: Substitution/Echange

> **output****type**: type de problème**value**: Non conformité aux référentiels / Contre-indication

> **output****type**: proposition**value**: [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = proposal; priority = routine; medication[x] = INEGY 10MG/20MG CPR; authoredOn = 2026-03-19 15:47:00+0100; groupIdentifier = Presc-20260319151900; note = Prescription textuelle: INEGY 10/20 : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-INEGY.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type3-Remplacement1pour2-INEGY",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260319151900"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-19T15:47:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-SIMVASTATINE"
    }
  },
  {
    "type" : {
      "text" : "ligne de prescription analysée"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-EZETIMIBE"
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
    "valueString" : "La SIMVASTATINE et l'EZEMITIBE ne sont pas référencées au livret thérapeutique. Proposition de substitution par INEGY"
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-INEGY"
    }
  }]
}

```
