# InLine-Analyse-Presc-Paracetamol-Si-Douleur - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-Paracetamol-Si-Douleur**

## Example MedicationRequest: InLine-Analyse-Presc-Paracetamol-Si-Douleur

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: PARACETAMOL 500 mg gélule

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2025-07-23 10:33:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

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
  "id" : "InLine-Analyse-Presc-Paracetamol-Si-Douleur",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
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
  "authoredOn" : "2025-07-23T10:33:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-71482713"
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
