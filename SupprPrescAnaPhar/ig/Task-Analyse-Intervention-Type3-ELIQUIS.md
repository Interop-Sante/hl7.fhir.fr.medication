# Analyse-Intervention-Type3-ELIQUIS - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type3-ELIQUIS**

## Example Task: Analyse-Intervention-Type3-ELIQUIS

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260322163400

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-22 18:07:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 2 comprimés par jour; status = active; intent = order; priority = routine; medication[x] = ELIQUIS 5MG CPR; authoredOn = 2026-03-22 16:34:00+0100; groupIdentifier = Presc-20260322163400; note = Prescription textuelle: ELIQUIS 5MG : 2 comprimés par jour​](MedicationRequest-InLine-Analyse-Presc-ELIQUIS-50.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Il est prescrit de l'apixaban à 5 mg x2 par jour. Ce médicament est indiqué dans la prévention des évènements thromboemboliques chez un patient présentant une ACFA. Or cette patiente a plus de 80 ans et pèse moins de 60 kg. La dose recommandée de ce médicament est de 2,5 mg deux fois par jour pour ce type de patient.

> **output****type**: type d'intervention**value**: Adaptation posologique

> **output****type**: type de problème**value**: Surdosage

> **output****type**: proposition**value**: [MedicationRequest : extension = 2 comprimés par jour; status = active; intent = proposal; priority = routine; medication[x] = ELIQUIS 2,5MG CPR; authoredOn = 2026-03-22 18:07:00+0100; groupIdentifier = Presc-20260322163400; note = Prescription textuelle: ELIQUIS 2,5MG : 2 comprimés par jour​](MedicationRequest-InLine-Analyse-Presc-ELIQUIS-25.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type3-ELIQUIS",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260322163400"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-22T18:07:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-ELIQUIS-50"
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
    "valueString" : "Il est prescrit de l'apixaban à 5 mg x2 par jour. Ce médicament est indiqué dans la prévention des évènements thromboemboliques chez un patient présentant une ACFA. Or cette patiente a plus de 80 ans et pèse moins de 60 kg. La dose recommandée de ce médicament est de 2,5 mg deux fois par jour pour ce type de patient."
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
        "code" : "4",
        "display" : "Surdosage"
      }]
    }
  },
  {
    "type" : {
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-ELIQUIS-25"
    }
  }]
}

```
