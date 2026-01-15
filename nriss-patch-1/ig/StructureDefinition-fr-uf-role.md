# UF Role - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UF Role**

## Extension: UF Role 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role | *Version*:0.1.0 |
| Draft as of 2026-01-15 | *Computable Name*:FrUFRole |

Caracterization of the role of a functionnal unit for the patient encounter

**Context of Use**

**Usage info**

**Utilisations:**

* Utiliser ce Extension: [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md)
* Exemples pour ce Extension: [Bundle/TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE](Bundle-TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE.md), [Bundle/TradPN13FHIR-Presc-DOLIPRANE-Interpret](Bundle-TradPN13FHIR-Presc-DOLIPRANE-Interpret.md), [Bundle/TradPN13FHIR-Presc-DOLIPRANE](Bundle-TradPN13FHIR-Presc-DOLIPRANE.md), [Bundle/TradPN13FHIR-Presc-Morphine-PCA](Bundle-TradPN13FHIR-Presc-Morphine-PCA.md)...Show 2 more,[Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md)and[Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-uf-role)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-uf-role.csv), [Excel](StructureDefinition-fr-uf-role.xlsx), [Schematron](StructureDefinition-fr-uf-role.sch) 

#### Bindings terminologiques

#### Contraintes



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-uf-role",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role",
  "version" : "0.1.0",
  "name" : "FrUFRole",
  "title" : "UF Role",
  "status" : "draft",
  "date" : "2026-01-15T08:54:26+00:00",
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
  "description" : "Caracterization of the role of a functionnal unit for the patient encounter",
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
      "expression" : "MedicationRequest.supportingInformation"
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
        "short" : "UF Role",
        "definition" : "Caracterization of the role of a functionnal unit for the patient encounter"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role"
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
          "valueSet" : "https://hl7.fr/ig/fhir/medication/ValueSet/fr-uf-role-code-for-prescription"
        }
      }
    ]
  }
}

```
