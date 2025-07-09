Profile: FrMedicationVirtual
Parent: Medication
Id: fr-medication-virtual
Title: "FrMedicationVirtual"
Description: "Virtual medication composed of one to many substances."
* ^status = #draft
* ^experimental = false
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FrDrugCharacteristic named drugCharacteristic 0..*
* extension[drugCharacteristic] ^short = "descriptive properties of the medicine"
* form 1..1
* form from FrMpDoseForm (extensible)
* form ^comment = "When branded medication is referenced from MedicationRequest, this is the ordered form.  When Medication is referenced within MedicationDispense, this is the dispensed form.  When branded medication is referenced within MedicationAdministration, this is administered form."
* ingredient 1..
* ingredient.strength 1..1
* ingredient.strength only FrRatioMedication