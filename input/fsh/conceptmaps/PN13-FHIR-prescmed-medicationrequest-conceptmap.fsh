Instance: PN13-FHIR-prescmed-medicationrequest-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionMedicationRequestConceptMap"
* title = "Conversion PN13 vers FHIR pour la ligne de prescrption d'une prescription de médicaments"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR d'une ligne de prescription d'une prescritpion de médicament"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = $FrInpatientMedicationRequest
* group[0].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_élément_prescr
* group[0].element[0].target[0].code = $FrInpatientMedicationRequest#MedicationRequest.identifier.value
* group[0].element[0].target[0].equivalence = #equal
// Pas de notion de domaine d'identification pour les identifiants d'élements de prescription dans PN13. Pour ne pas risquer des collisions, il faudrait une règles de contitution d'un system qui référence la prescription.
// Un mapping est proposé à partir de l'id du message PN13 même mais celui-ci n'est pas obligatoire avec commentaire pour s'assurer la possibilité de génération d'un system même lorsque l'élément n'existe pas
* group[0].element[1].code =  $PN13Schema#Messages@Phast-id_message
* group[0].element[1].target[0].code = $FrInpatientMedicationRequest#MedicationRequest.identifier.system
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[1].target[0].comment = "S'il existe, l'identifiant de message PN13 est à transformer en un uri respectant les contraintes FHIR (par exemple constituant une url unique à partir de l'identifiant). S'il n'est pas renseigné, une autre manière de produire un uri pour le message PN13 traduit est à mettre en oeuvre"
* group[1].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Type_élément_prescr
* group[1].element[0].target[0].code = $FrInpatientMedicationRequest#MedicationRequest.medicationReference.reference
* group[1].element[0].target[0].equivalence = #inexact
* group[1].element[0].target[0].comment = "Type_élément_precsr permet de déterminer le profil de la ressource Medication référencée par MedicationRequest.medicationReference.reference. La conceptMap fr-PN13-FHIR-TypeComposant-ConceptMap"
