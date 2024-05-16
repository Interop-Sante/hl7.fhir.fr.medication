Instance: 14628
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-111
* status = #active
* intent = #order
* medicationReference.reference = "#med-111"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-07-29T13:27:21.531Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-29T13:27:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-12T13:26:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $sct#45890007 "Voie transdermique"
* dosageInstruction.route.text = "Voie transdermique"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 '1'
* dosageInstruction.doseAndRate.rateRatio.denominator = 16 'h' "h"