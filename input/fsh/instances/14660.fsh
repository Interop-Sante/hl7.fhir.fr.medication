Instance: 14660
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-371
* status = #active
* intent = #order
* medicationReference.reference = "#med-371"
* subject.reference = "Patient/14604"
* authoredOn = "2021-07-15T11:02:39.847Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-15T11:02:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-25T11:01:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1'