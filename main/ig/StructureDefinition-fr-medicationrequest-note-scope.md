# Scope for note element in MedicationRequest - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Scope for note element in MedicationRequest**

## Extension: Scope for note element in MedicationRequest 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRMedicationRequestNoteScope |

Scope of a note associated in a MedicationRequest resource

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)
* Exemples pour ce Extension: [Bundle/TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE](Bundle-TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE.md), [Bundle/TradPN13FHIR-Presc-DOLIPRANE-Interpret](Bundle-TradPN13FHIR-Presc-DOLIPRANE-Interpret.md), [Bundle/TradPN13FHIR-Presc-DOLIPRANE](Bundle-TradPN13FHIR-Presc-DOLIPRANE.md), [Bundle/TradPN13FHIR-Presc-Morphine-PCA](Bundle-TradPN13FHIR-Presc-Morphine-PCA.md)...Show 3 more,[Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md),[Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md)and[Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-medicationrequest-note-scope)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-medicationrequest-note-scope.csv), [Excel](StructureDefinition-fr-medicationrequest-note-scope.xlsx), [Schematron](StructureDefinition-fr-medicationrequest-note-scope.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medicationrequest-note-scope",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope",
  "version" : "0.1.0",
  "name" : "FRMedicationRequestNoteScope",
  "title" : "Scope for note element in MedicationRequest",
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
  "description" : "Scope of a note associated in a MedicationRequest resource",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "MedicationRequest.note"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Scope for note element in MedicationRequest",
        "definition" : "Scope of a note associated in a MedicationRequest resource"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-note-scope-codes-vs"
        }
      }
    ]
  }
}

```
