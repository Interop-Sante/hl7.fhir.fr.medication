# InLine-Inter-Arret-Paracetamol-Si-Douleur - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Inter-Arret-Paracetamol-Si-Douleur**

## Example MedicationRequest: InLine-Inter-Arret-Paracetamol-Si-Douleur

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**R5: Full representation of the dosage instructions (new)**: 

Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)

**status**: Active

**intent**: Proposal

**priority**: Routine

**doNotPerform**: true

**medication**: PARACETAMOL 500 mg gélule

**subject**: [Patient/14602](Patient/14602)

**supportingInformation**: [MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Souleur](MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Souleur)

**authoredOn**: 2025-07-23 11:06:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-4130

**note**: 

> 

Prescription textuelle: PARACETAMOL 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)


### DosageInstructions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **AsNeeded[x]** | **MaxDosePerPeriod** | **MaxDosePerAdministration** |
| * | Si douleurs | 4000 mg (Détails : code UCUMmg = 'mg')/24 h (Détails : code UCUMh = 'h') | 1000 mg (Détails : code UCUMmg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Inter-Arret-Paracetamol-Si-Douleur",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "doNotPerform" : true,
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://BogusSystemMedicabase.com",
      "code" : "MV00000557",
      "display" : "PARACETAMOL 500 mg gélule"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "supportingInformation" : [{
    "reference" : "MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Souleur"
  }],
  "authoredOn" : "2025-07-23T11:06:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-4130"
  },
  "note" : [{
    "text" : "Prescription textuelle: PARACETAMOL 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)"
  }],
  "dosageInstruction" : [{
    "asNeededCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "22253000",
        "display" : "douleur"
      }],
      "text" : "Si douleurs"
    },
    "maxDosePerPeriod" : {
      "numerator" : {
        "value" : 4000,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 24,
        "unit" : "h",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    },
    "maxDosePerAdministration" : {
      "value" : 1000,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }]
}

```
