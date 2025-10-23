# Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-observation-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-23 | *Computable Name*:FrPN13FHIRObservationConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un renseignement complémentare d’une prescritpion de médicament 

Mapping from https://interopsante.org/pn13/xsd to https://hl7.org/fhir/R4/observation

**Group 1**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/
  * : 
  * **Codes**from: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Observation.status**: Observation
  * **Observation.subject.reference**: 
  * : final
  * ?: {Référence vers la ressource Patient sujet de la prescription}
  * ?: Groupe pour initialiser les éléments nécessaires à la ressource Observation qui ne viennent pas de PN13

-------

**Group 2**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_1
  * : 
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight
  * **Observation.category.coding.code**: http://terminology.hl7.org/CodeSystem/observation-category
  * **Observation.code.coding.system**: 29463-7
  * : vital-signs
  * ?: http://loinc.org
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_2
  * : 
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height
  * **Observation.category.coding.code**: http://terminology.hl7.org/CodeSystem/observation-category
  * **Observation.code.coding.system**: 8302-2
  * : vital-signs
  * ?: http://loinc.org
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_3
  * : 
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: 
  * **Observation.category.coding.code**: 
  * **Observation.code.coding.system**: 8277-6
  * : 
  * ?: http://loinc.org
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_4
  * : 
  * **Codes**from: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: 
  * **Observation.category.coding.code**: 
  * **Observation.code.coding.system**: 
  * : 
  * ?: 
  * ?: Cet élément n'est pas mappé pour l'instant
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_5
  * : 
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: 
  * **Observation.category.coding.code**: 
  * **Observation.code.coding.system**: 33558-8
  * : 
  * ?: http://loinc.org
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_6
  * : 
  * **Codes**from: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: 
  * **Observation.category.coding.code**: 
  * **Observation.code.coding.system**: 
  * : 
  * ?: 
  * ?: Cet élément n'est pas mappé pour l'instant
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_7
  * : 
  * **Codes**from: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: 
  * **Observation.category.coding.code**: 
  * **Observation.code.coding.system**: 
  * : 
  * ?: 
  * ?: Cet élément n'est pas mappé pour l'instant
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_8
  * : 
  * **Codes**from: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: 
  * **Observation.category.coding.code**: 
  * **Observation.code.coding.system**: 
  * : 
  * ?: 
  * ?: Cet élément n'est pas mappé pour l'instant
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_9
  * : 
  * **Codes**from: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: 
  * **Observation.category.coding.code**: 
  * **Observation.code.coding.system**: 
  * : 
  * ?: 
  * ?: Cet élément n'est pas mappé pour l'instant
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_10
  * : 
  * **Codes**from: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Observation.meta.profile**: Observation.code.coding.code
  * **Observation.category.coding.system**: 
  * **Observation.code.coding.code**: 
  * **Observation.category.coding.code**: 
  * **Observation.code.coding.system**: 
  * : 
  * ?: 
  * ?: Cet élément n'est pas mappé pour l'instant

-------

**Group 3**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Prescription/Rens_compl/Dh_enreg_rens_compl
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.issued
  * **Commentaire**: La date et l'heure sont à mettre au format FHIR avec offset

-------

**Group 4**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Prescription/Rens_compl/Dh_rens_compl
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Observation.effectiveDateTime
  * **Commentaire**: La date et l'heure sont à mettre au format FHIR avec offset

-------

**Group 5**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Nombre
  * **Unité**: 
  * **Unité@Phastnomenclature**: 
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.value
  * : 
  * ?: 
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité
  * **Unité**: 
  * **Unité@Phastnomenclature**: UCUM
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.code
  * : 
  * ?: http://unitsofmeasure.org
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité
  * **Unité**: 
  * **Unité@Phastnomenclature**: 
  * : {Absent}/{Différent de UCUM}
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.unit
  * : 
  * ?: 
  * ?: Traduire Rens_compl/Valeur_rens_compl_1/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13

-------

