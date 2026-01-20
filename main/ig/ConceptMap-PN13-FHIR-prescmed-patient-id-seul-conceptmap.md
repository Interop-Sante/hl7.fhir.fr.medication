# Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni**

## ConceptMap: Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-patient-id-seul-conceptmap | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FrPN13FHIRMedicationPrescriptionPatientIdSeulConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR du patient d’une prescritpion de médicament avec uniquement un identifiant fourni 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-patient-id-seul-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-patient-id-seul-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionPatientIdSeulConceptMap",
  "title" : "Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni",
  "status" : "draft",
  "date" : "2026-01-20T09:44:19+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR du patient d'une prescritpion de médicament avec uniquement un identifiant fourni",
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
          "code" : "Messages/M_prescription_médicaments/Patient/IPP",
          "target" : [
            {
              "code" : "MedicationRequest.subject.identifier.value",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "MedicationRequest.subject.identifier.use",
                  "value" : "usual"
                },
                {
                  "property" : "MedicationRequest.subject.type",
                  "value" : "Patient"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

```
