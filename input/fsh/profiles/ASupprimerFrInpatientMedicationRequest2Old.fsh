Profile: FrInpatientMedicationRequest2Old
Parent: MedicationRequest
Id: fr-inpatient-medicationrequest-2-old
* ^status = #draft
* medication[x] only CodeableConcept or Reference(FrMedication2unique)
* subject only Reference($FrCorePatient)
* encounter only Reference($FrCoreEncounter)
* requester 1..
* requester only Reference($FrCorePractitioner)