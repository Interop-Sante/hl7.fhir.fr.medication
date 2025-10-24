# Disp-group01-2 - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Disp-group01-2**

## Example MedicationDispense: Disp-group01-2

Profil: [FR Inpatient MedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md)

**status**: Completed

**medication**: [Medication/InLine-med-DOLIPRANE](Medication/InLine-med-DOLIPRANE)

**subject**: [Group/InLine-patient-group01](Group/InLine-patient-group01)

**supportingInformation**: 

* [MedicationDispense : status = completed; medication[x] = ->Medication/InLine-med-DOLIPRANE; type = Refill - Part; quantity = 6 1; daysSupply = 2 jour; whenPrepared = 2021-07-16 10:10:00+0000; whenHandedOver = 2021-07-16 10:24:00+0000](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md)
* [MedicationDispense : status = completed; medication[x] = ->Medication/InLine-med-DOLIPRANE; type = Refill - Complete; quantity = 2 1; daysSupply = 2 jours; whenPrepared = 2021-07-16 10:10:00+0000; whenHandedOver = 2021-07-16 10:24:00+0000](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md)
* [MedicationDispense : status = completed; medication[x] = ->Medication/InLine-med-DOLIPRANE; type = Refill - Part; quantity = 6 1; daysSupply = 2 jours; whenPrepared = 2021-07-16 10:10:00+0000; whenHandedOver = 2021-07-16 10:24:00+0000](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner/smart-Practitioner-7148xxxx](Practitioner/smart-Practitioner-7148xxxx) |

**authorizingPrescription**: 

* [MedicationRequest : status = active; intent = order; medication[x] = ->Medication paracétamol; authoredOn = 2021-07-13 08:48:39+0000; groupIdentifier = Presc-24625](MedicationRequest-InLine-presc-Paracetamol1.md)
* [MedicationRequest : status = active; intent = order; medication[x] = ->Medication paracétamol; authoredOn = 2021-07-14 09:07:28+0000](MedicationRequest-InLine-presc-Paracetamol2.md)
* [MedicationRequest : status = active; intent = order; medication[x] = ->Medication EFFERALGANMED 1000MG CPR; authoredOn = 2021-07-15 11:02:39+0000](MedicationRequest-InLine-presc-EFFERALGAN2.md)

**type**: Refill - Part

**quantity**: 14 1(Details: UCUM code1 = '1')

**daysSupply**: 2 jours(Details: UCUM coded = 'd')

**whenPrepared**: 2021-07-16 10:10:00+0000

**whenHandedOver**: 2021-07-16 10:24:00+0000



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "Disp-group01-2",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    ]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/InLine-med-DOLIPRANE"
  },
  "subject" : {
    "reference" : "Group/InLine-patient-group01"
  },
  "supportingInformation" : [
    {
      "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC"
    },
    {
      "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC"
    },
    {
      "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-Substit"
    }
  ],
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/smart-Practitioner-7148xxxx"
      }
    }
  ],
  "authorizingPrescription" : [
    {
      "reference" : "MedicationRequest/InLine-presc-Paracetamol1"
    },
    {
      "reference" : "MedicationRequest/InLine-presc-Paracetamol2"
    },
    {
      "reference" : "MedicationRequest/InLine-presc-EFFERALGAN2"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "RFP",
        "display" : "Refill - Part"
      }
    ]
  },
  "quantity" : {
    "value" : 14,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "daysSupply" : {
    "value" : 2,
    "unit" : "jours",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenPrepared" : "2021-07-16T10:10:00Z",
  "whenHandedOver" : "2021-07-16T10:24:00Z"
}

```
