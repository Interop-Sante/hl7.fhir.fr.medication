Profile: FrInpatientMedicationRequest
Parent: FrMedicationRequest
Id: fr-inpatient-medicationrequest
Title: "FrInpatientMedicationRequest"
Description: "French inpatient medication request profile"

* supportingInformation.extension contains fr-uf-role named UFRole 0..1

* dispenseRequest.initialFill ..0
* dispenseRequest.dispenseInterval ..0
* dispenseRequest.validityPeriod.start 1..
* dispenseRequest.validityPeriod.start ^comment = "DateTime of the first prescribed dose."
* dispenseRequest.validityPeriod.end ^comment = "DateTime of the last prescribe dose. Not defined for endless prescription (at prescription time). The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03."
* dispenseRequest.quantity ..0
* dispenseRequest.expectedSupplyDuration.comparator ..0
* dispenseRequest.performer ..0