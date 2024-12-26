Instance: 14644
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-241
* status = #active
* intent = #order
* medicationReference.reference = "#med-241"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-12T15:47:52.372Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-12T15:47:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-17T15:46:59Z"
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 500 'mg' "mg"