Instance: PN13-FHIR-FreeSetCIODC-Forme-ConceptMap
InstanceOf: ConceptMap
Description: "Conversion des codes CIO de forme de médicament en codes des terminologies EQDM Standard Terms et SNOMED-CT"
Usage: #definition
* language = #fr-FR
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Transformation codes CIO vers terminologie cible identifiée pour les formes de médicaments</div>"
* url = "https://hl7.fr/fhir/fr/medication/ConceptMap/PN13-FHIR-forme-conceptmap"
* version = "0.1.0"
* name = "FrPN13FHIRFreeSetCIODCFormeConceptMap"
* title = "Mapping Free Set CIO-DC FORME"
* status = #draft
* date = "2025-02-10T11:15:38Z"
* publisher = "Interop'Santé"
* contact.name = "Interop'Santé"
* contact.telecom.system = #url
* contact.telecom.value = "http://interopsante.org/"
* description = "ConceptMap pour la conversion des codes de forme de médicaments entre CIO et terminologies EQDM Standard Terms et SNOMED-CT"
* group[0].source = "https://www.phast.fr/ciodm/"
* group[=].sourceVersion = "2025"
* group[=].target = "https://www.edqm.eu/en/standard-terms-database"
* group[=].element[0].code = #1
* group[=].element[=].target.code = #10501000
* group[=].element[=].target.display = "Bath additive"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #2
* group[=].element[=].target.code = #10403000
* group[=].element[=].target.display = "Bâton dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4
* group[=].element[=].target.code = #12104000
* group[=].element[=].target.display = "Bâton intralésionnel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #6
* group[=].element[=].target.code = #10523000
* group[=].element[=].target.display = "Bâton pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #7
* group[=].element[=].target.code = #10715000
* group[=].element[=].target.display = "Bâton pour usage auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #8
* group[=].element[=].target.code = #10812000
* group[=].element[=].target.display = "Bâton pour usage nasal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #9
* group[=].element[=].target.code = #11505000
* group[=].element[=].target.display = "Bâton pour usage urétral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #11
* group[=].element[=].target.code = #10209000
* group[=].element[=].target.display = "Cachet"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #12
* group[=].element[=].target.code = #11014000
* group[=].element[=].target.display = "Capsule  rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #13
* group[=].element[=].target.code = #10317000
* group[=].element[=].target.display = "Capsule buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #15
* group[=].element[=].target.code = #10211000
* group[=].element[=].target.display = "Capsule molle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #16
* group[=].element[=].target.code = #10218000
* group[=].element[=].target.display = "Capsule molle à libération modifiée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #17
* group[=].element[=].target.code = #10216000
* group[=].element[=].target.display = "Capsule molle à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #19
* group[=].element[=].target.code = #10911000
* group[=].element[=].target.display = "Capsule molle vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #20
* group[=].element[=].target.code = #11113000
* group[=].element[=].target.display = "Capsule pour inhalation par vapeur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #21
* group[=].element[=].target.code = #10522000
* group[=].element[=].target.display = "Cataplasme"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #22
* group[=].element[=].target.code = #12115000
* group[=].element[=].target.display = "Colle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #24
* group[=].element[=].target.code = #10520000
* group[=].element[=].target.display = "Collodion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #25
* group[=].element[=].target.code = #10609000
* group[=].element[=].target.display = "Collyre à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #26
* group[=].element[=].target.code = #10604000
* group[=].element[=].target.display = "Collyre en solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #27
* group[=].element[=].target.code = #10605000
* group[=].element[=].target.display = "Collyre en suspension"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #28
* group[=].element[=].target.code = #10525000
* group[=].element[=].target.display = "Compresse imprégnée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #29
* group[=].element[=].target.code = #10219000
* group[=].element[=].target.display = "Comprimé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #30
* group[=].element[=].target.code = #10228000
* group[=].element[=].target.display = "Comprimé à croquer"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #31
* group[=].element[=].target.code = #10227000
* group[=].element[=].target.display = "Comprimé à libération modifiée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #32
* group[=].element[=].target.code = #10226000
* group[=].element[=].target.display = "Comprimé à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #33
* group[=].element[=].target.code = #10322000
* group[=].element[=].target.display = "Comprimé à sucer"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #35
* group[=].element[=].target.code = #10121000
* group[=].element[=].target.display = "Comprimé dispersible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #36
* group[=].element[=].target.code = #10222000
* group[=].element[=].target.display = "Comprimé effervescent"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #37
* group[=].element[=].target.code = #10220000
* group[=].element[=].target.display = "Comprimé enrobé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #38
* group[=].element[=].target.code = #10225000
* group[=].element[=].target.display = "Comprimé gastrorésistant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #40
* group[=].element[=].target.code = #10223000
* group[=].element[=].target.display = "Comprimé orodispersible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #41
* group[=].element[=].target.code = #10221000
* group[=].element[=].target.display = "Comprimé pelliculé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #42
* group[=].element[=].target.code = #11302000
* group[=].element[=].target.display = "Comprimé pour implantation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #43
* group[=].element[=].target.code = #11115000
* group[=].element[=].target.display = "Comprimé pour inhalation par vapeur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #44
* group[=].element[=].target.code = #10120000
* group[=].element[=].target.display = "Comprimé pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #45
* group[=].element[=].target.code = #10311000
* group[=].element[=].target.display = "Comprimé pour solution pour bain de bouche"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #46
* group[=].element[=].target.code = #10304000
* group[=].element[=].target.display = "Comprimé pour solution pour gargarisme"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #47
* group[=].element[=].target.code = #11011000
* group[=].element[=].target.display = "Comprimé pour solution rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #48
* group[=].element[=].target.code = #10908000
* group[=].element[=].target.display = "Comprimé pour solution vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #49
* group[=].element[=].target.code = #11012000
* group[=].element[=].target.display = "Comprimé pour suspension rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #50
* group[=].element[=].target.code = #10318000
* group[=].element[=].target.display = "Comprimé sublingual"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #51
* group[=].element[=].target.code = #10912000
* group[=].element[=].target.display = "Comprimé vaginal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #52
* group[=].element[=].target.code = #10913000
* group[=].element[=].target.display = "Comprimé vaginal effervescent"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #53
* group[=].element[=].target.code = #10502000
* group[=].element[=].target.display = "Crème"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #54
* group[=].element[=].target.code = #10701000
* group[=].element[=].target.display = "Crème auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #55
* group[=].element[=].target.code = #10801000
* group[=].element[=].target.display = "Crème nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #56
* group[=].element[=].target.code = #10601000
* group[=].element[=].target.display = "Crème ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #57
* group[=].element[=].target.code = #11001000
* group[=].element[=].target.display = "Crème rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #58
* group[=].element[=].target.code = #10901000
* group[=].element[=].target.display = "Crème vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62
* group[=].element[=].target.code = #10519000
* group[=].element[=].target.display = "Patch transdermique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #64
* group[=].element[=].target.code = #10107000
* group[=].element[=].target.display = "Emulsion buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #65
* group[=].element[=].target.code = #10103000
* group[=].element[=].target.display = "Emulsion buvable en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #66
* group[=].element[=].target.code = #10408000
* group[=].element[=].target.display = "Emulsion dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #67
* group[=].element[=].target.code = #12111000
* group[=].element[=].target.display = "Emulsion gastroentérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #68
* group[=].element[=].target.code = #11203000
* group[=].element[=].target.display = "Emulsion injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #71
* group[=].element[=].target.code = #10516000
* group[=].element[=].target.display = "Emulsion cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #73
* group[=].element[=].target.code = #11108000
* group[=].element[=].target.display = "Emulsion pour inhalation en flacon pressurisé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #74
* group[=].element[=].target.code = #11105000
* group[=].element[=].target.display = "Emulsion pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #77
* group[=].element[=].target.code = #10713000
* group[=].element[=].target.display = "Emulsion pour lavage auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #78
* group[=].element[=].target.code = #11211000
* group[=].element[=].target.display = "Emulsion pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #80
* group[=].element[=].target.code = #10711000
* group[=].element[=].target.display = "Emulsion pour pulvérisation auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #81
* group[=].element[=].target.code = #10810000
* group[=].element[=].target.display = "Emulsion pour pulvérisation nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #84
* group[=].element[=].target.code = #11007000
* group[=].element[=].target.display = "Emulsion rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #85
* group[=].element[=].target.code = #10907000
* group[=].element[=].target.display = "Emulsion vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #89
* group[=].element[=].target.code = #10503000
* group[=].element[=].target.display = "Gel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #90
* group[=].element[=].target.code = #10702000
* group[=].element[=].target.display = "Gel auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #91
* group[=].element[=].target.code = #10313000
* group[=].element[=].target.display = "Gel buccal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #92
* group[=].element[=].target.code = #10402000
* group[=].element[=].target.display = "Gel dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #93
* group[=].element[=].target.code = #11701000
* group[=].element[=].target.display = "Gel endocervical"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #94
* group[=].element[=].target.code = #10315000
* group[=].element[=].target.display = "Gel gingival"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #95
* group[=].element[=].target.code = #10802000
* group[=].element[=].target.display = "Gel nasal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #96
* group[=].element[=].target.code = #10602000
* group[=].element[=].target.display = "Gel ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #97
* group[=].element[=].target.code = #10108000
* group[=].element[=].target.display = "Gel oral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #98
* group[=].element[=].target.code = #11002000
* group[=].element[=].target.display = "Gel rectal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #99
* group[=].element[=].target.code = #11504000
* group[=].element[=].target.display = "Gel urétral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #100
* group[=].element[=].target.code = #10902000
* group[=].element[=].target.display = "Gel vaginal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #101
* group[=].element[=].target.code = #10210000
* group[=].element[=].target.display = "Gélule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #102
* group[=].element[=].target.code = #10217000
* group[=].element[=].target.display = "Gélule à libération modifiée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #103
* group[=].element[=].target.code = #10215000
* group[=].element[=].target.display = "Gélule à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #104
* group[=].element[=].target.code = #10212000
* group[=].element[=].target.display = "Gélule gastrorésistante"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #105
* group[=].element[=].target.code = #10910000
* group[=].element[=].target.display = "Gélule vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #106
* group[=].element[=].target.code = #12106000
* group[=].element[=].target.display = "Générateur radiopharmaceutique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #107
* group[=].element[=].target.code = #10229000
* group[=].element[=].target.display = "Gomme à mâcher médicamenteuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #108
* group[=].element[=].target.code = #10230000
* group[=].element[=].target.display = "Gomme orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #110
* group[=].element[=].target.code = #10204000
* group[=].element[=].target.display = "Granulés"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #111
* group[=].element[=].target.code = #10208000
* group[=].element[=].target.display = "Granulés à libération modifiée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #112
* group[=].element[=].target.code = #10207000
* group[=].element[=].target.display = "Granulés à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #113
* group[=].element[=].target.code = #10205000
* group[=].element[=].target.display = "Granulés effervescents"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #114
* group[=].element[=].target.code = #10206000
* group[=].element[=].target.display = "Granulés gastrorésistants"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #116
* group[=].element[=].target.code = #10119000
* group[=].element[=].target.display = "Granulés pour sirop"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #117
* group[=].element[=].target.code = #10112000
* group[=].element[=].target.display = "Granulés pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #118
* group[=].element[=].target.code = #10113000
* group[=].element[=].target.display = "Granulés pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #119
* group[=].element[=].target.code = #11301000
* group[=].element[=].target.display = "Implant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #120
* group[=].element[=].target.code = #11303000
* group[=].element[=].target.display = "Implant en chaîne"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #122
* group[=].element[=].target.code = #10612000
* group[=].element[=].target.display = "Insert ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #123
* group[=].element[=].target.code = #10104000
* group[=].element[=].target.display = "Liquide oral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #124
* group[=].element[=].target.code = #10512000
* group[=].element[=].target.display = "Liquide cutané"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #125
* group[=].element[=].target.code = #11117000
* group[=].element[=].target.display = "Liquide pour inhalation par vapeur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #126
* group[=].element[=].target.code = #10224000
* group[=].element[=].target.display = "Lyophilisat oral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #128
* group[=].element[=].target.code = #10507000
* group[=].element[=].target.display = "Mousse cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #129
* group[=].element[=].target.code = #11004000
* group[=].element[=].target.display = "Mousse rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #130
* group[=].element[=].target.code = #10904000
* group[=].element[=].target.display = "Mousse vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #131
* group[=].element[=].target.code = #10909000
* group[=].element[=].target.display = "Ovule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #133
* group[=].element[=].target.code = #10321000
* group[=].element[=].target.display = "Pastille"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #134
* group[=].element[=].target.code = #10314000
* group[=].element[=].target.display = "Pâte buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #135
* group[=].element[=].target.code = #10409000
* group[=].element[=].target.display = "Pâte dentifrice"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #136
* group[=].element[=].target.code = #10316000
* group[=].element[=].target.display = "Pâte gingivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #137
* group[=].element[=].target.code = #10109000
* group[=].element[=].target.display = "Pâte orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #138
* group[=].element[=].target.code = #10505000
* group[=].element[=].target.display = "Pâte cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #139
* group[=].element[=].target.code = #10122000
* group[=].element[=].target.display = "Plante(s) pour tisane"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #141
* group[=].element[=].target.code = #10504000
* group[=].element[=].target.display = "Pommade"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #142
* group[=].element[=].target.code = #10703000
* group[=].element[=].target.display = "Pommade auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #144
* group[=].element[=].target.code = #10803000
* group[=].element[=].target.display = "Pommade nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #145
* group[=].element[=].target.code = #10603000
* group[=].element[=].target.display = "Pommade ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #146
* group[=].element[=].target.code = #11116000
* group[=].element[=].target.display = "Pommade pour inhalation par vapeur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #147
* group[=].element[=].target.code = #11003000
* group[=].element[=].target.display = "Pommade rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #148
* group[=].element[=].target.code = #10903000
* group[=].element[=].target.display = "Pommade vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #149
* group[=].element[=].target.code = #10708000
* group[=].element[=].target.display = "Poudre auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #150
* group[=].element[=].target.code = #10405000
* group[=].element[=].target.display = "Poudre dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #151
* group[=].element[=].target.code = #10203000
* group[=].element[=].target.display = "Poudre effervescente"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #152
* group[=].element[=].target.code = #12116000
* group[=].element[=].target.display = "Poudre et solvant pour colle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #153
* group[=].element[=].target.code = #10606000
* group[=].element[=].target.display = "Poudre et solvant pour collyre en solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #154
* group[=].element[=].target.code = #10607000
* group[=].element[=].target.display = "Poudre et solvant pour collyre en suspension"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #155
* group[=].element[=].target.code = #11702000
* group[=].element[=].target.display = "Poudre et solvant pour gel endocervical"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #156
* group[=].element[=].target.code = #10114000
* group[=].element[=].target.display = "Poudre et solvant pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #157
* group[=].element[=].target.code = #11207000
* group[=].element[=].target.display = "Poudre et solvant pour solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #158
* group[=].element[=].target.code = #11604000
* group[=].element[=].target.display = "Poudre et solvant pour solution pour instillation endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #159
* group[=].element[=].target.code = #11214000
* group[=].element[=].target.display = "Poudre et solvant pour solution pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #160
* group[=].element[=].target.code = #10115000
* group[=].element[=].target.display = "Poudre et solvant pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #161
* group[=].element[=].target.code = #11208000
* group[=].element[=].target.display = "Poudre et solvant pour suspension injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #162
* group[=].element[=].target.code = #10807000
* group[=].element[=].target.display = "Poudre nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #163
* group[=].element[=].target.code = #10201000
* group[=].element[=].target.display = "Poudre orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #164
* group[=].element[=].target.code = #10517000
* group[=].element[=].target.display = "Poudre pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #165
* group[=].element[=].target.code = #11109000
* group[=].element[=].target.display = "Poudre pour inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #166
* group[=].element[=].target.code = #11110000
* group[=].element[=].target.display = "Poudre pour inhalation en gélule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #167
* group[=].element[=].target.code = #11111000
* group[=].element[=].target.display = "Poudre pour inhalation en récipient unidose"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #168
* group[=].element[=].target.code = #11112000
* group[=].element[=].target.display = "Poudre pour inhalation par vapeur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #169
* group[=].element[=].target.code = #10511000
* group[=].element[=].target.display = "Poudre pour pulvérisation cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #170
* group[=].element[=].target.code = #10118000
* group[=].element[=].target.display = "Poudre pour sirop"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #171
* group[=].element[=].target.code = #10110000
* group[=].element[=].target.display = "Poudre pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #172
* group[=].element[=].target.code = #11205000
* group[=].element[=].target.display = "Poudre pour solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #173
* group[=].element[=].target.code = #10303000
* group[=].element[=].target.display = "Poudre pour solution pour gargarisme"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #174
* group[=].element[=].target.code = #11104000
* group[=].element[=].target.display = "Poudre pour solution pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #175
* group[=].element[=].target.code = #11602000
* group[=].element[=].target.display = "Poudre pour solution pour instillation endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #176
* group[=].element[=].target.code = #11503000
* group[=].element[=].target.display = "Poudre pour solution pour irrigation vésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #177
* group[=].element[=].target.code = #11212000
* group[=].element[=].target.display = "Poudre pour solution pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #178
* group[=].element[=].target.code = #11009000
* group[=].element[=].target.display = "Poudre pour solution rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #179
* group[=].element[=].target.code = #10111000
* group[=].element[=].target.display = "Poudre pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #180
* group[=].element[=].target.code = #11206000
* group[=].element[=].target.display = "Poudre pour suspension injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #181
* group[=].element[=].target.code = #11103000
* group[=].element[=].target.display = "Poudre pour suspension pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #182
* group[=].element[=].target.code = #11010000
* group[=].element[=].target.display = "Poudre pour suspension rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #183
* group[=].element[=].target.code = #12105000
* group[=].element[=].target.display = "Précurseur radiopharmaceutique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #185
* group[=].element[=].target.code = #10202000
* group[=].element[=].target.display = "Préparation instantanée pour tisane"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #187
* group[=].element[=].target.code = #10508000
* group[=].element[=].target.display = "Shampoing"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #188
* group[=].element[=].target.code = #10117000
* group[=].element[=].target.display = "Sirop"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #189
* group[=].element[=].target.code = #10105000
* group[=].element[=].target.display = "Solution  buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #190
* group[=].element[=].target.code = #11209000
* group[=].element[=].target.display = "Solution à diluer injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #191
* group[=].element[=].target.code = #10514000
* group[=].element[=].target.display = "Solution à diluer pour solution cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #192
* group[=].element[=].target.code = #10302000
* group[=].element[=].target.display = "Solution à diluer pour gargarisme"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #193
* group[=].element[=].target.code = #11405000
* group[=].element[=].target.display = "Solution à diluer pour hémodialyse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #194
* group[=].element[=].target.code = #11213000
* group[=].element[=].target.display = "Solution à diluer pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #195
* group[=].element[=].target.code = #10305000
* group[=].element[=].target.display = "Solution buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #196
* group[=].element[=].target.code = #13168000
* group[=].element[=].target.display = "Solution buccale en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #197
* group[=].element[=].target.code = #10101000
* group[=].element[=].target.display = "Solution buvable en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #198
* group[=].element[=].target.code = #10406000
* group[=].element[=].target.display = "Solution dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #199
* group[=].element[=].target.code = #12108000
* group[=].element[=].target.display = "Solution gastroentérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #200
* group[=].element[=].target.code = #10312000
* group[=].element[=].target.display = "Solution gingivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #201
* group[=].element[=].target.code = #11201000
* group[=].element[=].target.display = "Solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #204
* group[=].element[=].target.code = #11502500
* group[=].element[=].target.display = "Solution intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #205
* group[=].element[=].target.code = #10513000
* group[=].element[=].target.display = "Solution pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #206
* group[=].element[=].target.code = #10310000
* group[=].element[=].target.display = "Solution pour bain de bouche"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #208
* group[=].element[=].target.code = #12112000
* group[=].element[=].target.display = "Solution pour conservation d'organe"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #209
* group[=].element[=].target.code = #11401000
* group[=].element[=].target.display = "Solution pour dialyse péritonéale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #210
* group[=].element[=].target.code = #10301000
* group[=].element[=].target.display = "Solution pour gargarisme"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #211
* group[=].element[=].target.code = #11403000
* group[=].element[=].target.display = "Solution pour hémodiafiltration"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #212
* group[=].element[=].target.code = #11404000
* group[=].element[=].target.display = "Solution pour hémodialyse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #213
* group[=].element[=].target.code = #11402000
* group[=].element[=].target.display = "Solution pour hémofiltration"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #214
* group[=].element[=].target.code = #11106000
* group[=].element[=].target.display = "Solution pour inhalation en flacon pressurisé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #215
* group[=].element[=].target.code = #11101000
* group[=].element[=].target.display = "Solution pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #216
* group[=].element[=].target.code = #11114000
* group[=].element[=].target.display = "Solution pour inhalation par vapeur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #218
* group[=].element[=].target.code = #11601000
* group[=].element[=].target.display = "Solution pour instillation endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #220
* group[=].element[=].target.code = #10518000
* group[=].element[=].target.display = "Solution pour iontophorèse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #221
* group[=].element[=].target.code = #12113000
* group[=].element[=].target.display = "Solution pour irrigation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #222
* group[=].element[=].target.code = #12114000
* group[=].element[=].target.display = "Solution pour irrigation stomacale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #223
* group[=].element[=].target.code = #11502000
* group[=].element[=].target.display = "Solution pour irrigation vésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #224
* group[=].element[=].target.code = #10712000
* group[=].element[=].target.display = "Solution pour lavage auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #225
* group[=].element[=].target.code = #10811000
* group[=].element[=].target.display = "Solution pour lavage nasal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #226
* group[=].element[=].target.code = #10610000
* group[=].element[=].target.display = "Solution pour lavage ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #228
* group[=].element[=].target.code = #11210000
* group[=].element[=].target.display = "Solution pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #229
* group[=].element[=].target.code = #10309200
* group[=].element[=].target.display = "Solution pour pulvérisation sublinguale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #231
* group[=].element[=].target.code = #10709000
* group[=].element[=].target.display = "Solution pour pulvérisation auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #232
* group[=].element[=].target.code = #10308200
* group[=].element[=].target.display = "Solution pour pulvérisation buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #233
* group[=].element[=].target.code = #10509000
* group[=].element[=].target.display = "Solution pour pulvérisation cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #235
* group[=].element[=].target.code = #10808000
* group[=].element[=].target.display = "Solution pour pulvérisation nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #238
* group[=].element[=].target.code = #11005000
* group[=].element[=].target.display = "Solution rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #239
* group[=].element[=].target.code = #11008000
* group[=].element[=].target.display = "Solution rectale à diluer"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #240
* group[=].element[=].target.code = #10905000
* group[=].element[=].target.display = "Solution vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #241
* group[=].element[=].target.code = #10608000
* group[=].element[=].target.display = "Solvant pour collyre"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #242
* group[=].element[=].target.code = #11216000
* group[=].element[=].target.display = "Solvant pour préparation parentérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #243
* group[=].element[=].target.code = #10611000
* group[=].element[=].target.display = "Solvant pour solution pour lavage ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #244
* group[=].element[=].target.code = #11013000
* group[=].element[=].target.display = "Suppositoire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #245
* group[=].element[=].target.code = #10306000
* group[=].element[=].target.display = "Suspension buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #246
* group[=].element[=].target.code = #10106000
* group[=].element[=].target.display = "Suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #247
* group[=].element[=].target.code = #10102000
* group[=].element[=].target.display = "Suspension buvable en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #248
* group[=].element[=].target.code = #10407000
* group[=].element[=].target.display = "Suspension dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #249
* group[=].element[=].target.code = #12110000
* group[=].element[=].target.display = "Suspension gastroentérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #250
* group[=].element[=].target.code = #11202000
* group[=].element[=].target.display = "Suspension injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #253
* group[=].element[=].target.code = #10515000
* group[=].element[=].target.display = "Suspension pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #255
* group[=].element[=].target.code = #11107000
* group[=].element[=].target.display = "Suspension pour inhalation en flacon pressurisé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #256
* group[=].element[=].target.code = #11102000
* group[=].element[=].target.display = "Suspension pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #258
* group[=].element[=].target.code = #11603000
* group[=].element[=].target.display = "Suspension pour instillation endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #261
* group[=].element[=].target.code = #10710000
* group[=].element[=].target.display = "Suspension pour pulvérisation auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #262
* group[=].element[=].target.code = #10510000
* group[=].element[=].target.display = "Suspension pour pulvérisation cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #263
* group[=].element[=].target.code = #10809000
* group[=].element[=].target.display = "Suspension pour pulvérisation nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #266
* group[=].element[=].target.code = #11006000
* group[=].element[=].target.display = "Suspension rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #267
* group[=].element[=].target.code = #10906000
* group[=].element[=].target.display = "Suspension vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #269
* group[=].element[=].target.code = #10714000
* group[=].element[=].target.display = "Tampon auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #270
* group[=].element[=].target.code = #11015000
* group[=].element[=].target.display = "Tampon rectal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #271
* group[=].element[=].target.code = #10914000
* group[=].element[=].target.display = "Tampon vaginal médicamenteux"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #272
* group[=].element[=].target.code = #12107000
* group[=].element[=].target.display = "Trousse pour préparation radiopharmaceutique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #273
* group[=].element[=].target.code = #10521000
* group[=].element[=].target.display = "Vernis à ongles médicamenteux"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #294
* group[=].element[=].target.code = #12101000
* group[=].element[=].target.display = "Laque dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #353
* group[=].element[=].target.code = #50042000
* group[=].element[=].target.display = "Poudre et solvant pour solution à diluer pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #373
* group[=].element[=].target.code = #50043000
* group[=].element[=].target.display = "Poudre pour solution à diluer pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #393
* group[=].element[=].target.code = #11901000
* group[=].element[=].target.display = "Système de diffusion intra-utérin"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #394
* group[=].element[=].target.code = #10915000
* group[=].element[=].target.display = "Système de diffusion vaginal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #413
* group[=].element[=].target.code = #50044500
* group[=].element[=].target.display = "Poudre et solvant pour dispersion injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #416
* group[=].element[=].target.code = #10319000
* group[=].element[=].target.display = "Comprimé buccogingival muco-adhésif"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #417
* group[=].element[=].target.code = #10506000
* group[=].element[=].target.display = "Emplâtre médicamenteux"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #419
* group[=].element[=].target.code = #12118000
* group[=].element[=].target.display = "Substitut de tissu vivant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #420
* group[=].element[=].target.code = #11204000
* group[=].element[=].target.display = "Gel injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #422
* group[=].element[=].target.code = #12103000
* group[=].element[=].target.display = "Solution pour la préparation ex vivo de fractions sanguines"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #474
* group[=].element[=].target.code = #50048000
* group[=].element[=].target.display = "Poudre et solvant pour suspension injectable à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #493
* group[=].element[=].target.code = #50049500
* group[=].element[=].target.display = "Poudre pour suspension pour implantation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #513
* group[=].element[=].target.code = #50049250
* group[=].element[=].target.display = "Powder for concentrate for solution for injection/infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #517
* group[=].element[=].target.code = #50048500
* group[=].element[=].target.display = "Poudre et suspension pour suspension injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #518
* group[=].element[=].target.code = #50060000
* group[=].element[=].target.display = "Solution injectable/pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #519
* group[=].element[=].target.code = #50062000
* group[=].element[=].target.display = "Suspension et granules effervescents pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #523
* group[=].element[=].target.code = #12119000
* group[=].element[=].target.display = "Eponge médicamenteuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #529
* group[=].element[=].target.code = #50047500
* group[=].element[=].target.display = "Poudre et solvant pour solution intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #538
* group[=].element[=].target.code = #10314010
* group[=].element[=].target.display = "crème buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #542
* group[=].element[=].target.code = #50021500
* group[=].element[=].target.display = "Emulsion et suspension pour émulsion injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #544
* group[=].element[=].target.code = #10517500
* group[=].element[=].target.display = "Patch cutané"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #545
* group[=].element[=].target.code = #50026000
* group[=].element[=].target.display = "Granulés gastrorésistants pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #546
* group[=].element[=].target.code = #50047700
* group[=].element[=].target.display = "Poudre et solvant pour solution pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #547
* group[=].element[=].target.code = #50041500
* group[=].element[=].target.display = "Poudre et solution pour solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #548
* group[=].element[=].target.code = #50061500
* group[=].element[=].target.display = "Solution pour colle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #549
* group[=].element[=].target.code = #50051000
* group[=].element[=].target.display = "Poudre pour suspension intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #550
* group[=].element[=].target.code = #50007000
* group[=].element[=].target.display = "Solution à diluer et solvant pour solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #552
* group[=].element[=].target.code = #50006000
* group[=].element[=].target.display = "Solution à diluer et solvant pour solution pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #553
* group[=].element[=].target.code = #10213000
* group[=].element[=].target.display = "Capsule molle gastrorésistante"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #556
* group[=].element[=].target.code = #50047600
* group[=].element[=].target.display = "Poudre et solvant pour suspension intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #557
* group[=].element[=].target.code = #50077000
* group[=].element[=].target.display = "Dispersion injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #559
* group[=].element[=].target.code = #50021000
* group[=].element[=].target.display = "Émulsion injectable/pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #560
* group[=].element[=].target.code = #12120000
* group[=].element[=].target.display = "Gel intestinal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #564
* group[=].element[=].target.code = #10604500
* group[=].element[=].target.display = "Collyre en émulsion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #566
* group[=].element[=].target.code = #11208500
* group[=].element[=].target.display = "Suspension injectable à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #567
* group[=].element[=].target.code = #10308300
* group[=].element[=].target.display = "Suspension pour pulvérisation buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #569
* group[=].element[=].target.code = #10236100
* group[=].element[=].target.display = "Film orodispersible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #570
* group[=].element[=].target.code = #12301000
* group[=].element[=].target.display = "Gaz médicinal comprimé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #571
* group[=].element[=].target.code = #50017000
* group[=].element[=].target.display = "Pâte dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #573
* group[=].element[=].target.code = #10525000
* group[=].element[=].target.display = "Compresse imprégnée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #574
* group[=].element[=].target.code = #10410000
* group[=].element[=].target.display = "Gel périodontal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #576
* group[=].element[=].target.code = #11209500
* group[=].element[=].target.display = "Solution de cardioplégie"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #577
* group[=].element[=].target.code = #50010000
* group[=].element[=].target.display = "Solution à diluer pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #578
* group[=].element[=].target.code = #12115100
* group[=].element[=].target.display = "Matrice pour colle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #579
* group[=].element[=].target.code = #12117000
* group[=].element[=].target.display = "Tampon imprégné"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #580
* group[=].element[=].target.code = #50081000
* group[=].element[=].target.display = "Solution à inhaler"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #581
* group[=].element[=].target.code = #10706000
* group[=].element[=].target.display = "Emulsion auriculaire en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #582
* group[=].element[=].target.code = #10806000
* group[=].element[=].target.display = "Emulsion nasale en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #583
* group[=].element[=].target.code = #12118000
* group[=].element[=].target.display = "Substitut de tissu vivant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #584
* group[=].element[=].target.code = #12302000
* group[=].element[=].target.display = "Gaz médicinal cryogénique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #585
* group[=].element[=].target.code = #12303000
* group[=].element[=].target.display = "Gaz médicinal liquéfié"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #586
* group[=].element[=].target.code = #50027000
* group[=].element[=].target.display = "Granulés et solvant pour suspension injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #587
* group[=].element[=].target.code = #10411000
* group[=].element[=].target.display = "Insert périodontal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #588
* group[=].element[=].target.code = #10804000
* group[=].element[=].target.display = "Solution nasale en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #589
* group[=].element[=].target.code = #10704000
* group[=].element[=].target.display = "Solution auriculaire en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #590
* group[=].element[=].target.code = #13004000
* group[=].element[=].target.display = "Suspension à diluer injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #591
* group[=].element[=].target.code = #10705000
* group[=].element[=].target.display = "Suspension auriculaire en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #592
* group[=].element[=].target.code = #10805000
* group[=].element[=].target.display = "Suspension nasale en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #593
* group[=].element[=].target.code = #50021000
* group[=].element[=].target.display = "Émulsion injectable/pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #594
* group[=].element[=].target.code = #50060000
* group[=].element[=].target.display = "Solution injectable/pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #595
* group[=].element[=].target.code = #50049250
* group[=].element[=].target.display = "Powder for concentrate for solution for injection/infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #597
* group[=].element[=].target.code = #10320000
* group[=].element[=].target.display = "Comprimé buccogingival"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #598
* group[=].element[=].target.code = #10707000
* group[=].element[=].target.display = "Poudre et solvant pour suspension auriculaire en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #599
* group[=].element[=].target.code = #50079000
* group[=].element[=].target.display = "Solution à diluer pour solution injectable/pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #600
* group[=].element[=].target.code = #50053500
* group[=].element[=].target.display = "Powder for solution for injection/infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #601
* group[=].element[=].target.code = #50001000
* group[=].element[=].target.display = "Comprimé dispersible / à croquer"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #602
* group[=].element[=].target.code = #50080000
* group[=].element[=].target.display = "Powder and solvent for solution for injection/infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #603
* group[=].element[=].target.code = #50037900
* group[=].element[=].target.display = "Solution buvable/rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #604
* group[=].element[=].target.code = #50024000
* group[=].element[=].target.display = "Solution pour gargarisme/bain de bouche"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #605
* group[=].element[=].target.code = #50057000
* group[=].element[=].target.display = "Solution pour hémodialyse/hémofiltration"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #606
* group[=].element[=].target.code = #50036700
* group[=].element[=].target.display = "Solution pour pulvérisation nasale/ buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #607
* group[=].element[=].target.code = #13045000
* group[=].element[=].target.display = "Suspension intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #608
* group[=].element[=].target.code = #50015200
* group[=].element[=].target.display = "Pommade cutanée/ nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #609
* group[=].element[=].target.code = #50055350
* group[=].element[=].target.display = "Poudre, solvant et matrice pour matrice pour implantation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #610
* group[=].element[=].target.code = #11303300
* group[=].element[=].target.display = "Matrice pour implantation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #614
* group[=].element[=].target.code = #12111500
* group[=].element[=].target.display = "Solution intrapéritonéale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #625
* group[=].element[=].target.code = #11303500
* group[=].element[=].target.display = "Suspension pour implantation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #629
* group[=].element[=].target.code = #50052000
* group[=].element[=].target.display = "Poudre pour suspension oral/rectal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #630
* group[=].element[=].target.code = #13050000
* group[=].element[=].target.display = "Gaz pour dispersion injectable/ pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #639
* group[=].element[=].target.code = #50038000
* group[=].element[=].target.display = "Suspension buvable/rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #640
* group[=].element[=].target.code = #13049000
* group[=].element[=].target.display = "Dispersion injectable/ pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #641
* group[=].element[=].target.code = #13013000
* group[=].element[=].target.display = "Gaz pour dispersion injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #642
* group[=].element[=].target.code = #13012000
* group[=].element[=].target.display = "Gaz pour dispersion pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #643
* group[=].element[=].target.code = #50017500
* group[=].element[=].target.display = "Dispersion pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #658
* group[=].element[=].target.code = #14006000
* group[=].element[=].target.display = "Granulés effervescents + comprimé pelliculé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #661
* group[=].element[=].target.code = #10604000
* group[=].element[=].target.display = "Collyre en solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #663
* group[=].element[=].target.code = #11211500
* group[=].element[=].target.display = "Poudre pour dispersion pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #664
* group[=].element[=].target.code = #50050000
* group[=].element[=].target.display = "Poudre pour solution intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #667
* group[=].element[=].target.code = #50032000
* group[=].element[=].target.display = "Emulsion pour inhalation par vapeur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #668
* group[=].element[=].target.code = #10548000
* group[=].element[=].target.display = "solution pour prick-test"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #671
* group[=].element[=].target.code = #10546250
* group[=].element[=].target.display = "Gel transdermique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #673
* group[=].element[=].target.code = #50073500
* group[=].element[=].target.display = "Solution pour irrigation intraoculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #674
* group[=].element[=].target.code = #50033000
* group[=].element[=].target.display = "Tampon imprégné pour inhalation par vapeur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #675
* group[=].element[=].target.code = #50026500
* group[=].element[=].target.display = "Granulés et solvant pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #676
* group[=].element[=].target.code = #13107000
* group[=].element[=].target.display = "Solution pour cardioplégie/préservation d'organe"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #677
* group[=].element[=].target.code = #50009300
* group[=].element[=].target.display = "Dispersion à diluer pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #679
* group[=].element[=].target.code = #13127000
* group[=].element[=].target.display = "Sublingual lyophilisate"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #680
* group[=].element[=].target.code = #13046000
* group[=].element[=].target.display = "Granulés enrobés"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #681
* group[=].element[=].target.code = #13113000
* group[=].element[=].target.display = "Intrauterine gel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #684
* group[=].element[=].target.code = #50033400
* group[=].element[=].target.display = "Solution intravésicale/solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #685
* group[=].element[=].target.code = #13119000
* group[=].element[=].target.display = "Poudre effervescente et poudre pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #686
* group[=].element[=].target.code = #13076000
* group[=].element[=].target.display = "Solution injectable à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #687
* group[=].element[=].target.code = #13148000
* group[=].element[=].target.display = "Ovule à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #688
* group[=].element[=].target.code = #50040500
* group[=].element[=].target.display = "Solution/ solution pour pulvérisation buccale/ laryngopharyngée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #690
* group[=].element[=].target.code = #13166000
* group[=].element[=].target.display = "Suspension et gel pour gel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #691
* group[=].element[=].target.code = #13145000
* group[=].element[=].target.display = "Tampon cutané imprégné en applicateur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #692
* group[=].element[=].target.code = #50003000
* group[=].element[=].target.display = "Solution à diluer et solvant pour solution cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #693
* group[=].element[=].target.code = #13139000
* group[=].element[=].target.display = "Dispersion à diluer pour dispersion injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #694
* group[=].element[=].target.code = #13159000
* group[=].element[=].target.display = "Eye drops, prolonged-release solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #695
* group[=].element[=].target.code = #13177000
* group[=].element[=].target.display = "Granulés pour suspension buvable gastrorésistante"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #696
* group[=].element[=].target.code = #50022500
* group[=].element[=].target.display = "Eye drops, prolonged-release solution in single-dose container"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "https://www.phast.fr/ciodm/"
* group[=].sourceVersion = "2025"
* group[=].target = "https://www.snomed.org/"
* group[=].element[0].code = #2
* group[=].element[=].target.code = #385089000
* group[=].element[=].target.display = "bâton dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4
* group[=].element[=].target.code = #385261007
* group[=].element[=].target.display = "Wound stick (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #6
* group[=].element[=].target.code = #385118004
* group[=].element[=].target.display = "bâton pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #7
* group[=].element[=].target.code = #385148001
* group[=].element[=].target.display = "bâton pour usage auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #8
* group[=].element[=].target.code = #385162008
* group[=].element[=].target.display = "bâton pour usage nasal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #9
* group[=].element[=].target.code = #385246006
* group[=].element[=].target.display = "bâton pour usage urétral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #11
* group[=].element[=].target.code = #385048003
* group[=].element[=].target.display = "Cachet"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #12
* group[=].element[=].target.code = #385195002
* group[=].element[=].target.display = "Capsule rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #13
* group[=].element[=].target.code = #385083004
* group[=].element[=].target.display = "Oromucosal capsule (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #15
* group[=].element[=].target.code = #1217288001
* group[=].element[=].target.display = "Soft oral capsule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #19
* group[=].element[=].target.code = #385177000
* group[=].element[=].target.display = "Capsule molle vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #20
* group[=].element[=].target.code = #1231565000
* group[=].element[=].target.display = "Capsule for vapor inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #21
* group[=].element[=].target.code = #385117009
* group[=].element[=].target.display = "Cataplasme"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #22
* group[=].element[=].target.code = #385265003
* group[=].element[=].target.display = "Colle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #24
* group[=].element[=].target.code = #385115001
* group[=].element[=].target.display = "Collodion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #25
* group[=].element[=].target.code = #385128008
* group[=].element[=].target.display = "Collyre à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #26
* group[=].element[=].target.code = #385125006
* group[=].element[=].target.display = "Collyre en solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #27
* group[=].element[=].target.code = #422068008
* group[=].element[=].target.display = "Collyre en suspension"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #28
* group[=].element[=].target.code = #1231836003
* group[=].element[=].target.display = "Absorbent impregnated material for cutaneous application"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #29
* group[=].element[=].target.code = #421026006
* group[=].element[=].target.display = "comprimé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #30
* group[=].element[=].target.code = #66076007
* group[=].element[=].target.display = "Comprimé à croquer"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #31
* group[=].element[=].target.code = #385061003
* group[=].element[=].target.display = "comprimé oral à libération modifiée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #32
* group[=].element[=].target.code = #385060002
* group[=].element[=].target.display = "comprimé oral à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #33
* group[=].element[=].target.code = #764501003
* group[=].element[=].target.display = "Conventional release oromucosal lozenge"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #35
* group[=].element[=].target.code = #421366001
* group[=].element[=].target.display = "comprimé pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #36
* group[=].element[=].target.code = #764780001
* group[=].element[=].target.display = "comprimé oral effervescent"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #37
* group[=].element[=].target.code = #1230389004
* group[=].element[=].target.display = "Coated oral tablet"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #38
* group[=].element[=].target.code = #385059007
* group[=].element[=].target.display = "comprimé oral enrobé gastrorésistant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #40
* group[=].element[=].target.code = #447079001
* group[=].element[=].target.display = "Comprimé orodispersible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #41
* group[=].element[=].target.code = #1163573008
* group[=].element[=].target.display = "Film-coated oral tablet"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #42
* group[=].element[=].target.code = #385236009
* group[=].element[=].target.display = "Comprimé pour implantation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #43
* group[=].element[=].target.code = #1231566004
* group[=].element[=].target.display = "Conventional release tablet for vapor inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #44
* group[=].element[=].target.code = #421701006
* group[=].element[=].target.display = "comprimé pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #47
* group[=].element[=].target.code = #385192004
* group[=].element[=].target.display = "Comprimé pour solution rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #48
* group[=].element[=].target.code = #385173001
* group[=].element[=].target.display = "Comprimé pour solution vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #49
* group[=].element[=].target.code = #385193009
* group[=].element[=].target.display = "Comprimé pour suspension rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #50
* group[=].element[=].target.code = #385084005
* group[=].element[=].target.display = "Comprimé sublingual"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #51
* group[=].element[=].target.code = #385178005
* group[=].element[=].target.display = "Comprimé vaginal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #52
* group[=].element[=].target.code = #385179002
* group[=].element[=].target.display = "Comprimé vaginal effervescent"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #53
* group[=].element[=].target.code = #421628006
* group[=].element[=].target.display = "Cutaneous cream"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #54
* group[=].element[=].target.code = #385133007
* group[=].element[=].target.display = "Crème auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #55
* group[=].element[=].target.code = #385149009
* group[=].element[=].target.display = "Crème nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #56
* group[=].element[=].target.code = #385121002
* group[=].element[=].target.display = "Crème ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #57
* group[=].element[=].target.code = #385182007
* group[=].element[=].target.display = "Crème rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #58
* group[=].element[=].target.code = #385165005
* group[=].element[=].target.display = "Crème vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #61
* group[=].element[=].target.code = #442015005
* group[=].element[=].target.display = "forme pharmaceutique intra-utérine"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62
* group[=].element[=].target.code = #385114002
* group[=].element[=].target.display = "Dispositif cutané"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #63
* group[=].element[=].target.code = #385292009
* group[=].element[=].target.display = "forme pharmaceutique pour usage vaginal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #64
* group[=].element[=].target.code = #385025008
* group[=].element[=].target.display = "Émulsion buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #65
* group[=].element[=].target.code = #385021004
* group[=].element[=].target.display = "Émulsion buvable en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #66
* group[=].element[=].target.code = #385096003
* group[=].element[=].target.display = "Émulsion dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #67
* group[=].element[=].target.code = #385260008
* group[=].element[=].target.display = "Émulsion gastro-entérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #68
* group[=].element[=].target.code = #385221006
* group[=].element[=].target.display = "Émulsion injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #71
* group[=].element[=].target.code = #385111005
* group[=].element[=].target.display = "Émulsion pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #73
* group[=].element[=].target.code = #385206000
* group[=].element[=].target.display = "Émulsion pour inhalation en flacon pressurisé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #74
* group[=].element[=].target.code = #385202003
* group[=].element[=].target.display = "Émulsion pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #75
* group[=].element[=].target.code = #385143005
* group[=].element[=].target.display = "Émulsion pour instillation auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #76
* group[=].element[=].target.code = #385160000
* group[=].element[=].target.display = "Émulsion pour instillation nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #78
* group[=].element[=].target.code = #765367006
* group[=].element[=].target.display = "Conventional release emulsion for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #80
* group[=].element[=].target.code = #385143005
* group[=].element[=].target.display = "Émulsion pour instillation auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #81
* group[=].element[=].target.code = #385160000
* group[=].element[=].target.display = "Émulsion pour instillation nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #84
* group[=].element[=].target.code = #385189003
* group[=].element[=].target.display = "Émulsion rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #85
* group[=].element[=].target.code = #385172006
* group[=].element[=].target.display = "Émulsion vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #86
* group[=].element[=].target.code = #385119007
* group[=].element[=].target.display = "Éponge pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #88
* group[=].element[=].target.code = #385217004
* group[=].element[=].target.display = "Gaz pour inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #89
* group[=].element[=].target.code = #421949005
* group[=].element[=].target.display = "Cutaneous gel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #90
* group[=].element[=].target.code = #385134001
* group[=].element[=].target.display = "Gel auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #91
* group[=].element[=].target.code = #385078007
* group[=].element[=].target.display = "Gel buccal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #92
* group[=].element[=].target.code = #385088008
* group[=].element[=].target.display = "Gel dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #93
* group[=].element[=].target.code = #385251000
* group[=].element[=].target.display = "Gel endocervical"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #94
* group[=].element[=].target.code = #385081002
* group[=].element[=].target.display = "Gel gingival"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #95
* group[=].element[=].target.code = #385150009
* group[=].element[=].target.display = "Gel nasal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #96
* group[=].element[=].target.code = #385122009
* group[=].element[=].target.display = "Gel ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #97
* group[=].element[=].target.code = #385038000
* group[=].element[=].target.display = "Gel oral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #98
* group[=].element[=].target.code = #385183002
* group[=].element[=].target.display = "Gel rectal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #99
* group[=].element[=].target.code = #385245005
* group[=].element[=].target.display = "Gel urétral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #100
* group[=].element[=].target.code = #385166006
* group[=].element[=].target.display = "Gel vaginal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #101
* group[=].element[=].target.code = #420692007
* group[=].element[=].target.display = "capsule orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #102
* group[=].element[=].target.code = #1217286002
* group[=].element[=].target.display = "Modified-release oral hard capsule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #103
* group[=].element[=].target.code = #385053008
* group[=].element[=].target.display = "gélule à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #104
* group[=].element[=].target.code = #385052003
* group[=].element[=].target.display = "gélule gastrorésistante"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #105
* group[=].element[=].target.code = #385176009
* group[=].element[=].target.display = "Gélule vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #107
* group[=].element[=].target.code = #385080001
* group[=].element[=].target.display = "Medicated chewing-gum (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #108
* group[=].element[=].target.code = #385063000
* group[=].element[=].target.display = "Gomme orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #110
* group[=].element[=].target.code = #385028005
* group[=].element[=].target.display = "granulés pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #111
* group[=].element[=].target.code = #385047008
* group[=].element[=].target.display = "Granulés à libération modifiée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #112
* group[=].element[=].target.code = #385046004
* group[=].element[=].target.display = "Granulés à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #113
* group[=].element[=].target.code = #385044001
* group[=].element[=].target.display = "Granulés effervescents"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #114
* group[=].element[=].target.code = #385045000
* group[=].element[=].target.display = "Granulés gastrorésistants"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #116
* group[=].element[=].target.code = #385034003
* group[=].element[=].target.display = "Granulés pour sirop"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #117
* group[=].element[=].target.code = #385028005
* group[=].element[=].target.display = "Granulés pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #118
* group[=].element[=].target.code = #385029002
* group[=].element[=].target.display = "Granulés pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #119
* group[=].element[=].target.code = #1231572004
* group[=].element[=].target.display = "Prolonged-release transdermal delivery system"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #120
* group[=].element[=].target.code = #385237000
* group[=].element[=].target.display = "Implant en chaîne"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #121
* group[=].element[=].target.code = #385090009
* group[=].element[=].target.display = "Insert dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #122
* group[=].element[=].target.code = #764842006
* group[=].element[=].target.display = "Prolonged-release ocular implant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #123
* group[=].element[=].target.code = #1231713000
* group[=].element[=].target.display = "Conventional release oral pure liquid"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #124
* group[=].element[=].target.code = #1231712005
* group[=].element[=].target.display = "Conventional release cutaneous pure liquid"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #125
* group[=].element[=].target.code = #1231711003
* group[=].element[=].target.display = "Conventional release pure liquid for vapor inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #126
* group[=].element[=].target.code = #385062005
* group[=].element[=].target.display = "Lyophilisat oral"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #128
* group[=].element[=].target.code = #385103000
* group[=].element[=].target.display = "Conventional release cutaneous foam"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #129
* group[=].element[=].target.code = #385185009
* group[=].element[=].target.display = "Mousse rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #130
* group[=].element[=].target.code = #385168007
* group[=].element[=].target.display = "Mousse vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #131
* group[=].element[=].target.code = #767059009
* group[=].element[=].target.display = "ovule vaginal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #133
* group[=].element[=].target.code = #764501003
* group[=].element[=].target.display = "Oromucosal lozenge"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #134
* group[=].element[=].target.code = #385079004
* group[=].element[=].target.display = "Pâte buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #135
* group[=].element[=].target.code = #1231723009
* group[=].element[=].target.display = "Conventional release toothpaste"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #136
* group[=].element[=].target.code = #385082009
* group[=].element[=].target.display = "Pâte gingivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #137
* group[=].element[=].target.code = #385039008
* group[=].element[=].target.display = "Pâte orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #138
* group[=].element[=].target.code = #385102005
* group[=].element[=].target.display = "Pâte pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #139
* group[=].element[=].target.code = #385037005
* group[=].element[=].target.display = "Plante(s) pour tisane"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #141
* group[=].element[=].target.code = #425753008
* group[=].element[=].target.display = "Cutaneous ointment"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #142
* group[=].element[=].target.code = #385135000
* group[=].element[=].target.display = "Pommade auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #144
* group[=].element[=].target.code = #385151008
* group[=].element[=].target.display = "Pommade nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #145
* group[=].element[=].target.code = #385123004
* group[=].element[=].target.display = "Pommade ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #146
* group[=].element[=].target.code = #1231564001
* group[=].element[=].target.display = "Conventional release ointment for vapor inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #147
* group[=].element[=].target.code = #385184008
* group[=].element[=].target.display = "Pommade rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #148
* group[=].element[=].target.code = #385167002
* group[=].element[=].target.display = "Pommade vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #149
* group[=].element[=].target.code = #385139006
* group[=].element[=].target.display = "Poudre auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #150
* group[=].element[=].target.code = #385091008
* group[=].element[=].target.display = "Poudre dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #151
* group[=].element[=].target.code = #1230336000
* group[=].element[=].target.display = "Conventional release oral effervescent powder"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #152
* group[=].element[=].target.code = #385266002
* group[=].element[=].target.display = "Poudre et solvant pour colle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #158
* group[=].element[=].target.code = #385247002
* group[=].element[=].target.display = "solution pour instillation endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #162
* group[=].element[=].target.code = #385156003
* group[=].element[=].target.display = "Poudre nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #163
* group[=].element[=].target.code = #385041009
* group[=].element[=].target.display = "Poudre orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #164
* group[=].element[=].target.code = #385112003
* group[=].element[=].target.display = "Poudre pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #165
* group[=].element[=].target.code = #385207009
* group[=].element[=].target.display = "Poudre pour inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #166
* group[=].element[=].target.code = #385208004
* group[=].element[=].target.display = "Poudre pour inhalation en gélule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #167
* group[=].element[=].target.code = #422054001
* group[=].element[=].target.display = "Poudre pour inhalation en récipient unidose"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #168
* group[=].element[=].target.code = #1231563007
* group[=].element[=].target.display = "Conventional release powder for vapor inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #169
* group[=].element[=].target.code = #385278003
* group[=].element[=].target.display = "Poudre pour pulvérisation cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #170
* group[=].element[=].target.code = #385033009
* group[=].element[=].target.display = "Poudre pour sirop"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #171
* group[=].element[=].target.code = #385026009
* group[=].element[=].target.display = "Poudre pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #172
* group[=].element[=].target.code = #385223009
* group[=].element[=].target.display = "poudre pour solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #174
* group[=].element[=].target.code = #385201005
* group[=].element[=].target.display = "Poudre pour solution pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #175
* group[=].element[=].target.code = #1230324006
* group[=].element[=].target.display = "Powder for conventional release solution for endotracheopulmonary instillation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #177
* group[=].element[=].target.code = #764843001
* group[=].element[=].target.display = "Powder for conventional release solution for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #178
* group[=].element[=].target.code = #761899004
* group[=].element[=].target.display = "Powder for conventional release rectal solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #179
* group[=].element[=].target.code = #385027000
* group[=].element[=].target.display = "Poudre effervescente pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #180
* group[=].element[=].target.code = #385224003
* group[=].element[=].target.display = "Poudre pour suspension injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #181
* group[=].element[=].target.code = #385200006
* group[=].element[=].target.display = "Poudre pour suspension pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #182
* group[=].element[=].target.code = #385191006
* group[=].element[=].target.display = "Poudre pour suspension rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #183
* group[=].element[=].target.code = #385254008
* group[=].element[=].target.display = "Précurseur radiopharmaceutique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #185
* group[=].element[=].target.code = #385040005
* group[=].element[=].target.display = "Préparation instantanée pour tisane"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #187
* group[=].element[=].target.code = #785908001
* group[=].element[=].target.display = "Conventional release cutaneous shampoo"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #188
* group[=].element[=].target.code = #385032004
* group[=].element[=].target.display = "Sirop"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #189
* group[=].element[=].target.code = #385023001
* group[=].element[=].target.display = "Solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #190
* group[=].element[=].target.code = #1237268008
* group[=].element[=].target.display = "Concentrate for solution for injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #191
* group[=].element[=].target.code = #1237287002
* group[=].element[=].target.display = "Concentrate for cutaneous solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #193
* group[=].element[=].target.code = #1237275009
* group[=].element[=].target.display = "Concentrate for solution for hemodialysis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #194
* group[=].element[=].target.code = #1237267003
* group[=].element[=].target.display = "Concentrate for solution for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #195
* group[=].element[=].target.code = #385070000
* group[=].element[=].target.display = "Solution buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #196
* group[=].element[=].target.code = #385072008
* group[=].element[=].target.display = "Solution buccale en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #197
* group[=].element[=].target.code = #385019009
* group[=].element[=].target.display = "Solution buvable en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #198
* group[=].element[=].target.code = #385094000
* group[=].element[=].target.display = "Solution dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #199
* group[=].element[=].target.code = #385258006
* group[=].element[=].target.display = "Solution gastro-entérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #200
* group[=].element[=].target.code = #385077002
* group[=].element[=].target.display = "Solution gingivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #201
* group[=].element[=].target.code = #385219001
* group[=].element[=].target.display = "Solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #204
* group[=].element[=].target.code = #385242008
* group[=].element[=].target.display = "Solution intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #205
* group[=].element[=].target.code = #385108009
* group[=].element[=].target.display = "Solution pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #206
* group[=].element[=].target.code = #70409003
* group[=].element[=].target.display = "Solution pour bain de bouche"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #208
* group[=].element[=].target.code = #385262000
* group[=].element[=].target.display = "Solution pour conservation d'organe"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #209
* group[=].element[=].target.code = #1231473006
* group[=].element[=].target.display = "Conventional release solution for peritoneal dialysis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #210
* group[=].element[=].target.code = #385065007
* group[=].element[=].target.display = "Solution pour gargarisme"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #211
* group[=].element[=].target.code = #1231478002
* group[=].element[=].target.display = "Conventional release solution for haemodiafiltration"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #212
* group[=].element[=].target.code = #1231474000
* group[=].element[=].target.display = "Conventional release solution for haemodialysis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #213
* group[=].element[=].target.code = #1231476003
* group[=].element[=].target.display = "Conventional release solution for haemofiltration"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #214
* group[=].element[=].target.code = #385204002
* group[=].element[=].target.display = "Solution pour inhalation en flacon pressurisé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #215
* group[=].element[=].target.code = #385198000
* group[=].element[=].target.display = "Solution pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #216
* group[=].element[=].target.code = #1231567008
* group[=].element[=].target.display = "Conventional release solution for vapor inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #218
* group[=].element[=].target.code = #385247002
* group[=].element[=].target.display = "solution pour instillation endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #220
* group[=].element[=].target.code = #385113008
* group[=].element[=].target.display = "Solution pour iontophorèse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #221
* group[=].element[=].target.code = #785898006
* group[=].element[=].target.display = "Conventional release solution for irrigation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #222
* group[=].element[=].target.code = #385264004
* group[=].element[=].target.display = "irrigation gastrique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #223
* group[=].element[=].target.code = #385243003
* group[=].element[=].target.display = "Bladder irrigation (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #225
* group[=].element[=].target.code = #385161001
* group[=].element[=].target.display = "Nasal wash (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #226
* group[=].element[=].target.code = #385130005
* group[=].element[=].target.display = "Solution pour lavage ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #228
* group[=].element[=].target.code = #385229008
* group[=].element[=].target.display = "Solution pour perfusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #229
* group[=].element[=].target.code = #385074009
* group[=].element[=].target.display = "Conventional release sublingual spray"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #231
* group[=].element[=].target.code = #385141007
* group[=].element[=].target.display = "Solution pour pulvérisation auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #232
* group[=].element[=].target.code = #385073003
* group[=].element[=].target.display = "Oromucosal spray"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #233
* group[=].element[=].target.code = #385105007
* group[=].element[=].target.display = "Cutaneous spray"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #235
* group[=].element[=].target.code = #385158002
* group[=].element[=].target.display = "Solution pour pulvérisation nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #238
* group[=].element[=].target.code = #385187001
* group[=].element[=].target.display = "Solution rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #239
* group[=].element[=].target.code = #1237266007
* group[=].element[=].target.display = "Concentrate for rectal solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #240
* group[=].element[=].target.code = #385170003
* group[=].element[=].target.display = "Solution vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #244
* group[=].element[=].target.code = #420929008
* group[=].element[=].target.display = "suppositoire rectal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #245
* group[=].element[=].target.code = #385071001
* group[=].element[=].target.display = "Suspension buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #246
* group[=].element[=].target.code = #385024007
* group[=].element[=].target.display = "Suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #247
* group[=].element[=].target.code = #385020003
* group[=].element[=].target.display = "Suspension buvable en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #248
* group[=].element[=].target.code = #385095004
* group[=].element[=].target.display = "Suspension dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #249
* group[=].element[=].target.code = #385259003
* group[=].element[=].target.display = "Suspension gastro-entérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #250
* group[=].element[=].target.code = #385220007
* group[=].element[=].target.display = "Suspension injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #253
* group[=].element[=].target.code = #385110006
* group[=].element[=].target.display = "Suspension pour application cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #255
* group[=].element[=].target.code = #385205001
* group[=].element[=].target.display = "Suspension pour inhalation en flacon pressurisé"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #256
* group[=].element[=].target.code = #385199008
* group[=].element[=].target.display = "Suspension pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #258
* group[=].element[=].target.code = #385250004
* group[=].element[=].target.display = "Suspension pour instillation endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #261
* group[=].element[=].target.code = #385142000
* group[=].element[=].target.display = "Suspension pour pulvérisation auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #262
* group[=].element[=].target.code = #385279006
* group[=].element[=].target.display = "Suspension pour pulvérisation cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #263
* group[=].element[=].target.code = #422080000
* group[=].element[=].target.display = "suspension nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #266
* group[=].element[=].target.code = #385188006
* group[=].element[=].target.display = "Suspension rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #267
* group[=].element[=].target.code = #385171004
* group[=].element[=].target.display = "Suspension vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #269
* group[=].element[=].target.code = #385147006
* group[=].element[=].target.display = "Tampon auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #270
* group[=].element[=].target.code = #385196001
* group[=].element[=].target.display = "Tampon rectal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #271
* group[=].element[=].target.code = #385180004
* group[=].element[=].target.display = "Medicated vaginal tampon (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #272
* group[=].element[=].target.code = #385256005
* group[=].element[=].target.display = "Trousse pour préparation radiopharmaceutique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #273
* group[=].element[=].target.code = #385116000
* group[=].element[=].target.display = "Medicated nail laquer (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #373
* group[=].element[=].target.code = #385231004
* group[=].element[=].target.display = "Powder for infusion solution (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #393
* group[=].element[=].target.code = #1237073006
* group[=].element[=].target.display = "Prolonged-release intrauterine delivery system"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #394
* group[=].element[=].target.code = #420631002
* group[=].element[=].target.display = "Conventional release vaginal insert"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #416
* group[=].element[=].target.code = #385085006
* group[=].element[=].target.display = "Buccal tablet"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #417
* group[=].element[=].target.code = #36875001
* group[=].element[=].target.display = "Drug patch (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #513
* group[=].element[=].target.code = #385223009
* group[=].element[=].target.display = "poudre pour solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #515
* group[=].element[=].target.code = #420378007
* group[=].element[=].target.display = "comprimé oral pelliculé à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #521
* group[=].element[=].target.code = #421637006
* group[=].element[=].target.display = "Lyophilisat et solvant pour solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #523
* group[=].element[=].target.code = #421288004
* group[=].element[=].target.display = "Éponge médicamenteuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #525
* group[=].element[=].target.code = #421366001
* group[=].element[=].target.display = "Comprimé pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #526
* group[=].element[=].target.code = #385045000
* group[=].element[=].target.display = "Granulés gastrorésistants"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #527
* group[=].element[=].target.code = #422201009
* group[=].element[=].target.display = "comprimé pour solution cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #528
* group[=].element[=].target.code = #421425002
* group[=].element[=].target.display = "Poudre et solvant pour inhalation par nébuliseur"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #531
* group[=].element[=].target.code = #385027000
* group[=].element[=].target.display = "Poudre effervescente pour suspension buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #534
* group[=].element[=].target.code = #385059007
* group[=].element[=].target.display = "comprimé oral enrobé gastrorésistant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #535
* group[=].element[=].target.code = #421637006
* group[=].element[=].target.display = "Lyophilisat et solvant pour solution injectable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #538
* group[=].element[=].target.code = #1217290000
* group[=].element[=].target.display = "Oromucosal cream"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #539
* group[=].element[=].target.code = #385059007
* group[=].element[=].target.display = "comprimé oral enrobé gastrorésistant"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #543
* group[=].element[=].target.code = #422264003
* group[=].element[=].target.display = "Poudre et solvant pour solution injectable à libération prolongée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #544
* group[=].element[=].target.code = #764485007
* group[=].element[=].target.display = "dispositif transdermique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #545
* group[=].element[=].target.code = #761901008
* group[=].element[=].target.display = "Delayed-release granules for oral suspension"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #547
* group[=].element[=].target.code = #385223009
* group[=].element[=].target.display = "poudre pour solution injectable à libération conventionnelle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #549
* group[=].element[=].target.code = #761907007
* group[=].element[=].target.display = "Powder for conventional release intravesical suspension"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #553
* group[=].element[=].target.code = #765061001
* group[=].element[=].target.display = "Delayed-release oral soft capsule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #557
* group[=].element[=].target.code = #1230185002
* group[=].element[=].target.display = "Conventional release dispersion for injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #558
* group[=].element[=].target.code = #769115006
* group[=].element[=].target.display = "poudre effervescente pour solution buvable"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #560
* group[=].element[=].target.code = #1255346009
* group[=].element[=].target.display = "Intestinal gel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #561
* group[=].element[=].target.code = #385044001
* group[=].element[=].target.display = "Granulés effervescents"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #563
* group[=].element[=].target.code = #765065005
* group[=].element[=].target.display = "Powder for conventional release suspension for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #564
* group[=].element[=].target.code = #761900009
* group[=].element[=].target.display = "Conventional release emulsion for eye drops"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #565
* group[=].element[=].target.code = #422336005
* group[=].element[=].target.display = "Solution nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #566
* group[=].element[=].target.code = #420873008
* group[=].element[=].target.display = "Extended-release suspension for injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #567
* group[=].element[=].target.code = #761906003
* group[=].element[=].target.display = "Conventional release suspension for oromucosal spray"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #568
* group[=].element[=].target.code = #421343002
* group[=].element[=].target.display = "Powder for conventional release cutaneous solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #569
* group[=].element[=].target.code = #447050008
* group[=].element[=].target.display = "Film orodispersible"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #570
* group[=].element[=].target.code = #1230331005
* group[=].element[=].target.display = "Compressed gas for inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #571
* group[=].element[=].target.code = #763445009
* group[=].element[=].target.display = "pâte dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #573
* group[=].element[=].target.code = #385120001
* group[=].element[=].target.display = "compresse imprégnée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #574
* group[=].element[=].target.code = #1230220004
* group[=].element[=].target.display = "Conventional release periodontal gel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #576
* group[=].element[=].target.code = #1231577005
* group[=].element[=].target.display = "Conventional release solution for cardioplegia"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #577
* group[=].element[=].target.code = #1237265006
* group[=].element[=].target.display = "Concentrate for oral solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #580
* group[=].element[=].target.code = #420641004
* group[=].element[=].target.display = "Conventional release solution for inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #581
* group[=].element[=].target.code = #385138003
* group[=].element[=].target.display = "Émulsion auriculaire en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #582
* group[=].element[=].target.code = #385155004
* group[=].element[=].target.display = "Émulsion nasale en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #584
* group[=].element[=].target.code = #1230329001
* group[=].element[=].target.display = "Conventional release cryogenic gas for inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #585
* group[=].element[=].target.code = #1230330006
* group[=].element[=].target.display = "Conventional release liquified gas for inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #587
* group[=].element[=].target.code = #1230222007
* group[=].element[=].target.display = "Conventional release periodontal insert"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #588
* group[=].element[=].target.code = #385153006
* group[=].element[=].target.display = "Solution nasale en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #589
* group[=].element[=].target.code = #385137008
* group[=].element[=].target.display = "Solution auriculaire en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #590
* group[=].element[=].target.code = #1237263004
* group[=].element[=].target.display = "Concentrate for suspension for injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #591
* group[=].element[=].target.code = #420891003
* group[=].element[=].target.display = "Suspension auriculaire en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #592
* group[=].element[=].target.code = #385154000
* group[=].element[=].target.display = "Suspension nasale en gouttes"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #593
* group[=].element[=].target.code = #1209141005
* group[=].element[=].target.display = "Conventional release emulsion for infusion and/or injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #594
* group[=].element[=].target.code = #1208958005
* group[=].element[=].target.display = "Conventional release solution for infusion and/or injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #597
* group[=].element[=].target.code = #385085006
* group[=].element[=].target.display = "Buccal tablet"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #600
* group[=].element[=].target.code = #1209021002
* group[=].element[=].target.display = "Powder for conventional release solution for infusion and/or injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #603
* group[=].element[=].target.code = #1209096001
* group[=].element[=].target.display = "Conventional release oral or rectal solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #604
* group[=].element[=].target.code = #385065007
* group[=].element[=].target.display = "solution pour gargarisme"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #607
* group[=].element[=].target.code = #1231579008
* group[=].element[=].target.display = "Conventional release intravesical suspension"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #626
* group[=].element[=].target.code = #764799005
* group[=].element[=].target.display = "Conventional release suspension for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #641
* group[=].element[=].target.code = #1230195009
* group[=].element[=].target.display = "Gas for conventional release dispersion for injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #642
* group[=].element[=].target.code = #1230194008
* group[=].element[=].target.display = "Gas for conventional release dispersion for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #643
* group[=].element[=].target.code = #1230184003
* group[=].element[=].target.display = "Conventional release dispersion for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #655
* group[=].element[=].target.code = #1237269000
* group[=].element[=].target.display = "Concentrate for solution for infusion and/or injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #661
* group[=].element[=].target.code = #422060001
* group[=].element[=].target.display = "Conventional release eye solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #663
* group[=].element[=].target.code = #1230196005
* group[=].element[=].target.display = "Powder for conventional release dispersion for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #664
* group[=].element[=].target.code = #1231578000
* group[=].element[=].target.display = "Powder for conventional release intravesical solution"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #667
* group[=].element[=].target.code = #1231562002
* group[=].element[=].target.display = "Conventional release emulsion for vapor inhalation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #670
* group[=].element[=].target.code = #1237271000
* group[=].element[=].target.display = "Concentrate for dispersion for injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #671
* group[=].element[=].target.code = #764802001
* group[=].element[=].target.display = "Conventional release transdermal gel"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #673
* group[=].element[=].target.code = #785899003
* group[=].element[=].target.display = "Conventional release solution for ocular irrigation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #677
* group[=].element[=].target.code = #1237273002
* group[=].element[=].target.display = "Concentrate for dispersion for infusion"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #680
* group[=].element[=].target.code = #1230390008
* group[=].element[=].target.display = "Coated oral granules"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #686
* group[=].element[=].target.code = #1231833006
* group[=].element[=].target.display = "Prolonged-release solution for injection"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #687
* group[=].element[=].target.code = #782648001
* group[=].element[=].target.display = "Prolonged-release vaginal pessary"
* group[=].element[=].target.equivalence = #equal