**Group 6**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Nombre
  * **Unité@Phastnomenclature1**: 
  * **Unité1**: 
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.value
  * : 
  * ?: 
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité1**: 
  * : UCUM
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.code
  * : 
  * ?: http://unitsofmeasure.org
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité
  * **Unité@Phastnomenclature1**: 
  * **Unité1**: {Absent}/{Différent de UCUM}
  * : 
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.unit
  * : 
  * ?: 
  * ?: Traduire Rens_compl/Valeur_rens_compl_2/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13

-------

**Group 7**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Nombre
  * **Unité@Phastnomenclature2**: 
  * **Unité2**: 
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.value
  * : 
  * ?: 
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité
  * **Unité@Phastnomenclature2**: 
  * **Unité2**: 
  * : UCUM
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.code
  * : 
  * ?: http://unitsofmeasure.org
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité
  * **Unité@Phastnomenclature2**: 
  * **Unité2**: {Absent}/{Différent de UCUM}
  * : 
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.unit
  * : 
  * ?: 
  * ?: Traduire Rens_compl/Valeur_rens_compl_3/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13

-------

**Group 8**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_4/Nombre
  * **relation**: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Target Code**: 
  * **Commentaire**: Cet élément n'est pas mappé pour l'instant

-------

**Group 9**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Nombre
  * **Unité@Phastnomenclature3**: 
  * **Unité3**: 
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.value
  * : 
  * ?: 
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité
  * **Unité@Phastnomenclature3**: 
  * **Unité3**: 
  * : UCUM
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.code
  * : 
  * ?: http://unitsofmeasure.org
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité
  * **Unité@Phastnomenclature3**: 
  * **Unité3**: {Absent}/{Différent de UCUM}
  * : 
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Observation.valueQuantity.system**: Observation.valueQuantity.unit
  * : 
  * ?: 
  * ?: Traduire Rens_compl/Valeur_rens_compl_5/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13

-------

**Group 10**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_6/Nombre
  * **relation**: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Target Code**: 
  * **Commentaire**: Cet élément n'est pas mappé pour l'instant

-------

**Group 11**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_7/Nombre
  * **relation**: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Target Code**: 
  * **Commentaire**: Cet élément n'est pas mappé pour l'instant

-------

**Group 12**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_8/Nombre
  * **relation**: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Target Code**: 
  * **Commentaire**: Cet élément n'est pas mappé pour l'instant

-------

**Group 13**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_9/Nombre
  * **relation**: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Target Code**: 
  * **Commentaire**: Cet élément n'est pas mappé pour l'instant

-------

