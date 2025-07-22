Profile: FrInpatientMedicationRequest
Parent: FrMedicationRequest
Id: fr-inpatient-medicationrequest
Title: "FrInpatientMedicationRequest"
Description: "French inpatient medication request profile"

* supportingInformation.extension contains fr-uf-role named UFRole 0..1

* medicationReference.extension contains fr-medication-to-dispense named toDispense 0..1
* medicationReference.extension[toDispense] ^short = "Medication to be dispensed"
* medicationReference.extension[toDispense] ^definition = "If the value is negative, the patient already has the medication, no dispense is necessary"

* medicationCodeableConcept.extension contains fr-medication-to-dispense named toDispense 0..1
* medicationCodeableConcept.extension[toDispense] ^short = "Medication to be dispensed"
* medicationCodeableConcept.extension[toDispense] ^definition = "If the value is negative, the patient already has the medication, no dispense is necessary"


* note.extension contains fr-medicationrequest-note-scope named noteScope 0..1
* note.extension[noteScope] ^short = "Scope of the note"
* note.extension[noteScope] ^definition = "States where the content of the note comes from"
* note.extension[noteScope] ^comment = "Extension used for translating PN13 messages into FHIR in order to discriminate the notes and not concatenate all the PN13 textual information into a single note which would be difficult to understand"

* dispenseRequest.initialFill ..0
* dispenseRequest.dispenseInterval ..0
* dispenseRequest.validityPeriod.start 1..
* dispenseRequest.validityPeriod.start ^comment = "DateTime of the first prescribed dose."
* dispenseRequest.validityPeriod.end ^comment = "DateTime of the last prescribe dose. Not defined for endless prescription (at prescription time). The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03."
* dispenseRequest.quantity ..0
* dispenseRequest.expectedSupplyDuration.comparator ..0
* dispenseRequest.performer ..0