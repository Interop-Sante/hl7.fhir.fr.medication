# Analyse-Intervention-Type5-INNOHEP - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type5-INNOHEP**

## Example Task: Analyse-Intervention-Type5-INNOHEP

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260320173100

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-20 18:38:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = Deux seringues toutes les 12 heures; status = active; intent = order; priority = routine; medication[x] = NNOHEP 2 500 UI anti-Xa/0,25 ml, solution injectable en seringue préremplie - 10 seringue(s) préremplie(s) en verre de 0,25 ml; authoredOn = 2026-03-20 17:31:00+0100; groupIdentifier = Presc-20260320173100; note = Prescription textuelle: INNOHEP 2 500 UI anti-Xa/0,25 ml : Deux seringues préremplies toutes les 12 heures](MedicationRequest-InLine-Analyse-Presc-INNOHEP.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Il n'y a pas de clairance à la créatinine depuis le début du séjour soit le 05/03. Etant donné que la patiente est sous HBPM, est il possible de programmer cette analyse?

> **output****type**: type d'intervention**value**: Suivi thérapeutique

> **output****type**: type de problème**value**: Monitorage à suivre



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type5-INNOHEP",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320173100"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-20T18:38:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-INNOHEP"
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
    "valueString" : "Il n'y a pas de clairance à la créatinine depuis le début du séjour soit le 05/03. Etant donné que la patiente est sous HBPM, est il possible de programmer cette analyse?"
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
        "code" : "10",
        "display" : "Monitorage à suivre"
      }]
    }
  }]
}

```
