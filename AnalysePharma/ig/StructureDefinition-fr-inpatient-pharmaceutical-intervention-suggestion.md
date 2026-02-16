# FR Pharmaceutical Intervention Suggestion - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Pharmaceutical Intervention Suggestion**

## Resource Profile: FR Pharmaceutical Intervention Suggestion 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion | *Version*:0.1.0 |
| Draft as of 2026-02-16 | *Computable Name*:FRInpatientPharmaceuticalInterventionSuggestionProfile |

 
Profile de proposition d’évolution de ligne de prescritpion dans le cadre d’une intervention pharmaceutique 

**Utilisations:**

* Référence ce Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md)
* Exemples pour ce/t/te Profil: [MedicationRequest/InLine-Inter-Arret-Paracetamol-Si-Douleur](MedicationRequest-InLine-Inter-Arret-Paracetamol-Si-Douleur.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.csv), [Excel](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.xlsx), [Schematron](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-inpatient-pharmaceutical-intervention-suggestion",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion",
  "version" : "0.1.0",
  "name" : "FRInpatientPharmaceuticalInterventionSuggestionProfile",
  "title" : "FR Pharmaceutical Intervention Suggestion",
  "status" : "draft",
  "date" : "2026-02-16T17:09:53+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    }
  ],
  "description" : "Profile de proposition d'évolution de ligne de prescritpion dans le cadre d'une intervention pharmaceutique",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.intent",
        "path" : "MedicationRequest.intent",
        "patternCode" : "proposal"
      },
      {
        "id" : "MedicationRequest.groupIdentifier",
        "path" : "MedicationRequest.groupIdentifier",
        "definition" : "identifiant de la prescription dont la modification est proposée",
        "min" : 1
      }
    ]
  }
}

```
