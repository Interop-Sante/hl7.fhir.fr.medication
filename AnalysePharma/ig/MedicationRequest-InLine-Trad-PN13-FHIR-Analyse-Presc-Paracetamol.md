# InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol**

## Example MedicationRequest: InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol

Profil: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0**: 

1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours

**identifier**: `https://somehospital.fr/PrescrptionLine-ID`/31626

**status**: Active

**intent**: Order

**priority**: Routine

**medication**: paracétamol

**subject**: [AVION (sexe non précisé), Date de Naissance :1961-11-25 ( Identifiant interne: 5000001820 (use: usual, ))](Patient-InLine-patient-Avion.md)

**encounter**: Identifier: `https://somehospital.fr/Sejour`/70101274

**supportingInformation**: 

* Identifier: `https://somehospital.fr/UF`/2571
* [Observation Poids corporel [Masse] Patient ; Numérique](Observation-InLine-Observation-poids-Avion.md)
* [Observation Taille du patient [Longueur] Patient ; Numérique](Observation-InLine-observation-taille-Avion.md)

**authoredOn**: 2022-04-11 16:42:53+0200

**requester**: [Practitioner DENIS LUIGGI ](Practitioner-InLine-practitioner-Luiggi.md)

**groupIdentifier**: `https://somehospital.fr/Prescrption-ID`/10723

**note**: , 

> 

Prescription textuelle: PARACETAMOL (Voie orale) A la demande : 1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours


> 

Indication: En cas de douleur


> **dosageInstruction****timing**: Une fois par 6 hours**asNeeded**: Si douleurs**route**: Voie orale

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1000 mg (Détails : code UCUMmg = 'mg') |

**maxDosePerPeriod**: 4000 mg (Détails : code UCUMmg = 'mg')/1 d (Détails : code UCUMd = 'd')



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours"
  }],
  "identifier" : [{
    "system" : "https://somehospital.fr/PrescrptionLine-ID",
    "value" : "31626"
  }],
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
      "code" : "100000090270",
      "display" : "paracétamol"
    }]
  },
  "subject" : {
    "reference" : "Patient/InLine-patient-Avion"
  },
  "encounter" : {
    "identifier" : {
      "system" : "https://somehospital.fr/Sejour",
      "value" : "70101274"
    }
  },
  "supportingInformation" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role",
      "valueCode" : "UFMED"
    }],
    "identifier" : {
      "system" : "https://somehospital.fr/UF",
      "value" : "2571"
    }
  },
  {
    "reference" : "Observation/InLine-Observation-poids-Avion"
  },
  {
    "reference" : "Observation/InLine-observation-taille-Avion"
  }],
  "authoredOn" : "2022-04-11T16:42:53+02:00",
  "requester" : {
    "reference" : "Practitioner/InLine-practitioner-Luiggi"
  },
  "groupIdentifier" : {
    "system" : "https://somehospital.fr/Prescrption-ID",
    "value" : "10723"
  },
  "note" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
      "valueCode" : "LIPRESCTXT"
    }],
    "text" : "Prescription textuelle: PARACETAMOL (Voie orale) A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours"
  },
  {
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
      "valueCode" : "LIPRESCIND"
    }],
    "text" : "Indication: En cas de douleur"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2022-04-12T06:00:00+02:00",
          "end" : "2022-04-15T00:00:00+02:00"
        },
        "frequencyMax" : 1,
        "period" : 6,
        "periodUnit" : "h"
      }
    },
    "asNeededCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "22253000",
        "display" : "douleur"
      }],
      "text" : "Si douleurs"
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Voie orale"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1000,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }],
    "maxDosePerPeriod" : {
      "numerator" : {
        "value" : 4000,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "system" : "http://unitsofmeasure.org",
        "code" : "d"
      }
    }
  }]
}

```
