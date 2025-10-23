# Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-medicationcomp-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrPN13FHIRMedicationPrescriptionMedicationCompConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un médicament composé d’une prescritpion de médicament 

Mapping from https://interopsante.org/pn13/xsd to [FR Medication Compound](StructureDefinition-fr-medication-compound.md)

**Group 1**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
  * **Forme@Phastnomenclature**: 
  * : SIPh-CIO_Forme
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Medication.form.coding.system**: Medication.form.coding.code
  * : 
  * ?: 
  * ?: le code cible est à trouver dans le mapping Free Set CIO-DC FORME
* **Codes**from: 
  * **Forme@Phastnomenclature**: 
  * : {Absent}
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Medication.form.coding.system**: Medication.form.coding.code
  * : 
  * ?: 
  * ?: le code cible est à trouver dans le mapping Free Set CIO-DC FORME
* **Codes**from: 
  * **Forme@Phastnomenclature**: 
  * : EDQM
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Medication.form.coding.system**: Medication.form.coding.code
  * : 
  * ?: http://standardterms.edqm.eu
  * ?: 
* **Codes**from: 
  * **Forme@Phastnomenclature**: 
  * : SIPh-Forme
  * **Codes**from: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Medication.form.coding.system**: Medication.form.coding.code
  * : 
  * ?: 
  * ?: Certains codes cibles peuvent être trouvés dans le mapping Free Set CIO-DC FORME. Dans le cas contraire, si la traduction en EDQM n'est pas possible, Medication.form.text peut être utilisé mais pourrait poser des problèmes d'interprétation



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-medicationcomp-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-medicationcomp-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionMedicationCompConceptMap",
  "title" : "Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2025-10-23T14:53:51+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un médicament composé d'une prescritpion de médicament",
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
  "targetUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication-compound",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme",
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equivalent",
              "comment" : "le code cible est à trouver dans le mapping Free Set CIO-DC FORME",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "SIPh-CIO_Forme"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equivalent",
              "comment" : "le code cible est à trouver dans le mapping Free Set CIO-DC FORME",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "{Absent}"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "EDQM"
                }
              ],
              "product" : [
                {
                  "property" : "Medication.form.coding.system",
                  "value" : "http://standardterms.edqm.eu"
                }
              ]
            }
          ]
        },
        {
          "target" : [
            {
              "code" : "Medication.form.coding.code",
              "equivalence" : "relatedto",
              "comment" : "Certains codes cibles peuvent être trouvés dans le mapping Free Set CIO-DC FORME. Dans le cas contraire, si la traduction en EDQM n'est pas possible, Medication.form.text peut être utilisé mais pourrait poser des problèmes d'interprétation",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature",
                  "value" : "SIPh-Forme"
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
