# Analyse-Intervention-Type6-CALCIDOSE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type6-CALCIDOSE**

## Example Task: Analyse-Intervention-Type6-CALCIDOSE

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260320161000

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-20 17:24:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

> **input****type**: ligne de prescription analysée**value**: [MedicationRequest : extension = 1 comprimé une heure avant le petit déjeuner; status = active; intent = order; priority = routine; medication[x] = LEVOTHYROX 38µG CPR; authoredOn = 2026-03-20 16:10:00+0100; groupIdentifier = Presc-20260320161000; note = Prescription textuelle: LEVOTHYROX 38µG: 1 comprimé une heure avant le petit déjeuner](MedicationRequest-InLine-Analyse-Presc-LEVOTHYROX.md)

> **input****type**: ligne de prescription analysée**value**: [MedicationRequest : extension = 1 sachet au petit déjeuner; status = active; intent = order; priority = routine; medication[x] = CALCIDOSE D3 500MG/800U SACH; authoredOn = 2026-03-20 16:10:00+0100; groupIdentifier = Presc-20260320161000; note = Prescription textuelle: CALCIDOSE D3 500MG/800UI: 1 sachet au petit déjeuner](MedicationRequest-InLine-Analyse-Presc-CALCIDOSE.md)

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Interaction avec le Lévothyrox. Pouvez-vous prescrire le Calcidose vit D3 à distance de la prise de Lévothyrox, soit le midi ou le soir?

> **output****type**: type d'intervention**value**: Optimisation modalités d'administration

> **output****type**: type de problème**value**: Interaction - Précaution d'emploi



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type6-CALCIDOSE",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260320161000"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-20T17:24:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-LEVOTHYROX"
    }
  },
  {
    "type" : {
      "text" : "ligne de prescription analysée"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-CALCIDOSE"
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
    "valueString" : "Interaction avec le Lévothyrox. Pouvez-vous prescrire le Calcidose vit D3 à distance de la prise de Lévothyrox, soit le midi ou le soir?"
  },
  {
    "type" : {
      "text" : "type d'intervention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "6",
        "display" : "Optimisation modalités d'administration"
      }]
    }
  },
  {
    "type" : {
      "text" : "type de problème"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "6.2",
        "display" : "Interaction - Précaution d'emploi"
      }]
    }
  }]
}

```
