Instance: fr-PN13-FHIR-prescription-medicament-practitioner-identite-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionPractitionerIdentiteConceptMap"
* title = "Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec d'autres éléments qu'uniquement l'identifiant"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR du professionnel prescripteur d'une prescritpion de médicament avec d'autres éléments qu'uniquement l'identifiant"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = $FrCorePractitioner
* group[0].element[0].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Identifiant
* group[0].element[0].target[0].code = $FrCoreEncounter#Practitioner.identifier.value
* group[0].element[0].target[0].equivalence = #equal
* group[0].element[1].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Domaine_identification
* group[0].element[1].target[0].code = $FrCoreEncounter#Practitioner.identifier.system
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[1].target[0].comment = "Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:"
* group[1].element[0].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Nom_usage
* group[1].element[0].target[0].code = $FrCorePractioner#Practioner.name.family
* group[1].element[0].target[0].equivalence = #equal
* group[1].element[0].target[0].product[0].property = "Practitioner.name.use"
* group[1].element[0].target[0].product[0].value = "usual"
* group[1].element[1].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Prénom_usage
* group[1].element[1].target[0].code = $FrCorePractioner#Practioner.name.given
* group[1].element[1].target[0].equivalence = #equal
* group[1].element[2].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Civilité
* group[1].element[2].target[0].code = $FrCorePractioner#Practioner.name.prefix
* group[1].element[2].target[0].equivalence = #equivalent
* group[1].element[2].target[0].comment = "Les civilités sont libres dans PN13 alors qu'elles proviennent d'un jeu de valeurs extensible dans le profil FrCorePractitioner"
* group[1].element[3].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Titre
* group[1].element[3].target[0].code = $FrCorePractioner#Practioner.name.suffix
* group[1].element[3].target[0].equivalence = #equivalent
* group[1].element[3].target[0].comment = "Les titres sont libres dans PN13 alors qu'ils proviennent d'un jeu de valeurs extensible dans le profil FrCorePractitioner"
* group[2].element[0].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Nom_famille
* group[2].element[0].target[0].code = $FrCorePractioner#Practioner.name.family
* group[2].element[0].target[0].equivalence = #equal
* group[2].element[0].target[0].product[0].property = "Practitioner.name.use"
* group[2].element[0].target[0].product[0].value = "official"
* group[2].element[1].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Prénoms
* group[2].element[1].target[0].code = $FrCorePractioner#Practioner.name.given
* group[2].element[1].target[0].equivalence = #equivalent
* group[2].element[1].target[0].comment = "L'élément PN13 contient une liste de prénoms difficile à parser pour en extraire les différents prénoms à mettre dans une répétition de given en FHIR"
* group[3].element[0].code = $PN13Schema#M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Initiales
// on pourrait mettre les initiales en nickname mais ça ne correspond pas vraiment à l'usage de nickname
* group[3].element[0].target[0].equivalence = #unmatched