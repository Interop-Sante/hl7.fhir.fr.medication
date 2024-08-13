Instance: fr-PN13-FHIR-TypoComposant-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRTypeComposantConceptMap"
* title = "Conversion des types de composants prescrits en PN13 vers les profiles de la ressource Medication en FHIR"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion des types de composants prescrits en PN13 vers les profiles de la ressource Medication en FHIR"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour les terminologies PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13TypeComposant
// Pour permettre l'utilisation simple de cette table, un codesystem regroupant le nom des profils de l'IG medication a dû être ajouté également. Ce codesystem n'est pas finalisé avec tous les codes, mais ne contient que ceux utiles pour ce mapping
* targetUri = $FrMedicationProfileList
* group[0].element[0].code = $PN13TypeComposant#SPEC
* group[0].element[0].target[0].code = $FrMedicationProfileList#FrMedicationUcd
* group[0].element[0].target[0].equivalence = #inexact
* group[0].element[1].code = $PN13TypeComposant#ATUN
* group[0].element[1].target[0].code = $FrMedicationProfileList#FrMedicationUcd
* group[0].element[1].target[0].equivalence = #inexact
* group[0].element[2].code = $PN13TypeComposant#PRAC
* group[0].element[2].target[0].code = $FrMedicationProfileList#FrMedicationNonproprietaryName
* group[0].element[2].target[0].equivalence = #inexact
* group[0].element[3].code = $PN13TypeComposant#PRHO
* group[0].element[3].target[0].code = $FrMedicationProfileList#FrMedicationCompound
* group[0].element[3].target[0].equivalence = #inexact
* group[0].element[4].code = $PN13TypeComposant#IMPO
* group[0].element[4].target[0].code = $FrMedicationProfileList#FrMedicationUcd
* group[0].element[4].target[0].equivalence = #inexact
* group[0].element[5].code = $PN13TypeComposant#ATUC
* group[0].element[5].target[0].code = $FrMedicationProfileList#FrMedicationUcd
* group[0].element[5].target[0].equivalence = #inexact
* group[0].element[6].code = $PN13TypeComposant#PRMA
* group[0].element[6].target[0].code = $FrMedicationProfileList#FrMedicationCompound
* group[0].element[6].target[0].equivalence = #inexact
* group[0].element[7].code = $PN13TypeComposant#MAPR
* group[0].element[7].target[0].code = $FrMedicationProfileList#FrMedicationNonproprietaryName
* group[0].element[7].target[0].equivalence = #inexact
* group[0].element[8].code = $PN13TypeComposant#MVTS
// a mettre à jour après intervention de medicabase dans le GT
* group[0].element[8].target[0].code = $FrMedicationProfileList#FrMedicationNonproprietaryName
* group[0].element[8].target[0].equivalence = #inexact
* group[0].element[9].code = $PN13TypeComposant#MVTR
// a mettre à jour après intervention de medicabase dans le GT
* group[0].element[9].target[0].code = $FrMedicationProfileList#FrMedicationNonproprietaryName
* group[0].element[9].target[0].equivalence = #inexact
* group[0].element[10].code = $PN13TypeComposant#MVBC
// a mettre à jour après intervention de medicabase dans le GT
* group[0].element[10].target[0].code = $FrMedicationProfileList#FrMedicationNonproprietaryName
* group[0].element[10].target[0].equivalence = #inexact
* group[0].element[11].code = $PN13TypeComposant#MVVI
// a mettre à jour après intervention de medicabase dans le GT
* group[0].element[11].target[0].code = $FrMedicationProfileList#FrMedicationNonproprietaryName
* group[0].element[11].target[0].equivalence = #inexact
* group[0].element[12].code = $PN13TypeComposant#DC
* group[0].element[12].target[0].code = $FrMedicationProfileList#FrMedicationNonproprietaryName
* group[0].element[12].target[0].equivalence = #inexact
* group[0].element[13].code = $PN13TypeComposant#MVMB
// a mettre à jour après intervention de medicabase dans le GT
* group[0].element[13].target[0].code = $FrMedicationProfileList#FrMedicationNonproprietaryName
* group[0].element[13].target[0].equivalence = #inexact