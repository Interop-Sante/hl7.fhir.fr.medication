# Conversion PN13 vers FHIR pour un patient sans INS qualifiée d'une prescription de médicaments - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Conversion PN13 vers FHIR pour un patient sans INS qualifiée d'une prescription de médicaments**

## ConceptMap: Conversion PN13 vers FHIR pour un patient sans INS qualifiée d'une prescription de médicaments 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-patient-sans-INS-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-10-24 | *Computable Name*:FrPN13FHIRMedicationPrescriptionPatientSansINSConceptMap |

 
ConceptMap pour la conversion PN13 vers FHIR d’un patient sans INS qualifiée d’une prescritpion de médicament 

Mapping from https://interopsante.org/pn13/xsd to [FR Core Patient Profile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-patient.html)

**Group 1**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Patient/Ipp
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Patient.identifier.type.coding.code**: Patient.identifier.value
  * **Patient.identfier.use**: 
  * **Patient.identifier.type.coding.system**: PI
  * : usual
  * ?: http://terminology.hl7.org/CodeSystem/v2-0203
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Patient/DI
  * : 
  * **Codes**from: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Patient.identifier.type.coding.code**: Patient.identifier.system
  * **Patient.identfier.use**: 
  * **Patient.identifier.type.coding.system**: 
  * : 
  * ?: 
  * ?: Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:

-------

**Group 2**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Patient/Nom_naissance
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Patient.name.extension.url**: Patient.name.family
  * **Patient.name.use**: 
  * ?: 
  * ?: official
* **Codes**from: Messages/M_prescription_médicaments/Patient/Premier_prénom
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Patient.name.extension.url**: Patient.name.given
  * **Patient.name.use**: 
  * ?: 
  * ?: 
* **Codes**from: Messages/M_prescription_médicaments/Patient/Prénoms
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Patient.name.extension.url**: Patient.name.extension.valueString
  * **Patient.name.use**: 
  * ?: https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name
  * ?: 

-------

**Group 3**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Patient/Nom_usuel
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Patient.name.use**: Patient.name.family
  * ?: 
  * ?: usual
* **Codes**from: Messages/M_prescription_médicaments/Patient/Prénom_usuel
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Patient.name.use**: Patient.name.given
  * ?: 
  * ?: 

-------

**Group 4**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Patient/Date_naissance
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.birthDate
  * **Commentaire**: La date doit être transformée du format AAAAMMJJ[HH[MM[SS]]] au format YYYY-MM-DDTHH:MM:SS+ZZ:ZZ. L'offset de fuseau horaire n'est à intégrer que si au moin une heure est fournie.
* **Source Code**: Messages/M_prescription_médicaments/Patient/Sexe
  * **relation**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: Patient.gender
  * **Commentaire**: le code est à traduire en utilisant la ConceptMap fr-PN13-FHIR-gender-conceptmap

-------

**Group 5**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Patient/Lieu_naissance
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Patient.extension.url**: Patient.extension.valueAddress.extension.valueCoding.code
  * **Patient.extension.valueAddress.extension.url**: 
  * : http://hl7.org/fhir/StructureDefinition/patient-birthPlace
  * ?: https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code
  * ?: L'élément FHIR Patient.extension.valueAddress.extension.valueCoding.system dépend de la valeur du code. Pour les codes commençant par 99, le system est https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R13-Pays ; pour le code 01 https://mos.esante.gouv.fr/NOS/TRE_R302-ContexteCodeComplementaire/FHIR/TRE-R302-ContexteCodeComplementaire; pour les autres codes le system est est https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune

-------

**Group 6**Mapping from `unspecified code system` to `unspecified code system`

* **Codes**from: Messages/M_prescription_médicaments/Patient/Statut_idpat
  * : 
  * **Codes**from: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Patient.extension.url**: Patient.extension.extension.valueCoding.code
  * **Patient.extension.extension.valueCoding.system**: 
  * **Patient.extension.extension.url**: https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability
  * ?: https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445
  * ?: identityStatus

-------

**Group 7**Mapping from `unspecified code system` to `unspecified code system`

