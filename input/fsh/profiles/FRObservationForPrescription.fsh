Profile: FRObservationForPrescription
Parent: Observation
Id: fr-observation-for-prescription
Title: "FR Observation For Prescription"
Description: "Observation provided as context of the prescription (ex. weight, height...)"
* ^status = #draft
* subject 1..
* subject only Reference($FrCorePatient)