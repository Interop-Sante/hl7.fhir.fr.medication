Extension: FrMedicationToDispense
Id: fr-medication-to-dispense
Title: "Medication to be dispensed"
Description: "This extension stated whether the medication has to be dispensed or not (e.g. when a patient has already the medication)."
* ^purpose = "If the value is negative, the patient already has the medication, no dispense is necessary"
* ^context.type = #element
* ^context.expression = "MedicationRequest.medication[x]"
* value[x] only boolean