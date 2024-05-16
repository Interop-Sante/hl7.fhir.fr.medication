Instance: 14619
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = Inline-Instance-for-14619-1
* status = #active
* intent = #order
* medicationReference.reference = "#med-31"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-07-19T16:22:39.825Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-19T16:22:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-24T16:23:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1'