Extension: FrAdditionalActionRelationship
Id: fr-additional-action-relationship
Title: "Additional relatedAction relationship"
Description: "Extension to specify relationship between action in a RequestGroup"
* ^context.type = #element
* ^context.expression = "RequestGroup.action.retaledAction"
* . ^short = "Additional relatedAction relationship"
* . ^definition = "Extension to specify relationship between action in a RequestGroup. If present, RequestGroup.action.relatedAction.relationship shall be concurrent"
* value[x] only code
* value[x] from fr-additional-action-relationship-type-value-set (required)