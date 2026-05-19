# InLine-Analyse-Presc-TAREG - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-TAREG**

## Example MedicationRequest: InLine-Analyse-Presc-TAREG

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**R5: Full representation of the dosage instructions (new)**: 

1 comprimé par jour

**status**: Active

**intent**: Proposal

**priority**: Routine

**medication**: TAREG 160MG CPR

**subject**: [Patient/14602](Patient/14602)

**supportingInformation**: 

* [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = COTAREG 160MG/12,5MG CPR; authoredOn = 2026-03-18 16:19:00+0100; groupIdentifier = Presc-20260318161900; note = Prescription textuelle: COTAREG 160MG/12,5MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-COTAREG.md)
* [Task : groupIdentifier = Presc-20260318161900; status = completed; intent = proposal; authoredOn = 2026-03-18 17:39:00+0100; performerType = Pharmacien](Task-Analyse-Intervention-Type3-Remplacement2pour1-COTAREG.md)

**authoredOn**: 2026-03-18 17:39:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-20260318161900

**note**: 

> 

Prescription textuelle: TAREG 160MG : 1 comprimé par jour​


> **dosageInstruction****timing**: Une fois par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Comprimé (Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-TAREG",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 comprimé par jour"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400892360690",
      "display" : "TAREG 160MG CPR"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "supportingInformation" : [{
    "reference" : "MedicationRequest/InLine-Analyse-Presc-COTAREG"
  },
  {
    "reference" : "Task/Analyse-Intervention-Type3-Remplacement2pour1-COTAREG"
  }],
  "authoredOn" : "2026-03-18T17:39:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260318161900"
  },
  "note" : [{
    "text" : "Prescription textuelle: TAREG 160MG : 1 comprimé par jour​"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Comprimé",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15054000"
      }
    }]
  }]
}

```
