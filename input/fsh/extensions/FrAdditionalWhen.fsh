Extension: FrAdditionalWhenValues
Id: fr-additional-when-values
Title: "Additional values for when element"
Description: "Additional values for Timing.repeat.when"
* ^context.type = #fhirpath
* ^context.expression = "Dosage.timing.repeat"
* . ^short = "Additional values for when element"
* . ^definition = "Specifies additional codes for time period of occurrence that are not in the event-timing value set"
* value[x] only code
* value[x] from $fr-additional-when-codes (required)
