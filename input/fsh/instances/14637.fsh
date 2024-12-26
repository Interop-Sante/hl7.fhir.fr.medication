Instance: 14637
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained[0] = med-172
* contained[+] = med-173
* contained[+] = med-174
* contained[+] = med-171
* status = #active
* intent = #order
* medicationReference.reference = "#med-171"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-02T16:27:47.623Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-02T16:27:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-07T16:26:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "10:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.route = $sct#47625008 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 '1'
* dosageInstruction.doseAndRate.rateRatio.denominator = 12 'h' "h"