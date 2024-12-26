Instance: 14645
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-251
* status = #active
* intent = #order
* medicationReference.reference = "#med-251"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-13T09:28:14.342Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-13T09:28:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-11-13T09:27:59Z"
* dosageInstruction.timing.repeat.dayOfWeek[0] = #tue
* dosageInstruction.timing.repeat.dayOfWeek[+] = #fri
* dosageInstruction.timing.repeat.timeOfDay = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1'