**Group 14**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_10/Nombre
  * **relation**: [is not related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#disjoint)
  * **Target Code**: 
  * **Commentaire**: Cet élément n'est pas mappé pour l'instant



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-observation-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-observation-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRObservationConceptMap",
  "title" : "Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un renseignement complémentare d'une prescritpion de médicament",
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
  "targetUri" : "https://hl7.org/fhir/R4/observation",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/",
          "target" : [
            {
              "code" : "Observation",
              "equivalence" : "relatedto",
              "comment" : "Groupe pour initialiser les éléments nécessaires à la ressource Observation qui ne viennent pas de PN13",
              "product" : [
                {
                  "property" : "Observation.status",
                  "value" : "final"
                },
                {
                  "property" : "Observation.subject.reference",
                  "value" : "{Référence vers la ressource Patient sujet de la prescription}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_1",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "equivalent",
              "product" : [
                {
                  "property" : "Observation.meta.profile",
                  "value" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
                },
                {
                  "property" : "Observation.code.coding.code",
                  "value" : "29463-7"
                },
                {
                  "property" : "Observation.code.coding.system",
                  "value" : "http://loinc.org"
                },
                {
                  "property" : "Observation.category.coding.code",
                  "value" : "vital-signs"
                },
                {
                  "property" : "Observation.category.coding.system",
                  "value" : "http://terminology.hl7.org/CodeSystem/observation-category"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_2",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "equivalent",
              "product" : [
                {
                  "property" : "Observation.meta.profile",
                  "value" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
                },
                {
                  "property" : "Observation.code.coding.code",
                  "value" : "8302-2"
                },
                {
                  "property" : "Observation.code.coding.system",
                  "value" : "http://loinc.org"
                },
                {
                  "property" : "Observation.category.coding.code",
                  "value" : "vital-signs"
                },
                {
                  "property" : "Observation.category.coding.system",
                  "value" : "http://terminology.hl7.org/CodeSystem/observation-category"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_3",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "equivalent",
              "product" : [
                {
                  "property" : "Observation.code.coding.code",
                  "value" : "8277-6"
                },
                {
                  "property" : "Observation.code.coding.system",
                  "value" : "http://loinc.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_4",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_5",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "equivalent",
              "product" : [
                {
                  "property" : "Observation.code.coding.code",
                  "value" : "33558-8"
                },
                {
                  "property" : "Observation.code.coding.system",
                  "value" : "http://loinc.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_6",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_7",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_8",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_9",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Code_rens_compl_10",
          "target" : [
            {
              "code" : "Observation.code.coding.code",
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Dh_enreg_rens_compl",
          "target" : [
            {
              "code" : "Observation.issued",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Dh_rens_compl",
          "target" : [
            {
              "code" : "Observation.effectiveDateTime",
              "equivalence" : "equivalent",
              "comment" : "La date et l'heure sont à mettre au format FHIR avec offset"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Nombre",
          "target" : [
            {
              "code" : "Observation.valueQuantity.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité",
                  "value" : "UCUM"
                }
              ],
              "product" : [
                {
                  "property" : "Observation.valueQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.unit",
              "equivalence" : "equivalent",
              "comment" : "Traduire Rens_compl/Valeur_rens_compl_1/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_1/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Différent de UCUM}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Nombre",
          "target" : [
            {
              "code" : "Observation.valueQuantity.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité",
                  "value" : "UCUM"
                }
              ],
              "product" : [
                {
                  "property" : "Observation.valueQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.unit",
              "equivalence" : "equivalent",
              "comment" : "Traduire Rens_compl/Valeur_rens_compl_2/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_2/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Différent de UCUM}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Nombre",
          "target" : [
            {
              "code" : "Observation.valueQuantity.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité",
                  "value" : "UCUM"
                }
              ],
              "product" : [
                {
                  "property" : "Observation.valueQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.unit",
              "equivalence" : "equivalent",
              "comment" : "Traduire Rens_compl/Valeur_rens_compl_3/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_3/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Différent de UCUM}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_4/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Nombre",
          "target" : [
            {
              "code" : "Observation.valueQuantity.value",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.code",
              "equivalence" : "equal",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité",
                  "value" : "UCUM"
                }
              ],
              "product" : [
                {
                  "property" : "Observation.valueQuantity.system",
                  "value" : "http://unitsofmeasure.org"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité",
          "target" : [
            {
              "code" : "Observation.valueQuantity.unit",
              "equivalence" : "equivalent",
              "comment" : "Traduire Rens_compl/Valeur_rens_compl_5/Unité en UCUM si possible soit en utilisant le mapping SIPh_CIO si applicable, soit par mapping de la terminologie locale utilisée et utiliser le code dans Observation.valueQuantity.code avec Observation.valueQuantity.system renseigné à http://unitsofmeasure.org. Si ce n'est pas possible Observation.valueQuantity.unit peut être renseigné avec la valeur dans PN13",
              "dependsOn" : [
                {
                  "property" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_5/Unité@Phast-nomenclature",
                  "value" : "{Absent}/{Différent de UCUM}"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_6/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_7/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_8/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_9/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl_10/Nombre",
          "target" : [
            {
              "equivalence" : "disjoint",
              "comment" : "Cet élément n'est pas mappé pour l'instant"
            }
          ]
        }
      ]
    }
  ]
}

```
