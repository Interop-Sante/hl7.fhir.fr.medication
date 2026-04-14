# Analyse-Intervention-Acceptee-Modifiee - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Acceptee-Modifiee**

## Example Task: Analyse-Intervention-Acceptee-Modifiee

version : 2; Dernière mise à jour : 2026-03-20 18:37:00+0100

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260320174600

**status**: Completed

**businessStatus**: Acceptée avec modification de proposition(s)

**intent**: proposal

**authoredOn**: 2026-03-20 18:23:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 1 flacon en perfusion de 15 mn toutes les 12 heures; status = active; intent = order; priority = routine; medication[x] = CETAFEN 10MG/3MG/ML FL100ML; authoredOn = 2026-03-20 17:46:00+0100; groupIdentifier = Presc-20260320174600; note = Prescription textuelle: CETAFEN 10MG/3MG/ML FL100ML : 1 flacon en perfusion de 15 mn toutes les 12 heures](MedicationRequest-InLine-Analyse-Presc-CETAFEN-INJ.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: La patiente est en capacité de déglutir, voie orale à privilégier

> **output****type**: type d'intervention**value**: Choix de la voie d'administration

> **output****type**: type de problème**value**: Voie/administration inappropriée

> **output****type**: proposition**value**: [MedicationRequest : extension = 1 comprimé toutes les 12 heures; status = active; intent = proposal; priority = routine; medication[x] = CETAFEN 500MG/150MG CPR; authoredOn = 2026-03-20 18:23:00+0100; groupIdentifier = Presc-20260320174600; note = Prescription textuelle: CETAFEN 500MG/150MG : 1 comprimé toutes les 12 heures](MedicationRequest-InLine-Analyse-Presc-CETAFEN-CPR-SousDose.md)

> **output****type**: proposition modifiée**value**: [MedicationRequest : extension = 2 comprimés toutes les 12 heures; status = active; intent = order; priority = routine; medication[x] = CETAFEN 500MG/150MG CPR; authoredOn = 2026-03-20 18:37:00+0100; groupIdentifier = Presc-20260320174600; note = Prescription textuelle: CETAFEN 500MG/150MG : 2 comprimés toutes les 12 heures](MedicationRequest-InLine-Analyse-Presc-CETAFEN-CPR-Modifiee.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Acceptee-Modifiee",
  "meta" : {
    "versionId" : "2",
    "lastUpdated" : "2026-03-20T18:37:00+01:00",
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320174600"
  },
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "code" : "4",
      "display" : "Acceptée avec modification de proposition(s)"
    }]
  },
  "intent" : "proposal",
  "authoredOn" : "2026-03-20T18:23:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-CETAFEN-INJ"
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
    "valueString" : "La patiente est en capacité de déglutir, voie orale à privilégier"
  },
  {
    "type" : {
      "text" : "type d'intervention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "4",
        "display" : "Choix de la voie d'administration"
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
  },
  {
    "type" : {
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-CETAFEN-CPR-SousDose"
    }
  },
  {
    "type" : {
      "text" : "proposition modifiée"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-CETAFEN-CPR-Modifiee"
    }
  }]
}

```
