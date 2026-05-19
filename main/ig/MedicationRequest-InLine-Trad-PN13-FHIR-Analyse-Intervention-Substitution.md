# InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution**

## Example MedicationRequest: InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution

Profil: [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)

**R5: Full representation of the dosage instructions (new)**: 

800 mg toutes les 12 heures pendant 2 jours, 2400 mg max/j

**identifier**: `https://somehospital.fr/PrescrptionLine-ID`/31639

**status**: Active

**intent**: Proposal

**priority**: Routine

**medication**: ibuprofène

**subject**: [AVION (sexe non précisé), Date de Naissance :1961-11-25 ( Identifiant interne: 5000001820 (use: usual, ))](Patient-InLine-patient-Avion.md)

**encounter**: Identifier: `https://somehospital.fr/Sejour`/70101274

**supportingInformation**: 

* Identifier: `https://somehospital.fr/UF`/2571
* [Observation Poids corporel [Masse] Patient ; Numérique](Observation-InLine-Observation-poids-Avion.md)
* [Observation Taille du patient [Longueur] Patient ; Numérique](Observation-InLine-observation-taille-Avion.md)
* [MedicationRequest : extension = 1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours; identifier = https://somehospital.fr/PrescrptionLine-ID#31626; status = active; intent = order; priority = routine; medication[x] = paracétamol; authoredOn = 2022-04-11 16:42:53+0200; groupIdentifier = https://somehospital.fr/Prescrption-ID#10723; note = Prescription textuelle: PARACETAMOL (Voie orale) A la demande : 1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours,Indication: En cas de douleur](MedicationRequest-InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol.md)
* [Task : groupIdentifier = 10723; status = completed; intent = proposal; authoredOn = 2022-04-11 17:30:53+0200](Task-Analyse-Intervention-Substitution-Trad-PN13-FHIR.md)

**authoredOn**: 2022-04-11 17:30:53+0200

**requester**: Identifier: `urn:oid:1.2.250.1.71.4.2.1`/811102058236

**groupIdentifier**: `https://somehospital.fr/Prescrption-ID`/10723

**note**: 

> 

Prescription textuelle: Ibuprofène (Voie orale) : 800 mg toutes les 12 heures pendant 2 jours, 2400 mg max/j


> **dosageInstruction****timing**: Une fois par 12 hours**route**: Voie orale

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 800 mg (Détails : code UCUMmg = 'mg') |

**maxDosePerPeriod**: 2400 mg (Détails : code UCUMmg = 'mg')/1 d (Détails : code UCUMd = 'd')



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "800 mg toutes les 12 heures pendant 2 jours, 2400 mg max/j"
  }],
  "identifier" : [{
    "system" : "https://somehospital.fr/PrescrptionLine-ID",
    "value" : "31639"
  }],
  "status" : "active",
  "intent" : "proposal",
  "priority" : "routine",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
      "code" : "100000090365",
      "display" : "ibuprofène"
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
  },
  {
    "reference" : "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol"
  },
  {
    "reference" : "Task/Analyse-Intervention-Substitution-Trad-PN13-FHIR"
  }],
  "authoredOn" : "2022-04-11T17:30:53+02:00",
  "requester" : {
    "identifier" : {
      "system" : "urn:oid:1.2.250.1.71.4.2.1",
      "value" : "811102058236"
    }
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
    "text" : "Prescription textuelle: Ibuprofène (Voie orale) : 800 mg toutes les 12 heures pendant 2 jours, 2400 mg max/j"
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2022-04-12T06:00:00+02:00",
          "end" : "2022-04-15T00:00:00+02:00"
        },
        "frequency" : 1,
        "period" : 12,
        "periodUnit" : "h"
      }
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
        "value" : 800,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }],
    "maxDosePerPeriod" : {
      "numerator" : {
        "value" : 2400,
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
