# Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type validation - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type validation**

## ConceptMap: Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type validation 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-analpharm-val-conceptmap | *Version*:0.1.0 |
| Draft as of 2026-05-18 | *Computable Name*:FrPN13FHIRPharmaceuticalAnalysisValidationConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un résultat d’une analyse pharmaceutique de type validation 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-analpharm-val-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-analpharm-val-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRPharmaceuticalAnalysisValidationConceptMap",
  "title" : "Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type validation",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un résultat d'une analyse pharmaceutique de type validation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "sourceUri" : "https://interopsante.org/pn13/xsd",
  "targetUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-pharmaceutical-analysis-result",
  "group" : [{
    "element" : [{
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Dh_validation",
      "target" : [{
        "code" : "Task.authoredOn",
        "equivalence" : "equivalent",
        "comment" : "La date et l'heure sont à mettre au format FHIR avec offset"
      }]
    },
    {
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Identification_pharmacien",
      "target" : [{
        "code" : "Task.owner",
        "equivalence" : "relatedto",
        "comment" : "La référence Task.owner est à constituer à partir des sous-éléments <Identifiant> et <Domaine_identification>"
      }]
    },
    {
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Id_pharmacien",
      "target" : [{
        "code" : "Task.owner",
        "equivalence" : "relatedto",
        "comment" : "La référence Task.owner est à constituer à partir de l'élément <Id_pharmacien>"
      }]
    }]
  },
  {
    "element" : [{
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Validation_pharm",
      "target" : [{
        "code" : "Task.output",
        "equivalence" : "equivalent",
        "dependsOn" : [{
          "property" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Validation_pharm",
          "value" : "1"
        },
        {
          "property" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Cré_arr_mod_val",
          "value" : "{Absent ou vide}"
        }],
        "product" : [{
          "property" : "Task.output.type.text",
          "value" : "résultat de l'analyse"
        },
        {
          "property" : "Task.output.valueCode",
          "value" : "VALIDATION"
        }]
      }]
    }]
  },
  {
    "element" : [{
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Commentaire_pharmacien",
      "target" : [{
        "code" : "Task.output.valueString",
        "equivalence" : "equal",
        "product" : [{
          "property" : "Task.output.type.text",
          "value" : "commentaire"
        }]
      }]
    },
    {
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Commentaire_structuré/Texte",
      "target" : [{
        "code" : "Task.output.valueString",
        "equivalence" : "equal",
        "product" : [{
          "property" : "Task.output.type.text",
          "value" : "commentaire"
        }]
      }]
    }]
  }]
}

```
