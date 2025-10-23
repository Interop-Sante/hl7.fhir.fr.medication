# Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-encounter-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrPN13FHIRMedicationPrescriptionEncounterConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un séjour d’une prescritpion de médicament 

Mapping from https://interopsante.org/pn13/xsd to [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)

**Group 1**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Séjour/Id_séjour
  * **relation**: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Target Code**: MedicationRequest.encounter.identifier.value
  * **Commentaire**: 
* **Source Code**: Messages/M_prescription_médicaments/Séjour/DI_séjour
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: MedicationRequest.encounter.identifier.system
  * **Commentaire**: Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:



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
