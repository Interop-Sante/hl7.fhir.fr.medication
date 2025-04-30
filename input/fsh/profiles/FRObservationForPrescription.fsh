Profile: FrObservationForPrescription
Parent: Observation
Id: fr-observation-for-prescription
Title: "FrObservationForPrescription"
Description: "Observation provided as context of the prescription (ex. weight, height...)"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* subject 1..
* subject only Reference($FrCorePatient)