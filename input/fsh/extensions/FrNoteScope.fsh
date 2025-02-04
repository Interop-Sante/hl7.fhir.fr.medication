Extension: FrMedicationRequestNoteScope
Id: fr-medicationrequest-note-scope
Title: "Scope for note element in MedicationRequest"
Description: "Scope of a note associated in a MedicationRequest resource"
* ^context.type = #element
* ^context.expression = "MedicationRequest.note"
* . ^short = "Scope for note element in MedicationRequest"
* . ^definition = "Specifies the scope of a note in a MedisactionRequest resource"
* value[x] only code
* value[x] from fr-note-scope-codes-vs (required)