# code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy**

## CodeSystem: code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-document-type | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrDocumentType |

 
Le système de codage SIPh du type de document d’une ressource**Composition**du domaine Pharmacy 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FrCurrentMedicationDocumentType](ValueSet-fr-current-medication-document-type.md)
* [FRMedicationReconciliationDocumentType](ValueSet-fr-medication-reconciliation-document-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-document-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-document-type",
  "version" : "0.1.0",
  "name" : "FrDocumentType",
  "title" : "code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-23T12:45:10+00:00",
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
  "description" : "Le système de codage SIPh du type de document d'une ressource *Composition* du domaine Pharmacy",
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
  "content" : "complete",
  "count" : 14,
  "property" : [
    {
      "code" : "isMedicationReconciliation",
      "description" : "Le document est une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "type" : "boolean"
    },
    {
      "code" : "isCurrentMedication",
      "description" : "Le document est une liste des Traitements Médicamenteux Courants.",
      "type" : "boolean"
    }
  ],
  "concept" : [
    {
      "code" : "10000001",
      "display" : "FCT",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux (sans autre précision)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000002",
      "display" : "FCT rétroactive d'admission",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux rétroactive d'admission",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000003",
      "display" : "FCT proactive d'admission",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux proactive d'admission",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000004",
      "display" : "FCT proactive de sortie",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux proactive de sortie (retour à domicile)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000005",
      "display" : "FCT rétroactive de sortie",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux rétroactive de sortie (retour à domicile)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000006",
      "display" : "FCT proactive de transfert",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux proactive de transfert (dans une autre structure de soins)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000007",
      "display" : "FCT rétroactive de transfert",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux rétroactive de transfert (dans une autre structure de soins)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000008",
      "display" : "FCT proactive de mutation",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux proactive de mutation (dans une autre unité fonctionnelle ou médicale)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000009",
      "display" : "FCT rétroactive de mutation",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux rétroactive de mutation (dans une autre unité fonctionnelle ou médicale)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000010",
      "display" : "FCT proactive de sortie du service",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux proactive de sortie du service (tout mode de sortie administratif confondu)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000011",
      "display" : "FCT rétroactive de sortie du service",
      "definition" : "Fiche de Conciliation des Traitements médicamenteux rétroactive de sortie du service (tout mode de sortie administratif confondu)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : true
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : false
        }
      ]
    },
    {
      "code" : "10000012",
      "display" : "Traitement Médicamenteux Courant",
      "definition" : "Traitement Médicamenteux Courant (sans autre précision)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : false
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : true
        }
      ]
    },
    {
      "code" : "10000013",
      "display" : "OMA",
      "definition" : "OMA (Ordonnance Médicale d'Admission)",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : false
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : true
        }
      ]
    },
    {
      "code" : "10000014",
      "display" : "Traitement Médicamenteux de sortie/transfert/mutation",
      "definition" : "Traitement Médicamenteux de sortie/transfert/mutation",
      "property" : [
        {
          "code" : "isMedicationReconciliation",
          "valueBoolean" : false
        },
        {
          "code" : "isCurrentMedication",
          "valueBoolean" : true
        }
      ]
    }
  ]
}

```
