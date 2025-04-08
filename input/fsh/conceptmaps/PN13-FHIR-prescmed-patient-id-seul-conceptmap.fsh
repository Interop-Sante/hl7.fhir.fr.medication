Instance: PN13-FHIR-prescmed-patient-id-seul-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionPatientIdSeulConceptMap"
* title = "Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR du patient d'une prescritpion de médicament avec uniquement un identifiant fourni"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = Canonical(fr-inpatient-medicationrequest)
* group[0].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Patient/IPP
* group[0].element[0].target[0].code = $FrCoreEncounter#MedicationRequest.subject.identifier.value
* group[0].element[0].target[0].equivalence = #equal
* group[0].element[0].target[0].product[0].property = $FrCoreEncounter#MedicationRequest.subject.identifier.use
* group[0].element[0].target[0].product[0].value = "usual"
* group[0].element[0].target[0].product[1].property = $FrCoreEncounter#MedicationRequest.subject.type
* group[0].element[0].target[0].product[1].value = "Patient"
