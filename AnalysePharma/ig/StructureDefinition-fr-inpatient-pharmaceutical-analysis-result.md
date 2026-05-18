# FR Pharmaceutical Analysis Result - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Pharmaceutical Analysis Result**

## Resource Profile: FR Pharmaceutical Analysis Result 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result | *Version*:0.1.0 |
| Draft as of 2026-05-18 | *Computable Name*:FRInpatientPharmaceuticalAnalysisResultProfile |

 
French Pharmaceutical Analysis Result profile 

**Utilisations:**

* Référence ce Profil: [FR Pharmaceutical Analysis Result](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.md) and [FR Pharmaceutical Intervention Suggestion](StructureDefinition-fr-inpatient-pharmaceutical-intervention-suggestion.md)
* Exemples pour ce/t/te Profil: [Task/Analyse-Intervention-Acceptee](Task-Analyse-Intervention-Acceptee.md), [Task/Analyse-Intervention-Commentaire-Trad-PN13-FHIR](Task-Analyse-Intervention-Commentaire-Trad-PN13-FHIR.md), [Task/Analyse-Intervention-Liee-Validation-Trad-PN13-FHIR](Task-Analyse-Intervention-Liee-Validation-Trad-PN13-FHIR.md), [Task/Analyse-Intervention-NonAcceptee](Task-Analyse-Intervention-NonAcceptee.md)... Show 25 more, [Task/Analyse-Intervention-Proposition-Trad-PN13-FHIR](Task-Analyse-Intervention-Proposition-Trad-PN13-FHIR.md), [Task/Analyse-Intervention-Substitution-Trad-PN13-FHIR](Task-Analyse-Intervention-Substitution-Trad-PN13-FHIR.md), [Task/Analyse-Intervention-Type1-DOSTINEX](Task-Analyse-Intervention-Type1-DOSTINEX.md), [Task/Analyse-Intervention-Type1-MACROGOL](Task-Analyse-Intervention-Type1-MACROGOL.md), [Task/Analyse-Intervention-Type1-METFORMINE](Task-Analyse-Intervention-Type1-METFORMINE.md), [Task/Analyse-Intervention-Type2-Arret-Paracetamol](Task-Analyse-Intervention-Type2-Arret-Paracetamol.md), [Task/Analyse-Intervention-Type3-Demande-Substitution-NEFOPAM](Task-Analyse-Intervention-Type3-Demande-Substitution-NEFOPAM.md), [Task/Analyse-Intervention-Type3-ELIQUIS](Task-Analyse-Intervention-Type3-ELIQUIS.md), [Task/Analyse-Intervention-Type3-ESOMEPRAZOLE](Task-Analyse-Intervention-Type3-ESOMEPRAZOLE.md), [Task/Analyse-Intervention-Type3-Remplacement1pour2-INEGY](Task-Analyse-Intervention-Type3-Remplacement1pour2-INEGY.md), [Task/Analyse-Intervention-Type3-Remplacement2pour1-COTAREG](Task-Analyse-Intervention-Type3-Remplacement2pour1-COTAREG.md), [Task/Analyse-Intervention-Type4-CETAFEN-INJ](Task-Analyse-Intervention-Type4-CETAFEN-INJ.md), [Task/Analyse-Intervention-Type5-DOSTINEX](Task-Analyse-Intervention-Type5-DOSTINEX.md), [Task/Analyse-Intervention-Type5-INNOHEP](Task-Analyse-Intervention-Type5-INNOHEP.md), [Task/Analyse-Intervention-Type6-CALCIDOSE](Task-Analyse-Intervention-Type6-CALCIDOSE.md), [Task/Analyse-Intervention-Type6-LOXAPAC](Task-Analyse-Intervention-Type6-LOXAPAC.md), [Task/Analyse-Intervention-Type7-BINOCRIT](Task-Analyse-Intervention-Type7-BINOCRIT.md), [Task/Analyse-Validation-Ajout-Morphine](Task-Analyse-Validation-Ajout-Morphine.md), [Task/Analyse-Validation-Commentaire-Diazepam](Task-Analyse-Validation-Commentaire-Diazepam.md), [Task/Analyse-Validation-Commentaire-LACRIFLUID](Task-Analyse-Validation-Commentaire-LACRIFLUID.md), [Task/Analyse-Validation-Commentaire-Morphine](Task-Analyse-Validation-Commentaire-Morphine.md), [Task/Analyse-Validation-Commentaire-Trad-PN13-FHIR](Task-Analyse-Validation-Commentaire-Trad-PN13-FHIR.md), [Task/Analyse-Validation-Intervention-Liee-Trad-PN13-FHIR](Task-Analyse-Validation-Intervention-Liee-Trad-PN13-FHIR.md), [Task/Analyse-Validation-Sans-Commentaire-Trad-PN13-FHIR](Task-Analyse-Validation-Sans-Commentaire-Trad-PN13-FHIR.md) and [Task/Analyse-Validation-Simple-paracetamol](Task-Analyse-Validation-Simple-paracetamol.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.csv), [Excel](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.xlsx), [Schematron](StructureDefinition-fr-inpatient-pharmaceutical-analysis-result.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-inpatient-pharmaceutical-analysis-result",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result",
  "version" : "0.1.0",
  "name" : "FRInpatientPharmaceuticalAnalysisResultProfile",
  "title" : "FR Pharmaceutical Analysis Result",
  "status" : "draft",
  "date" : "2026-05-18T17:19:20+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  }],
  "description" : "French Pharmaceutical Analysis Result profile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task"
    },
    {
      "id" : "Task.groupIdentifier",
      "path" : "Task.groupIdentifier",
      "short" : "Identifiant de la prescription contenant la ligne de prescription analysée",
      "min" : 1
    },
    {
      "id" : "Task.businessStatus",
      "path" : "Task.businessStatus",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-pharmaceutical-intervention-devenir-code-value-set"
      }
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "patternCode" : "proposal"
    },
    {
      "id" : "Task.authoredOn",
      "path" : "Task.authoredOn",
      "min" : 1
    },
    {
      "id" : "Task.performerType",
      "path" : "Task.performerType",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-pharmaceutical-analysis-perfomer-type-value-set"
      }
    },
    {
      "id" : "Task.owner",
      "path" : "Task.owner",
      "min" : 1
    },
    {
      "id" : "Task.input.type.text",
      "path" : "Task.input.type.text",
      "patternString" : "ligne de prescription analysée"
    },
    {
      "id" : "Task.input.value[x]",
      "path" : "Task.input.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"]
      }]
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.text"
        }],
        "description" : "résultat de l'analyse et, le cas échéant, commentaire, type d'intervention pharmaceutique et/ou lien vers suggestion",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Task.output:result",
      "path" : "Task.output",
      "sliceName" : "result",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:result.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "résultat de l'analyse"
    },
    {
      "id" : "Task.output:result.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-pharmaceutical-analysis-result-code-value-set"
      }
    },
    {
      "id" : "Task.output:comment",
      "path" : "Task.output",
      "sliceName" : "comment",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Task.output:comment.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "commentaire"
    },
    {
      "id" : "Task.output:comment.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.output:type",
      "path" : "Task.output",
      "sliceName" : "type",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Task.output:type.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "type d'intervention"
    },
    {
      "id" : "Task.output:type.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-pharmaceutical-intervention-type-code-value-set"
      }
    },
    {
      "id" : "Task.output:problem",
      "path" : "Task.output",
      "sliceName" : "problem",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Task.output:problem.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "type de problème"
    },
    {
      "id" : "Task.output:problem.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-pharmaceutical-intervention-problem-code-value-set"
      }
    },
    {
      "id" : "Task.output:suggestion",
      "path" : "Task.output",
      "sliceName" : "suggestion",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Task.output:suggestion.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "proposition"
    },
    {
      "id" : "Task.output:suggestion.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-intervention-suggestion"]
      }]
    },
    {
      "id" : "Task.output:intervention",
      "path" : "Task.output",
      "sliceName" : "intervention",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Task.output:intervention.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "intervention pharmaceutique liée"
    },
    {
      "id" : "Task.output:intervention.value[x]",
      "path" : "Task.output.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result"]
      }]
    }]
  }
}

```
