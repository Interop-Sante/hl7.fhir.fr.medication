# Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-encounter-conceptmap | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrPN13FHIRMedicationPrescriptionEncounterConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un séjour d’une prescritpion de médicament 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-encounter-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-encounter-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionEncounterConceptMap",
  "title" : "Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2026-01-20T11:00:00+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un séjour d'une prescritpion de médicament",
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
  "sourceUri" : "https://interopsante.org/pn13/xsd",
  "targetUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Séjour/Id_séjour",
          "target" : [
            {
              "code" : "MedicationRequest.encounter.identifier.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Séjour/DI_séjour",
          "target" : [
            {
              "code" : "MedicationRequest.encounter.identifier.system",
              "equivalence" : "equivalent",
              "comment" : "Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:"
            }
          ]
        }
      ]
    }
  ]
}

```
