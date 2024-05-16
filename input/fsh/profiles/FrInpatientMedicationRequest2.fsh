Profile: FrInpatientMedicationRequest2
Parent: MedicationRequest
Id: FrInpatientMedicationRequest2
* ^url = "http://interopsante.org/fhir/StructureDefinition/FrInpatientMedicationRequest2"
* ^status = #draft
* medication[x] only CodeableConcept or Reference(FrMedication2unique)
* subject only Reference($FrCorePatient)
* encounter only Reference($FrCoreEncounter)
* requester 1..
* requester only Reference($FrCorePractitioner)