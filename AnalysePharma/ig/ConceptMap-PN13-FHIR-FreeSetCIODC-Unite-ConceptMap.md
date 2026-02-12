# Mapping Free Set CIO-DC UNITE - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Free Set CIO-DC UNITE**

## ConceptMap: Mapping Free Set CIO-DC UNITE 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/fhir/fr/medication/ConceptMap/PN13-FHIR-unite-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-02-10 | *Computable Name*:FrPN13FHIRFreeSetCIODCUniteConceptMap |

 
ConceptMap pour la conversion des codes d’unité d’administration de médicaments entre CIO et UCUM / EDQM 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-FreeSetCIODC-Unite-ConceptMap",
  "language" : "fr-FR",
  "url" : "https://hl7.fr/fhir/fr/medication/ConceptMap/PN13-FHIR-unite-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRFreeSetCIODCUniteConceptMap",
  "title" : "Mapping Free Set CIO-DC UNITE",
  "status" : "draft",
  "date" : "2025-02-10T11:15:38Z",
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
  "description" : "ConceptMap pour la conversion des codes d'unité d'administration de médicaments entre CIO et UCUM / EDQM",
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
  "group" : [
    {
      "source" : "https://www.phast.fr/ciodm/",
      "sourceVersion" : "2025",
      "target" : "http://unitsofmeasure.org",
      "element" : [
        {
          "code" : "10*3.bq",
          "target" : [
            {
              "code" : "kBq",
              "display" : "kBq",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "10*6",
          "target" : [
            {
              "code" : "10*6",
              "display" : "10n",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "10*6.bq",
          "target" : [
            {
              "code" : "MBq",
              "display" : "MBq",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "10*9",
          "target" : [
            {
              "code" : "10*9",
              "display" : "milliard",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "10*9.bq",
          "target" : [
            {
              "code" : "GBq",
              "display" : "GBq",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "an",
          "target" : [
            {
              "code" : "a",
              "display" : "a",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "bq",
          "target" : [
            {
              "code" : "Bq",
              "display" : "Bq",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g",
          "target" : [
            {
              "code" : "g",
              "display" : "g",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g/h",
          "target" : [
            {
              "code" : "g/h",
              "display" : "g/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g/kg",
          "target" : [
            {
              "code" : "g/kg",
              "display" : "g/kg",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g/kg/h",
          "target" : [
            {
              "code" : "g/kg/h",
              "display" : "g/kg/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g/kg/mn",
          "target" : [
            {
              "code" : "g/kg/min",
              "display" : "g/kg/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g/m2",
          "target" : [
            {
              "code" : "g/m2",
              "display" : "g/m²",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g/m2/h",
          "target" : [
            {
              "code" : "g/m2/h",
              "display" : "g/m²/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g/m2/mn",
          "target" : [
            {
              "code" : "g/m2/min",
              "display" : "g/m²/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "g/mn",
          "target" : [
            {
              "code" : "g/min",
              "display" : "g/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "h",
          "target" : [
            {
              "code" : "h",
              "display" : "h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "j",
          "target" : [
            {
              "code" : "d",
              "display" : "j",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "kg",
          "target" : [
            {
              "code" : "kg",
              "display" : "kg",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "L",
          "target" : [
            {
              "code" : "L",
              "display" : "L",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "L/mn",
          "target" : [
            {
              "code" : "L/min",
              "display" : "L/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "m",
          "target" : [
            {
              "code" : "m",
              "display" : "m",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "m2",
          "target" : [
            {
              "code" : "m2",
              "display" : "m²",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "meq",
          "target" : [
            {
              "code" : "meq",
              "display" : "meq",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "meq/L",
          "target" : [
            {
              "code" : "meq/L",
              "display" : "meq/L",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg",
          "target" : [
            {
              "code" : "mg",
              "display" : "mg",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg/h",
          "target" : [
            {
              "code" : "mg/h",
              "display" : "mg/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg/kg",
          "target" : [
            {
              "code" : "mg/kg",
              "display" : "mg/kg",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg/kg/h",
          "target" : [
            {
              "code" : "mg/kg/h",
              "display" : "mg/kg/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg/kg/mn",
          "target" : [
            {
              "code" : "mg/kg/min",
              "display" : "mg/kg/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg/m2",
          "target" : [
            {
              "code" : "mg/m2",
              "display" : "mg/m²",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg/m2/h",
          "target" : [
            {
              "code" : "mg/m2/h",
              "display" : "mg/m²/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg/m2/mn",
          "target" : [
            {
              "code" : "mg/m2/min",
              "display" : "mg/m²/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mg/mn",
          "target" : [
            {
              "code" : "mg/min",
              "display" : "mg/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL",
          "target" : [
            {
              "code" : "mL",
              "display" : "mL",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL/h",
          "target" : [
            {
              "code" : "mL/h",
              "display" : "mL/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL/kg",
          "target" : [
            {
              "code" : "mL/kg",
              "display" : "mL/kg",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL/kg/h",
          "target" : [
            {
              "code" : "mL/kg/h",
              "display" : "mL/kg/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL/kg/mn",
          "target" : [
            {
              "code" : "mL/kg/min",
              "display" : "mL/kg/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL/m2",
          "target" : [
            {
              "code" : "mL/m2",
              "display" : "mL/m²",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL/m2/h",
          "target" : [
            {
              "code" : "mL/m2/h",
              "display" : "mL/m²/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL/m2/mn",
          "target" : [
            {
              "code" : "mL/m2/min",
              "display" : "mL/m²/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mL/mn",
          "target" : [
            {
              "code" : "mL/min",
              "display" : "mL/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mmol",
          "target" : [
            {
              "code" : "mmol",
              "display" : "mmol",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mmol/L",
          "target" : [
            {
              "code" : "mmol/L",
              "display" : "mmol/L",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mn",
          "target" : [
            {
              "code" : "min",
              "display" : "min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mois",
          "target" : [
            {
              "code" : "mo",
              "display" : "m",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "mosm/L",
          "target" : [
            {
              "code" : "mosm/L",
              "display" : "mosm/L",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ng",
          "target" : [
            {
              "code" : "ng",
              "display" : "ng",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ng/kg/mn",
          "target" : [
            {
              "code" : "ng/kg/min",
              "display" : "ng/kg/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "nkat",
          "target" : [
            {
              "code" : "nkat",
              "display" : "nkat",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "u",
          "target" : [
            {
              "code" : "U",
              "display" : "U",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug",
          "target" : [
            {
              "code" : "ug",
              "display" : "µg",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug/h",
          "target" : [
            {
              "code" : "ug/h",
              "display" : "µg/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug/kg",
          "target" : [
            {
              "code" : "ug/kg",
              "display" : "µg/kg",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug/kg/h",
          "target" : [
            {
              "code" : "ug/kg/h",
              "display" : "µg/kg/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug/kg/mn",
          "target" : [
            {
              "code" : "ug/kg/min",
              "display" : "µg/kg/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug/m2",
          "target" : [
            {
              "code" : "ug/m2",
              "display" : "µg/m²",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug/m2/h",
          "target" : [
            {
              "code" : "ug/m2/h",
              "display" : "µg/m²/h",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug/m2/mn",
          "target" : [
            {
              "code" : "ug/m2/min",
              "display" : "µg/m²/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug/mn",
          "target" : [
            {
              "code" : "ug/min",
              "display" : "µg/min",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ug_hagglu",
          "target" : [
            {
              "code" : "ug{hagglu}",
              "display" : "µg hémagglut.",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ukat",
          "target" : [
            {
              "code" : "ukat",
              "display" : "µkat",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "uL",
          "target" : [
            {
              "code" : "uL",
              "display" : "µL",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://www.phast.fr/ciodm/",
      "sourceVersion" : "2025",
      "target" : "http://standardterms.edqm.eu",
      "element" : [
        {
          "code" : "amp",
          "target" : [
            {
              "code" : "15002000",
              "display" : "Ampoule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "appln",
          "target" : [
            {
              "code" : "0005",
              "display" : "Application",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "applr",
          "target" : [
            {
              "code" : "15004000",
              "display" : "Applicateur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "baton",
          "target" : [
            {
              "code" : "15048000",
              "display" : "Bâton",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "BBCHE",
          "target" : [
            {
              "code" : "0015",
              "display" : "Rinçage/lavage",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "bouffee",
          "target" : [
            {
              "code" : "15001000",
              "display" : "Bouffée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "btle",
          "target" : [
            {
              "code" : "15009000",
              "display" : "Flacon",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "c_mes",
          "target" : [
            {
              "code" : "15047000",
              "display" : "Cuillère-mesure",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "caps",
          "target" : [
            {
              "code" : "15012000",
              "display" : "Gélule ou capsule molle ",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "cart",
          "target" : [
            {
              "code" : "15013000",
              "display" : "Cartouche",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "catap",
          "target" : [
            {
              "code" : "0076",
              "display" : "Cataplasme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "cpr",
          "target" : [
            {
              "code" : "15054000",
              "display" : "Comprimé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "cprsse",
          "target" : [
            {
              "code" : "15021000",
              "display" : "Compresse",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "dc",
          "target" : [
            {
              "code" : "15036000",
              "display" : "Patch",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "diu",
          "target" : [
            {
              "code" : "15053000",
              "display" : "Système",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "dtd",
          "target" : [
            {
              "code" : "15036000",
              "display" : "Patch",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "dvag",
          "target" : [
            {
              "code" : "15053000",
              "display" : "Système",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "EMPMED",
          "target" : [
            {
              "code" : "15042000",
              "display" : "Emplâtre",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "epmed",
          "target" : [
            {
              "code" : "15046000",
              "display" : "Eponge",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "film_ths",
          "target" : [
            {
              "code" : "15007000",
              "display" : "Plaquette",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "flac",
          "target" : [
            {
              "code" : "15060000",
              "display" : "Flacon",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "flm orodisp",
          "target" : [
            {
              "code" : "15023000",
              "display" : "Film",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "fut",
          "target" : [
            {
              "code" : "15006000",
              "display" : "Fût",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "gel",
          "target" : [
            {
              "code" : "15012000",
              "display" : "Gélule ou capsule molle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "godet",
          "target" : [
            {
              "code" : "15017000",
              "display" : "Godet",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "gomme",
          "target" : [
            {
              "code" : "0054",
              "display" : "Gomme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "granule",
          "target" : [
            {
              "code" : "15040000",
              "display" : "Granule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "gte",
          "target" : [
            {
              "code" : "15022000",
              "display" : "Goutte",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "implant",
          "target" : [
            {
              "code" : "15025000",
              "display" : "Implant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "inhalateur",
          "target" : [
            {
              "code" : "15026000",
              "display" : "Inhalateur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "insert",
          "target" : [
            {
              "code" : "15027000",
              "display" : "Insert",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "inst",
          "target" : [
            {
              "code" : "0013",
              "display" : "Instillation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "irrig",
          "target" : [
            {
              "code" : "0015",
              "display" : "Rinçage/lavage",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "lavg",
          "target" : [
            {
              "code" : "0006",
              "display" : "Bain",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "lavmt",
          "target" : [
            {
              "code" : "0004",
              "display" : "Administration",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "lyoph_or",
          "target" : [
            {
              "code" : "15030000",
              "display" : "Lyophilisat",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "matrice",
          "target" : [
            {
              "code" : "15031000",
              "display" : "Matrice",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ovule",
          "target" : [
            {
              "code" : "15039000",
              "display" : "Ovule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "past",
          "target" : [
            {
              "code" : "15029000",
              "display" : "Pastille",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "pâte",
          "target" : [
            {
              "code" : "0075",
              "display" : "Pâte",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "plaq",
          "target" : [
            {
              "code" : "15007000",
              "display" : "Plaquette",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "poche",
          "target" : [
            {
              "code" : "15005000",
              "display" : "Poche",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "pot",
          "target" : [
            {
              "code" : "15028000",
              "display" : "Pot",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "pulv",
          "target" : [
            {
              "code" : "0017",
              "display" : "Pulvérisation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "sachet",
          "target" : [
            {
              "code" : "15045000",
              "display" : "Sachet",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "SDIU",
          "target" : [
            {
              "code" : "15053000",
              "display" : "Système",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "SDV",
          "target" : [
            {
              "code" : "15053000",
              "display" : "Système",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ser",
          "target" : [
            {
              "code" : "15052000",
              "display" : "Seringue",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "ser_prr",
          "target" : [
            {
              "code" : "15052000",
              "display" : "Seringue",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "stylo_prr",
          "target" : [
            {
              "code" : "15037000",
              "display" : "Stylo",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "suppo",
          "target" : [
            {
              "code" : "15051000",
              "display" : "Suppositoire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "tube",
          "target" : [
            {
              "code" : "15058000",
              "display" : "Tube",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    }
  ]
}

```
