Profile: FrInpatientMedicationRequest
Parent: MedicationRequest
Id: fr-inpatient-medicationrequest
Title: "FrInpatientMedicationRequest"
Description: "French inpatient medication request profile"
* medicationReference only Reference(fr-medication-noncompound or fr-medication-compound)

* subject only Reference($FrCorePatient)
* encounter only Reference($FrCoreEncounter)
* requester 1..
* requester only Reference($FrCorePractitioner)
* requester ^short = "Who requested the Request"
* requester ^definition = "The prescriber that initiated the request and has responsibility for its activation."

* dosageInstruction 1..
* dosageInstruction.route from FrRouteOfAdministration (extensible)
* dosageInstruction.method from FrMethodOfAdministration (extensible)
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
* dispenseRequest.validityPeriod.start ^comment = "DateTime of the first prescribed dose."
* dispenseRequest.validityPeriod.end ^comment = "DateTime of the last prescribe dose. Not defined for endless prescription (at prescription time). The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03."
* dispenseRequest.quantity ..0
* dispenseRequest.expectedSupplyDuration.comparator ..0
* dispenseRequest.performer ..0