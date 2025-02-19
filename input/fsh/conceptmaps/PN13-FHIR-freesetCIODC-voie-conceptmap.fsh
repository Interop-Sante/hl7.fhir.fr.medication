Instance: PN13-FHIR-FreeSetCIODC-Voie-ConceptMap
InstanceOf: ConceptMap
Description: "Conversion des codes CIO de voie d'administration des médicaments en codes des terminologies EQDM Standard Terms et SNOMED-CT"
Usage: #definition
* language = #fr-FR
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Transformation codes CIO vers terminologies cibles identifiées pour les voies d'administration de médicaments</div>"
* url = "https://hl7.fr/fhir/fr/medication/ConceptMap/PN13-FHIR-voie-conceptmap"
* version = "0.1.0"
* name = "FrPN13FHIRFreeSetCIODCVoieConceptMap"
* title = "Mapping Free Set CIO-DC VOIE"
* status = #draft
* date = "2025-02-10T11:15:38Z"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion des codes voies d'administration des médicaments entre CIO et terminologies EQDM Standard Terms et SNOMED-CT"
* contact.name = "Interop'Santé"
* contact.telecom.system = #url
* contact.telecom.value = "http://interopsante.org/"
* group[0].source = "https://www.phast.fr/ciodm/"
* group[=].sourceVersion = "2025"
* group[=].target = "https://www.edqm.eu/en/standard-terms-database"
* group[=].element[0].code = #12
* group[=].element[=].target.code = #20015000
* group[=].element[=].target.display = "Hémodialyse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #18
* group[=].element[=].target.code = #20001000
* group[=].element[=].target.display = "Voie auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #19
* group[=].element[=].target.code = #20054000
* group[=].element[=].target.display = "Voie buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #20
* group[=].element[=].target.code = #20003000
* group[=].element[=].target.display = "Voie cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #21
* group[=].element[=].target.code = #20004000
* group[=].element[=].target.display = "Voie dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #22
* group[=].element[=].target.code = #20006000
* group[=].element[=].target.display = "Voie endocervicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #23
* group[=].element[=].target.code = #20007000
* group[=].element[=].target.display = "Voie endosinusale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #24
* group[=].element[=].target.code = #20008000
* group[=].element[=].target.display = "Voie endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #25
* group[=].element[=].target.code = #20011000
* group[=].element[=].target.display = "Voie extra-amniotique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #26
* group[=].element[=].target.code = #20013000
* group[=].element[=].target.display = "Voie gastro-entérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #27
* group[=].element[=].target.code = #20014000
* group[=].element[=].target.display = "Voie gingivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #28
* group[=].element[=].target.code = #20022000
* group[=].element[=].target.display = "Voie intraamniotique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #29
* group[=].element[=].target.code = #20023000
* group[=].element[=].target.display = "Voie intraartérielle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #30
* group[=].element[=].target.code = #20024000
* group[=].element[=].target.display = "Voie intraarticulaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #31
* group[=].element[=].target.code = #20025000
* group[=].element[=].target.display = "Voie intrabursale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #32
* group[=].element[=].target.code = #20026000
* group[=].element[=].target.display = "Voie intracardiaque"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #33
* group[=].element[=].target.code = #20027000
* group[=].element[=].target.display = "Voie intracaverneuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #34
* group[=].element[=].target.code = #20028000
* group[=].element[=].target.display = "Voie intracervicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #35
* group[=].element[=].target.code = #20029000
* group[=].element[=].target.display = "Voie intracoronaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #36
* group[=].element[=].target.code = #20030000
* group[=].element[=].target.display = "Voie intradermique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #37
* group[=].element[=].target.code = #20031000
* group[=].element[=].target.display = "Voie intradiscale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #38
* group[=].element[=].target.code = #20032000
* group[=].element[=].target.display = "Voie intralésionnelle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #39
* group[=].element[=].target.code = #20033000
* group[=].element[=].target.display = "Voie intralymphatique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #41
* group[=].element[=].target.code = #20035000
* group[=].element[=].target.display = "Voie intramusculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #42
* group[=].element[=].target.code = #20036000
* group[=].element[=].target.display = "Voie intraoculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #43
* group[=].element[=].target.code = #20038000
* group[=].element[=].target.display = "Voie intrapéritonéale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #44
* group[=].element[=].target.code = #20039000
* group[=].element[=].target.display = "Voie intrapleurale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #47
* group[=].element[=].target.code = #20041000
* group[=].element[=].target.display = "Voie intrasternale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #48
* group[=].element[=].target.code = #20044000
* group[=].element[=].target.display = "Voie intra-utérine"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #49
* group[=].element[=].target.code = #20045000
* group[=].element[=].target.display = "Voie intraveineuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #50
* group[=].element[=].target.code = #20046000
* group[=].element[=].target.display = "Voie intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #51
* group[=].element[=].target.code = #20049000
* group[=].element[=].target.display = "Voie nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #53
* group[=].element[=].target.code = #20051000
* group[=].element[=].target.display = "Voie ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #54
* group[=].element[=].target.code = #20053000
* group[=].element[=].target.display = "Voie orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #56
* group[=].element[=].target.code = #20057000
* group[=].element[=].target.display = "Voie périarticulaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #57
* group[=].element[=].target.code = #20009000
* group[=].element[=].target.display = "Voie péridurale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #58
* group[=].element[=].target.code = #20058000
* group[=].element[=].target.display = "Voie périneurale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #59
* group[=].element[=].target.code = #20061000
* group[=].element[=].target.display = "Voie rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #61
* group[=].element[=].target.code = #20065000
* group[=].element[=].target.display = "Voie sous-conjonctivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62
* group[=].element[=].target.code = #20066000
* group[=].element[=].target.display = "Voie sous-cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #63
* group[=].element[=].target.code = #20070000
* group[=].element[=].target.display = "Voie transdermique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #64
* group[=].element[=].target.code = #20071000
* group[=].element[=].target.display = "Voie urétrale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #65
* group[=].element[=].target.code = #20072000
* group[=].element[=].target.display = "Voie vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #105
* group[=].element[=].target.code = #20037000
* group[=].element[=].target.display = "Voie intrapéricardiaque"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #106
* group[=].element[=].target.code = #20020000
* group[=].element[=].target.display = "Voie inhalée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #107
* group[=].element[=].target.code = #20047000
* group[=].element[=].target.display = "Voie intravitréenne"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #108
* group[=].element[=].target.code = #20067000
* group[=].element[=].target.display = "Voie sublinguale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #127
* group[=].element[=].target.code = #20042000
* group[=].element[=].target.display = "Voie intrathécale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #165
* group[=].element[=].target.code = #20036500
* group[=].element[=].target.display = "Voie intraosseuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #166
* group[=].element[=].target.code = #20010000
* group[=].element[=].target.display = "Voie épilésionnelle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #167
* group[=].element[=].target.code = #20062000
* group[=].element[=].target.display = "Autre(s)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #173
* group[=].element[=].target.code = #20080000
* group[=].element[=].target.display = "Voie intracérébroventriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #174
* group[=].element[=].target.code = #20021000
* group[=].element[=].target.display = "Voie intestinale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #175
* group[=].element[=].target.code = #20043000
* group[=].element[=].target.display = "Voie intratumorale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #177
* group[=].element[=].target.code = #20011500
* group[=].element[=].target.display = "Voie extracorporelle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #179
* group[=].element[=].target.code = #20025500
* group[=].element[=].target.display = "Voie intracamérulaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #180
* group[=].element[=].target.code = #20059000
* group[=].element[=].target.display = "Voie périodontale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #181
* group[=].element[=].target.code = #20067500
* group[=].element[=].target.display = "Voie sous-muqueuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #183
* group[=].element[=].target.code = #20059400
* group[=].element[=].target.display = "Voie péritumorale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #184
* group[=].element[=].target.code = #20081000
* group[=].element[=].target.display = "Voie subrétinale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #189
* group[=].element[=].target.code = #20086000
* group[=].element[=].target.display = "Voie intraputaminale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #192
* group[=].element[=].target.code = #20028300
* group[=].element[=].target.display = "Voie intracholangiopancréatique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #190
* group[=].element[=].target.code = #20028500
* group[=].element[=].target.display = "Voie intracisternale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #191
* group[=].element[=].target.code = #20031700
* group[=].element[=].target.display = "Voie intraglandulaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #188
* group[=].element[=].target.code = #20002500
* group[=].element[=].target.display = "Voie buccogingivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #187
* group[=].element[=].target.code = #20027010
* group[=].element[=].target.display = "Voie intracérébrale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #185
* group[=].element[=].target.code = #20013500
* group[=].element[=].target.display = "Voie gastrique"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "https://www.phast.fr/ciodm/"
* group[=].sourceVersion = "2025"
* group[=].target = "https://www.snomed.org/"
* group[=].element[0].code = #18
* group[=].element[=].target.code = #10547007
* group[=].element[=].target.display = "Voie auriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #19
* group[=].element[=].target.code = #54471007
* group[=].element[=].target.display = "Voie buccale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #20
* group[=].element[=].target.code = #448598008
* group[=].element[=].target.display = "Voie cutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #21
* group[=].element[=].target.code = #372449004
* group[=].element[=].target.display = "Voie dentaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #22
* group[=].element[=].target.code = #372450004
* group[=].element[=].target.display = "Voie endocervicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #23
* group[=].element[=].target.code = #372451000
* group[=].element[=].target.display = "Voie endosinusale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #24
* group[=].element[=].target.code = #372452007
* group[=].element[=].target.display = "Voie endotrachéobronchique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #25
* group[=].element[=].target.code = #372453002
* group[=].element[=].target.display = "Voie extra-amniotique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #177
* group[=].element[=].target.code = #714743009
* group[=].element[=].target.display = "Voie extracorporelle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #26
* group[=].element[=].target.code = #372454008
* group[=].element[=].target.display = "Voie gastro-entérale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #27
* group[=].element[=].target.code = #372457001
* group[=].element[=].target.display = "Voie gingivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #28
* group[=].element[=].target.code = #372458006
* group[=].element[=].target.display = "Voie intra-amniotique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #29
* group[=].element[=].target.code = #58100008
* group[=].element[=].target.display = "Voie intra-artérielle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #30
* group[=].element[=].target.code = #12130007
* group[=].element[=].target.display = "Voie intra-articulaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #31
* group[=].element[=].target.code = #372459003
* group[=].element[=].target.display = "Voie intrabursale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #32
* group[=].element[=].target.code = #372460008
* group[=].element[=].target.display = "Voie intracardiaque"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #35
* group[=].element[=].target.code = #372463005
* group[=].element[=].target.display = "Voie intracoronaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #36
* group[=].element[=].target.code = #372464004
* group[=].element[=].target.display = "Voie intradermique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #37
* group[=].element[=].target.code = #372465003
* group[=].element[=].target.display = "Voie intradiscale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #38
* group[=].element[=].target.code = #372466002
* group[=].element[=].target.display = "Voie intralésionnelle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #39
* group[=].element[=].target.code = #372467006
* group[=].element[=].target.display = "Voie intralymphatique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #40
* group[=].element[=].target.code = #447121004
* group[=].element[=].target.display = "Voie intramammaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #41
* group[=].element[=].target.code = #78421000
* group[=].element[=].target.display = "Voie intramusculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #105
* group[=].element[=].target.code = #445771006
* group[=].element[=].target.display = "Voie intrapéricardiaque"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #43
* group[=].element[=].target.code = #38239002
* group[=].element[=].target.display = "Voie intrapéritonéale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #44
* group[=].element[=].target.code = #372469009
* group[=].element[=].target.display = "Voie intrapleurale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #47
* group[=].element[=].target.code = #372470005
* group[=].element[=].target.display = "Voie intrasternale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #127
* group[=].element[=].target.code = #72607000
* group[=].element[=].target.display = "Voie intrathécale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #175
* group[=].element[=].target.code = #447122006
* group[=].element[=].target.display = "Voie intratumorale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #48
* group[=].element[=].target.code = #62226000
* group[=].element[=].target.display = "Voie intra-utérine"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #49
* group[=].element[=].target.code = #47625008
* group[=].element[=].target.display = "Voie intraveineuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #50
* group[=].element[=].target.code = #372471009
* group[=].element[=].target.display = "Voie intravésicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #107
* group[=].element[=].target.code = #418401004
* group[=].element[=].target.display = "Voie intravitréenne"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #51
* group[=].element[=].target.code = #46713006
* group[=].element[=].target.display = "Voie nasale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #53
* group[=].element[=].target.code = #54485002
* group[=].element[=].target.display = "Voie ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #55
* group[=].element[=].target.code = #419165009
* group[=].element[=].target.display = "Voie paravertébrale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #56
* group[=].element[=].target.code = #372474001
* group[=].element[=].target.display = "Voie périarticulaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #57
* group[=].element[=].target.code = #447080003
* group[=].element[=].target.display = "Voie péridurale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #59
* group[=].element[=].target.code = #37161004
* group[=].element[=].target.display = "Voie rectale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #61
* group[=].element[=].target.code = #372476004
* group[=].element[=].target.display = "Voie sous-conjonctivale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #108
* group[=].element[=].target.code = #37839007
* group[=].element[=].target.display = "Voie sublinguale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #63
* group[=].element[=].target.code = #45890007
* group[=].element[=].target.display = "Voie transdermique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #64
* group[=].element[=].target.code = #90028008
* group[=].element[=].target.display = "Voie urétrale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #65
* group[=].element[=].target.code = #16857009
* group[=].element[=].target.display = "Voie vaginale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #176
* group[=].element[=].target.code = #418722009
* group[=].element[=].target.display = "Voie péribulbaire ophtalmique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #168
* group[=].element[=].target.code = #127492001
* group[=].element[=].target.display = "Voie nasogastrique"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #180
* group[=].element[=].target.code = #447052000
* group[=].element[=].target.display = "Voie périodontale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #181
* group[=].element[=].target.code = #419874009
* group[=].element[=].target.display = "Voie sous-muqueuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #42
* group[=].element[=].target.code = #372468001
* group[=].element[=].target.display = "voie intraoculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #58
* group[=].element[=].target.code = #447080003
* group[=].element[=].target.display = "voie péridurale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #62
* group[=].element[=].target.code = #34206005
* group[=].element[=].target.display = "voie subcutanée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #165
* group[=].element[=].target.code = #417255000
* group[=].element[=].target.display = "voie intraosseuse"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #169
* group[=].element[=].target.code = #127491008
* group[=].element[=].target.display = "voie jéjunostomie"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #170
* group[=].element[=].target.code = #127490009
* group[=].element[=].target.display = "voie de gastrostomie"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #179
* group[=].element[=].target.code = #418821007
* group[=].element[=].target.display = "voie intracamérulaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #182
* group[=].element[=].target.code = #711378007
* group[=].element[=].target.display = "voie intramurale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #106
* group[=].element[=].target.code = #447694001
* group[=].element[=].target.display = "voie inhalée"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #45
* group[=].element[=].target.code = #72607000
* group[=].element[=].target.display = "voie intrathécale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #166
* group[=].element[=].target.code = #764723001
* group[=].element[=].target.display = "voie épilésionnelle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #186
* group[=].element[=].target.code = #418743005
* group[=].element[=].target.display = "par la fistule"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #174
* group[=].element[=].target.code = #58731000052100
* group[=].element[=].target.display = "voie intestinale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #34
* group[=].element[=].target.code = #372462000
* group[=].element[=].target.display = "voie intracervicale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #12
* group[=].element[=].target.code = #766790006
* group[=].element[=].target.display = "voie d'hémodialyse extracorporelle"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #184
* group[=].element[=].target.code = #58831000052108
* group[=].element[=].target.display = "voie sous-rétinienne"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #54
* group[=].element[=].target.code = #26643006
* group[=].element[=].target.display = "voie orale"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #173
* group[=].element[=].target.code = #420719007
* group[=].element[=].target.display = "voie intracérébroventriculaire"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #187
* group[=].element[=].target.code = #446540005
* group[=].element[=].target.display = "Intracerebral route"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #183
* group[=].element[=].target.code = #58811000052103
* group[=].element[=].target.display = "Peritumoral route"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #185
* group[=].element[=].target.code = #445768003
* group[=].element[=].target.display = "Intragastric route"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #33
* group[=].element[=].target.code = #1259221004
* group[=].element[=].target.display = "Intracorporus cavernosum route"
* group[=].element[=].target.equivalence = #equal