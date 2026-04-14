# InLine-Analyse-Presc-ESIDREX - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Analyse-Presc-ESIDREX**

## Example MedicationRequest: InLine-Analyse-Presc-ESIDREX

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

0,5 comprimé par jour

**status**: Active

**intent**: Proposal

**priority**: Routine

**medication**: ESIDREX 25MG CPR

**subject**: [Patient/14602](Patient/14602)

**supportingInformation**: 

* [MedicationRequest : extension = 1 comprimé par jour; status = active; intent = order; priority = routine; medication[x] = COTAREG 160MG/12,5MG CPR; authoredOn = 2026-03-18 16:19:00+0100; groupIdentifier = Presc-20260318161900; note = Prescription textuelle: COTAREG 160MG/12,5MG : 1 comprimé par jour​](MedicationRequest-InLine-Analyse-Presc-COTAREG.md)
* [Task/Analyse-Intervention-Remplacement2pour1-COTAREG](Task/Analyse-Intervention-Remplacement2pour1-COTAREG)

**authoredOn**: 2026-03-18 17:39:00+0100

**requester**: [Practitioner/smart-Practitioner-27865023](Practitioner/smart-Practitioner-27865023)

**groupIdentifier**: Presc-20260318161900

**note**: 

> 

Prescription textuelle: ESIDREX 25MG : 0,5 comprimé par jour​


> **dosageInstruction****timing**: Une fois par 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 0.5 Comprimé (Détails : code EDQM Standard Terms15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Analyse-Presc-ESIDREX",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "0,5 comprimé par jour"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
      "code" : "3400890324380",
      "display" : "ESIDREX 25MG CPR"
    }]
  },
  "subject" : {
    "reference" : "Patient/14602"
  },
  "supportingInformation" : [{
    "reference" : "MedicationRequest/InLine-Analyse-Presc-COTAREG"
  },
  {
    "reference" : "Task/Analyse-Intervention-Remplacement2pour1-COTAREG"
  }],
  "authoredOn" : "2026-03-18T17:39:00+01:00",
  "requester" : {
    "reference" : "Practitioner/smart-Practitioner-27865023"
  },
  "groupIdentifier" : {
    "value" : "Presc-20260318161900"
  },
  "note" : [{
    "text" : "Prescription textuelle: ESIDREX 25MG : 0,5 comprimé par jour​"
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
        "value" : 0.5,
        "unit" : "Comprimé",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15054000"
      }
    }]
  }]
}

```
