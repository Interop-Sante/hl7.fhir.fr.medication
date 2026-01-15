# InLine-DOLIPRANE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-DOLIPRANE**

## Example Medication: InLine-DOLIPRANE

Profil: [FR Medication](StructureDefinition-fr-medication.md)

**code**: DOLIPRANE® 500 mg, gélule

**form**: gélule

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | PARACETAMOL | true | 500 mg(Détails : code UCUMmg = 'mg')/1 |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "InLine-DOLIPRANE",
  "meta" : {
    "profile" : [
      "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://data.esante.gouv.fr/ansm/medicament/UCD",
        "code" : "3400891996128",
        "display" : "DOLIPRANE 500MG GELU"
      }
    ],
    "text" : "DOLIPRANE® 500 mg, gélule"
  },
  "form" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "10210000",
        "display" : "Gélule"
      }
    ],
    "text" : "gélule"
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
          "value" : 500,
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
