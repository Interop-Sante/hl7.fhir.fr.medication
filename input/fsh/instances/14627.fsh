Instance: 14627
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-91
* status = #active
* intent = #order
* medicationReference.reference = "#med-91"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-29T13:04:23.435Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-29T13:04:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-03T13:03:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "08:00:00"
* dosageInstruction.route = $sct#448598008 "Voie cutanée"
* dosageInstruction.route.text = "Voie cutanée"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1'