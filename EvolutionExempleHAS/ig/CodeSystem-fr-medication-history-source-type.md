# code system Interop'Santé - Nature des sources d'un Bilan Médicamenteux - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **code system Interop'Santé - Nature des sources d'un Bilan Médicamenteux**

## CodeSystem: code system Interop'Santé - Nature des sources d'un Bilan Médicamenteux 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-history-source-type | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FRMedicationHistorySourceType |

 
Le système de codage des sources d’un Bilan Médicamenteux. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FRMedicationHistorySourceType](ValueSet-fr-medication-history-source-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "fr-medication-history-source-type",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
    ]
  },
  "url" : "https://hl7.fr/ig/fhir/medication/CodeSystem/fr-medication-history-source-type",
  "version" : "0.1.0",
  "name" : "FRMedicationHistorySourceType",
  "title" : "code system Interop'Santé - Nature des sources d'un Bilan Médicamenteux",
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
  "description" : "Le système de codage des sources d'un Bilan Médicamenteux.",
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
  "count" : 18,
  "concept" : [
    {
      "code" : "10000001",
      "display" : "Entretien avec le patient"
    },
    {
      "code" : "10000002",
      "display" : "Entretien avec les proches"
    },
    {
      "code" : "10000003",
      "display" : "Entretien avec le pharmacien d’officine"
    },
    {
      "code" : "10000004",
      "display" : "Entretien avec le pharmacien hospitalier"
    },
    {
      "code" : "10000005",
      "display" : "Entretien avec le médecin traitant"
    },
    {
      "code" : "10000006",
      "display" : "Lettre du médecin traitant"
    },
    {
      "code" : "10000007",
      "display" : "Le dossier médical partagé"
    },
    {
      "code" : "10000008",
      "display" : "Lettres de liaison"
    },
    {
      "code" : "10000009",
      "display" : "Dossier pharmaceutique"
    },
    {
      "code" : "10000010",
      "display" : "Bilan de médication par le pharmacien d'officine"
    },
    {
      "code" : "10000011",
      "display" : "Compte-rendu de télé expertise entre deux médecins généralistes pour un patient admis en EHPAD"
    },
    {
      "code" : "10000012",
      "display" : "Médicaments apportés par le patient"
    },
    {
      "code" : "10000013",
      "display" : "Ordonnances apportées par le patient"
    },
    {
      "code" : "10000014",
      "display" : "Fiche de liaison de l’EHPAD"
    },
    {
      "code" : "10000015",
      "display" : "Entretien ou lettre du médecin spécialiste"
    },
    {
      "code" : "10000016",
      "display" : "Fiche de liaison avec le service de soins à domicile"
    },
    {
      "code" : "10000017",
      "display" : "Dossier patient d’une précédente hospitalisation"
    },
    {
      "code" : "10000018",
      "display" : "Volet de synthèse médicale"
    }
  ]
}

```
