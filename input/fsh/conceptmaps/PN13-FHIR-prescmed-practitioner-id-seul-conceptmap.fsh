Instance: PN13-FHIR-prescmed-practitioner-id-seul-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionPractitionerIdSeulConceptMap"
* title = "Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec uniquement un identifiant fourni"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR du professionnel prescripteur d'une prescritpion de médicament avec uniquement un identifiant fourni"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
// A valider Pour prendre en compte la différence entre Id_prescripteur et Identification_prescripteur deux mapping sont fourni, un partant sur une référence par identifier, un autre permettant de créer la ressource Practitioner
* targetUri = Canonical(fr-inpatient-medicationrequest)
* group[0].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_prescripteur
* group[0].element[0].target[0].code = #MedicationRequest.requester.identifier.value
* group[0].element[0].target[0].equivalence = #equal
* group[0].element[0].target[0].product[0].property = #MedicationRequest.requester.type
* group[0].element[0].target[0].product[0].value = "Practitioner"
* group[0].element[1].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_prescripteur@Phast-uri_nomenclature
* group[0].element[1].target[0].code = #MedicationRequest.encounter.identifier.system
// l'hypothèse est prise que l'attribut Phast-uri_nomenclature est toujours renseigné avec un uri valide dans le cas de id_prescripteur. Si ce n'est pas le cas, l'option de passer par une référence sur identifier est moins intéressante mais fonctionne toujours
* group[0].element[1].target[0].equivalence = #equal