Profile: FrInpatientMedicationDispense
Parent: MedicationDispense
Id: FrInpatientMedicationDispense
* ^status = #draft
* medication[x] only CodeableConcept or Reference(FrMedication2unique)
* subject only Reference(Group or $FrCorePatient)
* performer.actor only Reference($FrCorePractitioner)
* authorizingPrescription only Reference(FrInpatientMedicationRequest2)
* receiver only Reference($FrCorePractitioner)