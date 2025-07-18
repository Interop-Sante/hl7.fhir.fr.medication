Profile: FRInpatientMedicationRequest
Parent: MedicationRequest
Id: fr-inpatient-medicationrequest
Title: "FR Inpatient MedicationRequest"
Description: "French inpatient medication request profile"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains fr-treatment-intent named treatmentIntent 0..1
* extension[treatmentIntent] ^short = "overall treatment intent"
* extension[treatmentIntent] ^definition = "the overall intention of the treatment"
* extension[treatmentIntent] ^meaningWhenMissing = "overall intention of the treatment not specified"
* extension[treatmentIntent].value[x].coding ^definition = "SNOMED CT code minimal value set for overall treatment intent (extensible)"

* medicationReference.extension contains fr-medication-to-dispense named toDispense 0..1
* medicationReference.extension[toDispense] ^short = "Medication to be dispensed"
* medicationReference.extension[toDispense] ^definition = "If the value is negative, the patient already has the medication, no dispense is necessary"

* medicationReference only Reference(fr-medication-noncompound or fr-medication-compound)
* medicationCodeableConcept from fr-medication-code (required) 
* medicationCodeableConcept.extension contains fr-medication-to-dispense named toDispense 0..1
* medicationCodeableConcept.extension[toDispense] ^short = "Medication to be dispensed"
* medicationCodeableConcept.extension[toDispense] ^definition = "If the value is negative, the patient already has the medication, no dispense is necessary"

* subject only Reference($FrCorePatient)
* encounter only Reference($FrCoreEncounter)

* supportingInformation.extension contains fr-uf-role named UFRole 0..1

* requester 1..
* requester only Reference($FrCorePractitioner)
* requester ^short = "Who requested the Request"
* requester ^definition = "The prescriber that initiated the request and has responsibility for its activation."

* note.extension contains fr-medicationrequest-note-scope named noteScope 0..1
* note.extension[noteScope] ^short = "Scope of the note"
* note.extension[noteScope] ^definition = "States where the content of the note comes from"
* note.extension[noteScope] ^comment = "Extension used for translating PN13 messages into FHIR in order to discriminate the notes and not concatenate all the PN13 textual information into a single note which would be difficult to understand"
* dosageInstruction 1..
* dosageInstruction.timing.repeat.extension contains fr-additional-when-values named AdditionalWhenValues 0..1
* dosageInstruction.route from FrRouteOfAdministration (extensible)
* dosageInstruction.method from FrMethodOfAdministration (extensible)
* dosageInstruction.doseAndRate.extension contains fr-basis-of-dose-component named BasisOfDoseComponent 0..1
* dosageInstruction.doseAndRate.doseRange only FrRangeMedication
* dosageInstruction.doseAndRate.doseQuantity only FrSimpleQuantityMedication
* dosageInstruction.doseAndRate.rateRatio only FrRatioMedication
* dosageInstruction.doseAndRate.rateRange only FrRangeMedication
* dosageInstruction.doseAndRate.rateQuantity only FrSimpleQuantityMedication
* dosageInstruction.doseAndRate.rate[x] ^definition = "Amount of medication per unit of time. Using a ratio, the denominator SHALL be a quantity of time. Using a simple quantity the UCUM unit SHALL be a unit of rate."
* dosageInstruction.maxDosePerPeriod.numerator only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerPeriod.denominator only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerAdministration only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerLifetime only FrSimpleQuantityMedication
* dispenseRequest.initialFill ..0
* dispenseRequest.dispenseInterval ..0
* dispenseRequest.validityPeriod.start 1..
* dispenseRequest.validityPeriod.start ^definition = "DateTime of the first prescribed dose."
* dispenseRequest.validityPeriod.end ^definition = "DateTime of the last prescribe dose. Not defined for endless prescription (at prescription time). The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03."
* dispenseRequest.quantity ..0
* dispenseRequest.expectedSupplyDuration.comparator ..0
* dispenseRequest.performer ..0