* **Source Code**: Messages/M_prescription_médicaments/Patient/Date_lunaire
  * **relation**: (not mapped)
  * **Target Code**: Les dates luanires ne sont pas à indiquer dans les ressources FHIR



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-prescmed-patient-sans-INS-conceptmap",
  "url" : "https://hl7.fr/ig/fhir/medication/ConceptMap/PN13-FHIR-prescmed-patient-sans-INS-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRMedicationPrescriptionPatientSansINSConceptMap",
  "title" : "Conversion PN13 vers FHIR pour un patient sans INS qualifiée d'une prescription de médicaments",
  "status" : "draft",
  "date" : "2025-10-24T13:47:42+00:00",
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
  "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un patient sans INS qualifiée d'une prescritpion de médicament",
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
  "targetUri" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
  "group" : [
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Patient/Ipp",
          "target" : [
            {
              "code" : "Patient.identifier.value",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "Patient.identfier.use",
                  "value" : "usual"
                },
                {
                  "property" : "Patient.identifier.type.coding.code",
                  "value" : "PI"
                },
                {
                  "property" : "Patient.identifier.type.coding.system",
                  "value" : "http://terminology.hl7.org/CodeSystem/v2-0203"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Patient/DI",
          "target" : [
            {
              "code" : "Patient.identifier.system",
              "equivalence" : "equivalent",
              "comment" : "Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Patient/Nom_naissance",
          "target" : [
            {
              "code" : "Patient.name.family",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "Patient.name.use",
                  "value" : "official"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Patient/Premier_prénom",
          "target" : [
            {
              "code" : "Patient.name.given",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Patient/Prénoms",
          "target" : [
            {
              "code" : "Patient.name.extension.valueString",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "Patient.name.extension.url",
                  "value" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name"
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
          "code" : "Messages/M_prescription_médicaments/Patient/Nom_usuel",
          "target" : [
            {
              "code" : "Patient.name.family",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "Patient.name.use",
                  "value" : "usual"
                }
              ]
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Patient/Prénom_usuel",
          "target" : [
            {
              "code" : "Patient.name.given",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Patient/Date_naissance",
          "target" : [
            {
              "code" : "Patient.birthDate",
              "equivalence" : "equivalent",
              "comment" : "La date doit être transformée du format AAAAMMJJ[HH[MM[SS]]] au format YYYY-MM-DDTHH:MM:SS+ZZ:ZZ. L'offset de fuseau horaire n'est à intégrer que si au moin une heure est fournie."
            }
          ]
        },
        {
          "code" : "Messages/M_prescription_médicaments/Patient/Sexe",
          "target" : [
            {
              "code" : "Patient.gender",
              "equivalence" : "equivalent",
              "comment" : "le code est à traduire en utilisant la ConceptMap fr-PN13-FHIR-gender-conceptmap"
            }
          ]
        }
      ]
    },
    {
      "element" : [
        {
          "code" : "Messages/M_prescription_médicaments/Patient/Lieu_naissance",
          "target" : [
            {
              "code" : "Patient.extension.valueAddress.extension.valueCoding.code",
              "equivalence" : "equal",
              "comment" : "L'élément FHIR Patient.extension.valueAddress.extension.valueCoding.system dépend de la valeur du code. Pour les codes commençant par 99, le system est https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R13-Pays ; pour le code 01 https://mos.esante.gouv.fr/NOS/TRE_R302-ContexteCodeComplementaire/FHIR/TRE-R302-ContexteCodeComplementaire; pour les autres codes le system est est https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune",
              "product" : [
                {
                  "property" : "Patient.extension.url",
                  "value" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
                },
                {
                  "property" : "Patient.extension.valueAddress.extension.url",
                  "value" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
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
          "code" : "Messages/M_prescription_médicaments/Patient/Statut_idpat",
          "target" : [
            {
              "code" : "Patient.extension.extension.valueCoding.code",
              "equivalence" : "equal",
              "product" : [
                {
                  "property" : "Patient.extension.url",
                  "value" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
                },
                {
                  "property" : "Patient.extension.extension.url",
                  "value" : "identityStatus"
                },
                {
                  "property" : "Patient.extension.extension.valueCoding.system",
                  "value" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445"
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
          "code" : "Messages/M_prescription_médicaments/Patient/Date_lunaire",
          "target" : [
            {
              "equivalence" : "unmatched",
              "comment" : "Les dates luanires ne sont pas à indiquer dans les ressources FHIR"
            }
          ]
        }
      ]
    }
  ]
}

```
