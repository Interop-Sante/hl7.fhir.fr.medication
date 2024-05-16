Instance: 14622
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-141
* status = #active
* intent = #order
* medicationReference.reference = "#med-141"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-07-20T19:05:30.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-20T19:05:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-28T19:04:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $sct#45890007 "Voie transdermique"
* dosageInstruction.route.text = "Voie transdermique"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 '1'
* dosageInstruction.doseAndRate.rateRatio.denominator = 72 'h' "h"