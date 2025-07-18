Profile: FrInpatientMedicationDispense
Parent: MedicationDispense
Id: fr-patient-medication-dispense
Description: "French medication dispense profile"
* ^status = #draft
* medication[x] only CodeableConcept or Reference(FrMedication)
* subject only Reference(Group or $FrCorePatient)
* performer.actor only Reference($FrCorePractitioner)
* authorizingPrescription only Reference(FrPatientMedicationRequest)
* receiver only Reference($FrCorePractitioner)