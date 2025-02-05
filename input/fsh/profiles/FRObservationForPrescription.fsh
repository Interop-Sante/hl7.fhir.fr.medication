Profile: FrObservationForPrescription
Parent: Observation
Id: fr-observation-for-prescription
Title: "Observation for prescription"
Description: "Observation provided as context of the prescription (ex. weight, height...)"
* ^status = #draft
* subject 1..
* subject only Reference($FrCorePatient)