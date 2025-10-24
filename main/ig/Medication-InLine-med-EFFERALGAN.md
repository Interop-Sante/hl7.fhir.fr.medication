# InLine-med-EFFERALGAN - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-med-EFFERALGAN**

## Example Medication: InLine-med-EFFERALGAN

Profil: [FR Medication](StructureDefinition-fr-medication.md)

**code**: EFFERALGAN® 1 000 mg, cpr

**form**: comprimé

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | PARACETAMOL | true | 1000 mg(Details: UCUM codemg = 'mg')/1 |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "InLine-med-EFFERALGAN",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
        "code" : "3400893766521",
        "display" : "EFFERALGANMED 1000MG CPR"
      }
    ],
    "text" : "EFFERALGAN® 1 000 mg, cpr"
  },
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "10219000",
        "display" : "Comprimé"
      }
    ],
    "text" : "comprimé"
  },
  "ingredient" : [
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://data.esante.gouv.fr/ansm/medicament/codeSMS",
            "code" : "100000090270",
            "display" : "paracétamol"
          }
        ],
        "text" : "PARACETAMOL"
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 1000,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1
        }
      }
    }
  ]
}

```
