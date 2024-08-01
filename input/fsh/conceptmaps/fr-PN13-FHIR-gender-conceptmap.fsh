Instance: fr-PN13-FHIR-gender-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* status = #draft
* version = "0.1"
* name = "FrPN13FHIRGenderConceptMap"
* title = "Conversion PN13 FHIR des code de sexe administratif"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion des codes de sexe administratif entre PN13 et FHIR"
// A voir quel uri peut être utiliser pour les terminologies PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Gender
* targetUri = $FhirGender
* group[0].element[0].code = #M
* group[0].element[0].display = "Mâle"
* group[0].element[0].target[0].code = $FhirGender#male
* group[0].element[0].target[0].display = "Male"
* group[0].element[0].target[0].equivalence = #equal
* group[0].element[1].code = #F
* group[0].element[1].display = "Femelle"
* group[0].element[1].target[0].code = $FhirGender#female
* group[0].element[1].target[0].dispaly = "Female"
* group[0].element[1].target[0].equivalence = #equal
* group[0].element[2].code = #U
* group[0].element[2].display = "Non connu"
* group[0].element[2].target[0].code = $FhirGender#unknown
* group[0].element[2].target[0].dispaly = "Unknown"
* group[0].element[2].target[0].equivalence = #equal
* group[0].element[3].code = #O
* group[0].element[3].display = "Autre"
* group[0].element[3].target[0].code = $FhirGender#unknown
* group[0].element[3].target[0].dispaly = "Unknown"
* group[0].element[3].target[0].equivalence = #inexact
* group[0].element[3].target[0].comment = "La terminologie FHIR pour le sexe administratif n'a pas d'équivalent pour le concept autre. Le mapping sur unknown est proposé pour permettre un passage de PN13 à FHIR"