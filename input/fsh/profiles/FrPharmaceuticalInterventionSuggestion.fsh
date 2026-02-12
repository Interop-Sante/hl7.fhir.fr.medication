Profile: FRIPharmaceuticalInterventionSuggestion
Parent: FRInpatientMedicationRequest
Id: fr-pharmaceutical-intervention-suggestion
Title: "FR Pharmaceutical Intervention Suggestion"
Description: "Profile de proposition d'évolution de ligne de prescritpion dans le cadre d'une intervention pharmaceutique"

* intent = #proposal

* supportingInformation ^slicing.discriminator.type = #profile
* supportingInformation ^slicing.discriminator.path = "reference"
* supportingInformation ^slicing.rules = #open
* supportingInformation contains
    updatedLine 0..
* supportingInformation[updatedLine] Reference(fr-inpatient-medicationrequest) 

* requester 1..

* groupIdentifier 1..
* groupIdentifier ^definition = "identifiant de la prescription dont la modification est proposée"
