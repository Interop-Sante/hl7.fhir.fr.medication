Profile: FRInpatientMedicationDispense
Parent: MedicationDispense
Id: fr-inpatient-medication-dispense
Title: "FR Inpatient MedicationDispense"
Description: "French medication dispense profile"
* ^status = #draft
* medication[x] only CodeableConcept or Reference(FrMedication)
* subject only Reference(Group or $FrCorePatient)
* performer.actor only Reference($FrCorePractitioner)
* authorizingPrescription only Reference(FrInpatientMedicationRequest)
* receiver only Reference($FrCorePractitioner)