Profile: FrRequestGroupForPrescription
Parent: RequestGroup
Id: fr-requestgroup-for-prescription
Title: "FrRequestGroupForPrescrption"
Description: "RequestGroup for expressing links between lines of a prescription"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* groupIdentifier 1..
* action.relatedAction.extension contains fr-additional-action-relationship named additionalRelationship 0..1
* action.relatedAction.extension[additionalRelationship] ^short = "Additional relatedAction relationship"
* action.relatedAction.extension[additionalRelationship] ^definition = "If the extension is used, RequestGroup.action.relatedAction.relationship shall be concurrent"