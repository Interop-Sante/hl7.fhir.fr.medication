# InLine-Analyse-Presc-Morphine - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-Morphine**

## Example MedicationRequest: InLine-Analyse-Presc-Morphine

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**R5: Full representation of the dosage instructions (new)**: 

une gélule le soir (à 20h)

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: MORPHINE LP 10mg gélule microgranulé à libération prolongée

**subject**: [Patient/14602](Patient/14602)

**authoredOn**: 2025-07-23 10:33:00+0100

**requester**: [Practitioner/smart-Practitioner-71482713](Practitioner/smart-Practitioner-71482713)

**groupIdentifier**: Presc-3657

**note**: 

> 

Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h)


> **dosageInstruction****timing**: Soir, Une fois

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 gélule (Détails : code EDQM Standard Terms15012000 = 'Capsule') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-Morphine",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "une gélule le soir (à 20h)"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://BogusSystemMedicabase.com",
      "code" : "MV00001636",
      "display" : "MORPHINE LP 10mg gélule microgranulé à libération prolongée"
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
    "value" : "Presc-3657"
  },
  "note" : [{
    "text" : "Prescription textuelle: MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h)"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "timeOfDay" : ["20:00:00"],
        "when" : ["EVE"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "gélule",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15012000"
      }
    }]
  }]
}

```
