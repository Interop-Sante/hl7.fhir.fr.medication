# Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type intervention pharmaceutique avec proposition - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type intervention pharmaceutique avec proposition**

## ConceptMap: Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type intervention pharmaceutique avec proposition 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-analpharm-interv-avec-prop-conceptmap | *Version*:0.1.0 |
| Draft as of 2026-05-19 | *Computable Name*:FrPN13FHIRPharmaceuticalAnalysisInterventionSansPropositionConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un résultat d’une analyse pharmaceutique de type intervention pharmaceutique avec proposition 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-analpharm-interv-avec-prop-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-analpharm-interv-avec-prop-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRPharmaceuticalAnalysisInterventionSansPropositionConceptMap",
  "title" : "Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type intervention pharmaceutique avec proposition",
  "status" : "draft",
  "date" : "2026-05-19T09:10:48+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  }],
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un résultat d'une analyse pharmaceutique de type intervention pharmaceutique avec proposition",
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
          "value" : "2"
        }],
        "product" : [{
          "property" : "Task.output.type.text",
          "value" : "résultat de l'analyse"
        },
        {
          "property" : "Task.output.valueCode",
          "value" : "INTERVENTION"
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
  },
  {
    "element" : [{
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Elément_lié/Id_Elément_lié",
      "target" : [{
        "code" : "Task.input.valueReference",
        "equivalence" : "relatedto",
        "comment" : "Permet de retrouver la/les ressource(s) MedicationRequest analysée(s) via MedicationRequest.identifier.value",
        "product" : [{
          "property" : "Task.input.type.text",
          "value" : "ligne de prescription analysée"
        }]
      }]
    }]
  },
  {
    "element" : [{
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Id_élément_prescr",
      "target" : [{
        "code" : "Task.output.valueReference",
        "equivalence" : "relatedto",
        "comment" : "Permet de lier à la ressource MedicationRequest portant la proposition via MedicationRequest.identifier.value",
        "dependsOn" : [{
          "property" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Cré_arr_mod_val",
          "value" : "C"
        }],
        "product" : [{
          "property" : "Task.output.type.text",
          "value" : "proposition"
        }]
      }]
    }]
  },
  {
    "element" : [{
      "code" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Proposition_pharm",
      "target" : [{
        "code" : "Task.output",
        "equivalence" : "equivalent",
        "dependsOn" : [{
          "property" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Cré_arr_mod_val",
          "value" : "C"
        },
        {
          "property" : "Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Proposition_pharm",
          "value" : "3"
        }],
        "product" : [{
          "property" : "Task.output.type.text",
          "value" : "type d'intervention"
        },
        {
          "property" : "Task.output.valueCodeableConcept.coding.code",
          "value" : "3"
        },
        {
          "property" : "Task.output.valueCodeableConcept.coding.display",
          "value" : "Substitution/Echange"
        }]
      }]
    },
    {
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Les types d'intervention pharmaceutique autres que Substitution/echange ne sont pas caractérisés dans les messages PN13"
      }]
    }]
  }]
}

```
