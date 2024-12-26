Instance: 14631
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-161
* status = #active
* intent = #order
* medicationReference.reference = "#med-161"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-30T11:42:16.592Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-30T11:42:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-04T11:41:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "10:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.route = $sct#47625008 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 '1'
* dosageInstruction.doseAndRate.rateRatio.denominator = 12 'h' "h"