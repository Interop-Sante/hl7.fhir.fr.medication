# Analyse-Intervention-Type1-MACROGOL - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type1-MACROGOL**

## Example Task: Analyse-Intervention-Type1-MACROGOL

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
| * | ligne de prescription analysée | [MedicationRequest : extension = une gélule le soir (à 20h); status = active; intent = order; priority = routine; medication[x] = MORPHINE LP 10mg gélule microgranulé à libération prolongée; authoredOn = 2025-07-23 10:33:00+0100; groupIdentifier = Presc-3657; note = Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h)](MedicationRequest-InLine-Analyse-Presc-Morphine.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Administration de laxatif recommandée pour les traitements à la morphine

> **output****type**: type d'intervention**value**: Ajout (prescription nouvelle)

> **output****type**: type de problème**value**: Effet indésirable

> **output****type**: proposition**value**: [MedicationRequest : extension = 1 sachet par jour le matin; status = active; intent = proposal; priority = routine; medication[x] = MACROGOL BGA 10G BUV SACH; authoredOn = 2025-07-23 10:56:00+0100; groupIdentifier = Presc-3657; note = Prescription textuelle: MACROGOL 10G : 1 sachet par jour le matin](MedicationRequest-InLine-Analyse-Presc-MACROGOL.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type1-MACROGOL",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-3657"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2025-07-23T10:56:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-Morphine"
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
    "valueString" : "Administration de laxatif recommandée pour les traitements à la morphine"
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
        "code" : "7",
        "display" : "Effet indésirable"
      }]
    }
  },
  {
    "type" : {
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-MACROGOL"
    }
  }]
}

```
