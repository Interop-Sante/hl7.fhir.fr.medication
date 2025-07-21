Profile: FRRequestGroupForPrescription
Parent: RequestGroup
Id: fr-requestgroup-for-prescription
Title: "FR RequestGroup For Prescription"
Description: "RequestGroup for expressing links between lines of a prescription"
* ^status = #draft
* ^experimental = false

* groupIdentifier 1..

* action.relatedAction.extension contains fr-additional-action-relationship named additionalRelationship 0..1

* action.relatedAction.extension[additionalRelationship] ^short = "Additional relatedAction relationship"
* action.relatedAction.extension[additionalRelationship] ^definition = "If the extension is used, RequestGroup.action.relatedAction.relationship shall be concurrent"