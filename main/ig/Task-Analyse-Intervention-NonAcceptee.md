# Analyse-Intervention-NonAcceptee - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-NonAcceptee**

## Example Task: Analyse-Intervention-NonAcceptee

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260320115000

**status**: Completed

**businessStatus**: Non acceptée

**intent**: proposal

**authoredOn**: 2026-03-20 13:34:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = Une seringue préremplie toutes les deux semaines; status = active; intent = order; priority = routine; medication[x] = BINOCRIT 20000UI INJ S0,5ML +A; authoredOn = 2026-03-20 11:50:00+0100; groupIdentifier = Presc-20260320115000; note = Prescription textuelle: BINOCRIT 20000 UI/0,5ml : Une seringue préremplie toutes les deux semaines](MedicationRequest-InLine-Analyse-Presc-BINOCRIT.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Dans la lettre de liaison de la médecine ainsi que dans les antécédents de la fiche d'hospitalisation, il est indiqué que le patient est traité avec du Binocrit 30 000 UI. hors il est prescrit depuis son hospitalisation en médecine du Binocrit 20 000UI. Pouvez-vous nous confirmer que le dosage est le bon?

> **output****type**: type d'intervention**value**: Adaptation posologique

> **output****type**: type de problème**value**: Sous-dosage



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-NonAcceptee",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320115000"
  },
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "code" : "2",
      "display" : "Non acceptée"
    }]
  },
  "intent" : "proposal",
  "authoredOn" : "2026-03-20T13:34:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-BINOCRIT"
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
    "valueString" : "Dans la lettre de liaison de la médecine ainsi que dans les antécédents de la fiche d'hospitalisation, il est indiqué que le patient est traité avec du Binocrit 30 000 UI. hors il est prescrit depuis son hospitalisation en médecine du Binocrit 20 000UI. Pouvez-vous nous confirmer que le dosage est le bon?"
  },
  {
    "type" : {
      "text" : "type d'intervention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "7",
        "display" : "Adaptation posologique"
      }]
    }
  },
  {
    "type" : {
      "text" : "type de problème"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "5",
        "display" : "Sous-dosage"
      }]
    }
  }]
}

```
