Profile: FRMedicationRequest
Parent: MedicationRequest
Id: fr-medicationrequest
Title: "FR Medication Request"
Description: "French medication request profile"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains fr-treatment-intent named treatmentIntent 0..1
* extension[treatmentIntent] ^short = "overall treatment intent"
* extension[treatmentIntent] ^definition = "the overall intention of the treatment"
* extension[treatmentIntent] ^meaningWhenMissing = "overall intention of the treatment not specified"
* extension[treatmentIntent].value[x].coding ^definition = "SNOMED CT code minimal value set for overall treatment intent (extensible)"


* medicationReference only Reference(fr-medication-noncompound or fr-medication-compound)
* medicationCodeableConcept from fr-medication-code (required) 

* subject only Reference($FrCorePatient)

* encounter only Reference($FrCoreEncounter)

* requester 1..
* requester only Reference($FrCorePractitioner)
* requester ^short = "Who requested the Request"
* requester ^definition = "The prescriber that initiated the request and has responsibility for its activation."

* dosageInstruction 1..

* dosageInstruction.timing.repeat.extension contains fr-additional-when-values named AdditionalWhenValues 0..1
* dosageInstruction.route from FrRouteOfAdministration (extensible)
* dosageInstruction.method from FrMethodOfAdministration (extensible)
* dosageInstruction.doseAndRate.extension contains fr-basis-of-dose-component named BasisOfDoseComponent 0..1

* dosageInstruction.doseAndRate.doseRange only FrRangeMedication
* dosageInstruction.doseAndRate.doseQuantity only FrSimpleQuantityMedication

* dosageInstruction.doseAndRate.rate[x] ^definition = "Amount of medication per unit of time. Using a ratio, the denominator SHALL be a quantity of time. Using a simple quantity the UCUM unit SHALL be a unit of rate."
* dosageInstruction.doseAndRate.rateRatio only FrRatioMedication
* dosageInstruction.doseAndRate.rateRange only FrRangeMedication
* dosageInstruction.doseAndRate.rateQuantity only FrSimpleQuantityMedication

* dosageInstruction.maxDosePerPeriod.numerator only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerPeriod.denominator only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerAdministration only FrSimpleQuantityMedication
* dosageInstruction.maxDosePerLifetime only FrSimpleQuantityMedication
