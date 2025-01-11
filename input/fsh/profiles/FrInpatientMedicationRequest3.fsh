Profile: FrInpatientMedicationRequest3
Parent: MedicationRequest
Id: fr-inpatient-medicationrequest3
Title: "French Inpatient MedicationRequest 3"
Description: "French inpatient medication request profile 3"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains fr-treatment-intent named treatmentIntent 0..1
* extension[treatmentIntent] ^short = "overall treatment intent"
* extension[treatmentIntent] ^definition = "the overall intention of the treatment"
* extension[treatmentIntent] ^meaningWhenMissing = "overall intention of the treatment not specified"
* extension[treatmentIntent].value[x].coding ^definition = "SNOMED CT code minimal value set for overall treatment intent (extensible)"
* medication[x] only Reference(fr-medication-noncompound or fr-medication-compound2)
* subject only Reference($FrCorePatient)
* encounter only Reference($FrCoreEncounter)
* supportingInformation.extension contains fr-uf-role named UFRole 0..1
* requester 1..
* requester only Reference($FrCorePractitioner)
* requester ^short = "Who requested the Request"
* requester ^definition = "The prescriber that initiated the request and has responsibility for its activation."
* dosageInstruction 1..
* dosageInstruction.timing.repeat.extension contains fr-additional-when-values named AdditionalWhenValues 0..1
* dosageInstruction.route from FrRouteOfAdministration (extensible)
* dosageInstruction.method from FrMethodOfAdministration (extensible)
* dosageInstruction.doseAndRate.extension contains fr-basis-of-dose-component named BasisOfDoseComponent 0..1
* dosageInstruction.doseAndRate.dose[x] only FrRangeUcum or FrSimpleQuantityUcum
* dosageInstruction.doseAndRate.rate[x] only FrRatioUcum or FrRangeUcum or FrSimpleQuantityUcum
* dosageInstruction.doseAndRate.rate[x] ^definition = "Amount of medication per unit of time. Using a ratio, the denominator SHALL be a quantity of time. Using a simple quantity the UCUM unit SHALL be a unit of rate."
* dosageInstruction.maxDosePerPeriod.numerator only FrSimpleQuantityUcum
* dosageInstruction.maxDosePerPeriod.denominator only FrSimpleQuantityUcum
* dosageInstruction.maxDosePerAdministration only FrSimpleQuantityUcum
* dosageInstruction.maxDosePerLifetime only FrSimpleQuantityUcum
* dispenseRequest.initialFill ..0
* dispenseRequest.dispenseInterval ..0
* dispenseRequest.validityPeriod.start 1..
* dispenseRequest.validityPeriod.start ^comment = "DateTime of the first prescribed dose."
* dispenseRequest.validityPeriod.end ^comment = "DateTime of the last prescribe dose. Not defined for endless prescription (at prescription time). The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03."
* dispenseRequest.quantity ..0
* dispenseRequest.expectedSupplyDuration.comparator ..0
* dispenseRequest.performer ..0