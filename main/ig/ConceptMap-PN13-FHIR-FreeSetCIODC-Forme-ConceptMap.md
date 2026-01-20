# Mapping Free Set CIO-DC FORME - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping Free Set CIO-DC FORME**

## ConceptMap: Mapping Free Set CIO-DC FORME 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/fhir/fr/medication/ConceptMap/PN13-FHIR-forme-conceptmap | *Version*:0.1.0 |
| Draft as of 2025-02-10 | *Computable Name*:FrPN13FHIRFreeSetCIODCFormeConceptMap |

 
ConceptMap pour la conversion des codes de forme de médicaments entre CIO et terminologies EQDM Standard Terms et SNOMED-CT 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "PN13-FHIR-FreeSetCIODC-Forme-ConceptMap",
  "language" : "fr-FR",
  "url" : "https://hl7.fr/fhir/fr/medication/ConceptMap/PN13-FHIR-forme-conceptmap",
  "version" : "0.1.0",
  "name" : "FrPN13FHIRFreeSetCIODCFormeConceptMap",
  "title" : "Mapping Free Set CIO-DC FORME",
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
  "description" : "ConceptMap pour la conversion des codes de forme de médicaments entre CIO et terminologies EQDM Standard Terms et SNOMED-CT",
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
      "target" : "http://standardterms.edqm.eu",
      "element" : [
        {
          "code" : "1",
          "target" : [
            {
              "code" : "10501000",
              "display" : "Bath additive",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "2",
          "target" : [
            {
              "code" : "10403000",
              "display" : "Bâton dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "4",
          "target" : [
            {
              "code" : "12104000",
              "display" : "Bâton intralésionnel",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "6",
          "target" : [
            {
              "code" : "10523000",
              "display" : "Bâton pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "7",
          "target" : [
            {
              "code" : "10715000",
              "display" : "Bâton pour usage auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "8",
          "target" : [
            {
              "code" : "10812000",
              "display" : "Bâton pour usage nasal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "9",
          "target" : [
            {
              "code" : "11505000",
              "display" : "Bâton pour usage urétral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "11",
          "target" : [
            {
              "code" : "10209000",
              "display" : "Cachet",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "12",
          "target" : [
            {
              "code" : "11014000",
              "display" : "Capsule  rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "13",
          "target" : [
            {
              "code" : "10317000",
              "display" : "Capsule buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "15",
          "target" : [
            {
              "code" : "10211000",
              "display" : "Capsule molle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "16",
          "target" : [
            {
              "code" : "10218000",
              "display" : "Capsule molle à libération modifiée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "17",
          "target" : [
            {
              "code" : "10216000",
              "display" : "Capsule molle à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "19",
          "target" : [
            {
              "code" : "10911000",
              "display" : "Capsule molle vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "20",
          "target" : [
            {
              "code" : "11113000",
              "display" : "Capsule pour inhalation par vapeur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "21",
          "target" : [
            {
              "code" : "10522000",
              "display" : "Cataplasme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "22",
          "target" : [
            {
              "code" : "12115000",
              "display" : "Colle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "24",
          "target" : [
            {
              "code" : "10520000",
              "display" : "Collodion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "25",
          "target" : [
            {
              "code" : "10609000",
              "display" : "Collyre à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "26",
          "target" : [
            {
              "code" : "10604000",
              "display" : "Collyre en solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "27",
          "target" : [
            {
              "code" : "10605000",
              "display" : "Collyre en suspension",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "28",
          "target" : [
            {
              "code" : "10525000",
              "display" : "Compresse imprégnée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "29",
          "target" : [
            {
              "code" : "10219000",
              "display" : "Comprimé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "30",
          "target" : [
            {
              "code" : "10228000",
              "display" : "Comprimé à croquer",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "31",
          "target" : [
            {
              "code" : "10227000",
              "display" : "Comprimé à libération modifiée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "32",
          "target" : [
            {
              "code" : "10226000",
              "display" : "Comprimé à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "33",
          "target" : [
            {
              "code" : "10322000",
              "display" : "Comprimé à sucer",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "35",
          "target" : [
            {
              "code" : "10121000",
              "display" : "Comprimé dispersible",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "36",
          "target" : [
            {
              "code" : "10222000",
              "display" : "Comprimé effervescent",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "37",
          "target" : [
            {
              "code" : "10220000",
              "display" : "Comprimé enrobé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "38",
          "target" : [
            {
              "code" : "10225000",
              "display" : "Comprimé gastrorésistant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "40",
          "target" : [
            {
              "code" : "10223000",
              "display" : "Comprimé orodispersible",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "41",
          "target" : [
            {
              "code" : "10221000",
              "display" : "Comprimé pelliculé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "42",
          "target" : [
            {
              "code" : "11302000",
              "display" : "Comprimé pour implantation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "43",
          "target" : [
            {
              "code" : "11115000",
              "display" : "Comprimé pour inhalation par vapeur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "44",
          "target" : [
            {
              "code" : "10120000",
              "display" : "Comprimé pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "45",
          "target" : [
            {
              "code" : "10311000",
              "display" : "Comprimé pour solution pour bain de bouche",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "46",
          "target" : [
            {
              "code" : "10304000",
              "display" : "Comprimé pour solution pour gargarisme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "47",
          "target" : [
            {
              "code" : "11011000",
              "display" : "Comprimé pour solution rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "48",
          "target" : [
            {
              "code" : "10908000",
              "display" : "Comprimé pour solution vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "49",
          "target" : [
            {
              "code" : "11012000",
              "display" : "Comprimé pour suspension rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "50",
          "target" : [
            {
              "code" : "10318000",
              "display" : "Comprimé sublingual",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "51",
          "target" : [
            {
              "code" : "10912000",
              "display" : "Comprimé vaginal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "52",
          "target" : [
            {
              "code" : "10913000",
              "display" : "Comprimé vaginal effervescent",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "53",
          "target" : [
            {
              "code" : "10502000",
              "display" : "Crème",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "54",
          "target" : [
            {
              "code" : "10701000",
              "display" : "Crème auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "55",
          "target" : [
            {
              "code" : "10801000",
              "display" : "Crème nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "56",
          "target" : [
            {
              "code" : "10601000",
              "display" : "Crème ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "57",
          "target" : [
            {
              "code" : "11001000",
              "display" : "Crème rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "58",
          "target" : [
            {
              "code" : "10901000",
              "display" : "Crème vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "62",
          "target" : [
            {
              "code" : "10519000",
              "display" : "Patch transdermique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "64",
          "target" : [
            {
              "code" : "10107000",
              "display" : "Emulsion buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "65",
          "target" : [
            {
              "code" : "10103000",
              "display" : "Emulsion buvable en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "66",
          "target" : [
            {
              "code" : "10408000",
              "display" : "Emulsion dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "67",
          "target" : [
            {
              "code" : "12111000",
              "display" : "Emulsion gastroentérale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "68",
          "target" : [
            {
              "code" : "11203000",
              "display" : "Emulsion injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "71",
          "target" : [
            {
              "code" : "10516000",
              "display" : "Emulsion cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "73",
          "target" : [
            {
              "code" : "11108000",
              "display" : "Emulsion pour inhalation en flacon pressurisé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "74",
          "target" : [
            {
              "code" : "11105000",
              "display" : "Emulsion pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "77",
          "target" : [
            {
              "code" : "10713000",
              "display" : "Emulsion pour lavage auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "78",
          "target" : [
            {
              "code" : "11211000",
              "display" : "Emulsion pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "80",
          "target" : [
            {
              "code" : "10711000",
              "display" : "Emulsion pour pulvérisation auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "81",
          "target" : [
            {
              "code" : "10810000",
              "display" : "Emulsion pour pulvérisation nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "84",
          "target" : [
            {
              "code" : "11007000",
              "display" : "Emulsion rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "85",
          "target" : [
            {
              "code" : "10907000",
              "display" : "Emulsion vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "89",
          "target" : [
            {
              "code" : "10503000",
              "display" : "Gel",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "90",
          "target" : [
            {
              "code" : "10702000",
              "display" : "Gel auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "91",
          "target" : [
            {
              "code" : "10313000",
              "display" : "Gel buccal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "92",
          "target" : [
            {
              "code" : "10402000",
              "display" : "Gel dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "93",
          "target" : [
            {
              "code" : "11701000",
              "display" : "Gel endocervical",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "94",
          "target" : [
            {
              "code" : "10315000",
              "display" : "Gel gingival",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "95",
          "target" : [
            {
              "code" : "10802000",
              "display" : "Gel nasal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "96",
          "target" : [
            {
              "code" : "10602000",
              "display" : "Gel ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "97",
          "target" : [
            {
              "code" : "10108000",
              "display" : "Gel oral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "98",
          "target" : [
            {
              "code" : "11002000",
              "display" : "Gel rectal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "99",
          "target" : [
            {
              "code" : "11504000",
              "display" : "Gel urétral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "100",
          "target" : [
            {
              "code" : "10902000",
              "display" : "Gel vaginal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "101",
          "target" : [
            {
              "code" : "10210000",
              "display" : "Gélule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "102",
          "target" : [
            {
              "code" : "10217000",
              "display" : "Gélule à libération modifiée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "103",
          "target" : [
            {
              "code" : "10215000",
              "display" : "Gélule à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "104",
          "target" : [
            {
              "code" : "10212000",
              "display" : "Gélule gastrorésistante",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "105",
          "target" : [
            {
              "code" : "10910000",
              "display" : "Gélule vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "106",
          "target" : [
            {
              "code" : "12106000",
              "display" : "Générateur radiopharmaceutique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "107",
          "target" : [
            {
              "code" : "10229000",
              "display" : "Gomme à mâcher médicamenteuse",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "108",
          "target" : [
            {
              "code" : "10230000",
              "display" : "Gomme orale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "110",
          "target" : [
            {
              "code" : "10204000",
              "display" : "Granulés",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "111",
          "target" : [
            {
              "code" : "10208000",
              "display" : "Granulés à libération modifiée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "112",
          "target" : [
            {
              "code" : "10207000",
              "display" : "Granulés à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "113",
          "target" : [
            {
              "code" : "10205000",
              "display" : "Granulés effervescents",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "114",
          "target" : [
            {
              "code" : "10206000",
              "display" : "Granulés gastrorésistants",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "116",
          "target" : [
            {
              "code" : "10119000",
              "display" : "Granulés pour sirop",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "117",
          "target" : [
            {
              "code" : "10112000",
              "display" : "Granulés pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "118",
          "target" : [
            {
              "code" : "10113000",
              "display" : "Granulés pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "119",
          "target" : [
            {
              "code" : "11301000",
              "display" : "Implant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "120",
          "target" : [
            {
              "code" : "11303000",
              "display" : "Implant en chaîne",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "122",
          "target" : [
            {
              "code" : "10612000",
              "display" : "Insert ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "123",
          "target" : [
            {
              "code" : "10104000",
              "display" : "Liquide oral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "124",
          "target" : [
            {
              "code" : "10512000",
              "display" : "Liquide cutané",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "125",
          "target" : [
            {
              "code" : "11117000",
              "display" : "Liquide pour inhalation par vapeur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "126",
          "target" : [
            {
              "code" : "10224000",
              "display" : "Lyophilisat oral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "128",
          "target" : [
            {
              "code" : "10507000",
              "display" : "Mousse cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "129",
          "target" : [
            {
              "code" : "11004000",
              "display" : "Mousse rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "130",
          "target" : [
            {
              "code" : "10904000",
              "display" : "Mousse vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "131",
          "target" : [
            {
              "code" : "10909000",
              "display" : "Ovule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "133",
          "target" : [
            {
              "code" : "10321000",
              "display" : "Pastille",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "134",
          "target" : [
            {
              "code" : "10314000",
              "display" : "Pâte buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "135",
          "target" : [
            {
              "code" : "10409000",
              "display" : "Pâte dentifrice",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "136",
          "target" : [
            {
              "code" : "10316000",
              "display" : "Pâte gingivale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "137",
          "target" : [
            {
              "code" : "10109000",
              "display" : "Pâte orale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "138",
          "target" : [
            {
              "code" : "10505000",
              "display" : "Pâte cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "139",
          "target" : [
            {
              "code" : "10122000",
              "display" : "Plante(s) pour tisane",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "141",
          "target" : [
            {
              "code" : "10504000",
              "display" : "Pommade",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "142",
          "target" : [
            {
              "code" : "10703000",
              "display" : "Pommade auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "144",
          "target" : [
            {
              "code" : "10803000",
              "display" : "Pommade nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "145",
          "target" : [
            {
              "code" : "10603000",
              "display" : "Pommade ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "146",
          "target" : [
            {
              "code" : "11116000",
              "display" : "Pommade pour inhalation par vapeur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "147",
          "target" : [
            {
              "code" : "11003000",
              "display" : "Pommade rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "148",
          "target" : [
            {
              "code" : "10903000",
              "display" : "Pommade vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "149",
          "target" : [
            {
              "code" : "10708000",
              "display" : "Poudre auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "150",
          "target" : [
            {
              "code" : "10405000",
              "display" : "Poudre dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "151",
          "target" : [
            {
              "code" : "10203000",
              "display" : "Poudre effervescente",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "152",
          "target" : [
            {
              "code" : "12116000",
              "display" : "Poudre et solvant pour colle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "153",
          "target" : [
            {
              "code" : "10606000",
              "display" : "Poudre et solvant pour collyre en solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "154",
          "target" : [
            {
              "code" : "10607000",
              "display" : "Poudre et solvant pour collyre en suspension",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "155",
          "target" : [
            {
              "code" : "11702000",
              "display" : "Poudre et solvant pour gel endocervical",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "156",
          "target" : [
            {
              "code" : "10114000",
              "display" : "Poudre et solvant pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "157",
          "target" : [
            {
              "code" : "11207000",
              "display" : "Poudre et solvant pour solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "158",
          "target" : [
            {
              "code" : "11604000",
              "display" : "Poudre et solvant pour solution pour instillation endotrachéobronchique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "159",
          "target" : [
            {
              "code" : "11214000",
              "display" : "Poudre et solvant pour solution pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "160",
          "target" : [
            {
              "code" : "10115000",
              "display" : "Poudre et solvant pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "161",
          "target" : [
            {
              "code" : "11208000",
              "display" : "Poudre et solvant pour suspension injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "162",
          "target" : [
            {
              "code" : "10807000",
              "display" : "Poudre nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "163",
          "target" : [
            {
              "code" : "10201000",
              "display" : "Poudre orale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "164",
          "target" : [
            {
              "code" : "10517000",
              "display" : "Poudre pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "165",
          "target" : [
            {
              "code" : "11109000",
              "display" : "Poudre pour inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "166",
          "target" : [
            {
              "code" : "11110000",
              "display" : "Poudre pour inhalation en gélule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "167",
          "target" : [
            {
              "code" : "11111000",
              "display" : "Poudre pour inhalation en récipient unidose",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "168",
          "target" : [
            {
              "code" : "11112000",
              "display" : "Poudre pour inhalation par vapeur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "169",
          "target" : [
            {
              "code" : "10511000",
              "display" : "Poudre pour pulvérisation cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "170",
          "target" : [
            {
              "code" : "10118000",
              "display" : "Poudre pour sirop",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "171",
          "target" : [
            {
              "code" : "10110000",
              "display" : "Poudre pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "172",
          "target" : [
            {
              "code" : "11205000",
              "display" : "Poudre pour solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "173",
          "target" : [
            {
              "code" : "10303000",
              "display" : "Poudre pour solution pour gargarisme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "174",
          "target" : [
            {
              "code" : "11104000",
              "display" : "Poudre pour solution pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "175",
          "target" : [
            {
              "code" : "11602000",
              "display" : "Poudre pour solution pour instillation endotrachéobronchique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "176",
          "target" : [
            {
              "code" : "11503000",
              "display" : "Poudre pour solution pour irrigation vésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "177",
          "target" : [
            {
              "code" : "11212000",
              "display" : "Poudre pour solution pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "178",
          "target" : [
            {
              "code" : "11009000",
              "display" : "Poudre pour solution rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "179",
          "target" : [
            {
              "code" : "10111000",
              "display" : "Poudre pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "180",
          "target" : [
            {
              "code" : "11206000",
              "display" : "Poudre pour suspension injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "181",
          "target" : [
            {
              "code" : "11103000",
              "display" : "Poudre pour suspension pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "182",
          "target" : [
            {
              "code" : "11010000",
              "display" : "Poudre pour suspension rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "183",
          "target" : [
            {
              "code" : "12105000",
              "display" : "Précurseur radiopharmaceutique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "185",
          "target" : [
            {
              "code" : "10202000",
              "display" : "Préparation instantanée pour tisane",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "187",
          "target" : [
            {
              "code" : "10508000",
              "display" : "Shampoing",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "188",
          "target" : [
            {
              "code" : "10117000",
              "display" : "Sirop",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "189",
          "target" : [
            {
              "code" : "10105000",
              "display" : "Solution  buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "190",
          "target" : [
            {
              "code" : "11209000",
              "display" : "Solution à diluer injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "191",
          "target" : [
            {
              "code" : "10514000",
              "display" : "Solution à diluer pour solution cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "192",
          "target" : [
            {
              "code" : "10302000",
              "display" : "Solution à diluer pour gargarisme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "193",
          "target" : [
            {
              "code" : "11405000",
              "display" : "Solution à diluer pour hémodialyse",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "194",
          "target" : [
            {
              "code" : "11213000",
              "display" : "Solution à diluer pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "195",
          "target" : [
            {
              "code" : "10305000",
              "display" : "Solution buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "196",
          "target" : [
            {
              "code" : "13168000",
              "display" : "Solution buccale en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "197",
          "target" : [
            {
              "code" : "10101000",
              "display" : "Solution buvable en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "198",
          "target" : [
            {
              "code" : "10406000",
              "display" : "Solution dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "199",
          "target" : [
            {
              "code" : "12108000",
              "display" : "Solution gastroentérale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "200",
          "target" : [
            {
              "code" : "10312000",
              "display" : "Solution gingivale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "201",
          "target" : [
            {
              "code" : "11201000",
              "display" : "Solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "204",
          "target" : [
            {
              "code" : "11502500",
              "display" : "Solution intravésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "205",
          "target" : [
            {
              "code" : "10513000",
              "display" : "Solution pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "206",
          "target" : [
            {
              "code" : "10310000",
              "display" : "Solution pour bain de bouche",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "208",
          "target" : [
            {
              "code" : "12112000",
              "display" : "Solution pour conservation d'organe",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "209",
          "target" : [
            {
              "code" : "11401000",
              "display" : "Solution pour dialyse péritonéale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "210",
          "target" : [
            {
              "code" : "10301000",
              "display" : "Solution pour gargarisme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "211",
          "target" : [
            {
              "code" : "11403000",
              "display" : "Solution pour hémodiafiltration",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "212",
          "target" : [
            {
              "code" : "11404000",
              "display" : "Solution pour hémodialyse",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "213",
          "target" : [
            {
              "code" : "11402000",
              "display" : "Solution pour hémofiltration",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "214",
          "target" : [
            {
              "code" : "11106000",
              "display" : "Solution pour inhalation en flacon pressurisé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "215",
          "target" : [
            {
              "code" : "11101000",
              "display" : "Solution pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "216",
          "target" : [
            {
              "code" : "11114000",
              "display" : "Solution pour inhalation par vapeur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "218",
          "target" : [
            {
              "code" : "11601000",
              "display" : "Solution pour instillation endotrachéobronchique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "220",
          "target" : [
            {
              "code" : "10518000",
              "display" : "Solution pour iontophorèse",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "221",
          "target" : [
            {
              "code" : "12113000",
              "display" : "Solution pour irrigation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "222",
          "target" : [
            {
              "code" : "12114000",
              "display" : "Solution pour irrigation stomacale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "223",
          "target" : [
            {
              "code" : "11502000",
              "display" : "Solution pour irrigation vésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "224",
          "target" : [
            {
              "code" : "10712000",
              "display" : "Solution pour lavage auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "225",
          "target" : [
            {
              "code" : "10811000",
              "display" : "Solution pour lavage nasal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "226",
          "target" : [
            {
              "code" : "10610000",
              "display" : "Solution pour lavage ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "228",
          "target" : [
            {
              "code" : "11210000",
              "display" : "Solution pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "229",
          "target" : [
            {
              "code" : "10309200",
              "display" : "Solution pour pulvérisation sublinguale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "231",
          "target" : [
            {
              "code" : "10709000",
              "display" : "Solution pour pulvérisation auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "232",
          "target" : [
            {
              "code" : "10308200",
              "display" : "Solution pour pulvérisation buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "233",
          "target" : [
            {
              "code" : "10509000",
              "display" : "Solution pour pulvérisation cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "235",
          "target" : [
            {
              "code" : "10808000",
              "display" : "Solution pour pulvérisation nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "238",
          "target" : [
            {
              "code" : "11005000",
              "display" : "Solution rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "239",
          "target" : [
            {
              "code" : "11008000",
              "display" : "Solution rectale à diluer",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "240",
          "target" : [
            {
              "code" : "10905000",
              "display" : "Solution vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "241",
          "target" : [
            {
              "code" : "10608000",
              "display" : "Solvant pour collyre",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "242",
          "target" : [
            {
              "code" : "11216000",
              "display" : "Solvant pour préparation parentérale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "243",
          "target" : [
            {
              "code" : "10611000",
              "display" : "Solvant pour solution pour lavage ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "244",
          "target" : [
            {
              "code" : "11013000",
              "display" : "Suppositoire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "245",
          "target" : [
            {
              "code" : "10306000",
              "display" : "Suspension buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "246",
          "target" : [
            {
              "code" : "10106000",
              "display" : "Suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "247",
          "target" : [
            {
              "code" : "10102000",
              "display" : "Suspension buvable en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "248",
          "target" : [
            {
              "code" : "10407000",
              "display" : "Suspension dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "249",
          "target" : [
            {
              "code" : "12110000",
              "display" : "Suspension gastroentérale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "250",
          "target" : [
            {
              "code" : "11202000",
              "display" : "Suspension injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "253",
          "target" : [
            {
              "code" : "10515000",
              "display" : "Suspension pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "255",
          "target" : [
            {
              "code" : "11107000",
              "display" : "Suspension pour inhalation en flacon pressurisé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "256",
          "target" : [
            {
              "code" : "11102000",
              "display" : "Suspension pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "258",
          "target" : [
            {
              "code" : "11603000",
              "display" : "Suspension pour instillation endotrachéobronchique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "261",
          "target" : [
            {
              "code" : "10710000",
              "display" : "Suspension pour pulvérisation auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "262",
          "target" : [
            {
              "code" : "10510000",
              "display" : "Suspension pour pulvérisation cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "263",
          "target" : [
            {
              "code" : "10809000",
              "display" : "Suspension pour pulvérisation nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "266",
          "target" : [
            {
              "code" : "11006000",
              "display" : "Suspension rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "267",
          "target" : [
            {
              "code" : "10906000",
              "display" : "Suspension vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "269",
          "target" : [
            {
              "code" : "10714000",
              "display" : "Tampon auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "270",
          "target" : [
            {
              "code" : "11015000",
              "display" : "Tampon rectal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "271",
          "target" : [
            {
              "code" : "10914000",
              "display" : "Tampon vaginal médicamenteux",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "272",
          "target" : [
            {
              "code" : "12107000",
              "display" : "Trousse pour préparation radiopharmaceutique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "273",
          "target" : [
            {
              "code" : "10521000",
              "display" : "Vernis à ongles médicamenteux",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "294",
          "target" : [
            {
              "code" : "12101000",
              "display" : "Laque dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "353",
          "target" : [
            {
              "code" : "50042000",
              "display" : "Poudre et solvant pour solution à diluer pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "373",
          "target" : [
            {
              "code" : "50043000",
              "display" : "Poudre pour solution à diluer pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "393",
          "target" : [
            {
              "code" : "11901000",
              "display" : "Système de diffusion intra-utérin",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "394",
          "target" : [
            {
              "code" : "10915000",
              "display" : "Système de diffusion vaginal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "413",
          "target" : [
            {
              "code" : "50044500",
              "display" : "Poudre et solvant pour dispersion injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "416",
          "target" : [
            {
              "code" : "10319000",
              "display" : "Comprimé buccogingival muco-adhésif",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "417",
          "target" : [
            {
              "code" : "10506000",
              "display" : "Emplâtre médicamenteux",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "419",
          "target" : [
            {
              "code" : "12118000",
              "display" : "Substitut de tissu vivant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "420",
          "target" : [
            {
              "code" : "11204000",
              "display" : "Gel injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "422",
          "target" : [
            {
              "code" : "12103000",
              "display" : "Solution pour la préparation ex vivo de fractions sanguines",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "474",
          "target" : [
            {
              "code" : "50048000",
              "display" : "Poudre et solvant pour suspension injectable à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "493",
          "target" : [
            {
              "code" : "50049500",
              "display" : "Poudre pour suspension pour implantation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "513",
          "target" : [
            {
              "code" : "50049250",
              "display" : "Powder for concentrate for solution for injection/infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "517",
          "target" : [
            {
              "code" : "50048500",
              "display" : "Poudre et suspension pour suspension injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "518",
          "target" : [
            {
              "code" : "50060000",
              "display" : "Solution injectable/pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "519",
          "target" : [
            {
              "code" : "50062000",
              "display" : "Suspension et granules effervescents pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "523",
          "target" : [
            {
              "code" : "12119000",
              "display" : "Eponge médicamenteuse",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "529",
          "target" : [
            {
              "code" : "50047500",
              "display" : "Poudre et solvant pour solution intravésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "538",
          "target" : [
            {
              "code" : "10314010",
              "display" : "crème buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "542",
          "target" : [
            {
              "code" : "50021500",
              "display" : "Emulsion et suspension pour émulsion injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "544",
          "target" : [
            {
              "code" : "10517500",
              "display" : "Patch cutané",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "545",
          "target" : [
            {
              "code" : "50026000",
              "display" : "Granulés gastrorésistants pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "546",
          "target" : [
            {
              "code" : "50047700",
              "display" : "Poudre et solvant pour solution pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "547",
          "target" : [
            {
              "code" : "50041500",
              "display" : "Poudre et solution pour solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "548",
          "target" : [
            {
              "code" : "50061500",
              "display" : "Solution pour colle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "549",
          "target" : [
            {
              "code" : "50051000",
              "display" : "Poudre pour suspension intravésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "550",
          "target" : [
            {
              "code" : "50007000",
              "display" : "Solution à diluer et solvant pour solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "552",
          "target" : [
            {
              "code" : "50006000",
              "display" : "Solution à diluer et solvant pour solution pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "553",
          "target" : [
            {
              "code" : "10213000",
              "display" : "Capsule molle gastrorésistante",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "556",
          "target" : [
            {
              "code" : "50047600",
              "display" : "Poudre et solvant pour suspension intravésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "557",
          "target" : [
            {
              "code" : "50077000",
              "display" : "Dispersion injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "559",
          "target" : [
            {
              "code" : "50021000",
              "display" : "Émulsion injectable/pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "560",
          "target" : [
            {
              "code" : "12120000",
              "display" : "Gel intestinal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "564",
          "target" : [
            {
              "code" : "10604500",
              "display" : "Collyre en émulsion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "566",
          "target" : [
            {
              "code" : "11208500",
              "display" : "Suspension injectable à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "567",
          "target" : [
            {
              "code" : "10308300",
              "display" : "Suspension pour pulvérisation buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "569",
          "target" : [
            {
              "code" : "10236100",
              "display" : "Film orodispersible",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "570",
          "target" : [
            {
              "code" : "12301000",
              "display" : "Gaz médicinal comprimé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "571",
          "target" : [
            {
              "code" : "50017000",
              "display" : "Pâte dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "573",
          "target" : [
            {
              "code" : "10525000",
              "display" : "Compresse imprégnée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "574",
          "target" : [
            {
              "code" : "10410000",
              "display" : "Gel périodontal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "576",
          "target" : [
            {
              "code" : "11209500",
              "display" : "Solution de cardioplégie",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "577",
          "target" : [
            {
              "code" : "50010000",
              "display" : "Solution à diluer pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "578",
          "target" : [
            {
              "code" : "12115100",
              "display" : "Matrice pour colle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "579",
          "target" : [
            {
              "code" : "12117000",
              "display" : "Tampon imprégné",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "580",
          "target" : [
            {
              "code" : "50081000",
              "display" : "Solution à inhaler",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "581",
          "target" : [
            {
              "code" : "10706000",
              "display" : "Emulsion auriculaire en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "582",
          "target" : [
            {
              "code" : "10806000",
              "display" : "Emulsion nasale en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "583",
          "target" : [
            {
              "code" : "12118000",
              "display" : "Substitut de tissu vivant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "584",
          "target" : [
            {
              "code" : "12302000",
              "display" : "Gaz médicinal cryogénique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "585",
          "target" : [
            {
              "code" : "12303000",
              "display" : "Gaz médicinal liquéfié",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "586",
          "target" : [
            {
              "code" : "50027000",
              "display" : "Granulés et solvant pour suspension injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "587",
          "target" : [
            {
              "code" : "10411000",
              "display" : "Insert périodontal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "588",
          "target" : [
            {
              "code" : "10804000",
              "display" : "Solution nasale en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "589",
          "target" : [
            {
              "code" : "10704000",
              "display" : "Solution auriculaire en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "590",
          "target" : [
            {
              "code" : "13004000",
              "display" : "Suspension à diluer injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "591",
          "target" : [
            {
              "code" : "10705000",
              "display" : "Suspension auriculaire en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "592",
          "target" : [
            {
              "code" : "10805000",
              "display" : "Suspension nasale en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "593",
          "target" : [
            {
              "code" : "50021000",
              "display" : "Émulsion injectable/pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "594",
          "target" : [
            {
              "code" : "50060000",
              "display" : "Solution injectable/pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "595",
          "target" : [
            {
              "code" : "50049250",
              "display" : "Powder for concentrate for solution for injection/infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "597",
          "target" : [
            {
              "code" : "10320000",
              "display" : "Comprimé buccogingival",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "598",
          "target" : [
            {
              "code" : "10707000",
              "display" : "Poudre et solvant pour suspension auriculaire en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "599",
          "target" : [
            {
              "code" : "50079000",
              "display" : "Solution à diluer pour solution injectable/pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "600",
          "target" : [
            {
              "code" : "50053500",
              "display" : "Powder for solution for injection/infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "601",
          "target" : [
            {
              "code" : "50001000",
              "display" : "Comprimé dispersible / à croquer",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "602",
          "target" : [
            {
              "code" : "50080000",
              "display" : "Powder and solvent for solution for injection/infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "603",
          "target" : [
            {
              "code" : "50037900",
              "display" : "Solution buvable/rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "604",
          "target" : [
            {
              "code" : "50024000",
              "display" : "Solution pour gargarisme/bain de bouche",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "605",
          "target" : [
            {
              "code" : "50057000",
              "display" : "Solution pour hémodialyse/hémofiltration",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "606",
          "target" : [
            {
              "code" : "50036700",
              "display" : "Solution pour pulvérisation nasale/ buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "607",
          "target" : [
            {
              "code" : "13045000",
              "display" : "Suspension intravésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "608",
          "target" : [
            {
              "code" : "50015200",
              "display" : "Pommade cutanée/ nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "609",
          "target" : [
            {
              "code" : "50055350",
              "display" : "Poudre, solvant et matrice pour matrice pour implantation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "610",
          "target" : [
            {
              "code" : "11303300",
              "display" : "Matrice pour implantation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "614",
          "target" : [
            {
              "code" : "12111500",
              "display" : "Solution intrapéritonéale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "625",
          "target" : [
            {
              "code" : "11303500",
              "display" : "Suspension pour implantation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "629",
          "target" : [
            {
              "code" : "50052000",
              "display" : "Poudre pour suspension oral/rectal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "630",
          "target" : [
            {
              "code" : "13050000",
              "display" : "Gaz pour dispersion injectable/ pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "639",
          "target" : [
            {
              "code" : "50038000",
              "display" : "Suspension buvable/rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "640",
          "target" : [
            {
              "code" : "13049000",
              "display" : "Dispersion injectable/ pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "641",
          "target" : [
            {
              "code" : "13013000",
              "display" : "Gaz pour dispersion injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "642",
          "target" : [
            {
              "code" : "13012000",
              "display" : "Gaz pour dispersion pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "643",
          "target" : [
            {
              "code" : "50017500",
              "display" : "Dispersion pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "658",
          "target" : [
            {
              "code" : "14006000",
              "display" : "Granulés effervescents + comprimé pelliculé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "661",
          "target" : [
            {
              "code" : "10604000",
              "display" : "Collyre en solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "663",
          "target" : [
            {
              "code" : "11211500",
              "display" : "Poudre pour dispersion pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "664",
          "target" : [
            {
              "code" : "50050000",
              "display" : "Poudre pour solution intravésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "667",
          "target" : [
            {
              "code" : "50032000",
              "display" : "Emulsion pour inhalation par vapeur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "668",
          "target" : [
            {
              "code" : "10548000",
              "display" : "solution pour prick-test",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "671",
          "target" : [
            {
              "code" : "10546250",
              "display" : "Gel transdermique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "673",
          "target" : [
            {
              "code" : "50073500",
              "display" : "Solution pour irrigation intraoculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "674",
          "target" : [
            {
              "code" : "50033000",
              "display" : "Tampon imprégné pour inhalation par vapeur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "675",
          "target" : [
            {
              "code" : "50026500",
              "display" : "Granulés et solvant pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "676",
          "target" : [
            {
              "code" : "13107000",
              "display" : "Solution pour cardioplégie/préservation d'organe",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "677",
          "target" : [
            {
              "code" : "50009300",
              "display" : "Dispersion à diluer pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "679",
          "target" : [
            {
              "code" : "13127000",
              "display" : "Sublingual lyophilisate",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "680",
          "target" : [
            {
              "code" : "13046000",
              "display" : "Granulés enrobés",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "681",
          "target" : [
            {
              "code" : "13113000",
              "display" : "Intrauterine gel",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "684",
          "target" : [
            {
              "code" : "50033400",
              "display" : "Solution intravésicale/solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "685",
          "target" : [
            {
              "code" : "13119000",
              "display" : "Poudre effervescente et poudre pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "686",
          "target" : [
            {
              "code" : "13076000",
              "display" : "Solution injectable à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "687",
          "target" : [
            {
              "code" : "13148000",
              "display" : "Ovule à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "688",
          "target" : [
            {
              "code" : "50040500",
              "display" : "Solution/ solution pour pulvérisation buccale/ laryngopharyngée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "690",
          "target" : [
            {
              "code" : "13166000",
              "display" : "Suspension et gel pour gel",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "691",
          "target" : [
            {
              "code" : "13145000",
              "display" : "Tampon cutané imprégné en applicateur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "692",
          "target" : [
            {
              "code" : "50003000",
              "display" : "Solution à diluer et solvant pour solution cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "693",
          "target" : [
            {
              "code" : "13139000",
              "display" : "Dispersion à diluer pour dispersion injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "694",
          "target" : [
            {
              "code" : "13159000",
              "display" : "Eye drops, prolonged-release solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "695",
          "target" : [
            {
              "code" : "13177000",
              "display" : "Granulés pour suspension buvable gastrorésistante",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "696",
          "target" : [
            {
              "code" : "50022500",
              "display" : "Eye drops, prolonged-release solution in single-dose container",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    },
    {
      "source" : "https://www.phast.fr/ciodm/",
      "sourceVersion" : "2025",
      "target" : "https://www.snomed.org/",
      "element" : [
        {
          "code" : "2",
          "target" : [
            {
              "code" : "385089000",
              "display" : "bâton dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "4",
          "target" : [
            {
              "code" : "385261007",
              "display" : "Wound stick (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "6",
          "target" : [
            {
              "code" : "385118004",
              "display" : "bâton pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "7",
          "target" : [
            {
              "code" : "385148001",
              "display" : "bâton pour usage auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "8",
          "target" : [
            {
              "code" : "385162008",
              "display" : "bâton pour usage nasal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "9",
          "target" : [
            {
              "code" : "385246006",
              "display" : "bâton pour usage urétral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "11",
          "target" : [
            {
              "code" : "385048003",
              "display" : "Cachet",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "12",
          "target" : [
            {
              "code" : "385195002",
              "display" : "Capsule rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "13",
          "target" : [
            {
              "code" : "385083004",
              "display" : "Oromucosal capsule (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "15",
          "target" : [
            {
              "code" : "1217288001",
              "display" : "Soft oral capsule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "19",
          "target" : [
            {
              "code" : "385177000",
              "display" : "Capsule molle vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "20",
          "target" : [
            {
              "code" : "1231565000",
              "display" : "Capsule for vapor inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "21",
          "target" : [
            {
              "code" : "385117009",
              "display" : "Cataplasme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "22",
          "target" : [
            {
              "code" : "385265003",
              "display" : "Colle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "24",
          "target" : [
            {
              "code" : "385115001",
              "display" : "Collodion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "25",
          "target" : [
            {
              "code" : "385128008",
              "display" : "Collyre à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "26",
          "target" : [
            {
              "code" : "385125006",
              "display" : "Collyre en solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "27",
          "target" : [
            {
              "code" : "422068008",
              "display" : "Collyre en suspension",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "28",
          "target" : [
            {
              "code" : "1231836003",
              "display" : "Absorbent impregnated material for cutaneous application",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "29",
          "target" : [
            {
              "code" : "421026006",
              "display" : "comprimé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "30",
          "target" : [
            {
              "code" : "66076007",
              "display" : "Comprimé à croquer",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "31",
          "target" : [
            {
              "code" : "385061003",
              "display" : "comprimé oral à libération modifiée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "32",
          "target" : [
            {
              "code" : "385060002",
              "display" : "comprimé oral à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "33",
          "target" : [
            {
              "code" : "764501003",
              "display" : "Conventional release oromucosal lozenge",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "35",
          "target" : [
            {
              "code" : "421366001",
              "display" : "comprimé pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "36",
          "target" : [
            {
              "code" : "764780001",
              "display" : "comprimé oral effervescent",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "37",
          "target" : [
            {
              "code" : "1230389004",
              "display" : "Coated oral tablet",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "38",
          "target" : [
            {
              "code" : "385059007",
              "display" : "comprimé oral enrobé gastrorésistant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "40",
          "target" : [
            {
              "code" : "447079001",
              "display" : "Comprimé orodispersible",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "41",
          "target" : [
            {
              "code" : "1163573008",
              "display" : "Film-coated oral tablet",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "42",
          "target" : [
            {
              "code" : "385236009",
              "display" : "Comprimé pour implantation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "43",
          "target" : [
            {
              "code" : "1231566004",
              "display" : "Conventional release tablet for vapor inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "44",
          "target" : [
            {
              "code" : "421701006",
              "display" : "comprimé pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "47",
          "target" : [
            {
              "code" : "385192004",
              "display" : "Comprimé pour solution rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "48",
          "target" : [
            {
              "code" : "385173001",
              "display" : "Comprimé pour solution vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "49",
          "target" : [
            {
              "code" : "385193009",
              "display" : "Comprimé pour suspension rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "50",
          "target" : [
            {
              "code" : "385084005",
              "display" : "Comprimé sublingual",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "51",
          "target" : [
            {
              "code" : "385178005",
              "display" : "Comprimé vaginal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "52",
          "target" : [
            {
              "code" : "385179002",
              "display" : "Comprimé vaginal effervescent",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "53",
          "target" : [
            {
              "code" : "421628006",
              "display" : "Cutaneous cream",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "54",
          "target" : [
            {
              "code" : "385133007",
              "display" : "Crème auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "55",
          "target" : [
            {
              "code" : "385149009",
              "display" : "Crème nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "56",
          "target" : [
            {
              "code" : "385121002",
              "display" : "Crème ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "57",
          "target" : [
            {
              "code" : "385182007",
              "display" : "Crème rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "58",
          "target" : [
            {
              "code" : "385165005",
              "display" : "Crème vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "61",
          "target" : [
            {
              "code" : "442015005",
              "display" : "forme pharmaceutique intra-utérine",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "62",
          "target" : [
            {
              "code" : "385114002",
              "display" : "Dispositif cutané",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "63",
          "target" : [
            {
              "code" : "385292009",
              "display" : "forme pharmaceutique pour usage vaginal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "64",
          "target" : [
            {
              "code" : "385025008",
              "display" : "Émulsion buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "65",
          "target" : [
            {
              "code" : "385021004",
              "display" : "Émulsion buvable en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "66",
          "target" : [
            {
              "code" : "385096003",
              "display" : "Émulsion dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "67",
          "target" : [
            {
              "code" : "385260008",
              "display" : "Émulsion gastro-entérale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "68",
          "target" : [
            {
              "code" : "385221006",
              "display" : "Émulsion injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "71",
          "target" : [
            {
              "code" : "385111005",
              "display" : "Émulsion pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "73",
          "target" : [
            {
              "code" : "385206000",
              "display" : "Émulsion pour inhalation en flacon pressurisé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "74",
          "target" : [
            {
              "code" : "385202003",
              "display" : "Émulsion pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "75",
          "target" : [
            {
              "code" : "385143005",
              "display" : "Émulsion pour instillation auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "76",
          "target" : [
            {
              "code" : "385160000",
              "display" : "Émulsion pour instillation nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "78",
          "target" : [
            {
              "code" : "765367006",
              "display" : "Conventional release emulsion for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "80",
          "target" : [
            {
              "code" : "385143005",
              "display" : "Émulsion pour instillation auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "81",
          "target" : [
            {
              "code" : "385160000",
              "display" : "Émulsion pour instillation nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "84",
          "target" : [
            {
              "code" : "385189003",
              "display" : "Émulsion rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "85",
          "target" : [
            {
              "code" : "385172006",
              "display" : "Émulsion vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "86",
          "target" : [
            {
              "code" : "385119007",
              "display" : "Éponge pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "88",
          "target" : [
            {
              "code" : "385217004",
              "display" : "Gaz pour inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "89",
          "target" : [
            {
              "code" : "421949005",
              "display" : "Cutaneous gel",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "90",
          "target" : [
            {
              "code" : "385134001",
              "display" : "Gel auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "91",
          "target" : [
            {
              "code" : "385078007",
              "display" : "Gel buccal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "92",
          "target" : [
            {
              "code" : "385088008",
              "display" : "Gel dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "93",
          "target" : [
            {
              "code" : "385251000",
              "display" : "Gel endocervical",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "94",
          "target" : [
            {
              "code" : "385081002",
              "display" : "Gel gingival",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "95",
          "target" : [
            {
              "code" : "385150009",
              "display" : "Gel nasal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "96",
          "target" : [
            {
              "code" : "385122009",
              "display" : "Gel ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "97",
          "target" : [
            {
              "code" : "385038000",
              "display" : "Gel oral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "98",
          "target" : [
            {
              "code" : "385183002",
              "display" : "Gel rectal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "99",
          "target" : [
            {
              "code" : "385245005",
              "display" : "Gel urétral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "100",
          "target" : [
            {
              "code" : "385166006",
              "display" : "Gel vaginal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "101",
          "target" : [
            {
              "code" : "420692007",
              "display" : "capsule orale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "102",
          "target" : [
            {
              "code" : "1217286002",
              "display" : "Modified-release oral hard capsule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "103",
          "target" : [
            {
              "code" : "385053008",
              "display" : "gélule à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "104",
          "target" : [
            {
              "code" : "385052003",
              "display" : "gélule gastrorésistante",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "105",
          "target" : [
            {
              "code" : "385176009",
              "display" : "Gélule vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "107",
          "target" : [
            {
              "code" : "385080001",
              "display" : "Medicated chewing-gum (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "108",
          "target" : [
            {
              "code" : "385063000",
              "display" : "Gomme orale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "110",
          "target" : [
            {
              "code" : "385028005",
              "display" : "granulés pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "111",
          "target" : [
            {
              "code" : "385047008",
              "display" : "Granulés à libération modifiée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "112",
          "target" : [
            {
              "code" : "385046004",
              "display" : "Granulés à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "113",
          "target" : [
            {
              "code" : "385044001",
              "display" : "Granulés effervescents",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "114",
          "target" : [
            {
              "code" : "385045000",
              "display" : "Granulés gastrorésistants",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "116",
          "target" : [
            {
              "code" : "385034003",
              "display" : "Granulés pour sirop",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "117",
          "target" : [
            {
              "code" : "385028005",
              "display" : "Granulés pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "118",
          "target" : [
            {
              "code" : "385029002",
              "display" : "Granulés pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "119",
          "target" : [
            {
              "code" : "1231572004",
              "display" : "Prolonged-release transdermal delivery system",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "120",
          "target" : [
            {
              "code" : "385237000",
              "display" : "Implant en chaîne",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "121",
          "target" : [
            {
              "code" : "385090009",
              "display" : "Insert dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "122",
          "target" : [
            {
              "code" : "764842006",
              "display" : "Prolonged-release ocular implant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "123",
          "target" : [
            {
              "code" : "1231713000",
              "display" : "Conventional release oral pure liquid",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "124",
          "target" : [
            {
              "code" : "1231712005",
              "display" : "Conventional release cutaneous pure liquid",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "125",
          "target" : [
            {
              "code" : "1231711003",
              "display" : "Conventional release pure liquid for vapor inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "126",
          "target" : [
            {
              "code" : "385062005",
              "display" : "Lyophilisat oral",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "128",
          "target" : [
            {
              "code" : "385103000",
              "display" : "Conventional release cutaneous foam",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "129",
          "target" : [
            {
              "code" : "385185009",
              "display" : "Mousse rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "130",
          "target" : [
            {
              "code" : "385168007",
              "display" : "Mousse vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "131",
          "target" : [
            {
              "code" : "767059009",
              "display" : "ovule vaginal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "133",
          "target" : [
            {
              "code" : "764501003",
              "display" : "Oromucosal lozenge",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "134",
          "target" : [
            {
              "code" : "385079004",
              "display" : "Pâte buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "135",
          "target" : [
            {
              "code" : "1231723009",
              "display" : "Conventional release toothpaste",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "136",
          "target" : [
            {
              "code" : "385082009",
              "display" : "Pâte gingivale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "137",
          "target" : [
            {
              "code" : "385039008",
              "display" : "Pâte orale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "138",
          "target" : [
            {
              "code" : "385102005",
              "display" : "Pâte pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "139",
          "target" : [
            {
              "code" : "385037005",
              "display" : "Plante(s) pour tisane",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "141",
          "target" : [
            {
              "code" : "425753008",
              "display" : "Cutaneous ointment",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "142",
          "target" : [
            {
              "code" : "385135000",
              "display" : "Pommade auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "144",
          "target" : [
            {
              "code" : "385151008",
              "display" : "Pommade nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "145",
          "target" : [
            {
              "code" : "385123004",
              "display" : "Pommade ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "146",
          "target" : [
            {
              "code" : "1231564001",
              "display" : "Conventional release ointment for vapor inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "147",
          "target" : [
            {
              "code" : "385184008",
              "display" : "Pommade rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "148",
          "target" : [
            {
              "code" : "385167002",
              "display" : "Pommade vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "149",
          "target" : [
            {
              "code" : "385139006",
              "display" : "Poudre auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "150",
          "target" : [
            {
              "code" : "385091008",
              "display" : "Poudre dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "151",
          "target" : [
            {
              "code" : "1230336000",
              "display" : "Conventional release oral effervescent powder",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "152",
          "target" : [
            {
              "code" : "385266002",
              "display" : "Poudre et solvant pour colle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "158",
          "target" : [
            {
              "code" : "385247002",
              "display" : "solution pour instillation endotrachéobronchique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "162",
          "target" : [
            {
              "code" : "385156003",
              "display" : "Poudre nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "163",
          "target" : [
            {
              "code" : "385041009",
              "display" : "Poudre orale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "164",
          "target" : [
            {
              "code" : "385112003",
              "display" : "Poudre pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "165",
          "target" : [
            {
              "code" : "385207009",
              "display" : "Poudre pour inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "166",
          "target" : [
            {
              "code" : "385208004",
              "display" : "Poudre pour inhalation en gélule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "167",
          "target" : [
            {
              "code" : "422054001",
              "display" : "Poudre pour inhalation en récipient unidose",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "168",
          "target" : [
            {
              "code" : "1231563007",
              "display" : "Conventional release powder for vapor inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "169",
          "target" : [
            {
              "code" : "385278003",
              "display" : "Poudre pour pulvérisation cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "170",
          "target" : [
            {
              "code" : "385033009",
              "display" : "Poudre pour sirop",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "171",
          "target" : [
            {
              "code" : "385026009",
              "display" : "Poudre pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "172",
          "target" : [
            {
              "code" : "385223009",
              "display" : "poudre pour solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "174",
          "target" : [
            {
              "code" : "385201005",
              "display" : "Poudre pour solution pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "175",
          "target" : [
            {
              "code" : "1230324006",
              "display" : "Powder for conventional release solution for endotracheopulmonary instillation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "177",
          "target" : [
            {
              "code" : "764843001",
              "display" : "Powder for conventional release solution for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "178",
          "target" : [
            {
              "code" : "761899004",
              "display" : "Powder for conventional release rectal solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "179",
          "target" : [
            {
              "code" : "385027000",
              "display" : "Poudre effervescente pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "180",
          "target" : [
            {
              "code" : "385224003",
              "display" : "Poudre pour suspension injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "181",
          "target" : [
            {
              "code" : "385200006",
              "display" : "Poudre pour suspension pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "182",
          "target" : [
            {
              "code" : "385191006",
              "display" : "Poudre pour suspension rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "183",
          "target" : [
            {
              "code" : "385254008",
              "display" : "Précurseur radiopharmaceutique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "185",
          "target" : [
            {
              "code" : "385040005",
              "display" : "Préparation instantanée pour tisane",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "187",
          "target" : [
            {
              "code" : "785908001",
              "display" : "Conventional release cutaneous shampoo",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "188",
          "target" : [
            {
              "code" : "385032004",
              "display" : "Sirop",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "189",
          "target" : [
            {
              "code" : "385023001",
              "display" : "Solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "190",
          "target" : [
            {
              "code" : "1237268008",
              "display" : "Concentrate for solution for injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "191",
          "target" : [
            {
              "code" : "1237287002",
              "display" : "Concentrate for cutaneous solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "193",
          "target" : [
            {
              "code" : "1237275009",
              "display" : "Concentrate for solution for hemodialysis",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "194",
          "target" : [
            {
              "code" : "1237267003",
              "display" : "Concentrate for solution for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "195",
          "target" : [
            {
              "code" : "385070000",
              "display" : "Solution buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "196",
          "target" : [
            {
              "code" : "385072008",
              "display" : "Solution buccale en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "197",
          "target" : [
            {
              "code" : "385019009",
              "display" : "Solution buvable en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "198",
          "target" : [
            {
              "code" : "385094000",
              "display" : "Solution dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "199",
          "target" : [
            {
              "code" : "385258006",
              "display" : "Solution gastro-entérale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "200",
          "target" : [
            {
              "code" : "385077002",
              "display" : "Solution gingivale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "201",
          "target" : [
            {
              "code" : "385219001",
              "display" : "Solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "204",
          "target" : [
            {
              "code" : "385242008",
              "display" : "Solution intravésicale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "205",
          "target" : [
            {
              "code" : "385108009",
              "display" : "Solution pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "206",
          "target" : [
            {
              "code" : "70409003",
              "display" : "Solution pour bain de bouche",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "208",
          "target" : [
            {
              "code" : "385262000",
              "display" : "Solution pour conservation d'organe",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "209",
          "target" : [
            {
              "code" : "1231473006",
              "display" : "Conventional release solution for peritoneal dialysis",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "210",
          "target" : [
            {
              "code" : "385065007",
              "display" : "Solution pour gargarisme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "211",
          "target" : [
            {
              "code" : "1231478002",
              "display" : "Conventional release solution for haemodiafiltration",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "212",
          "target" : [
            {
              "code" : "1231474000",
              "display" : "Conventional release solution for haemodialysis",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "213",
          "target" : [
            {
              "code" : "1231476003",
              "display" : "Conventional release solution for haemofiltration",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "214",
          "target" : [
            {
              "code" : "385204002",
              "display" : "Solution pour inhalation en flacon pressurisé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "215",
          "target" : [
            {
              "code" : "385198000",
              "display" : "Solution pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "216",
          "target" : [
            {
              "code" : "1231567008",
              "display" : "Conventional release solution for vapor inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "218",
          "target" : [
            {
              "code" : "385247002",
              "display" : "solution pour instillation endotrachéobronchique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "220",
          "target" : [
            {
              "code" : "385113008",
              "display" : "Solution pour iontophorèse",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "221",
          "target" : [
            {
              "code" : "785898006",
              "display" : "Conventional release solution for irrigation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "222",
          "target" : [
            {
              "code" : "385264004",
              "display" : "irrigation gastrique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "223",
          "target" : [
            {
              "code" : "385243003",
              "display" : "Bladder irrigation (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "225",
          "target" : [
            {
              "code" : "385161001",
              "display" : "Nasal wash (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "226",
          "target" : [
            {
              "code" : "385130005",
              "display" : "Solution pour lavage ophtalmique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "228",
          "target" : [
            {
              "code" : "385229008",
              "display" : "Solution pour perfusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "229",
          "target" : [
            {
              "code" : "385074009",
              "display" : "Conventional release sublingual spray",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "231",
          "target" : [
            {
              "code" : "385141007",
              "display" : "Solution pour pulvérisation auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "232",
          "target" : [
            {
              "code" : "385073003",
              "display" : "Oromucosal spray",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "233",
          "target" : [
            {
              "code" : "385105007",
              "display" : "Cutaneous spray",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "235",
          "target" : [
            {
              "code" : "385158002",
              "display" : "Solution pour pulvérisation nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "238",
          "target" : [
            {
              "code" : "385187001",
              "display" : "Solution rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "239",
          "target" : [
            {
              "code" : "1237266007",
              "display" : "Concentrate for rectal solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "240",
          "target" : [
            {
              "code" : "385170003",
              "display" : "Solution vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "244",
          "target" : [
            {
              "code" : "420929008",
              "display" : "suppositoire rectal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "245",
          "target" : [
            {
              "code" : "385071001",
              "display" : "Suspension buccale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "246",
          "target" : [
            {
              "code" : "385024007",
              "display" : "Suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "247",
          "target" : [
            {
              "code" : "385020003",
              "display" : "Suspension buvable en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "248",
          "target" : [
            {
              "code" : "385095004",
              "display" : "Suspension dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "249",
          "target" : [
            {
              "code" : "385259003",
              "display" : "Suspension gastro-entérale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "250",
          "target" : [
            {
              "code" : "385220007",
              "display" : "Suspension injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "253",
          "target" : [
            {
              "code" : "385110006",
              "display" : "Suspension pour application cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "255",
          "target" : [
            {
              "code" : "385205001",
              "display" : "Suspension pour inhalation en flacon pressurisé",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "256",
          "target" : [
            {
              "code" : "385199008",
              "display" : "Suspension pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "258",
          "target" : [
            {
              "code" : "385250004",
              "display" : "Suspension pour instillation endotrachéobronchique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "261",
          "target" : [
            {
              "code" : "385142000",
              "display" : "Suspension pour pulvérisation auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "262",
          "target" : [
            {
              "code" : "385279006",
              "display" : "Suspension pour pulvérisation cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "263",
          "target" : [
            {
              "code" : "422080000",
              "display" : "suspension nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "266",
          "target" : [
            {
              "code" : "385188006",
              "display" : "Suspension rectale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "267",
          "target" : [
            {
              "code" : "385171004",
              "display" : "Suspension vaginale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "269",
          "target" : [
            {
              "code" : "385147006",
              "display" : "Tampon auriculaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "270",
          "target" : [
            {
              "code" : "385196001",
              "display" : "Tampon rectal",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "271",
          "target" : [
            {
              "code" : "385180004",
              "display" : "Medicated vaginal tampon (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "272",
          "target" : [
            {
              "code" : "385256005",
              "display" : "Trousse pour préparation radiopharmaceutique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "273",
          "target" : [
            {
              "code" : "385116000",
              "display" : "Medicated nail laquer (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "373",
          "target" : [
            {
              "code" : "385231004",
              "display" : "Powder for infusion solution (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "393",
          "target" : [
            {
              "code" : "1237073006",
              "display" : "Prolonged-release intrauterine delivery system",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "394",
          "target" : [
            {
              "code" : "420631002",
              "display" : "Conventional release vaginal insert",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "416",
          "target" : [
            {
              "code" : "385085006",
              "display" : "Buccal tablet",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "417",
          "target" : [
            {
              "code" : "36875001",
              "display" : "Drug patch (qualifier value)",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "513",
          "target" : [
            {
              "code" : "385223009",
              "display" : "poudre pour solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "515",
          "target" : [
            {
              "code" : "420378007",
              "display" : "comprimé oral pelliculé à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "521",
          "target" : [
            {
              "code" : "421637006",
              "display" : "Lyophilisat et solvant pour solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "523",
          "target" : [
            {
              "code" : "421288004",
              "display" : "Éponge médicamenteuse",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "525",
          "target" : [
            {
              "code" : "421366001",
              "display" : "Comprimé pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "526",
          "target" : [
            {
              "code" : "385045000",
              "display" : "Granulés gastrorésistants",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "527",
          "target" : [
            {
              "code" : "422201009",
              "display" : "comprimé pour solution cutanée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "528",
          "target" : [
            {
              "code" : "421425002",
              "display" : "Poudre et solvant pour inhalation par nébuliseur",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "531",
          "target" : [
            {
              "code" : "385027000",
              "display" : "Poudre effervescente pour suspension buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "534",
          "target" : [
            {
              "code" : "385059007",
              "display" : "comprimé oral enrobé gastrorésistant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "535",
          "target" : [
            {
              "code" : "421637006",
              "display" : "Lyophilisat et solvant pour solution injectable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "538",
          "target" : [
            {
              "code" : "1217290000",
              "display" : "Oromucosal cream",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "539",
          "target" : [
            {
              "code" : "385059007",
              "display" : "comprimé oral enrobé gastrorésistant",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "543",
          "target" : [
            {
              "code" : "422264003",
              "display" : "Poudre et solvant pour solution injectable à libération prolongée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "544",
          "target" : [
            {
              "code" : "764485007",
              "display" : "dispositif transdermique",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "545",
          "target" : [
            {
              "code" : "761901008",
              "display" : "Delayed-release granules for oral suspension",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "547",
          "target" : [
            {
              "code" : "385223009",
              "display" : "poudre pour solution injectable à libération conventionnelle",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "549",
          "target" : [
            {
              "code" : "761907007",
              "display" : "Powder for conventional release intravesical suspension",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "553",
          "target" : [
            {
              "code" : "765061001",
              "display" : "Delayed-release oral soft capsule",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "557",
          "target" : [
            {
              "code" : "1230185002",
              "display" : "Conventional release dispersion for injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "558",
          "target" : [
            {
              "code" : "769115006",
              "display" : "poudre effervescente pour solution buvable",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "560",
          "target" : [
            {
              "code" : "1255346009",
              "display" : "Intestinal gel",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "561",
          "target" : [
            {
              "code" : "385044001",
              "display" : "Granulés effervescents",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "563",
          "target" : [
            {
              "code" : "765065005",
              "display" : "Powder for conventional release suspension for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "564",
          "target" : [
            {
              "code" : "761900009",
              "display" : "Conventional release emulsion for eye drops",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "565",
          "target" : [
            {
              "code" : "422336005",
              "display" : "Solution nasale",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "566",
          "target" : [
            {
              "code" : "420873008",
              "display" : "Extended-release suspension for injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "567",
          "target" : [
            {
              "code" : "761906003",
              "display" : "Conventional release suspension for oromucosal spray",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "568",
          "target" : [
            {
              "code" : "421343002",
              "display" : "Powder for conventional release cutaneous solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "569",
          "target" : [
            {
              "code" : "447050008",
              "display" : "Film orodispersible",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "570",
          "target" : [
            {
              "code" : "1230331005",
              "display" : "Compressed gas for inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "571",
          "target" : [
            {
              "code" : "763445009",
              "display" : "pâte dentaire",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "573",
          "target" : [
            {
              "code" : "385120001",
              "display" : "compresse imprégnée",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "574",
          "target" : [
            {
              "code" : "1230220004",
              "display" : "Conventional release periodontal gel",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "576",
          "target" : [
            {
              "code" : "1231577005",
              "display" : "Conventional release solution for cardioplegia",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "577",
          "target" : [
            {
              "code" : "1237265006",
              "display" : "Concentrate for oral solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "580",
          "target" : [
            {
              "code" : "420641004",
              "display" : "Conventional release solution for inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "581",
          "target" : [
            {
              "code" : "385138003",
              "display" : "Émulsion auriculaire en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "582",
          "target" : [
            {
              "code" : "385155004",
              "display" : "Émulsion nasale en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "584",
          "target" : [
            {
              "code" : "1230329001",
              "display" : "Conventional release cryogenic gas for inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "585",
          "target" : [
            {
              "code" : "1230330006",
              "display" : "Conventional release liquified gas for inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "587",
          "target" : [
            {
              "code" : "1230222007",
              "display" : "Conventional release periodontal insert",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "588",
          "target" : [
            {
              "code" : "385153006",
              "display" : "Solution nasale en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "589",
          "target" : [
            {
              "code" : "385137008",
              "display" : "Solution auriculaire en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "590",
          "target" : [
            {
              "code" : "1237263004",
              "display" : "Concentrate for suspension for injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "591",
          "target" : [
            {
              "code" : "420891003",
              "display" : "Suspension auriculaire en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "592",
          "target" : [
            {
              "code" : "385154000",
              "display" : "Suspension nasale en gouttes",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "593",
          "target" : [
            {
              "code" : "1209141005",
              "display" : "Conventional release emulsion for infusion and/or injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "594",
          "target" : [
            {
              "code" : "1208958005",
              "display" : "Conventional release solution for infusion and/or injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "597",
          "target" : [
            {
              "code" : "385085006",
              "display" : "Buccal tablet",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "600",
          "target" : [
            {
              "code" : "1209021002",
              "display" : "Powder for conventional release solution for infusion and/or injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "603",
          "target" : [
            {
              "code" : "1209096001",
              "display" : "Conventional release oral or rectal solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "604",
          "target" : [
            {
              "code" : "385065007",
              "display" : "solution pour gargarisme",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "607",
          "target" : [
            {
              "code" : "1231579008",
              "display" : "Conventional release intravesical suspension",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "626",
          "target" : [
            {
              "code" : "764799005",
              "display" : "Conventional release suspension for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "641",
          "target" : [
            {
              "code" : "1230195009",
              "display" : "Gas for conventional release dispersion for injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "642",
          "target" : [
            {
              "code" : "1230194008",
              "display" : "Gas for conventional release dispersion for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "643",
          "target" : [
            {
              "code" : "1230184003",
              "display" : "Conventional release dispersion for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "655",
          "target" : [
            {
              "code" : "1237269000",
              "display" : "Concentrate for solution for infusion and/or injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "661",
          "target" : [
            {
              "code" : "422060001",
              "display" : "Conventional release eye solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "663",
          "target" : [
            {
              "code" : "1230196005",
              "display" : "Powder for conventional release dispersion for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "664",
          "target" : [
            {
              "code" : "1231578000",
              "display" : "Powder for conventional release intravesical solution",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "667",
          "target" : [
            {
              "code" : "1231562002",
              "display" : "Conventional release emulsion for vapor inhalation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "670",
          "target" : [
            {
              "code" : "1237271000",
              "display" : "Concentrate for dispersion for injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "671",
          "target" : [
            {
              "code" : "764802001",
              "display" : "Conventional release transdermal gel",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "673",
          "target" : [
            {
              "code" : "785899003",
              "display" : "Conventional release solution for ocular irrigation",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "677",
          "target" : [
            {
              "code" : "1237273002",
              "display" : "Concentrate for dispersion for infusion",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "680",
          "target" : [
            {
              "code" : "1230390008",
              "display" : "Coated oral granules",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "686",
          "target" : [
            {
              "code" : "1231833006",
              "display" : "Prolonged-release solution for injection",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "687",
          "target" : [
            {
              "code" : "782648001",
              "display" : "Prolonged-release vaginal pessary",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    }
  ]
}

```
