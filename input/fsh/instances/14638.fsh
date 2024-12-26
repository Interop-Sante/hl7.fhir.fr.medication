Instance: 14638
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained[0] = med-2
* contained[+] = med-3
* contained[+] = med-4
* contained[+] = med-1
* status = #active
* intent = #order
* medicationReference.reference = "#med-1"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-02T15:26:27.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-02T15:26:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-07T15:25:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "10:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.route = $sct#47625008 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 '1'
* dosageInstruction.doseAndRate.rateRatio.denominator = 12 'h' "h"