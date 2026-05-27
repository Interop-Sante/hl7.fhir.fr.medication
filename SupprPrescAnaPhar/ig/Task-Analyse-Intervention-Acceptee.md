# Analyse-Intervention-Acceptee - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Acceptee**

## Example Task: Analyse-Intervention-Acceptee

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-4130

**status**: Completed

**businessStatus**: Acceptée

**intent**: proposal

**authoredOn**: 2025-07-23 11:06:00+0100

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Souleur](MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Souleur) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Indication non retrouvée dans le dossier du patient. Médicament prescrit en Si Besoin depuis son entrée et instaurée lors du dernier séjour en juillet, pas de prise par le patient depuis 15 jours. Peux-tu arrêter ce traitement?

> **output****type**: type d'intervention**value**: Arrêt

> **output****type**: type de problème**value**: Médicament non indiqué

> **output****type**: proposition**value**: [MedicationRequest : extension = Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules); status = active; intent = proposal; priority = routine; doNotPerform = true; medication[x] = PARACETAMOL 500 mg gélule; authoredOn = 2025-07-23 11:06:00+0100; groupIdentifier = Presc-4130; note = Prescription textuelle: PARACETAMOL 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)](MedicationRequest-InLine-Inter-Arret-Paracetamol-Si-Douleur.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Acceptee",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "Presc-4130"
  },
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "code" : "1",
      "display" : "Acceptée"
    }]
  },
  "intent" : "proposal",
  "authoredOn" : "2025-07-23T11:06:00+01:00",
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
      "reference" : "MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Souleur"
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
    "valueString" : "Indication non retrouvée dans le dossier du patient. Médicament prescrit en Si Besoin depuis son entrée et instaurée lors du dernier séjour en juillet, pas de prise par le patient depuis 15 jours. Peux-tu arrêter ce traitement?"
  },
  {
    "type" : {
      "text" : "type d'intervention"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "code" : "2",
        "display" : "Arrêt"
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
        "display" : "Médicament non indiqué"
      }]
    }
  },
  {
    "type" : {
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Inter-Arret-Paracetamol-Si-Douleur"
    }
  }]
}

```
