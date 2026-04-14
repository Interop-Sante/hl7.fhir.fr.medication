# Analyse-Intervention-Type3-Remplacement2pour1-COTAREG - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Type3-Remplacement2pour1-COTAREG**

## Example Task: Analyse-Intervention-Type3-Remplacement2pour1-COTAREG

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-20260318161900

**status**: Completed

**intent**: proposal

**authoredOn**: 2026-03-18 17:39:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = COTAREG 160MG/12,5MG CPR; authoredOn = 2026-03-18 16:19:00+0100; groupIdentifier = Presc-20260318161900; note = Prescription textuelle: COTAREG 160MG/12,5MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-COTAREG.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Le COTAREG n'est pas référencé au livret thérapeutique. Proposition de substitution par TAREG et ESIDREX

> **output****type**: type d'intervention**value**: Substitution/Echange

> **output****type**: type de problème**value**: Non conformité aux référentiels / Contre-indication

> **output****type**: proposition**value**: [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = proposal; priority = routine; medication[x] = TAREG 160MG CPR; authoredOn = 2026-03-18 17:39:00+0100; groupIdentifier = Presc-20260318161900; note = Prescription textuelle: TAREG 160MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-TAREG.md)

> **output****type**: proposition**value**: [MedicationRequest : extension = 0,5 comprimé par jour; status = active; intent = proposal; priority = routine; medication[x] = ESIDREX 25MG CPR; authoredOn = 2026-03-18 17:39:00+0100; groupIdentifier = Presc-20260318161900; note = Prescription textuelle: ESIDREX 25MG : 0,5 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-ESIDREX.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Type3-Remplacement2pour1-COTAREG",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-20260318161900"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2026-03-18T17:39:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-COTAREG"
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
    "valueString" : "Le COTAREG n'est pas référencé au livret thérapeutique. Proposition de substitution par TAREG et ESIDREX"
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-TAREG"
    }
  },
  {
    "type" : {
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Analyse-Presc-ESIDREX"
    }
  }]
}

```
