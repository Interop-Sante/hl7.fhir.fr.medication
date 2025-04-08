Extension: FrMedicationRequestNoteScope
Id: fr-medicationrequest-note-scope
Title: "Scope for note element in MedicationRequest"
Description: "Scope of a note associated in a MedicationRequest resource"
* ^context.type = #element
* ^context.expression = "MedicationRequest.note"
* value[x] only code
* value[x] from fr-note-scope-codes-vs (required)