# Analyse-Validation-Simple - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Validation-Simple**

## Example Task: Analyse-Validation-Simple

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: Presc-3567

**status**: Completed

**intent**: proposal

**authoredOn**: 2021-07-13 10:35:56+0000

**performerType**: Pharmacien

**owner**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : status = active; intent = order; medication[x] = PARACETAMOL 500 mg gélule; authoredOn = 2021-07-13 08:48:39+0000; groupIdentifier = Presc-3567](MedicationRequest-InLine-Analyse-Presc-Paracetamol.md) |

### Outputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | résultat de l'analyse | VALIDATION |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Validation-Simple",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"
    ]
  },
  "groupIdentifier" : {
    "value" : "Presc-3567"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2021-07-13T10:35:56.963Z",
  "performerType" : [
    {
      "coding" : [
        {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante",
          "code" : "21",
          "display" : "Pharmacien"
        }
      ]
    }
  ],
  "owner" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "input" : [
    {
      "type" : {
        "text" : "ligne de prescription analysée"
      },
      "valueReference" : {
        "reference" : "MedicationRequest/InLine-Analyse-Presc-Paracetamol"
      }
    }
  ],
  "output" : [
    {
      "type" : {
        "text" : "résultat de l'analyse"
      },
      "valueCode" : "VALIDATION"
    }
  ]
}

```
