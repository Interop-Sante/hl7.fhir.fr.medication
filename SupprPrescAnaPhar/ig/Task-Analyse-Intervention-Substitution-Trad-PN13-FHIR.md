# Analyse-Intervention-Substitution-Trad-PN13-FHIR - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Analyse-Intervention-Substitution-Trad-PN13-FHIR**

## Example Task: Analyse-Intervention-Substitution-Trad-PN13-FHIR

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

> **output****type**: commentaire**value**: Remplacement pour éviter interaction entre paracétamol et autre traitement pris par le patient

> **output****type**: type d'intervention**value**: Substitution/Echange

> **output****type**: proposition**value**: [MedicationRequest : extension = 800 mg toutes les 12 heures pendant 2 jours, 2400 mg max/j; identifier = https://somehospital.fr/PrescrptionLine-ID#31639; status = active; intent = proposal; priority = routine; medication[x] = ibuprofène; authoredOn = 2022-04-11 17:30:53+0200; groupIdentifier = https://somehospital.fr/Prescrption-ID#10723; note = Prescription textuelle: Ibuprofène (Voie orale) : 800 mg toutes les 12 heures pendant 2 jours, 2400 mg max/j](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "Analyse-Intervention-Substitution-Trad-PN13-FHIR",
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
    "valueString" : "Remplacement pour éviter interaction entre paracétamol et autre traitement pris par le patient"
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
      "text" : "proposition"
    },
    "valueReference" : {
      "reference" : "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution"
    }
  }]
}

```
