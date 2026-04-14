# Analyse-Intervention-Proposition-Trad-PN13-FHIR - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Proposition-Trad-PN13-FHIR**

## Example Task: Analyse-Intervention-Proposition-Trad-PN13-FHIR

Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)

**groupIdentifier**: 10723

**status**: Completed

**intent**: proposal

**authoredOn**: 2022-04-11 17:30:53+0200

**owner**: Identifier: `urn:oid:1.2.250.1.71.4.2.1`/811102058236

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | ligne de prescription analysée | [MedicationRequest : extension = 1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours; identifier = https://somehospital.fr/PrescrptionLine-ID#31626; status = active; intent = order; priority = routine; medication[x] = paracétamol; authoredOn = 2022-04-11 16:42:53+0200; groupIdentifier = https://somehospital.fr/Prescrption-ID#10723; note = Prescription textuelle: PARACETAMOL (Voie orale) A la demande : 1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours,Indication: En cas de douleur](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol.md) |

> **output****type**: résultat de l'analyse**value**: INTERVENTION

> **output****type**: commentaire**value**: Suggestion pour prendre en compte la faiblesse hépatique du patient

> **output****type**: proposition**value**: [MedicationRequest : extension = 1000 mg toutes les 12 heures pendant 2 jours, 2000 mg max/j; identifier = https://somehospital.fr/PrescrptionLine-ID#31638; status = active; intent = proposal; priority = routine; medication[x] = paracétamol; authoredOn = 2022-04-11 17:30:53+0200; groupIdentifier = https://somehospital.fr/Prescrption-ID#10723; note = Prescription textuelle: PARACETAMOL (Voie orale) : 1000 mg toutes les 12 heures pendant 2 jours, 2000 mg max/j](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Proposition-Trad-PN13-FHIR",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
  },
  "groupIdentifier" : {
    "value" : "10723"
  },
  "status" : "completed",
  "intent" : "proposal",
  "authoredOn" : "2022-04-11T17:30:53+02:00",
  "owner" : {
    "identifier" : {
      "system" : "urn:oid:1.2.250.1.71.4.2.1",
      "value" : "811102058236"
    }
  },
  "input" : [{
    "type" : {
      "text" : "ligne de prescription analysée"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol"
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
    "valueString" : "Suggestion pour prendre en compte la faiblesse hépatique du patient"
  },
  {
    "type" : {
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Proposition"
    }
  }]
}

```
