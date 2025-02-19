Instance: PN13-FHIR-FreeSetCIODC-Unite-ConceptMap
InstanceOf: ConceptMap
Description: "Conversion des codes CIO d'unité d'administration de médicaments en codes du référentiel UCUM"
Usage: #definition
* language = #fr-FR
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Transformation codes CIO vers terminologie cible identifiée pour les unités des quantités administrées des médicaments</div>"
* url = "https://hl7.fr/fhir/fr/medication/ConceptMap/PN13-FHIR-unite-conceptmap"
* version = "0.1.0"
* name = "FrPN13FHIRFreeSetCIODCUniteConceptMap"
* title = "Mapping Free Set CIO-DC UNITE"
* status = #draft
* date = "2025-02-10T11:15:38Z"
* publisher = "Interop'Santé"
* contact.name = "Interop'Santé"
* contact.telecom.system = #url
* contact.telecom.value = "http://interopsante.org/"
* description = "ConceptMap pour la conversion des codes d'unité d'administration de médicaments entre CIO et UCUM"
* group.source = "https://www.phast.fr/ciodm/"
* group.sourceVersion = "2025"
* group.target = "https://ucum.org/"
* group.element[0].code = #10*3.bq
* group.element[=].target.code = #kBq
* group.element[=].target.display = "kBq"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #10*6
* group.element[=].target.code = #10*6
* group.element[=].target.display = "10n"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #10*6.a
* group.element[=].target.code = #M[arb'U]
* group.element[=].target.display = "106U"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #10*6.bq
* group.element[=].target.code = #MBq
* group.element[=].target.display = "MBq"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #10*6.iu
* group.element[=].target.code = #M[iU]
* group.element[=].target.display = "106UI"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #10*6.u
* group.element[=].target.code = #M[arb'U]
* group.element[=].target.display = "106U"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #10*9
* group.element[=].target.code = #10*9
* group.element[=].target.display = "milliard"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #10*9.bq
* group.element[=].target.code = #GBq
* group.element[=].target.display = "GBq"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #agD_u
* group.element[=].target.code = #[D'ag'U]
* group.element[=].target.display = "U agD"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ah_u
* group.element[=].target.code = #[arb'U]{anti'hep}
* group.element[=].target.display = "U anti hép."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #amp
* group.element[=].target.code = #{amp}
* group.element[=].target.display = "amp"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #an
* group.element[=].target.code = #a
* group.element[=].target.display = "a"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #appln
* group.element[=].target.code = #{appln}
* group.element[=].target.display = "appln"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #applr
* group.element[=].target.code = #{applr}
* group.element[=].target.display = "applr"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #arb_u
* group.element[=].target.code = #[arb'U]
* group.element[=].target.display = "U"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #axa_iu
* group.element[=].target.code = #[anti'Xa'U]
* group.element[=].target.display = "U anti Xa"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #baton
* group.element[=].target.code = #{stick}
* group.element[=].target.display = "bâton"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #BBCHE
* group.element[=].target.code = #{mouthw}
* group.element[=].target.display = "b.bche"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #boite
* group.element[=].target.code = #{box}
* group.element[=].target.display = "boîte"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #bouffee
* group.element[=].target.code = #{puff}
* group.element[=].target.display = "bouffée"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #bq
* group.element[=].target.code = #Bq
* group.element[=].target.display = "Bq"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #btle
* group.element[=].target.code = #{btle}
* group.element[=].target.display = "boutteille"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #c_a_c
* group.element[=].target.code = #[tsp_m]
* group.element[=].target.display = "càc"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #c_a_d
* group.element[=].target.code = #{dsp}
* group.element[=].target.display = "càd"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #c_a_s
* group.element[=].target.code = #[tbs_m]
* group.element[=].target.display = "càs"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #c_mes
* group.element[=].target.code = #{mes'sp}
* group.element[=].target.display = "c.mes."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #cadre
* group.element[=].target.code = #{frame}
* group.element[=].target.display = "cadre"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #caisse
* group.element[=].target.code = #{crate}
* group.element[=].target.display = "caisse"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #caps
* group.element[=].target.code = #{caps}
* group.element[=].target.display = "caps"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #cart
* group.element[=].target.code = #{cart}
* group.element[=].target.display = "cart"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #catap
* group.element[=].target.code = #{poult}
* group.element[=].target.display = "catapl."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ceip_u
* group.element[=].target.code = #[arb'U]{ceip}
* group.element[=].target.display = "U CEIP"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #cpr
* group.element[=].target.code = #{tbl}
* group.element[=].target.display = "cpr"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #cprsse
* group.element[=].target.code = #{dress}
* group.element[=].target.display = "compresse"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #cycle
* group.element[=].target.code = #{cycle}
* group.element[=].target.display = "cycle"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #dc
* group.element[=].target.code = #{cut'dev}
* group.element[=].target.display = "disp.cut."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ddose
* group.element[=].target.code = #{meas'dev}
* group.element[=].target.display = "disp.doseur"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #diu
* group.element[=].target.code = #{iud}
* group.element[=].target.display = "diu"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #dose
* group.element[=].target.code = #{dose}
* group.element[=].target.display = "dose"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #dose_kg
* group.element[=].target.code = #{kg'dose}
* group.element[=].target.display = "dose-kg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #dosevac
* group.element[=].target.code = #{vac'dose}
* group.element[=].target.display = "dose-vac"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #dtd
* group.element[=].target.code = #{patch}
* group.element[=].target.display = "cutaneous patch"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #dvag
* group.element[=].target.code = #{vag'dev}
* group.element[=].target.display = "disp.vagin."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #EMPMED
* group.element[=].target.code = #{med'plast}
* group.element[=].target.display = "emplâtre méd."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #eph_u
* group.element[=].target.code = #[arb'U]{eph}
* group.element[=].target.display = "UPE"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #epmed
* group.element[=].target.code = #{med'spng}
* group.element[=].target.display = "éponge méd."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #feiba_u
* group.element[=].target.code = #[arb'U]{feiba}
* group.element[=].target.display = "U FEIBA"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #feuille
* group.element[=].target.code = #{foil}
* group.element[=].target.display = "feuille"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #film_ths
* group.element[=].target.code = #{blister}
* group.element[=].target.display = "film thermos."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #flac
* group.element[=].target.code = #{vial}
* group.element[=].target.display = "vial"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #"flac c-gttes"
* group.element[=].target.code = #{drpr'cont}
* group.element[=].target.display = "flac.c.gttes"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #flac_pres
* group.element[=].target.code = #{prsrd'cont}
* group.element[=].target.display = "flac.press."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #flac_pulv
* group.element[=].target.code = #{spray}
* group.element[=].target.display = "flac.pulv."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #"flm orodisp"
* group.element[=].target.code = #{orodisp'flm}
* group.element[=].target.display = "film orodisp."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #fut
* group.element[=].target.code = #{bbl}
* group.element[=].target.display = "fût"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g
* group.element[=].target.code = #g
* group.element[=].target.display = "g"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g/h
* group.element[=].target.code = #g/h
* group.element[=].target.display = "g/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g/kg
* group.element[=].target.code = #g/kg
* group.element[=].target.display = "g/kg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g/kg/h
* group.element[=].target.code = #g/kg/h
* group.element[=].target.display = "g/kg/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g/kg/mn
* group.element[=].target.code = #g/kg/min
* group.element[=].target.display = "g/kg/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g/m2
* group.element[=].target.code = #g/m2
* group.element[=].target.display = "g/m²"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g/m2/h
* group.element[=].target.code = #g/m2/h
* group.element[=].target.display = "g/m²/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g/m2/mn
* group.element[=].target.code = #g/m2/min
* group.element[=].target.display = "g/m²/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #g/mn
* group.element[=].target.code = #g/min
* group.element[=].target.display = "g/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #gel
* group.element[=].target.code = #{hard'caps}
* group.element[=].target.display = "gelule"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #godet
* group.element[=].target.code = #{cup}
* group.element[=].target.display = "godet"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #gomme
* group.element[=].target.code = #{gum}
* group.element[=].target.display = "gomme"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #granule
* group.element[=].target.code = #{granule}
* group.element[=].target.display = "granule"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #gte
* group.element[=].target.code = #[drp]
* group.element[=].target.display = "gtte"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #h
* group.element[=].target.code = #h
* group.element[=].target.display = "h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #implant
* group.element[=].target.code = #{implant}
* group.element[=].target.display = "implant"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #inhalateur
* group.element[=].target.code = #{inhaler}
* group.element[=].target.display = "inhalateur"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #inka_u
* group.element[=].target.code = #"[arb'U]{kallikrein inactivator}"
* group.element[=].target.display = "U IK"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #insert
* group.element[=].target.code = #{insert}
* group.element[=].target.display = "insert"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #inst
* group.element[=].target.code = #{inst}
* group.element[=].target.display = "instill."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #irrig
* group.element[=].target.code = #{irrig}
* group.element[=].target.display = "irrig."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu
* group.element[=].target.code = #[iU]
* group.element[=].target.display = "UI"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/h
* group.element[=].target.code = #[iU]/h
* group.element[=].target.display = "UI/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/kg
* group.element[=].target.code = #[iU]/kg
* group.element[=].target.display = "UI/kg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/kg/h
* group.element[=].target.code = #[iU]/kg/h
* group.element[=].target.display = "UI/kg/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/kg/mn
* group.element[=].target.code = #[iU]/kg/min
* group.element[=].target.display = "UI/kg/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/m2
* group.element[=].target.code = #[iU]/m2
* group.element[=].target.display = "UI/m²"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/m2/h
* group.element[=].target.code = #[iU]/m2/h
* group.element[=].target.display = "UI/m²/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/m2/mn
* group.element[=].target.code = #[iU]/m2/min
* group.element[=].target.display = "UI/m²/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/mL
* group.element[=].target.code = #[iU]/mL
* group.element[=].target.display = "UI/mL"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #iu/mn
* group.element[=].target.code = #[iU]/min
* group.element[=].target.display = "UI/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #j
* group.element[=].target.code = #d
* group.element[=].target.display = "j"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #kg
* group.element[=].target.code = #kg
* group.element[=].target.display = "kg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #kit
* group.element[=].target.code = #{kit}
* group.element[=].target.display = "kit"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #L
* group.element[=].target.code = #L
* group.element[=].target.display = "L"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #L/mn
* group.element[=].target.code = #L/min
* group.element[=].target.display = "L/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #lavg
* group.element[=].target.code = #{wash}
* group.element[=].target.display = "lavage"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #lavmt
* group.element[=].target.code = #{enem}
* group.element[=].target.display = "lavement"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #loo_u
* group.element[=].target.code = #[arb'U]{loo}
* group.element[=].target.display = "Loomis"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #lyoph_or
* group.element[=].target.code = #{oral'lyoph}
* group.element[=].target.display = "lyoph.oral"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #m
* group.element[=].target.code = #m
* group.element[=].target.display = "m"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #m2
* group.element[=].target.code = #m2
* group.element[=].target.display = "m²"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #matrice
* group.element[=].target.code = #{matrix}
* group.element[=].target.display = "matrice"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #meq
* group.element[=].target.code = #meq
* group.element[=].target.display = "meq"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #meq/L
* group.element[=].target.code = #meq/L
* group.element[=].target.display = "meq/L"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg
* group.element[=].target.code = #mg
* group.element[=].target.display = "mg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg/h
* group.element[=].target.code = #mg/h
* group.element[=].target.display = "mg/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg/kg
* group.element[=].target.code = #mg/kg
* group.element[=].target.display = "mg/kg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg/kg/h
* group.element[=].target.code = #mg/kg/h
* group.element[=].target.display = "mg/kg/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg/kg/mn
* group.element[=].target.code = #mg/kg/min
* group.element[=].target.display = "mg/kg/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg/m2
* group.element[=].target.code = #mg/m2
* group.element[=].target.display = "mg/m²"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg/m2/h
* group.element[=].target.code = #mg/m2/h
* group.element[=].target.display = "mg/m²/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg/m2/mn
* group.element[=].target.code = #mg/m2/min
* group.element[=].target.display = "mg/m²/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mg/mn
* group.element[=].target.code = #mg/min
* group.element[=].target.display = "mg/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL
* group.element[=].target.code = #mL
* group.element[=].target.display = "mL"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL/h
* group.element[=].target.code = #mL/h
* group.element[=].target.display = "mL/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL/kg
* group.element[=].target.code = #mL/kg
* group.element[=].target.display = "mL/kg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL/kg/h
* group.element[=].target.code = #mL/kg/h
* group.element[=].target.display = "mL/kg/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL/kg/mn
* group.element[=].target.code = #mL/kg/min
* group.element[=].target.display = "mL/kg/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL/m2
* group.element[=].target.code = #mL/m2
* group.element[=].target.display = "mL/m²"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL/m2/h
* group.element[=].target.code = #mL/m2/h
* group.element[=].target.display = "mL/m²/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL/m2/mn
* group.element[=].target.code = #mL/m2/min
* group.element[=].target.display = "mL/m²/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mL/mn
* group.element[=].target.code = #mL/min
* group.element[=].target.display = "mL/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mmol
* group.element[=].target.code = #mmol
* group.element[=].target.display = "mmol"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mmol/L
* group.element[=].target.code = #mmol/L
* group.element[=].target.display = "mmol/L"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mn
* group.element[=].target.code = #min
* group.element[=].target.display = "min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mois
* group.element[=].target.code = #mo
* group.element[=].target.display = "m"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #mosm/L
* group.element[=].target.code = #mosm/L
* group.element[=].target.display = "mosm/L"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ng
* group.element[=].target.code = #ng
* group.element[=].target.display = "ng"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ng/kg/mn
* group.element[=].target.code = #ng/kg/min
* group.element[=].target.display = "ng/kg/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #nkat
* group.element[=].target.code = #nkat
* group.element[=].target.display = "nkat"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ovule
* group.element[=].target.code = #{pess}
* group.element[=].target.display = "ovule"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #paire
* group.element[=].target.code = #{pair}
* group.element[=].target.display = "paire"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #past
* group.element[=].target.code = #{loz}
* group.element[=].target.display = "pastille"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #pâte
* group.element[=].target.code = #{paste}
* group.element[=].target.display = "pâte"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #pièce
* group.element[=].target.code = #{piece}
* group.element[=].target.display = "pièce"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #plaq
* group.element[=].target.code = #{blister}
* group.element[=].target.display = "film thermos."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #poche
* group.element[=].target.code = #{bag}
* group.element[=].target.display = "poche"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #pot
* group.element[=].target.code = #{jar}
* group.element[=].target.display = "pot"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ppe_doseuse
* group.element[=].target.code = #{meter'pump}
* group.element[=].target.display = "pompe doseuse"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #pres
* group.element[=].target.code = #{press}
* group.element[=].target.display = "pression"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #pst
* group.element[=].target.code = #bandg}
* group.element[=].target.display = "pst"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #pulv
* group.element[=].target.code = #{spray}
* group.element[=].target.display = "flac.pulv."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #rec_dose
* group.element[=].target.code = #{meter'cont}
* group.element[=].target.display = "récip.doseur"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #rec_multi
* group.element[=].target.code = #{multidose'cont}
* group.element[=].target.display = "récip.multidose"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #rec_unidose
* group.element[=].target.code = #{sgldose'cont}
* group.element[=].target.display = "récip.unidose"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #sachet
* group.element[=].target.code = #{sachet}
* group.element[=].target.display = "sachet"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #SDIU
* group.element[=].target.code = #{iud'syst}
* group.element[=].target.display = "sdiu"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #SDV
* group.element[=].target.code = #{vd'syst}
* group.element[=].target.display = "sdvag"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ser
* group.element[=].target.code = #{syr}
* group.element[=].target.display = "ser"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ser_prr
* group.element[=].target.code = #{pfs}
* group.element[=].target.display = "ser.préremp"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #set
* group.element[=].target.code = #{set}
* group.element[=].target.display = "set"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #stylo_prr
* group.element[=].target.code = #{pfp}
* group.element[=].target.display = "stylo préremp"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #suppo
* group.element[=].target.code = #{suppo}
* group.element[=].target.display = "suppo."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #tube
* group.element[=].target.code = #{tube}
* group.element[=].target.display = "tube"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #u
* group.element[=].target.code = #U
* group.element[=].target.display = "U"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug
* group.element[=].target.code = #ug
* group.element[=].target.display = "µg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug/h
* group.element[=].target.code = #ug/h
* group.element[=].target.display = "µg/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug/kg
* group.element[=].target.code = #ug/kg
* group.element[=].target.display = "µg/kg"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug/kg/h
* group.element[=].target.code = #ug/kg/h
* group.element[=].target.display = "µg/kg/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug/kg/mn
* group.element[=].target.code = #ug/kg/min
* group.element[=].target.display = "µg/kg/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug/m2
* group.element[=].target.code = #ug/m2
* group.element[=].target.display = "µg/m²"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug/m2/h
* group.element[=].target.code = #ug/m2/h
* group.element[=].target.display = "µg/m²/h"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug/m2/mn
* group.element[=].target.code = #ug/m2/min
* group.element[=].target.display = "µg/m²/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug/mn
* group.element[=].target.code = #ug/min
* group.element[=].target.display = "µg/min"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ug_hagglu
* group.element[=].target.code = #ug{hagglu}
* group.element[=].target.display = "µg hémagglut."
* group.element[=].target.equivalence = #equal
* group.element[+].code = #ukat
* group.element[=].target.code = #ukat
* group.element[=].target.display = "µkat"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #uL
* group.element[=].target.code = #uL
* group.element[=].target.display = "µL"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #VAPO
* group.element[=].target.code = #{evaporator}
* group.element[=].target.display = "évaporateur"
* group.element[=].target.equivalence = #equal