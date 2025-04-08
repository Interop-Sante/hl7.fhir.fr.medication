Profile: FrInpatientMedicationRequest
Parent: MedicationRequest
Id: fr-inpatient-medicationrequest
Title: "French Inpatient MedicationRequest"
Description: "French inpatient medication request profile"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains fr-treatment-intent named treatmentIntent 0..1
* extension[treatmentIntent] ^short = "overall treatment intent"
* extension[treatmentIntent] ^definition = "the overall intention of the treatment"
* extension[treatmentIntent] ^meaningWhenMissing = "overall intention of the treatment not specified"
* extension[treatmentIntent].value[x].coding ^definition = "SNOMED CT code minimal value set for overall treatment intent (extensible)"
* medicationReference only Reference(fr-medication-noncompound or fr-medication-compound)
* subject only Reference($FrCorePatient)
* encounter only Reference($FrCoreEncounter)
* supportingInformation.extension contains fr-uf-role named UFRole 0..1
* requester 1..
* requester only Reference($FrCorePractitioner)
* requester ^short = "Who requested the Request"
* requester ^definition = "The prescriber that initiated the request and has responsibility for its activation."
* note.extension contains fr-medicationrequest-note-scope named NoteScope 0..1
* note.extension[NoteScope] ^short = "Périmètre de la note"
* note.extension[NoteScope] ^definition = "Périmètre indiquant la portée de la note"
* note.extension[NoteScope] ^comment = "Extension utilisée pour le traduction de message PN13 en FHIR afin de donner le périmètre de la note pour éviter la concatenation d'élément textuel en une seule note difficile à comprendre"
* dosageInstruction 1..
* dosageInstruction.timing.repeat.extension contains fr-additional-when-values named AdditionalWhenValues 0..1
* dosageInstruction.route from FrRouteOfAdministration (extensible)
* dosageInstruction.method from FrMethodOfAdministration (extensible)
* dosageInstruction.doseAndRate.extension contains fr-basis-of-dose-component named BasisOfDoseComponent 0..1
//* dosageInstruction.doseAndRate.dose[x] only FrRangeMedication
//* dosageInstruction.doseAndRate.rate[x] only FrRatioMedication
//* dosageInstruction.doseAndRate.rate[x] ^definition = "Amount of medication per unit of time. Using a ratio, the denominator SHALL be a quantity of time. Using a simple quantity the UCUM unit SHALL be a unit of rate."
* dosageInstruction.maxDosePerPeriod.numerator only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerPeriod.denominator only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerAdministration only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerLifetime only FrSimpleQuantityMedication
* dispenseRequest.initialFill ..0
* dispenseRequest.dispenseInterval ..0
* dispenseRequest.validityPeriod.start 1..
* dispenseRequest.validityPeriod.start ^comment = "DateTime of the first prescribed dose."
* dispenseRequest.validityPeriod.end ^comment = "DateTime of the last prescribe dose. Not defined for endless prescription (at prescription time). The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03."
* dispenseRequest.quantity ..0
* dispenseRequest.expectedSupplyDuration.comparator ..0
* dispenseRequest.performer ..0