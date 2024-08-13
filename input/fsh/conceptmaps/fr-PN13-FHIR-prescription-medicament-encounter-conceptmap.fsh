Instance: fr-PN13-FHIR-prescription-medicament-encounter-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionEncounterConceptMap"
* title = "Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR d'un séjour d'une prescritpion de médicament"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
// Pour éviter de définir des éléments obligatoirs dans le profil FrCoreEncounter qui ne sont pas présents dans PN13, il a été choisi de ne faire la référence que par l'identifier
* targetUri = $FrInpatientMedicationRequest
* group[0].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Séjour/Id_séjour
* group[0].element[0].target[0].code = $FrCoreEncounter#MedicationRequest.encounter.identifier.value
* group[0].element[0].target[0].equivalence = #equal
* group[0].element[1].code = $PN13Schema#Messages/M_prescription_médicaments/Séjour/DI_séjour
* group[0].element[1].target[0].code = $FrCoreEncounter#MedicationRequest.encounter.identifier.system
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[1].target[0].comment = "Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:"